`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:34 08/11/2016
// Design Name:   d_ff
// Module Name:   D:/G2_1401EE37_42/d_flip_flop/tb_d_ff.v
// Project Name:  d_flip_flop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_d_ff;

	// Inputs
	reg D;
	reg R;
	reg clk;

	// Outputs
	wire Q;
	wire q;

	// Instantiate the Unit Under Test (UUT)
	d_ff uut (
		.D(D), 
		.R(R), 
		.Q(Q), 
		.q(q), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		R = 0;
		#10 R = 1'b1;
		#10 R = 1'b0;
		#10 R = 1'b1;
		#10 R = 1'b0;
		#10 R = 1'b1;
		#10 R = 1'b0;
	end
	
	initial begin
		// Initialize Inputs
		D = 0;
		#5 D = 1'b1;
		#5 D = 1'b0;
		#5 D = 1'b1;
		#5 D = 1'b0;
		#5 D = 1'b1;
		#5 D = 1'b0;
	end
   
	initial begin
		// Initialize Inputs
		
	   clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
		#2 clk = 1'b1;
		#2 clk = 1'b0;
	end
   
	

   
endmodule

