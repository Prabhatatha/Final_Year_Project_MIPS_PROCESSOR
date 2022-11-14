`timescale 1ns / 1ps
module tb(

    );
    reg [15:0] in;
    wire [31:0] out;
    sign_extend dut(.in(in),.out(out));
    initial
    begin
    #5 in=16'b1111111111111111;
    #5 in=16'b1010101010101010;
    #5 in=16'b0101010101101011;
    #50 $finish;
    end
    initial
    begin
    $monitor($time,"in=%b,out=%b",in,out);
    end
endmodule
