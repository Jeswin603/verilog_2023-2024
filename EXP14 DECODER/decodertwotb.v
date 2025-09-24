module decodertwo_tb;
  reg[3:0] ip;
  wire[1:0] op;
  decodertwo uut(.ip(ip),.op(op));
  initial begin
    #10
  ip=2'b00;
  #10
  ip=2'b01;
  #10
  ip=2'b10;
  #10
  ip=2'b11;
  #10;
  
end
endmodule