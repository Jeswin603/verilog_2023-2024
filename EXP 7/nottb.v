`timescale 1ns/1ps
module nottb;
reg a;
wire y;
not1 uut(.a(a),.c(c));
initial begin
a=0;#10;

a=1;#10;

end
initial begin 
 $monitor("at time%0d;a=%b,c=%c",$time,a,c);
end
endmodule

