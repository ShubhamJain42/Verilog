`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:04:31 08/18/2016
// Design Name:   up_down_counter
// Module Name:   D:/G2_1401EE37_42/lab3/up_down_counter/tb_up_down_counter.v
// Project Name:  up_down_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: up_down_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_up_down_counter;

	// Inputs
	reg up_down;
	reg clk;

	// Outputs
	wire [7:0]count;

	// Instantiate the Unit Under Test (UUT)
	up_down_counter uut (
		.up_down(up_down), 
		.clk(clk), 
		.count(count)
	);

		initial begin
		clk = 0;
		up_down = 0;
		end

		always begin	
		#3 clk = ~clk;
		end
		
//		always begin
//		#4 up_down = ~up_down;
//		end
		
      always begin
		#20 up_down = 8'b00000001;
		#30 up_down  =8'b00000000;
		end

      
endmodule

