module dflipflop1(
input d,cl,rst,en,
output reg q);
always @(posedge cl or posedge rst)begin
	if(rst)begin
	q=1'b0;
	end
else  begin
	if(en)
	q <= d;
	end
end
endmodule



