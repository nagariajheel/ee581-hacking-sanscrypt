module lfsr_5 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [4:0]seed;
	output reg [4:0] out;
	
	wire feedback;
	
	assign feedback = out[2] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[4:1]};
		end
	end
endmodule


module lfsr_6 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [5:0]seed;
	output reg [5:0] out;
	
	wire feedback;
	
	assign feedback = out[1] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[5:1]};
		end
	end
endmodule


module lfsr_7 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [6:0]seed;
	output reg [6:0] out;
	
	wire feedback;
	
	assign feedback = out[1] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[6:1]};
		end
	end
endmodule


module lfsr_8 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [7:0]seed;
	output reg [7:0] out;
	
	wire feedback;
	
	assign feedback = out[4] ^ out[3] ^ out[2] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[7:1]};
		end
	end
endmodule


module lfsr_9 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [8:0]seed;
	output reg [8:0] out;
	
	wire feedback;
	
	assign feedback = out[4] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[8:1]};
		end
	end
endmodule



module lfsr_10 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [9:0]seed;
	output reg [9:0] out;
	
	wire feedback;
	
	assign feedback = out[3] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[9:1]};
		end
	end
endmodule


module lfsr_11 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [10:0]seed;
	output reg [10:0] out;
	
	wire feedback;
	
	assign feedback = out[2] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[10:1]};
		end
	end
endmodule


module lfsr_12 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [11:0]seed;
	output reg [11:0] out;
	
	wire feedback;
	
	assign feedback = out[8] ^ out[2] ^ out[1] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[11:1]};
		end
	end
endmodule

module lfsr_13 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [12:0]seed;
	output reg [12:0] out;
	
	wire feedback;
	
	assign feedback = out[5] ^ out[2] ^ out[1] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[12:1]};
		end
	end
endmodule


module lfsr_14 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [13:0]seed;
	output reg [13:0] out;
	
	wire feedback;
	
	assign feedback = out[12] ^ out[2] ^ out[1] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[13:1]};
		end
	end
endmodule


module lfsr_15 (clk, rst, seed, out);
	input wire clk, rst;
	input wire [14:0]seed;
	output reg [14:0] out;
	
	wire feedback;
	
	assign feedback = out[1] ^ out[0];
	
	always @ (posedge clk)
	begin
		if(rst == 1'b1) begin
			out <= seed;
		end
		else begin
			out <= {feedback, out[14:1]};
		end
	end
endmodule