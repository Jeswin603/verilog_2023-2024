module jhonson_counter_tb;
reg clk,res;
wire [7:0]op;
jhonson_counter uut(.clk(clk),.res(res),.op(op));

initial begin
clk=0;
res=1;
end
always begin
#5;
clk=~clk;
end
initial begin
res=1                             ;
#10;
res=0;
end
initial
$monitor
endmodule




