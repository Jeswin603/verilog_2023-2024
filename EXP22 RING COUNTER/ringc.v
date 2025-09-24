module rc(
input rst,clk,
output reg [7:0] rc);
always @(posedge clk or posedge rst)
begin
if (rst==1)
	rc=8'b10000000;
else 
	rc={rc[0],rc[7:1]};
end
endmodule	




 