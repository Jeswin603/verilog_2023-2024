module rc_tb;
reg rst,clk;
wire[7:0]rc;

rc uut(.rst(rst),.clk(clk),.rc(rc));

initial
clk=0;
always
#5 clk=~clk;
initial  begin 
#5
rst=1;#10
rst=0;
end
initial begin
	$monitor("at time %0d;rst=%b,clk=%b,rc=%b",$time,rst,clk,rc);
end
endmodule
