module piso(
input [3:0]in,
input load,clk,
output reg out);

reg[3:0] temp ;

always @(posedge clk)
begin
if(load)
	temp[3:0]=in[3:0];
else begin
	out =temp[0];
	temp ={1'b0,temp[3:1]};
end
end 
endmodule
