`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:35 08/18/2016 
// Design Name: 
// Module Name:    up_down_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module up_down_counter(
    input up_down,
    input clk,
    output reg [7:0]count = 8'b00000000
    );
	 
	 
	
	always @(posedge clk)
	 if (up_down == 1) begin
		 count = count + 8'b00000001;
	end
	 else if (up_down == 0) begin
		 count = count - 8'b00000001;
	end
endmodule
