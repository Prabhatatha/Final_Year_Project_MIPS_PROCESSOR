`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2022 12:15:46
// Design Name: 
// Module Name: tb
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


module tb(

    );
      reg [4:0] ra1;
    reg [4:0] ra2;
    reg [4:0] wa;
    reg [31:0] wd;
    reg rw;
    reg clk;
    wire [31:0] rd1;
    wire  [31:0] rd2;
    integer k;
    reeg_bank dut(.ra1(ra1),.ra2(ra2),.wa(wa),.wd(wd),.rw(rw),.clk(clk),.rd1(rd1),.rd2(rd2));
    
    initial
    begin
    clk=1'b0;
    end
    always
    begin
    clk=~clk;
    end 
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    end
    initial
    begin
    #2 rw=0;
    end
    
    initial
    begin
    #7
    for(k=0;k<32;k=k+1)
    begin
    wa=k;wd=10*k;rw=1;
    
    #10 rw=0;
    end
    #20
    for(k=0;k<32;k=k+2)
    begin
    ra1=k;ra2=k+1;
    #5;
    $display("regbank[%2d]=%d;regbank[%d]",ra1,rd1,ra2,rd2);
    end
    #2000 $finish();
    end
   
    
    
endmodule
