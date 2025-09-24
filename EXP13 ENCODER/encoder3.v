module encoder(
  input [3:0]a,
  output reg [1:0]x);
  always@(*)
  begin
    case(a)
      4'h1: x=2'h0;
      4'h2: x=2'h1;
      4'h4: x=2'h2;
      4'h8: x=2'h3;

      default: x=2'h0;
    endcase
end 
endmodule


