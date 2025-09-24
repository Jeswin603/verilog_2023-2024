
module counter_tb;
reg clk,rst,sel;
wire[3:0]out;
un_counter uut(.clk(clk),.rst(rst),.sel(sel),.out(out));
initial begin
clk=0;

forever #5 clk=~clk;
end

initial begin
rst=1;sel=0;#10;
rst=0;sel=0;#160;
rst=1;sel=1;#10;
rst=0;sel=1;#10;
end
initial begin
$monitor("at time %0d;clk=%b;rst=%b;sel=%b;out=%b",$time,clk,rst,sel,out);
end
endmodule

