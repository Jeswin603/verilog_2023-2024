
module counter_up(
input rst,clk,en,
output reg [3:0] op);

always@(posedge clk or posedge rst)
begin
if(rst)
	op=4'b0000;
else begin
	if(en)begin
		op=op+1;
		end
	else
		op=4'b0000;
		end
end
endmodule
	
