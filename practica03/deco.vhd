library IEEE;
use IEEE.std_logic_1164.ALL;

entity deco is

Port(NUM: in INTEGER RANGE 0 to 15;
SEG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
end deco;

architecture amr of deco is
begin
	with num select
	SEG <= "00000011" when 0,
			 "10011111" when 1,
			 "00100101" when 2,
			 "00001101" when 3,
			 "10011001" when 4,
			 "01001001" when 5,
			 "01000001" when 6,
			 "00011101" when 7,
			 "00000001" when 8,
			 "00011001" when 9,
			 "00010001" when 10,-- A
			 "11000001" when 11,-- b
			 "01100011" when 12,--C
			 "10000101" when 13,--D
			 "01100001" when 14,--E
			 "01110001" when others;--F	 
end amr;		 