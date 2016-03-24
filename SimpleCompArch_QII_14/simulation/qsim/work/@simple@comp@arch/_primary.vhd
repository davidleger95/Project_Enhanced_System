library verilog;
use verilog.vl_types.all;
entity SimpleCompArch is
    port(
        sys_clk         : in     vl_logic;
        sys_rst         : in     vl_logic;
        sys_output      : out    vl_logic_vector(15 downto 0);
        D_rfout_bus     : out    vl_logic_vector(15 downto 0);
        D_RFwa          : out    vl_logic_vector(3 downto 0);
        D_RFr1a         : out    vl_logic_vector(3 downto 0);
        D_RFr2a         : out    vl_logic_vector(3 downto 0);
        D_RFwe          : out    vl_logic;
        D_RFr1e         : out    vl_logic;
        D_RFr2e         : out    vl_logic;
        D_RFs           : out    vl_logic_vector(1 downto 0);
        D_ALUs          : out    vl_logic_vector(1 downto 0);
        D_PCld          : out    vl_logic;
        D_jpz           : out    vl_logic;
        state_cpu       : out    vl_logic_vector(11 downto 0);
        cache_en_d      : out    vl_logic;
        D_mdout_bus     : out    vl_logic_vector(15 downto 0);
        D_mdin_bus      : out    vl_logic_vector(15 downto 0);
        D_mem_addr      : out    vl_logic_vector(11 downto 0);
        D_Mre           : out    vl_logic;
        D_Mwe           : out    vl_logic;
        controller_en_d : out    vl_logic;
        cont_state_d    : out    vl_logic_vector(3 downto 0);
        cache_state_d   : out    vl_logic_vector(3 downto 0);
        write_back_block: out    vl_logic_vector(63 downto 0);
        done_write_back_d: out    vl_logic;
        write_block_controller_sig: out    vl_logic;
        write_back_mem  : out    vl_logic
    );
end SimpleCompArch;