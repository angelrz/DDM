library ieee;
use ieee.std_logic_1164.all;

entity CONT is
	port(CLK, RST: in std_logic;
		  CUENTA: buffer integer range 0 to 10);
end entity;

architecture Behavioral of CONT is
	begin
	process(CLK, RST)
		begin
		if falling_edge(CLK) then
			if RST = '1' then
				CUENTA <= 0;
			elsif CUENTA = 10 then
				CUENTA <= 0;
			else
				CUENTA <= CUENTA + 1;
			end if;
		end if;
	end process;
end Behavioral;
