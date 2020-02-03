`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2017 14:29:17
// Design Name: 
// Module Name: volume_display
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


module volume_display(
    input [11:0] mic,
    input clk_20k,
    output reg [11:0] led
    );
    reg [11:0] max;
    reg [11:0] count;
    initial begin
        led = 0;
        max = 0;
        count = 0;
    end
    always @(posedge clk_20k) begin
        max = (max>mic)? max:mic;
        count = (count==2500)? 0:count+1;
        if (count==0) begin
            led = max;
            max=0;
        end
    end
endmodule
