`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2022 05:17:27 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input [2:0]configure,
    input reset,
    input enable,
    input CLK100MHZ,
    output reg led,
    output reg cnt_output
    );
    
    integer counter;
    
    always @(posedge CLK100MHZ) begin
        if (reset == 1'b1) begin
            counter <= 0;
            cnt_output <= 1'b0;
        end
        else begin
            if (enable == 1'b1) begin
                if(configure == 3'b000 && counter == 32'h02000000) begin
                 cnt_output <= 1'b1;
                 counter <= 0;
                end
                else if(configure == 3'b001 && counter == 32'h04000000) begin
                    cnt_output <= 1'b1;
                    counter <= 0;
                end
                else if(configure == 3'b010 && counter == 32'h08000000) begin
                    cnt_output <= 1'b1;
                    counter <= 0;
                end
                else if(configure == 3'b011 && counter == 32'h10000000) begin
                    cnt_output <= 1'b1;
                    counter <= 0;
                end
                else if(configure == 3'b100 && counter == 32'h20000000) begin
                    cnt_output <= 1'b1;
                    counter <= 0;
                end
                else if(configure == 3'b101 && counter == 32'h40000000) begin
                    cnt_output <= 1'b1;
                    counter <= 0;
                end
                else if(configure == 3'b110 && counter == 32'h80000000) begin
                    cnt_output <= 1'b1;
                    counter <= 0;
                end
                else if(configure == 3'b111 && counter == 32'hffffffff) begin
                    cnt_output <= 1'b1;
                    counter <= 0;
                end
                else begin
                    counter <= counter + 1;
                    cnt_output <= 1'b0;
                end
            end
            
        end
   end
   
   always @(posedge cnt_output) begin
    if (reset == 1'b1) begin
        led <= 1'b0;
    end
    else begin
        led <= ~led;
    end
   end
endmodule