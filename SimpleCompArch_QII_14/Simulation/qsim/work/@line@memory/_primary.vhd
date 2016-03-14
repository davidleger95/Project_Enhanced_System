library verilog;
use verilog.vl_types.all;
entity LineMemory is
    port(
        reset           : in     vl_logic;
        tagIndex        : in     vl_logic_vector(6 downto 0);
        hit             : out    vl_logic;
        lineIndex       : in     vl_logic_vector(2 downto 0);
        writeTag        : in     vl_logic
    );
end LineMemory;
