module demuxfour_tb;
reg p;
reg[1:0]s;
wire a,b,c,d;
demux uut(.p(p),.s(s),.a(a),.b(b),.c(c),.d(d));
initial begin

#10;
p=1;
s=2'b00;#10;
s=2'b01;#10;
s=2'b10;#10;
s=2'b11;#10;
end
endmodule