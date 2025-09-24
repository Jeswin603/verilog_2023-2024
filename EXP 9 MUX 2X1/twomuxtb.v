module twomux_tb;
  reg a, b, s;
  wire y;

  // Instantiate the multiplexer
  twomux uut(.a(a), .b(b), .s(s), .y(y));

  initial begin
    // Test all combinations of a, b, and s
    a = 1'b0; b = 1'b0; s = 1'b0; #10; // 0
    $display("a=%b, b=%b, s=%b, y=%b", a, b, s, y);
    
    a = 1'b1; b = 1'b0; s = 1'b0; #10; // 1
    $display("a=%b, b=%b, s=%b, y=%b", a, b, s, y);
    
    a = 1'b0; b = 1'b1; s = 1'b0; #10; // 0
    $display("a=%b, b=%b, s=%b, y=%b", a, b, s, y);
    
    a = 1'b1; b = 1'b1; s = 1'b0; #10; // 1
    $display("a=%b, b=%b, s=%b, y=%b", a, b, s, y);
    
    a = 1'b0; b = 1'b0; s = 1'b1; #10; // 0
    $display("a=%b, b=%b, s=%b, y=%b", a, b, s, y);
    
    a = 1'b1; b = 1'b0; s = 1'b1; #10; // 1
    $display("a=%b, b=%b, s=%b, y=%b", a, b, s, y);
    
    a = 1'b0; b = 1'b1; s = 1'b1; #10; // 1
    $display("a=%b, b=%b, s=%b, y=%b", a, b, s, y);
    
    a = 1'b1; b = 1'b1; s = 1'b1; #10; // 1
    $display("a=%b, b=%b, s=%b, y=%b", a, b, s, y);
    
    // Finish the simulation
    $finish;
  end
endmodule
