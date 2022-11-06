`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2022 21:11:03
// Design Name: 
// Module Name: alu
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


module alu(rs,rt,op,clk,zero,aluresult

    );
    input [31:0] rs;
    input [31:0] rt;
    input clk;
    input [2:0] op;
    output  zero;
    output reg [31:0] aluresult;
    always@(posedge clk)
    begin
    case(op)
    3'b000: aluresult<=rs&&rt;
    3'b001: aluresult<=rs||rt;
    3'b010: aluresult<=rs+rt;
    3'b011: aluresult<=rs-rt;
    3'b100: aluresult<=rs<rt;
    default: aluresult<=3'bxxx;
    endcase
    end
    assign zero=(rs-rt)?1:0;
    endmodule
    

