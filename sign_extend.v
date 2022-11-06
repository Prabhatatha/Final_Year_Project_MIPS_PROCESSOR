module sign_extend(in,out);
  input [15:0] in;
  wire temp;
  output reg [31:0] out;
  assign temp={16{in[15]}};
  assign out={temp,in};
   endmodule
