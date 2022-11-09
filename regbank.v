`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2022 17:38:29
// Design Name: 
// Module Name: reg_bank
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


module reg_bank(ra1,ra2,wa,wd,rw,clk,rd1,rd2

    );
    input [4:0] ra1;
    input [4:0] ra2;
    input [4:0] wa;
    input [31:0] wd;
    input rw;
    input clk;
    output  [31:0] rd1;
    output  [31:0] rd2;
    reg [31:0] regbank [31:0];
    assign rd1=regbank[ra1];
    assign rd2=regbank[ra2];
    
    always@(posedge clk)
    begin
    
    if(rw)
    begin
    regbank[wa]<=wd;
    end
    end
    
endmodule
