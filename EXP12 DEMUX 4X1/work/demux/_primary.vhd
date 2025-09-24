library verilog;
use verilog.vl_types.all;
entity demux is
    port(
        p               : in     vl_logic;
        s               : in     vl_logic_vector(1 downto 0);
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic
    );
end demux;
