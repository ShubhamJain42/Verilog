`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:28:41 08/04/2016
// Design Name:   Decoder_3to8
// Module Name:   D:/G2_1401EE37_42/Decoder/tb_decoder3to8.v
// Project Name:  Decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder_3to8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_decoder3to8;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire y1;
	wire y2;
	wire y3;
	wire y4;
	wire y5;
	wire y6;
	wire y7;
	wire y8;

	// Instantiate the Unit Under Test (UUT)
	Decoder_3to8 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4), 
		.y5(y5), 
		.y6(y6), 
		.y7(y7), 
		.y8(y8)
	);

	initial begin
	a=0;
	#20 a=1'b1;
	#20 a=1'b0;
	#20 a=1'b1;
	#20 a=1'b0;
	end
	   
	initial begin
	b=0;
	#10 b=1'b1;
	#10 b=1'b0;
	#10 b=1'b1;
	#10 b=1'b0;
	#10 b=1'b1;
	#10 b=1'b0;
	#10 b=1'b1;
	#10 b=1'b0;
	end
	
	initial begin
	c=0;
	#5 c=1'b1;
	#5 c=1'b0;
	#5 c=1'b1;
	#5 c=1'b0;
	#5 c=1'b1;
	#5 c=1'b0;
	#5 c=1'b1;
	#5 c=1'b0;
	#5 c=1'b1;
	#5 c=1'b0;
	#5 c=1'b1;
	#5 c=1'b0;
	#5 c=1'b1;
	#5 c=1'b0;
	#5 c=1'b1;
	#5 c=1'b0;
	end
	   
endmodule









