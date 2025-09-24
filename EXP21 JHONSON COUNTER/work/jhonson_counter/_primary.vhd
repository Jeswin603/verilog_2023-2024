library verilog;
use verilog.vl_types.all;
entity jhonson_counter is
    port(
        clk             : in     vl_logic;
        res             : in     vl_logic;
        op              : out    vl_logic_vector(7 downto 0)
    );
end jhonson_counter;
