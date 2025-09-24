module alu_eightbit (
input [7:0] a,b,
input [1:0] op,
output reg [7:0] out);

always@(*) 
begin
case(op)
2'b00: out=0;
2'b01: out=a+b;
2'b10: out=a-b;
2'b11: out=a*b;
default :out=0;
endcase
end 
endmodule