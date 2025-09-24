
module counter_up_tb;
reg rst;
reg clk;
reg en;
wire [3:0]op;
counter_up uut(.rst(rst),.clk(clk),.en(en),.op(op));
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
rst=1;
en=0;
#10;
rst=0;en=1;
end
initial begin 
 $monitor("at time%0d;en=%b,rst=%b,clk=%c,op=%b",$time,en,rst,clk,op);
end
endmodule