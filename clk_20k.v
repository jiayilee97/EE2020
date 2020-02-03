`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2017 15:06:50
// Design Name: 
// Module Name: clk_20k
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
// 20 khz clock
//////////////////////////////////////////////////////////////////////////////////


module clk_20k(
    input CLK,
    output reg slow_clk
    );
    reg [11:0] count=12'b0;
    initial begin
       slow_clk=0; 
    end
    always @(posedge CLK) begin
        count=(count==12'b100111000100)?0:count+1;
        slow_clk<=(count==12'b0)?~slow_clk:slow_clk;
    end
endmodule
