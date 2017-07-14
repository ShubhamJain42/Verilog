`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:34 09/01/2016 
// Design Name: 
// Module Name:    prbs 
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
//reg used in always and wire is used with assign outside always/initial
module prbs(
    input clk,
	 input load_flag,
    input [2:0]l,
	 output [2:0] out
	 );
	 wire [3:0]w;
	 wire [2:0]q;
	 
	 assign q[0] = l[0];
	 assign q[1] = l[1];
	 assign q[2] = l[2];
	 
	  
	 always @(posedge clk)
	 begin
	 if (load_flag == 1) begin	
		
		
	 end
	 else begin
		 xor(w[0],w[3],w[2]);
		 dff ff1(w[0],0,w[1],,clk);
		 dff ff2(w[1],0,w[2],,clk);
		 dff ff3(w[2],0,w[3],,clk);
	 end 
	 end
endmodule


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
