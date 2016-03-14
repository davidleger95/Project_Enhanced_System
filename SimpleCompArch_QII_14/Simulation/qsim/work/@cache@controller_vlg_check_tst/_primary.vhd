library verilog;
use verilog.vl_types.all;
entity CacheController_vlg_check_tst is
    port(
        addressOUT      : in     vl_logic_vector(11 downto 0);
        data_out_cpu    : in     vl_logic_vector(15 downto 0);
        delayReq        : in     vl_logic;
        replaceStatusOut: in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CacheController_vlg_check_tst;
