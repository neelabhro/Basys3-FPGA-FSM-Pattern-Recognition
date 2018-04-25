`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2017 15:22:01
// Design Name: 
// Module Name: FSM_top
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


module FSM_top(
    input clk,
    input clr,
    input [1:0] button,
    output [1:0] LED,
    output [2:0] prsnt_state
    );
    
    wire inp;
    assign inp = button[0] || button[1];
    
    freq_div f1 (clk,clk_190);
    debounce d1 (clk_190,clr,clr_out);
    clk_pulse c1 (inp,clk_190,clear_out,final_clear);
    moore_overlap m1 (clk,clr_out,final_clear,LED,prsnt_state);
    
endmodule
