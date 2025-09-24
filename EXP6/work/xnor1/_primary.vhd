library verilog;
use verilog.vl_types.all;
entity xnor1 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : out    vl_logic
    );
end xnor1;
