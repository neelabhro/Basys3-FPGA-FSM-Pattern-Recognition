`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2017 14:59:29
// Design Name: 
// Module Name: debounce
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


module debounce(

    input clk,
    input clear_in,
    output clear_out
    );

    reg A,B,C;
    always@(posedge clk)  
    begin
        A <= clear_in;
        B <= A;
        C <= B;
    end
    assign clear_out = ( A && B && C );


endmodule
