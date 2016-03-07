library IEEE; 
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;	-- David: added library; remove it if we don't end up using it here.

entity cache_table is 
port(
	tag : std_logic_vector (6 downto 0);
	line_in : std_logic_vector(2 downto 0);
	word: std_logic_vector(1 downto 0)
	);
end cache_table;

architecture behv of cache_table	 is	
	
	-- David: attempting to build the memory address format. Not sure if this is right.
	type cacheWord is array(15 downto 0) of std_logic_vector;
	type cacheLine is array(0 to 3) of cacheWord;
	type table is array(0 to 7) of cacheLine;
	begin
end architecture behv;