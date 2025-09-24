module piso_tb;
reg[3:0] in,temp;
reg load,clk;
wire out;

piso uut (.clk(clk),.in(in),.load(load),.out(out));


initial begin 
clk=0;
forever #5 clk= ~clk;
end
initial begin
#10in=4'b1010;
load=1'b1;
#10 load=1'b0;
end
endmodule