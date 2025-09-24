module tb_universal_shift_register();

    reg clk;
    reg reset;
    reg load;
    reg shift_left;
    reg shift_right;
    reg [7:0] parallel_in;
    wire [7:0] q;

    universal_shift_register uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .shift_left(shift_left),
        .shift_right(shift_right),
        .parallel_in(parallel_in),
        .q(q)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        reset = 0;
        load = 0;
        shift_left = 0;
        shift_right = 0;
        parallel_in = 8'b00000000;

        #10 reset = 1;
        #10 reset = 0;

        #10 load = 1; parallel_in = 8'b10101010;
        #10 load = 0;

        #10 shift_left = 1;
        #10 shift_left = 0;

        #10 shift_right = 1;
        #10 shift_right = 0;

    end

   

endmodule

