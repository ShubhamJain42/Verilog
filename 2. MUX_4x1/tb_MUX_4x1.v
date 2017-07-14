`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:00 08/11/2016
// Design Name:   mux
// Module Name:   D:/G2_1401EE37_42/mux_4to1/tb_mux.v
// Project Name:  mux_4to1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux;

	// Inputs
	reg [3:0] a;
	reg [1:0] s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.a(a), 
		.s(s), 
		.y(y)
	);

	initial begin
	a = 4'b0000;
   #5 a = 4'b0001;
   #5 a = 4'b0010;
   #5 a = 4'b0011;
   #5 a = 4'b0100;
   #5 a = 4'b0101;
   #5 a = 4'b0110;
   #5 a = 4'b0111;
	#5 a = 4'b1000;
	end
	
	initial begin
	s = 2'b00;
	#1.25 s = 2'b01;
	#1.25 s = 2'b10;
	#1.25 s = 2'b11;
	#1.25 s = 2'b00;
	#1.25 s = 2'b01;
	#1.25 s = 2'b10;
	#1.25 s = 2'b11;
	#1.25 s = 2'b00;
	#1.25 s = 2'b01;
	#1.25 s = 2'b10;
	#1.25 s = 2'b11;
	#1.25 s = 2'b00;
	#1.25 s = 2'b01;
	#1.25 s = 2'b10;
	#1.25 s = 2'b11;
	#1.25 s = 2'b00;
	#1.25 s = 2'b01;
	#1.25 s = 2'b10;
	#1.25 s = 2'b11;
	#1.25 s = 2'b00;
	#1.25 s = 2'b01;
	#1.25 s = 2'b10;
	#1.25 s = 2'b11;
	#1.25 s = 2'b00;
	#1.25 s = 2'b01;
	#1.25 s = 2'b10;
	#1.25 s = 2'b11;
	#1.25 s = 2'b00;
	#1.25 s = 2'b01;
	#1.25 s = 2'b10;
	#1.25 s = 2'b11;
	#1.25 s = 2'b00;
   end
   
endmodule

