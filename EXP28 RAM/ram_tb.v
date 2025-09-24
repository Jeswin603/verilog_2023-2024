
module tb_ram_8bit;
    reg clk;
    reg rst;
    reg [2:0] address;
    reg [7:0] data_in;
    wire [7:0] data_out;
    reg we;

    ram_8bit uut (
        .clk(clk),
        .rst(rst),
        .address(address),
        .data_in(data_in),
        .data_out(data_out),
        .we(we)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 0;
        we = 0;
        address = 3'b000;
        data_in = 8'b00000000;

        rst = 1;
        #10 rst = 0;

        we = 1;
        address = 3'b001; data_in = 8'b10101010; #10;
        address = 3'b010; data_in = 8'b11001100; #10;
        address = 3'b011; data_in = 8'b11110000; #10;

        we = 0;
        address = 3'b001; #10;
        address = 3'b010; #10;
        address = 3'b011; #10;


    end

    initial begin
        $monitor("At time %0t, address=%b, data_out=%b", $time, address, data_out);
    end

endmodule
