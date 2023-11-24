library IEEE;
use IEEE.std_logic_1164.ALL;

entity DECO is
	port(NUM: in integer range 0 to 9;
		  SEG: out std_logic_vector(7 downto 0));
end entity;

architecture Behavioral of DECO is
begin
	with NUM select
	SEG <= "10010001" when 1, -- H
			 "00000011" when 2, -- O
			 "11100011" when 3, -- L
			 "00010001" when 4, -- A
			 "00110001" when 6, -- P
			 "00010001" when 7, -- A
			 "00110001" when 8, -- P
			 "10000011" when 9, -- U
			 "11111111" when others;
end Behavioral;		 