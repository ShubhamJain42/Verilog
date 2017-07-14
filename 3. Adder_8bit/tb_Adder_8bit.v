`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:58 08/09/2016
// Design Name:   adder_8bit
// Module Name:   E:/Xilinx/Full_adder_8bit/tb_adder.v
// Project Name:  Full_adder_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Commens:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_adder;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg C;

	// Outputs
	wire [7:0] sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	adder_8bit uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		A = 8'b00000000;
	#15 A = 8'b00000001;
	#10 A = 8'b00000010;
	#20 A = 8'b00010000;
	#15 A = 8'b00100000;
	#5 A = 8'b01100100;
	#10 A = 8'b00111100;
	#25 A = 8'b10101010;
	#5 A = 8'b10111111;
	end
	initial begin
		B = 8'b00010000;
	#10 B = 8'b00010010;
	#20 B = 8'b01110010;
	#10 B = 8'b00010010;
	#15 B = 8'b11010010;
	#25 B = 8'b11100101;
	#10 B = 8'b00100100;
	#15 B = 8'b11100010;
	#5 B = 8'b10101101;
	end
	initial begin
		C = 1'b0;
	#20 C = 1'b1;
	#10 C = 1'b0;
	#15 C = 1'b1;
	#20 C = 1'b0;
	#10 C = 1'b1;
	#15 C = 1'b0;
	#25 C = 1'b1;
	#5 C = 1'b0;
	end
      
endmodule

