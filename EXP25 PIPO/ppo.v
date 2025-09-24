module pipo(
input clk,load,
input [3:0]in,
output reg [3:0]out);

reg [3:0] temp;

always @(posedge clk)
if(load)
	temp<=in;
	out <=4'b0000
else 
	begin
		 out <= {temp[0], out[3:1]};
		  temp <= temp >> 1;  
end
endmodule

