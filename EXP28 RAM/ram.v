module ram_8bit (
    input clk,
    input rst,
    input [2:0] address,
    input [7:0] data_in,
    output reg [7:0] data_out,
    input we
);

reg [7:0] memory [0:7];
integer i;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        for (i = 0; i < 8; i = i + 1) begin
            memory[i] <= 8'b0;
        end
        data_out <= 8'b0;
    end else begin
        if (we) begin
            memory[address] <= data_in;
        end
        data_out <= memory[address];
    end
end

endmodule
