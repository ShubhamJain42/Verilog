`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:57 08/09/2016 
// Design Name: 
// Module Name:    adder_8bit 
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

//CREATING A TOP MODULE FOR 8 BIT FULL ADDER
module adder_8bit(A,B,C,sum,carry);
output [7:0]sum;
output carry;
input [7:0]A,B;
input C;	//INITIAL CARRY TO ADDER
wire [6:0]w;	//FOR INTERCONNECTIONS

//INTEGRATION OF FULL_ADDER MODULE BY POSITION
full_adder f0(A[0],B[0],C,sum[0],w[0]);
full_adder f1(A[1],B[1],w[0],sum[1],w[1]);
full_adder f2(A[2],B[2],w[1],sum[2],w[2]);
full_adder f3(A[3],B[3],w[2],sum[3],w[3]);
full_adder f4(A[4],B[4],w[3],sum[4],w[4]);
full_adder f5(A[5],B[5],w[4],sum[5],w[5]);
full_adder f6(A[6],B[6],w[5],sum[6],w[6]);
full_adder f7(A[7],B[7],w[6],sum[7],carry);
endmodule

//FULL ADDER FOR 1 BIT
module full_adder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
xor(w1,a,b);
xor(sum,w1,cin);
and(w2,w1,cin);
and(w3,a,b);
or(cout,w2,w3);
endmodule
