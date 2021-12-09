module obf_fsm(clk, reset, in_sig, comparator_sig, obf_sig, priority_flag);  // Moore machine
	parameter input_len = 4;
	parameter output_len = 3;
	input wire clk, reset;
	input wire [input_len - 1:0] in_sig; // The length of the input to this FSM shoudl be equal to the primary input length. 
	input wire comparator_sig; 
	output reg [output_len - 1:0] obf_sig;
	output reg priority_flag;

	reg [2:0] state, next_state;  // The state space size is irelavent to the input size, thus it can be customized. 
	reg [output_len - 1:0] next_out;
	reg next_priority_flag;

	always @ (posedge clk) begin  // State transitioning
		if (reset == 1'b1) begin
			state <= 0;  // When the FSM is reset, it outputs one representing obfuscated mode. 
			obf_sig <= 7;
			priority_flag <= 0;
		end
		else begin
			state <= next_state;
			obf_sig <= next_out;
			priority_flag <= next_priority_flag;
		end
	end

	always @ (state or in_sig or comparator_sig) begin  // Define the next state logic and the output function logic
		case (state)
			0: begin
				casex (in_sig)
					7: begin
						next_state = 1;
						next_out = 6;
						next_priority_flag = 0;
					end
					4'b1xxx: begin  // Priority
						if (obf_sig != 0) begin
							next_state = 7;
							next_out = 0;
							next_priority_flag = 1;
						end
						else begin
							next_state = 0;
							next_out = 7;
							next_priority_flag = 0;
						end
					end
					default: begin
						next_state = 0;  // Try other variants
						next_out = 7;
						next_priority_flag = 0;
					end
				endcase	
			end
			1: begin
				casex (in_sig)
					7: begin
						next_state = 5;
						next_out = 2;
						next_priority_flag = 0;
					end
					4'b1xxx: begin  // Priority
						if (obf_sig != 0) begin
							next_state = 7;
							next_out = 0;
							next_priority_flag = 1;
						end
						else begin
							next_state = 0;
							next_out = 6;
							next_priority_flag = 0;
						end
					end
					default: begin 
						next_state = 0;
						next_out = 6;
						next_priority_flag = 0;
					end
				endcase
			end
			2: begin
				casex (in_sig)
					4: begin
						next_state = 3;
						next_out = 4;
						next_priority_flag = 0;
					end
					4'b1xxx: begin  // Priority
						if (obf_sig != 0) begin
							next_state = 7;
							next_out = 0;
							next_priority_flag = 1;
						end
						else begin
							next_state = 0;
							next_out = 5;
							next_priority_flag = 0;
						end
					end
					default: begin
						next_state = 0;
						next_out = 5;
						next_priority_flag = 0;
					end
				endcase
			end
			3: begin
				casex (in_sig)
					0: begin
						next_state = 6;
						next_out = 1;
						next_priority_flag = 0;
					end
					4'b1xxx: begin  // Priority
						if (obf_sig != 0) begin
							next_state = 7;
							next_out = 0;
							next_priority_flag = 1;
						end
						else begin
							next_state = 0;
							next_out = 4;
							next_priority_flag = 0;
						end
					end
					default: begin
						next_state = 0;
						next_out = 4;
						next_priority_flag = 0;
					end
				endcase
			end
			4: begin
				casex (in_sig)
					6: begin
						next_state = 2;
						next_out = 5;
						next_priority_flag = 0;
					end
					4'b1xxx: begin  // Priority
						if (obf_sig != 0) begin
							next_state = 7;
							next_out = 0;
							next_priority_flag = 1;
						end
						else begin
							next_state = 0;
							next_out = 3;
							next_priority_flag = 0;
						end
					end
					default: begin
						next_state = 0;
						next_out = 3;
						next_priority_flag = 0;
					end
				endcase
			end
			5: begin
				casex (in_sig)
					2: begin
						next_state = 4;
						next_out = 3;
						next_priority_flag = 0;
					end
					4'b1xxx: begin  // Priority
						if (obf_sig != 0) begin
							next_state = 7;
							next_out = 0;
							next_priority_flag = 1;
						end
						else begin
							next_state = 0;
							next_out = 2;
							next_priority_flag = 0;
						end
					end
					default: begin
						next_state = 0;
						next_out = 2;
						next_priority_flag = 0;
					end
				endcase
			end
			6: begin
				casex (in_sig)
					5: begin
						next_state = 7;
						next_out = 0;
						next_priority_flag = 0;
					end
					4'b1xxx: begin  // Priority
						if (obf_sig != 0) begin
							next_state = 7;
							next_out = 0;
							next_priority_flag = 1;
						end
						else begin
							next_state = 0;
							next_out = 1;
							next_priority_flag = 0;
						end
					end
					default: begin
						next_state = 0;
						next_out = 1;
						next_priority_flag = 0;
					end
				endcase
			end
			7: begin
				case (comparator_sig)  // Temperary implemented this way, always jump back to the original state. 
					1'b1: begin
						next_state = 0;
						next_out = 7;
						next_priority_flag = 0;
					end
					default: begin
						next_state = 7;
						next_out = 0;
						next_priority_flag = 0;
					end
				endcase
			end
		endcase
	end

endmodule