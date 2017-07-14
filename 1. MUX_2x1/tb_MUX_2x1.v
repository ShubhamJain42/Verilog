`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:14:36 08/04/2016
// Design Name:   MUX_2x1
// Module Name:   D:/G2_1401EE37_42/MUX_2x1/tb_MUX_2x1.v
// Project Name:  MUX_2x1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_2x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_MUX_2x1;

	// Inputs
	reg a;
	reg b;
	reg s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	MUX_2x1 uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.y(y)
	);

	initial begin
	a=0;
	#15 a=1'b1;
	#15 a=1'b0;
	#15 a=1'b1;
	#15 a=1'b0;
	#15 a=1'b1;
	#5  a=1'b0;
	end
	
	initial begin
	b=1;
	#10 b=1'b0;
	#10 b=1'b1;
	#10 b=1'b0;
	#10 b=1'b1;
	#10 b=1'b0;
	#10 b=1'b1;
	#10 b=1'b0;
	#10 b=1'b1;
	end
	
	initial begin
	s=1;
	#20 s=1'b0;
	#20 s=1'b1;
	#20 s=1'b0;
	#20 s=1'b1;
	//#5 s=1'b0;
	//#5 s=1'b1;
	end
	
      
endmodule





















