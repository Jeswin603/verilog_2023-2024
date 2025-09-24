module alu_eightbit_tb;
reg[7:0] a;
reg[7:0] b;
reg[1:0] op;
wire[7:0] out;
alu_eightbit uut(.a(a),.b(b),.out(out),.op(op));


initial begin
op=2'b10;a=8'b11111111;b=8'b11111111;#10;
op=2'b10;a=8'b11001111;b=8'b00111111;#10;
op=2'b01;a=8'b11010111;b=8'b10011011;#10;
op=2'b11;a=8'b00001111;b=8'b11110111;#10;

end 
endmodule
