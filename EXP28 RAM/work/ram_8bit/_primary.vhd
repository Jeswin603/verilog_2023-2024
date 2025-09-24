library verilog;
use verilog.vl_types.all;
entity ram_8bit is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        address         : in     vl_logic_vector(2 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        we              : in     vl_logic
    );
end ram_8bit;
