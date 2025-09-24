module highest_number(
  input reg [3:0] a,b,c,
  output reg[3:0] op);
  
  always@(*)
  begin
    if(a>b&&a>c)
      op=a;
  else if(c>b&&c>a)
    op=c;
  else
    op=b;
  end
endmodule
      
  

