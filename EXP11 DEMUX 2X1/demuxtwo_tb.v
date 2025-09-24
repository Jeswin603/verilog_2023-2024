`timescale 1ns/1ns
module demuxtwo_tb;
  reg i,s;
  wire o1,o2;
  
  demuxtwo uut(.i(i), .s(s), .o1(o1), .o2(o2));
  initial begin
    i=0;s=0; #10;
    i=0;s=1;#10;
    i=1;s=0;#10;
    i=1;s=1;#10;
  end
endmodule

    
  
