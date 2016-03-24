library verilog;
use verilog.vl_types.all;
entity Cache_vlg_check_tst is
    port(
        cache_state_d   : in     vl_logic_vector(3 downto 0);
        controller_en_d : in     vl_logic;
        data_out        : in     vl_logic_vector(15 downto 0);
        delayReq        : in     vl_logic;
        state_con_d     : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Cache_vlg_check_tst;
