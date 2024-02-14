`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2022 17:15:59
// Design Name: 
// Module Name: ortakmodule
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


module ortakmodule(

    input serial_in,
    input reset,
    input enable,
    
    input [2:0]configure,
    input CLK100MHZ,
    output [2:0]out,
    output led
    
    
    );
    wire CounterToModules;
    
    counter counter(
    .enable(enable),
    .reset(reset),
    .configure(configure),
    .CLK100MHZ(CLK100MHZ),
    .led(led),
    .cnt_output(CounterToModules)
    );
    
    modulus modulus(
    
    .serial_in(serial_in),
    .reset(reset),
    .enable(enable),
    .cnt_in(CounterToModules),
    .out(out)
    
    );

    

endmodule
