`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 04:15:08 PM
// Design Name: 
// Module Name: slow_clock
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


module slow_clock(
    input CLK,
    output reg slow_clock
    );
    reg [21:0] count = 0;
    initial begin
        slow_clock = 0;
    end
    always @(posedge CLK) begin
        count = (count==3124999)?0:count+1;
        slow_clock = (count == 0)? ~slow_clock:slow_clock;
    end
endmodule
