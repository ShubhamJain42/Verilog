`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:17:38 08/18/2016
// Design Name:   shift_reg
// Module Name:   D:/G2_1401EE37_42/lab3/serial_shift_register/tb_shift_reg.v
// Project Name:  serial_shift_register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_shift_reg;

	// Inputs
	reg clk;
	reg clear;
	reg SI;

	// Outputs
	wire [3:0] Q;
	wire SO;

	// Instantiate the Unit Under Test (UUT)
	shift_reg uut (
		.Q(Q), 
		.SO(SO), 
		.clk(clk), 
		.clear(clear), 
		.SI(SI)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clear = 0;
		SI = 0;
		
	end
	
	always begin
	#1 clk = ~clk;
	end
	
	initial begin
	#3 SI = 1'b1;
	#3 SI = 1'b0;
	#3 SI = 1'b1;
	#3 SI = 1'b1;
	
	#3 SI = 1'b1;
	#3 SI = 1'b1;
	#3 SI = 1'b1;
	#3 SI = 1'b1;

	#3 SI = 1'b0;
	#3 SI = 1'b0;
	#3 SI = 1'b1;
	#3 SI = 1'b0;

	#3 SI = 1'b0;
	#3 SI = 1'b0;
	#3 SI = 1'b0;
	#3 SI = 1'b0;

	#3 SI = 1'b1;
	#3 SI = 1'b0;
	#3 SI = 1'b1;
	#3 SI = 1'b0;
	
	end
	
      
endmodule

