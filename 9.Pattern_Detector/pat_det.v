`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:34 09/01/2016 
// Design Name: 
// Module Name:    pat_det 
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
module pat_det(
    input [3:0] pattern = 4'b0110,
    input [31:0] data =32'b01100110110111110001100011010110,
    input clk,
    input out
    );
	 
	 
devide32 d1(clk,a1);	
devide32 d2(a1,a2);	
devide32 d3(a2,a3);	
devide32 d4(a3,a4);	
devide32 d5(a4,clk3);

	 reg i = 31;
	 reg temp[3:0] = 4'b0000;
	 always @(posedge clk3)
	 begin 
	 shift_reg sr(temp,,clk3,1,data[i]);
	 i=i-1;
	 
	 if (temp == pattern)
	 begin
		out = 1;
	 end
	 else
	 begin
		out = 0;
	 end
	 end
	
	 
endmodule


module shift_reg(
    output [3:0]Q,
    output SO,
    input clk3,
    input clear,
    input SI
    );
	 
	 wire [3:0]wd;
	 
	 
	 
	 
	 dff f1(SI,clear,wd[0],,clk3);
	 dff f2(wd[0],clear,wd[1],,clk3);
	 dff f3(wd[1],clear,wd[2],,clk3);
	 dff f4(wd[2],clear,wd[3],,clk3);
		
	 
	 assign Q[0] = wd[3];
	 assign Q[1] = wd[2];
	 assign Q[2] = wd[1];
	 assign Q[3] = wd[0];
	 
	 
endmodule


module dff(
    input D,
    input R,
    output reg Q,
    output reg q_bar, 
    input clk 
    );
	 
	 always @(posedge clk)
	 if(R)
	 begin
	 Q = 1'b0;
    q_bar = 1'b1;
	 end
	 else
	 begin
	 Q = D;
	 q_bar = ~D;
	 end
endmodule 



module devide32(
	input clk,
	output clk2
	);
	wire w1,w2,w3,w4;
	T_FF ff1(clk,1'b1,1'b0,w1,);
	T_FF ff2(w1,1'b1,1'b0,w2,);
	T_FF ff3(w2,1'b1,1'b0,w3,);
	T_FF ff4(w3,1'b1,1'b0,w4,);
	T_FF ff5(w4,1'b1,1'b0,clk2,);
	
	endmodule
	module T_FF(
input clk,
input T,
input reset,
output reg q,
output reg q_bar
);

always@(posedge clk)
begin
if(reset) begin
	q=1'b0;
	q_bar=1'b1; 
	end
else begin
	if(T) begin
	q=~q;
	q_bar=q;
	end
	else
		begin
			q=q;
			q_bar=q_bar;
		end
	end
	end
	endmodule 