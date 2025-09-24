library verilog;
use verilog.vl_types.all;
entity demuxtwo is
    port(
        i               : in     vl_logic;
        s               : in     vl_logic;
        o1              : out    vl_logic;
        o2              : out    vl_logic
    );
end demuxtwo;
