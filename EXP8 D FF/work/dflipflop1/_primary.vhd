library verilog;
use verilog.vl_types.all;
entity dflipflop1 is
    port(
        d               : in     vl_logic;
        cl              : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        q               : out    vl_logic
    );
end dflipflop1;
