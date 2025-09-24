module demux(
  input p,
  input [1:0]s,
  output reg a,b,c,d);
  
  always @(*)begin
     a=0;b=0;c=0;d=0;
    case(s)
      2'b00:a=p;
      2'b01:b=p;
      2'b10:c=p;
      2'b11:d=p;
      
    endcase
  end
  endmodule
      
  

