`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:44:39 08/17/2016
// Design Name:   CounterUsingDFF
// Module Name:   Counter/CounterUsingDFF_tb.v
// Project Name:  Counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CounterUsingTFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CounterUsingDFF_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	CounterUsingTFF uut (
		.clk(clk), 
		.rst(rst), 
		.Q(Q)
	);
 
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#1.85 rst=0;;
        
		// Add stimulus here

	end
      always begin 
			#1.8 clk=1;
			#1.8 clk=0;
		end
endmodule

