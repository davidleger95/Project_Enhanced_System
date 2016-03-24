-- Library for Microprocessor example
library	ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_arith.all;

package MP_lib is

type ram_type is array (0 to 255) of 
        		std_logic_vector(15 downto 0);

constant ZERO : std_logic_vector(15 downto 0) := "0000000000000000";
constant HIRES : std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ";
constant mov1 : std_logic_vector(3 downto 0) := "0000";
constant mov2 : std_logic_vector(3 downto 0) := "0001";
constant mov3 : std_logic_vector(3 downto 0) := "0010";
constant mov4 : std_logic_vector(3 downto 0) := "0011";
constant add  : std_logic_vector(3 downto 0) := "0100";
constant subt : std_logic_vector(3 downto 0) := "0101";
constant jz  : std_logic_vector(3 downto 0) := "0110";
constant halt  : std_logic_vector(3 downto 0) := "1111";
constant readm  : std_logic_vector(3 downto 0) := "0111";
constant mov5 : std_logic_vector(3 downto 0) := "1011";

component TagMemory is 
port(	clock_en: in std_logic;
	clock: in std_logic; 
	reset: in std_logic;
	tag_in: in std_logic_vector(6 downto 0);
	hit : out std_ulogic; 
	line_in: in std_logic_vector(2 downto 0);
	write_en  : in std_logic;
	tag_out : out std_logic_vector(6 downto 0);
	read_en : in std_logic
	);
end component;

component DataMemory is 
port(	clock_en : in std_logic;
	clock : in std_logic;
	reset:     in std_logic;
	read_en : in std_logic;
	write_en: in std_logic;
	line_in: in std_logic_vector(2 downto 0);
	data_out: out std_logic_vector(15 downto 0);
	data_in: in std_logic_vector(15 downto 0);
	word_in: in std_logic_vector(1 downto 0);
	write_block: in std_logic;
	blockReplaced: out std_logic;
	data_block : in std_logic_vector(63 downto 0);
	send_block_out  : in std_logic ; 
	data_block_out : out std_logic_vector (63 downto 0));
end component;

component CacheController is 
port(	clock_en				:in std_logic;
		clock					: in std_logic;
		reset					: in std_LOGIC;
		MreIn					:	in STD_LOGIC;
		MweIn					:	in STD_LOGIC;
		addressIN			:	in STD_LOGIC_VECTOR(11 downto 0);
		addressOUT			:  out STD_LOGIC_VECTOR (11 downto 0);
		data_in				:  in STD_LOGIC_VECTOR(15 downto 0);
		data_out_cpu		:  out STD_LOGIC_VECTOR(15 downto 0);
		replaceStatusIn   :  in std_logic; 
		replaceStatusOut  :  out std_logic;
		data_block_in     :  in std_logic_vector(63 downto 0);
		address_block_in  :  in std_logic_vector(11 downto 0);
		delayReq				: out std_logic;
		done_out             : out std_logic;
		data_block_out     : out std_logic_vector(63 downto 0);
		send_block_out_mem     : out std_logic;
		done_write_back     : in std_logic;
		blockAddressOut : out std_logic_vector(9 downto 0); 
		state_d					: out std_logic_vector(3 downto 0)
		);
end component;

component MainMemory IS
	PORT
	(
--clock_en : in std_logic; 
	clock		: 	in std_logic;
	rst		: 	in std_logic;
	Mre		:	in std_logic;
	Mwe		:	in std_logic;
	addressIn	:	in std_logic_vector(11 downto 0);
	writeAddress : in std_logic_vector(9 downto 0);
	data_in	:	in std_logic_vector(63 downto 0);
	data_out:	out std_logic_vector (63 downto 0);
	slowClock_out : out std_logic
	);
END component;

