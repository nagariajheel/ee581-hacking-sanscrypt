module counter (clk, rst, cout);
	parameter bit_len = 5;  // This is taken care of by comparator.v
	input wire clk, rst;
	output reg [bit_len - 1:0] cout;
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1)
			cout <= 0;
		else begin
			cout <= cout + 1;
		end
	end
endmodule
