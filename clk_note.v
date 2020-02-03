`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2017 15:46:22
// Design Name: 
// Module Name: clk_note
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


module clk_do(
    input CLK,
    output reg slow_clk
    );
    reg [20:0] count=21'b0;
    initial begin
        slow_clk=0; 
    end
    always @(posedge CLK) begin
        count=(count==190840)?0:count+1;
        slow_clk<=(count==0)?~slow_clk:slow_clk;
    end
endmodule

module clk_re(
    input CLK,
    output reg slow_clk
    );
    reg [20:0] count=21'b0;
    initial begin
        slow_clk=0; 
    end
    always @(posedge CLK) begin
        count=(count==170068)?0:count+1;
        slow_clk<=(count==0)?~slow_clk:slow_clk;
    end
endmodule


module clk_mi(
    input CLK,
    output reg slow_clk
    );
    reg [20:0] count=21'b0;
    initial begin
        slow_clk=0; 
    end
    always @(posedge CLK) begin
        count=(count==151515)?0:count+1;
        slow_clk<=(count==0)?~slow_clk:slow_clk;
    end
endmodule


module clk_fa(
    input CLK,
    output reg slow_clk
    );
    reg [20:0] count=21'b0;
    initial begin
        slow_clk=0; 
    end
    always @(posedge CLK) begin
        count=(count==143266)?0:count+1;
        slow_clk<=(count==0)?~slow_clk:slow_clk;
    end
endmodule


module clk_so(
    input CLK,
    output reg slow_clk
    );
    reg [20:0] count=21'b0;
    initial begin
        slow_clk=0; 
    end
    always @(posedge CLK) begin
        count=(count==127551)?0:count+1;
        slow_clk<=(count==0)?~slow_clk:slow_clk;
    end
endmodule

