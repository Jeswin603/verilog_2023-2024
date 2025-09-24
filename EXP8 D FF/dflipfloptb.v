module dfliptb;

reg cl;
reg rst;
reg en;
reg d;
wire q;


dflipflop1 uut(.d(d),.cl(cl),.rst(rst),.en(en),.q(q));
initial begin
cl=0;
forever #10 cl=~cl;
end

initial begin
d=0;
forever #20 d=~d;
end
initial begin
rst=1;
en=0;
#100 

rst=0;
#200
en=1;

end
endmodule





