library ieee;
use ieee.std_logic_1164.all;

entity DIPO is
	port(CLK: in std_logic;
		  D: in integer range 0 to 10;
		  Q1, Q2, Q3, Q4, Q5, Q6: buffer integer range 0 to 10);
end entity;

architecture Behavioral of DIPO is
	begin
	process(CLK)
		begin
		if rising_edge(CLK) then
			Q1 <= D;
			Q2 <= Q1;
			Q3 <= Q2;
			Q4 <= Q3;
			Q5 <= Q4;
			Q6 <= Q5;
		end if;
	end process;
end Behavioral;