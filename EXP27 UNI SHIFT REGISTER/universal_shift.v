module universal_shift_register (
    input wire clk,
    input wire reset,
    input wire load,
    input wire shift_left,
    input wire shift_right,
    input wire [7:0] parallel_in,
    output reg [7:0] q
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 8'b0;
        end else if (load) begin
            q <= parallel_in;
        end else if (shift_left) begin
            q <= {q[6:0], 1'b0};
        end else if (shift_right) begin
            q <= {1'b0, q[7:1]};
        end
    end

endmodule
