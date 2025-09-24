`timescale 1ns/1ps
module testnand;
reg a,b;
wire c;
 anand uut(.a(a),.b(b),.c(c));
initial begin

a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;

end 
initial begin
 $monitor("at time%0d;a=%b,b=%b,b=%b",$time,a,b,c);
end
endmodule