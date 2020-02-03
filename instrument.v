`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2017 15:35:58
// Design Name: 
// Module Name: instrument
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


module instrument(
    input clk,
    input clk_20k,
    input [4:0] tune,
    output reg [11:0] note  //count for freq
    );
    initial begin
        note=0;
    end
    
    wire [4:0] clknote;
    reg finalclk;
    clk_do clk1 (clk, clknote[0]);
    clk_re clk2 (clk, clknote[1]);
    clk_mi clk3 (clk, clknote[2]);
    clk_fa clk4 (clk, clknote[3]);
    clk_so clk5 (clk, clknote[4]);
    
    always @(tune) begin
        if(tune[0]) begin
            finalclk = clknote[0];
        end
        if(tune[1]) begin
            finalclk = clknote[1];
        end
        if(tune[2]) begin
            finalclk = clknote[2];
        end
        if(tune[3]) begin
            finalclk = clknote[3];
        end
        if(tune[4]) begin
            finalclk = clknote[4];
        end                               
    end
    always @(posedge clk_20k) begin
        note = finalclk*400+200;
    end
endmodule
