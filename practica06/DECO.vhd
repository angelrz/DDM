library ieee;
use ieee.std_logic_1164.all;

entity DECO is
	port(SEM: in integer range 0 to 2;
			LED: out std_logic_vector(2 downto 0);
		  SEG: out std_logic_vector(7 downto 0));
end entity;

architecture behavioral of DECO is
	begin
	with SEM select
		SEG <= "10000011" when 0,
				 "00010001" when 1,
				 "11110101" when 2;
	with SEM select
		LED <= "100" when 0,
				 "010" when 1,
				 "001" when 2;
end behavioral;