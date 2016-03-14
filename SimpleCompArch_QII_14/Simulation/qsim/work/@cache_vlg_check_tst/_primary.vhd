library verilog;
use verilog.vl_types.all;
entity Cache_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(15 downto 0);
        delayReq        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Cache_vlg_check_tst;
