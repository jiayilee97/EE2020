`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2017 02:36:44 PM
// Design Name: 
// Module Name: playback1
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


module playback1(
    input clk,
    input hundredMHz_clk,
    input playback_pauseswitch,
    output reg [11:0] sound_value
    );
    reg [13:0] count;
    wire debounced_playbtn;
    reg playStat = 1;
    single_pulse sp0 (playback_pauseswitch,hundredMHz_clk,debounced_playbtn);
    initial begin
        count=14'b0;
    end
    wire [11:0] sound_info;
    dist_mem_gen_2 fa1(count, sound_info);
    always @(posedge debounced_playbtn) begin
        playStat=~playStat;
    end
    always @(posedge clk) begin
        sound_value=sound_info ;
        count = (count==8191)? 0:count + ~playStat;        
    end
endmodule
