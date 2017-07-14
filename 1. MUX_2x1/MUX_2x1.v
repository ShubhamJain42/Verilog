`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:29 08/04/2016 
// Design Name: 
// Module Name:    MUX_2x1 
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
module MUX_2x1(
    input a,
    input b,
    input s,
    output y
    );
	 
	 wire w1,w2,w3;
	 not(w3,s);
	 and(w1,a,w3);
	 and(w2,b,s);
	 or(y,w1,w2);

endmodule
