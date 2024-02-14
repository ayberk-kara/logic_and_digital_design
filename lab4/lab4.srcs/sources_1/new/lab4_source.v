`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2022 11:30:13 PM
// Design Name: 
// Module Name: ComperatorDesign
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ComperatorDesign(
A,
B,
equal,
high,
low
    );
    input [3:0] A;
    input [3:0] B;
    output equal,high,low;
    wire w0, w1, w2, w3; //xor gates
    wire a0, a1, a2, a3; //outputs of and gates
    wire a11, a21, a31; //inputs of and gates
    wire a12, a22, a23;
    
    assign w0 = (A[0] & B[0]) | (~A[0] & ~B[0]);
    assign w1 = (A[1] & B[1]) | (~A[1] & ~B[1]);
    assign w2 = (A[2] & B[2]) | (~A[2] & ~B[2]);
    assign w3 = (A[3] & B[3]) | (~A[3] & ~B[3]);
    assign equal = (w1 & w2 & w3 & w0);
    
    assign a0 = (B[3] & ~A[3]);
    assign a11 = (A[2] & ~B[2]);
    assign a21 = (A[1] & ~B[1]);
    assign a31 = (A[0] & ~B[0]);
    
    assign a12 = (a11 &  w3);
    assign a22 = (a21 &  w3 & w2);
    assign a32 = (a31 &  w3 & w2 & w1);
    
    assign high = (a0 | a12 | a22 | a32);
    
    assign low = (~high) & (~equal);
endmodule