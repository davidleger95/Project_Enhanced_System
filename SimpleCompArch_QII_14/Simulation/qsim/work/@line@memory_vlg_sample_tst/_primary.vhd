library verilog;
use verilog.vl_types.all;
entity LineMemory_vlg_sample_tst is
    port(
        lineIndex       : in     vl_logic_vector(2 downto 0);
        reset           : in     vl_logic;
        tagIndex        : in     vl_logic_vector(6 downto 0);
        writeTag        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end LineMemory_vlg_sample_tst;