component Cache is
port (
		cache_en				: in std_logic;
		clock					: 	in STD_LOGIC;
		reset					:  in STD_LOGIC;
		Mre					:	in STD_LOGIC;
		Mwe					:	in STD_LOGIC;
		address				:	in STD_LOGIC_VECTOR(11 downto 0);
		data_in				:	in STD_LOGIC_VECTOR(15 downto 0);
		data_out				:	out STD_LOGIC_VECTOR(15 downto 0);
		delayReq				: out std_logic;
		controller_en_d : out std_LOGIC;
		-----debug signals----
		state_con_d : out std_LOGIC_VECTOR(3 downto 0);
		state_d : out std_logic_vector(3 downto 0);
--		done_cache : out std_LOGIC;
--		done_out_d : out std_logic;


--		replaceStatusOut_d : out std_logic; 
--		replaceStatusIn_d : out std_logic;
--		block_to_cache_d : out std_logic_vector(63 downto 0);
--		slowClock_d : out std_logic;
		send_to_mem_d : out std_logic;
		block_to_mem_d : out std_logic_vector(63 downto 0);
		write_to_mem_d : out std_logic;
		done_write_back_d : out std_logic
--		write_address_mem_d : out std_LOGIC_VECTOR(9 downto 0)
		);
		
end component;

component CPU is
port (	
		cpu_clk					: in std_logic;
		cpu_rst					: in std_logic;
		mdout_bus				: in std_logic_vector(15 downto 0); 
		mdin_bus					: out std_logic_vector(15 downto 0); 
		mem_addr					: out std_logic_vector(11 downto 0);
		Mre_s						: out std_logic;
		Mwe_s						: out std_logic;	
		oe_s						: out std_logic;
		controller_en        : in std_logic;
		state_cpu            : out std_logic_vector(11 downto 0 ) ;
		done_write_back 		: in std_logic;
		cache_en : out std_logic;
		-- Debug variables: output to upper level for simulation purpose only
		D_rfout_bus: out std_logic_vector(15 downto 0);  
		D_RFwa_s, D_RFr1a_s, D_RFr2a_s: out std_logic_vector(3 downto 0);
		D_RFwe_s, D_RFr1e_s, D_RFr2e_s: out std_logic;
		D_RFs_s, D_ALUs_s: out std_logic_vector(1 downto 0);
		D_PCld_s, D_jpz_s: out std_logic
		-- end debug variables				
);
end component;

component alu is
port (	
		num_A: 	in std_logic_vector(15 downto 0);
		num_B: 	in std_logic_vector(15 downto 0);
		jpsign:	in std_logic;
		ALUs:	in std_logic_vector(1 downto 0);
		ALUz:	out std_logic;
		ALUout:	out std_logic_vector(15 downto 0)
);
end component;

component bigmux is
port( 	
	Ia: 	in std_logic_vector(15 downto 0);
	Ib: 	in std_logic_vector(15 downto 0);	  
	Ic:	in std_logic_vector(15 downto 0);
	Id:	in std_logic_vector(15 downto 0);
	Option:	in std_logic_vector(1 downto 0);
	Muxout:	out std_logic_vector(15 downto 0)
);
end component;

component controller is
port(	
	cache_en : out std_logic;
	done_write_back : std_logic;
	state_cpu            : out std_logic_vector(11 downto 0 ) ;
	controller_en : in std_logic;
	clock:		in std_logic;
	rst:		in std_logic;
	IR_word:	in std_logic_vector(15 downto 0);
	RFs_ctrl:	out std_logic_vector(1 downto 0);
	RFwa_ctrl:	out std_logic_vector(3 downto 0);
	RFr1a_ctrl:	out std_logic_vector(3 downto 0);
	RFr2a_ctrl:	out std_logic_vector(3 downto 0);
	RFwe_ctrl:	out std_logic;
	RFr1e_ctrl:	out std_logic;
	RFr2e_ctrl:	out std_logic;						 
	ALUs_ctrl:	out std_logic_vector(1 downto 0);	 
	jmpen_ctrl:	out std_logic;
	PCinc_ctrl:	out std_logic;
	PCclr_ctrl:	out std_logic;
	IRld_ctrl:	out std_logic;
	Ms_ctrl:	out std_logic_vector(1 downto 0);
	Mre_ctrl:	out std_logic;
	Mwe_ctrl:	out std_logic;
	oe_ctrl:	out std_logic
);
end component;

component IR is
port(	
	IRin:	  in std_logic_vector(15 downto 0);
	IRld:	  in std_logic;
	dir_addr: out std_logic_vector(15 downto 0);
	IRout: 	  out std_logic_vector(15 downto 0)
);
end component;

