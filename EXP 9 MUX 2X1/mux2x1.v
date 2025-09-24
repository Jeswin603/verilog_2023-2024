module twomux(
  input a,b,s,
  output y);
  assign y =(a&~s)|(b&s);
endmodule