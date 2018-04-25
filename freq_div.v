`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2017 15:20:13
// Design Name: 
// Module Name: freq_div
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


module freq_div(

    input clock_in,
    output clock_out
    );
    parameter width = 20;
    
    reg [width -1:0] count;
    always@(posedge clock_in)
    begin
        count = count + 1;
    end
     
    assign clkock_out = count[width -1]; 

endmodule
