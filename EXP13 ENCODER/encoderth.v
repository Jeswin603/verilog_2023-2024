module encoder_tb;
  reg [3:0] a;
  wire[1:0]x;
encoder uut(.a(a), .x(x));

initial begin 

  a=4'h1;#10;
  a=4'h2;#10;
  a=4'h4;#10;  
  a=4'h8;#10;
  
end
endmodule
  
  
  
  