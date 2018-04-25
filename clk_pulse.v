`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2017 15:28:39
// Design Name: 
// Module Name: clk_pulse
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


module clk_pulse(
    input inp,
    input clk,
    input clear_in,
    output clear_out
    );

    reg A,B,C;
    always@(posedge clk or posedge clr_in )  
    begin
    
        if (clr_in == 1)
            begin
                A <= 1'b0;
                B <= 1'b0;
                C <= 1'b0;
            end
        else
            begin    
                A <= inp;
                B <= A;
                C <= ~B;
            end
    
    end    
    assign clear_out =  A && B && C ;



endmodule
