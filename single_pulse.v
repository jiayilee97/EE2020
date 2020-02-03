`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 04:19:19 PM
// Design Name: 
// Module Name: single_pulse
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


module single_pulse(
    input btn,
    input CLK,
    output pulse
    );
    wire slow_clock;
    wire [1:0]Q;
    slow_clock clk0 (CLK,slow_clock);
    dff dff0 (btn,slow_clock,Q[0]);
    dff dff1 (Q[0], slow_clock, Q[1]);
    and u0 (pulse, Q[0], ~Q[1]);
endmodule
