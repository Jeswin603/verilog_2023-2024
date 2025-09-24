module free_runner(
input wire in, reset,clk,
output reg op);
reg [7:0] register;

always @(posedge clk or posedge reset)
if(reset)
	begin
	register=8'b00000000;
	op=1'b0;
	end
	else
		begin
			register={in,register[7:1]};
			op=register[0];
			end
			
endmodule
	
