library verilog;
use verilog.vl_types.all;
entity SimpleCompArch_vlg_sample_tst is
    port(
        sys_clk         : in     vl_logic;
        sys_rst         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SimpleCompArch_vlg_sample_tst;