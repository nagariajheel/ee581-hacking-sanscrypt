module jump_back_controller(clk, reset, lfsr_seed, comparator_sig, fsm_sig, priority_flag, in_sig);
	parameter counter_len = 5;
	parameter lfsr_len = 5;
	parameter fsm_out_len = 3;
	parameter deadline = 10;
	parameter input_len = 4;
	input wire clk, reset; 
	input wire [lfsr_len - 1:0] lfsr_seed;
	output wire comparator_sig;
	input wire [fsm_out_len - 1:0] fsm_sig;
	input wire priority_flag;
	input wire [input_len - 1:0] in_sig;

	reg [1:0] state, next_state;  // The state space size is irelavent to the input size, thus it can be customized. 
	// reg next_comparator_sig;
	wire com_result;
	wire [counter_len - 1:0] counter_out;
	reg [counter_len - 1:0] buffer_lfsr, next_buffer_lfsr;
	wire [lfsr_len - 1:0] lfsr_out;
	reg counter_reset, next_counter_reset;
	wire fsm_sig_grand; 
	assign fsm_sig_grand = |fsm_sig;

	lfsr_5 lfsr_module(clk, reset, lfsr_seed, lfsr_out);  // CONFIGURE: The selection of lfsr bit length

	counter count(clk, counter_reset, counter_out);
	defparam count.bit_len = counter_len;

	// always @ (counter_out or buffer_lfsr) begin  // Compare the two values
	// 	if(counter_out[counter_len - 1: counter_len - lfsr_len] == buffer_lfsr) begin
	// 		com_result <= 0;
	// 	end
	// 	else begin
	// 		com_result <= 1;
	// 	end
	// end

	assign comparator_sig = (counter_out == buffer_lfsr) ? 1: 0;
	assign com_result = ~comparator_sig;

	always @ (posedge clk) begin  // State transitioning
		if (reset == 1'b1) begin
			state <= 0;
			// comparator_sig <= 0;
			buffer_lfsr <= 2**lfsr_len - 1;
			counter_reset <= 1;
		end
		else begin
			state <= next_state;
			// comparator_sig <= next_comparator_sig;
			buffer_lfsr <= next_buffer_lfsr;
			counter_reset <= next_counter_reset;
		end
	end

	always @ (fsm_sig_grand or com_result or priority_flag or clk) begin
		case (state)
			0: begin  // Start state
				if (fsm_sig_grand) begin
					next_state = 0;
					next_buffer_lfsr = 2**lfsr_len - 1;
					// next_comparator_sig = 0;
					next_counter_reset = 1;
				end
				else begin
					next_state = 1;
					next_buffer_lfsr = lfsr_out;
					// next_comparator_sig = 0;
					next_counter_reset = 0;
				end
			end
			1: begin  // Normal mode counting
				if (com_result) begin
					casex (in_sig)
						4'b1xxx: begin
							next_state = 1;
							if (counter_out + deadline > buffer_lfsr) begin
								next_buffer_lfsr = counter_out + deadline;
							end
							else begin
								next_buffer_lfsr = buffer_lfsr;
							end
							// next_comparator_sig = 0;
							next_counter_reset = 0;
						end
						default: begin
							next_state = 1;
							next_buffer_lfsr = buffer_lfsr;
							// next_comparator_sig = 0;
							next_counter_reset = 0;
						end
					endcase
				end
				else begin
					casex (in_sig)
						4'b1xxx: begin
							next_state = 1;
							if (counter_out + deadline > buffer_lfsr) begin
								next_buffer_lfsr = counter_out + deadline;
							end
							else begin
								next_buffer_lfsr = buffer_lfsr;
							end
							// next_comparator_sig = 0;
							next_counter_reset = 0;
						end
						default: begin
							next_state = 3;
							next_buffer_lfsr = buffer_lfsr;
							// next_comparator_sig = 1;
							next_counter_reset = 1;
						end
					endcase
				end
			end
			2: begin  // Comparator signal pulse
				next_state = 3;
				next_buffer_lfsr = buffer_lfsr;
				// next_comparator_sig = 0;
				next_counter_reset = 1;
			end
			3: begin // Obfuscated mode watching
				if (fsm_sig_grand) begin
					next_state = 3;
					next_buffer_lfsr = buffer_lfsr;
					// next_comparator_sig = 0;
					next_counter_reset = 1;
				end
				else begin
					if (priority_flag) begin  // When a prioritized task is requested in the encrypted mode, do not sample new LFSR output
						next_state = 1;
						next_buffer_lfsr = deadline;
						// next_comparator_sig = 0;
						next_counter_reset = 0;
					end
					else begin
						next_state = 1;
						next_buffer_lfsr = lfsr_out;
						// next_comparator_sig = 0;
						next_counter_reset = 0;
					end
				end
			end
		endcase
	end

endmodule