`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:38 08/17/2016 
// Design Name: 
// Module Name:    CounterUsingDFF 
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
module CounterUsingDFF(
    input clk,
    input rst,
    output [7:0] Q
    );

 wire [7:0] q_bar;
		
		
		D_flip_flop T1(q_bar[0],clk,rst,Q[0],q_bar[0]);
		D_flip_flop T2(q_bar[1],q_bar[0],rst,Q[1],q_bar[1]);
		D_flip_flop T3(q_bar[2],q_bar[1],rst,Q[2],q_bar[2]);
		D_flip_flop T4(q_bar[3],q_bar[2],rst,Q[3],q_bar[3]);
		D_flip_flop T5(q_bar[4],q_bar[3],rst,Q[4],q_bar[4]);
		D_flip_flop T6(q_bar[5],q_bar[4],rst,Q[5],q_bar[5]);
		D_flip_flop T7(q_bar[6],q_bar[5],rst,Q[6],q_bar[6]);
		D_flip_flop T8(q_bar[7],q_bar[6],rst,Q[7],q_bar[7]);

endmodule

module D_flip_flop(
    input D,
    input clk ,
    input R,
    output reg Q,
    output reg q
    );
	 
	 always @(posedge clk)
	 if(R)begin
	 	Q = 1'b0;
	 	q = 1'b1;
	 	end
	 else	 begin
	 	Q = D;
	 	q = ~D;
	 	end


endmodule
