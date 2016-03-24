library verilog;
use verilog.vl_types.all;
entity Cache is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        Mre             : in     vl_logic;
        Mwe             : in     vl_logic;
        address         : in     vl_logic_vector(11 downto 0);
        data_in         : in     vl_logic_vector(15 downto 0);
        data_out        : out    vl_logic_vector(15 downto 0);
        delayReq        : out    vl_logic;
        controller_en_d : out    vl_logic;
        state_con_d     : out    vl_logic_vector(3 downto 0);
        cache_state_d   : out    vl_logic_vector(3 downto 0)
    );
end Cache;
