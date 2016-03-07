library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity LineMemory is
port ( 	

	tagIndex : in std_logic_vector(6 downto 0);
	hit : out std_logic; 
	lineIndex: in std_logic_vector(2 downto 0);
	writeTag  : in std_logic
		);
		
end LineMemory;

architecture behav of LineMemory is

type line_array is array (0 to 7) of std_logic_vector(6 downto 0);
signal memory: line_array;
signal tagFound : std_logic;
signal line_check: integer;
begin 
line_check <= to_integer(unsigned(lineIndex));

	read: process(writeTag, tagIndex, LineIndex)
	begin
	if (writeTag = '0') then

		tagFound <= '0';
		FOR i IN 0 TO 7 loop
			if ((memory(i) = tagIndex) and  (i = line_check))then 
				tagFound <= '1';
			end if;
		end loop;
	end if;
	hit <= tagFound;
	end process;
	
	write: process(writeTag, line_check, tagIndex)
	begin 
	if (writeTag = '1') then 
		for j in 0 to 7 loop 
			if (j = line_check)then 
				memory(j) <= tagIndex;
			end if;
		end loop;
	end if;
	end process;
end behav; 
	
	
		

