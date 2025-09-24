
module jhonson_counter(
input clk,res,
output reg[7:0]op);

always @(posedge clk or negedge res)
begin
if (res)
op<=8'b00000000;
else begin
op<={~op[0],op[7:1]};
end
end
endmodule



