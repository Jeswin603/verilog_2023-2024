module pipo_tb;
reg  clk,load;
reg [3:0] in;
wire [3:0] out;

pipo uut(.clk(clk),.load(load),.in(in),.out(out));

initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
#10 in = 4'b1100; load = 1'b1;
#10 load = 1'b0;
end

endmodule
