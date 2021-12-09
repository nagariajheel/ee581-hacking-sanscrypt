module s27(GND,VDD,clk, reset, G0,G1,G17,G2,G3, lfsr_seed);
	parameter lfsr_len = 5;
	parameter counter_len = 7;
	parameter fsm_out_len = 3;  // CONFIGURE:
	parameter deadline = 5;
	input wire GND,VDD,clk, reset,G0,G1,G2,G3;
	output wire G17;
	input wire [lfsr_len - 1:0] lfsr_seed;  // The length depends on the LFSR

	wire [fsm_out_len - 1:0] fsm_flip;
	wire priority_flag;
	wire comparator_sig;

	s27_main main(clk, reset, G0,G1,G17,G2,G3, fsm_flip, comparator_sig);  // CONFIGURE: Change the design name and IO ports
	defparam main.fsm_out_len = fsm_out_len;
	obf_fsm fsm0(clk, reset, {G0,G1,G2,G3}, comparator_sig, fsm_flip, priority_flag);  // CONFIGURE: Change the IO ports
	defparam fsm0.input_len = 4; // CONFIGURE: Change the input length based on the original circuit
	defparam fsm0.output_len = fsm_out_len;
	jump_back_controller com(clk, reset, lfsr_seed, comparator_sig, fsm_flip, priority_flag, {G0,G1,G2,G3});
	defparam com.counter_len = counter_len;
	defparam com.lfsr_len = lfsr_len;
	defparam com.fsm_out_len = fsm_out_len;
	defparam com.deadline = deadline;
	defparam com.input_len = 4;

endmodule

module dff_mod (clk, reset, Q, D, freeze_sig, restore_flag, comparator_sig);  // Reset signal is added by us.
	input wire clk, reset, D, freeze_sig, restore_flag, comparator_sig;
	output reg Q;
	reg restored_bit;
	always @(posedge clk) begin   // new test
		if (reset == 1'b1) begin
			Q <= 1'b0;
			restored_bit <= 1'b0;
		end
		else begin
			if (freeze_sig) begin
				if (!restore_flag) begin  // Time to store the dff values
					restored_bit <= restored_bit;
					Q <= D;  // This makes the DFF act like normal
				end
				else begin
					restored_bit <= restored_bit;
					Q <= D;  // This makes the DFF act like normal
				end
			end
			else begin
				if (restore_flag) begin
					Q <= restored_bit;
					restored_bit <= Q;
				end
				else begin
					Q <= D;
					if (comparator_sig) begin
						restored_bit <= restored_bit;
					end
					else begin
						restored_bit <= D;
					end
				end
			end
		end
	end
endmodule

module s27_main(clk, reset, G0,G1,G17,G2,G3, fsm_flip, comparator_sig);  // CONFIGURE: Add the fsm_flip signal and change the combinational logic
	parameter fsm_out_len = 3;
	input clk, reset,G0,G1,G2,G3;
	output G17;
	input wire [fsm_out_len - 1:0] fsm_flip;
	input wire comparator_sig;

	wire fsm_grand_out;
	assign fsm_grand_out = |fsm_flip;
	reg restore_flag;
	always @ (posedge clk) begin
		if (reset == 1'b1) begin
			restore_flag <= 1'b0;
		end
		else begin
			if (fsm_grand_out) begin
				if (!restore_flag) begin 
					restore_flag <= 1'b1;
				end
				else begin
					restore_flag <= restore_flag;
				end
			end
			else begin
				if (restore_flag) begin 
					restore_flag <= 1'b0;
				end
				else begin
					restore_flag <= restore_flag;
				end
			end
		end
	end
	wire G5,G10,G6,G11,G7,G13,G14,G8,G15,G12,G16,G9;



	dff_mod DFF_0(clk, reset,G5,G10, fsm_grand_out, restore_flag, comparator_sig);
	dff_mod DFF_1(clk, reset,G6,G11, fsm_grand_out, restore_flag, comparator_sig);
	dff_mod DFF_2(clk, reset,G7,G13, fsm_grand_out, restore_flag, comparator_sig);
	not NOT_0(G14,G0);
	not NOT_1(G17,G11);

	and AND2_0(G8,G14,G6);
	or OR2_0(G15,G12,G8);

	or OR2_1(G16,G3,G8);
	nand NAND2_0(G9,G16,G15);

	nor NOR2_0(G10,G14,G11);
	nor NOR2_1(G11,G5,G9);

	nor NOR2_2(YH_0, G1, G7);
	xor YH_xor_0(G12, YH_0, fsm_flip[0]);
	nor NOR2_3(G13,G2,G12);

endmodule

