`timescale 1ns/1ns
module highest_number_tb;
reg[3:0] a,b,c;
wire [3:0] op;

highest_number uut(.a(a),.b(b),.c(c),.op(op));

initial begin

a=4'b0000;
b=4'b0000;
c=4'b0000;
#10;
a=4'b1001;
b=4'b1101;
c=4'b1111;
#10
a=4'b1011;
b=4'b1001;
c=4'b0101;
end

initial begin
	$monitor("at time%0d;a=%b,b=%b,c=%b,op=%b",$time,a,b,c,op);
end

endmodule
