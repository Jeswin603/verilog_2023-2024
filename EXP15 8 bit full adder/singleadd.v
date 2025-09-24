module add
  (input a,b, cin,
  output reg sum, cout);
  
  initial begin
  assign sum=a^b^cin;
  assign cout=a&b|b&cin|cin&a;
end
endmodule
  
  
