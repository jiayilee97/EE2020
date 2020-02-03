`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2017 15:28:42
// Design Name: 
// Module Name: clk_50M
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


module clk_50M(
    input CLK,
    output reg clk_50M
    );
    initial begin
        clk_50M=0;
    end
    always @(posedge CLK) begin
        clk_50M=~clk_50M;
    end
endmodule