component memory is
port ( 	
	clock	: 	in std_logic;
	rst		: 	in std_logic;
	Mre		:	in std_logic;
	Mwe		:	in std_logic;
	address	:	in std_logic_vector(7 downto 0);
	data_in	:	in std_logic_vector(15 downto 0);
	data_out:	out std_logic_vector(15 downto 0)
);
end component;

component obuf is
port(	
	O_en: 		in std_logic;
	obuf_in: 	in std_logic_vector(15 downto 0);
	obuf_out: 	out std_logic_vector(15 downto 0)
);
end component;

component PC is
port(	
	clock:	in std_logic;
	PCld:	in std_logic;
	PCinc:	in std_logic;
	PCclr:	in std_logic;
	PCin:	in std_logic_vector(15 downto 0);
	PCout:	out std_logic_vector(15 downto 0)
);
end component;

component reg_file is
port (
	clock	: 	in std_logic; 	
	rst	: 	in std_logic;
	RFwe	: 	in std_logic;
	RFr1e	: 	in std_logic;
	RFr2e	: 	in std_logic;	
	RFwa	: 	in std_logic_vector(3 downto 0);  
	RFr1a	: 	in std_logic_vector(3 downto 0);
	RFr2a	: 	in std_logic_vector(3 downto 0);
	RFw	: 	in std_logic_vector(15 downto 0);
	RFr1	: 	out std_logic_vector(15 downto 0);
	RFr2	:	out std_logic_vector(15 downto 0)
);
end component;

component smallmux is
port(
	I0: 	in std_logic_vector(15 downto 0);
	I1: 	in std_logic_vector(15 downto 0);	  
	I2:		in std_logic_vector(15 downto 0);
	Sel:	in std_logic_vector(1 downto 0);
	O: 		out std_logic_vector(15 downto 0)
	);
end component;

component ctrl_unit is
port(
	cache_en : out std_logic;
	done_write_back : in std_logic;
	state_cpu            : out std_logic_vector(11 downto 0 ) ;
	controller_en : std_logic;
	clock_cu:	in 	std_logic;
	rst_cu:		in 	std_logic;
	PCld_cu:	in 	std_logic;
	mdata_out: 	in 	std_logic_vector(15 downto 0);
	dpdata_out:	in 	std_logic_vector(15 downto 0);
	maddr_in:	out 	std_logic_vector(15 downto 0);		  
	immdata:	out 	std_logic_vector(15 downto 0);
	RFs_cu:		out	std_logic_vector(1 downto 0);
	RFwa_cu:	out	std_logic_vector(3 downto 0);
	RFr1a_cu:	out	std_logic_vector(3 downto 0);
	RFr2a_cu:	out	std_logic_vector(3 downto 0);
	RFwe_cu:	out	std_logic;
	RFr1e_cu:	out	std_logic;
	RFr2e_cu:	out	std_logic;
	jpen_cu:	out 	std_logic;
	ALUs_cu:	out	std_logic_vector(1 downto 0);	
	Mre_cu:		out 	std_logic;
	Mwe_cu:		out 	std_logic;
	oe_cu:		out 	std_logic
);
end component;

component datapath is				
port(
	clock_dp:	in 	std_logic;
	rst_dp:		in 	std_logic;
	imm_data:	in 	std_logic_vector(15 downto 0);
	mem_data: 	in 	std_logic_vector(15 downto 0);
	RFs_dp:		in 	std_logic_vector(1 downto 0);
	RFwa_dp:	in 	std_logic_vector(3 downto 0);
	RFr1a_dp:	in 	std_logic_vector(3 downto 0);
	RFr2a_dp:	in 	std_logic_vector(3 downto 0);
	RFwe_dp:	in 	std_logic;
	RFr1e_dp:	in 	std_logic;
	RFr2e_dp:	in 	std_logic;
	jp_en:		in 	std_logic;
	ALUs_dp:	in 	std_logic_vector(1 downto 0);
	ALUz_dp:	out 	std_logic;
	RF1out_dp:	out 	std_logic_vector(15 downto 0);
	ALUout_dp:	out 	std_logic_vector(15 downto 0)
);
end component;

end MP_lib;



package body MP_lib is

	-- Procedure Body (optional)

end MP_lib;
