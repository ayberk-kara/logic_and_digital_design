`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2022 05:14:11 PM
// Design Name: 
// Module Name: modulus
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


module modulus(
    input serial_in,
    input reset,
    input enable,
    input cnt_in,
    output reg [2:0]out
    );
    
    integer counter;
    integer currentstate = 3'd0;

    
    always @(posedge cnt_in, posedge reset) begin
        if (reset == 1'b1) begin 
            out <= 3'b000;
            counter <= 0;
            currentstate = 3'd0;
        end
        else begin
            if (enable == 1'b1 && cnt_in == 1'b1) begin 
                out <= (out + (2**currentstate)*serial_in)%7;
                //counter <= counter + 1;
                
                if (currentstate == 3'd0)begin
                currentstate <= 3'd1;
                
                
                
                end
                if (currentstate == 3'd1)begin
                currentstate <= 3'd2;
                
       
                end
                
                if (currentstate == 3'd2)begin
                currentstate <= 3'd0;

                
                end
                //if (currentstate == 3'd3)begin
               // currentstate <= 3'd1;

               // end
                
                
            end
        end
    end
    
   
    
endmodule
