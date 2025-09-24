library verilog;
use verilog.vl_types.all;
entity encoderth is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        x               : out    vl_logic_vector(1 downto 0)
    );
end encoderth;
