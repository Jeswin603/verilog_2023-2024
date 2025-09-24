module demuxtwo(
  input i,s,
  output o1,o2);
  assign o1=(~s&i);
  assign o2=(s&i);
endmodule
