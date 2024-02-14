`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2022 17:49:19
// Design Name: 
// Module Name: lab4_sim
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


module lab4_sim(
    
   
    );
    reg x3;
    reg x2;
    reg x1;
    reg x0;
    reg y3;
    reg y2;
    reg y1;
    reg y0;
    wire AA , AB, BB;
    lab4_source UUT(
    .x3(x3),
    .x2(x2),
    .x1(x1),
    .x0(x0),
    .y3(y3),
    .y2(y2),
    .y1(y1),
    .y0(y0),
    .AA(AA),
    .BB(BB),
    .AB(AB)
    );
    
    initial begin 
    x3=0;                //X3X2X1X0       Y3Y2Y1Y0
    x2=0;
    x1=0;
    x0=0;             //A=B=0
    y3=0;
    y2=0;
    y1=0;
    y0=0;
    #10;
    x3=1;                
    x2=0;
    x1=0;             // A=-8 B=0
    x0=0;             
    y3=0;
    y2=0;
    y1=0;
    y0=0;
    #10;
    x3=0;                
    x2=1;
    x1=0;
    x0=0;              // A = 4 B= 0 
    y3=0;
    y2=0;
    y1=0;
    y0=0;
    #10;
    x3=0;                
    x2=1;
    x1=0;
    x0=0;              // A = 4 B= 2 
    y3=0;
    y2=0;
    y1=1;
    y0=0;
    #10;
    x3=0;                
    x2=1;
    x1=0;
    x0=0;              // A = 4 B= 7 
    y3=0;
    y2=1;
    y1=1;
    y0=1;
    #10;
    x3=1;                
    x2=1;
    x1=1;
    x0=0;              // A = -2 B= -4 
    y3=1;
    y2=1;
    y1=0;
    y0=0;
    
    end
endmodule
