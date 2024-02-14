`timescale 1ns / 1ps



module lab3_simulation(
    
   
    );
    reg x3,x2,x1,x0,y3,y2,y1,y0 ;
    wire AA , AB, BB;
    lab3_source UUT(
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
    x0=0;
    y3=0;
    y2=0;
    y1=0;
    y0=0;
    #10;
    x3=1;                
    x2=0;
    x1=0;
    x0=0;
    y3=0;
    y2=0;
    y1=0;
    y0=0;
    #10;
    x3=0;                
    x2=1;
    x1=0;
    x0=0;
    y3=0;
    y2=0;
    y1=0;
    y0=0;
    
    end
endmodule
