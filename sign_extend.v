`timescale 1ns / 1ps
module sign_extend(in,out);
  input [15:0] in;
  wire[15:0] temp;
  output  [31:0] out;
  assign temp={16{in[15]}};
  assign out={temp,in};
   endmodule
