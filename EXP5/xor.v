
module xor1(
input a,b,
output c );
assign  c = (~a & b)|(a & ~b);
endmodule



