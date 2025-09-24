module free_runner_tb;
reg clk,reset,in;
wire op;

free_runner uut(.clk(clk),.reset(reset),.in(in),.op(op));
initial
	begin
	clk=0;
	forever #5 clk=~clk;
	end
	
initial begin
		 reset=1'b1;
	#10 reset=1'b0;
		 in=1'b1;
	#10 in=1'b1;
	#10 in=1'b0; 
	#10 in=1'b0; 
	#10 in=1'b1; 
	#10 in=1'b1;
	#10 in=1'b1;
	#10 in=1'b1;
	#10 in=1'b1;
	end
endmodule		
	
	