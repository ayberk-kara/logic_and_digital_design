`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2022 16:16:13
// Design Name: 
// Module Name: test1
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


module test1(
        );
    reg serial_in, reset, enable, CLK100MHZ;
    reg [2:0] configure;
    wire led;
    wire [2:0] out;
    
    ortakmodule ortaktest1(
    
    .serial_in(serial_in),
    .reset(reset),
    .enable(enable),
    .configure(configure),
    .CLK100MHZ(CLK100MHZ),
    .led(led),
    .out(out)
    
    
    );
    
    always begin
    CLK100MHZ = ~CLK100MHZ;
    #10;

    end
       
    initial begin
    CLK100MHZ = 1'b0;
    reset = 1;
    enable =0;
    serial_in = 1'b0;
    configure = 3'b000;
    #1350000;
    reset = 0;
    enable = 1;
    serial_in = 1'b1;
    #1350000;
    serial_in = 1'b1;
    #1350000;
    serial_in = 1'b0;
    #1350000;
    serial_in = 1'b1;
    #1350000;
    serial_in = 1'b0;
    #1350000;
    serial_in = 1'b1;
    #1350000;
    serial_in = 1'b1;
    #1350000;
    serial_in = 1'b0;
    
    
    
    
    

    
    
    
    end
endmodule
