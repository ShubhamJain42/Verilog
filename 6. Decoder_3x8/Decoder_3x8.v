`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:27 08/04/2016 
// Design Name: 
// Module Name:    Decoder_3to8 
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
module Decoder_3to8(
    input a,
    input b,
    input c,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7,
    output y8
    );
	 
	 wire w1,w2,w3;
	 not(w1,a);
	 not(w2,b);
	 not(w3,c);
	 and(y1,w1,w2,w3);
	 and(y2,w1,w2,c);
	 and(y3,w1,b,w3);
	 and(y4,w1,b,c);
	 and(y5,a,w2,w3);
	 and(y6,a,w2,c);
	 and(y7,a,b,w3);
	 and(y8,a,b,c);


endmodule
