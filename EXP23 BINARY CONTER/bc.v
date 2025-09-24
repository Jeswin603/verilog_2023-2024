module un_counter(
input clk,rst,sel,
output reg[3:0] out);

always@(posedge clk or posedge rst)
begin
if(rst==1 && sel==0)
	out<=4'b0000;
else if (rst==1 && sel==1)
	out<=4'b1111;
else if(rst==0 && sel==0)
 	out=out+1;
else if(rst==0 && sel==1)
 	out=out-1;
end
endmodule