`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:22 08/11/2016 
// Design Name: 
// Module Name:    d_ff 
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
module d_ff(
    input D,
    input R,
    output reg Q,
    output reg q, 
    input clk 
    );
	 
	 always @(posedge clk)
	 if(R)
	 begin
	 Q = 1'b0;
	 q = 1'b1;
	 end
	 else
	 begin
	 Q = D;
	 q = ~D;
	 end


endmodule
