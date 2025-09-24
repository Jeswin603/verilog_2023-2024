module decodertwo(
  input [1:0]ip,
  output reg [3:0]op);
  
always @(*)
begin
case(ip)
2'b00:op=4'b0001; 
2'b01:op=4'b0010; 
2'b10:op=4'b0100;
2'b11:op=4'b1000; 
default op=4'b0000;
endcase
end
endmodule
