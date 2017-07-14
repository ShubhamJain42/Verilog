`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:07 08/18/2016 
// Design Name: 
// Module Name:    shift_reg 
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
module shift_reg(
    output [3:0]Q,
    output SO,
    input clk,
    input clear,
    input SI
    );
	 
	 wire [3:0]wd;
	 
	 
	 dff f1(SI,clear,wd[0],,clk);
	 dff f2(wd[0],clear,wd[1],,clk);
	 dff f3(wd[1],clear,wd[2],,clk);
	 dff f4(wd[2],clear,wd[3],,clk);
		
	 
	 assign Q[0] = wd[3];
	 assign Q[1] = wd[2];
	 assign Q[2] = wd[1];
	 assign Q[3] = wd[0];
	 
	 
endmodule


module dff(
    input D,
    input R,
    output reg Q,
    output reg q, 
    input clk 
    );
	 
//	 always @(posedge clk)
//	 if(R)
//	 begin
//	 Q = 1'b0;
//	 q = 1'b1;
//	 end
//	 else
//	 begin
//	 Q = D;
//	 q = ~D;
//	 end

    wire w1,w2,w3,w6,w7,w8;
	 not(w1,D); 
	 and(w6,clk,R);
	 and(w2,D,w6);
	 not(w7,w2);
	 and(w3,w6,w1);
	 not(w8,w3);
	 nand(Q,w7,q);
	 nand(q,w8,Q);
endmodule
