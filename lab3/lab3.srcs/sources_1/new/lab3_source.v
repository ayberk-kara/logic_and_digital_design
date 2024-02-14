`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 15:53:46
// Design Name: 
// Module Name: lab3_source
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


module lab3_source(x0,x1,x2,x3,y0,y1,y2,y3,AA,AB,BB);
    output AA, AB, BB;
    input x0,x1,x2,x3,y0,y1,y2,y3;
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
    xor G5(w5, x0,y0);
    xor G6(w6, x1,y1);
    xor G7(w7, x2,y2);
    xor G8(w8, x3,y3);
    and G14(AB, w5,w6,w7,w8); // A=B
    
    assign x0n = ~(x0);
    assign x1n = ~(x1);
    assign x2n = ~(x2);
    assign x3n = ~(x3);
    assign y0n = ~(y0);
    assign y1n = ~(y1);
    assign y2n = ~(y2);
    assign y3n = ~(y3);
    
    and G1(w1, x3n, y3);
    and G2(w2, x2,y2n, w8);
    and G3(w3, x1, y1n, w8,w7);
    and G4(w4, x0, y0n,w8,w7,w6);
    or (AA, w1,w2,w3,w4); // A>B
    
    
    and G9(w9, x3, y3n);
    and G10(w10, x2n,y2, w8);
    and G11(w11, x1n, y1, w8,w7);
    and G12(w12, x0n, y0,w8,w7,w6);
    or (BB, w9,w10,w11,w12); // B<A
    
endmodule
