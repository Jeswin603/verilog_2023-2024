module tb_sequence_detector;

    reg clk;
    reg reset;
    reg in;
    wire out;

    sequence_detector uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        reset = 0;
        in = 0;

        reset = 1;
        #10;
        reset = 0;
        in = 1; #10;
        in = 1; #10;
        in = 1; #10;
        in = 0; #10;
        in = 1; #10;
        in = 0; #10;
        in = 1; #10;
        in = 0; #10;
        in = 0; #10;
    end

    initial begin
        $monitor("Time = %0t | clk = %b | reset = %b | in = %b | out = %b", $time, clk, reset, in, out);
    end

endmodule
