library IEEE;
use IEEE.std_logic_1164.ALL;

entity practica0 is
	port(A,B,C,D : in std_logic;
			Q : out std_logic);
end practica0;


architecture ajmr of practica0 is
	signal E,F,G : std_logic;
	begin
	E <= A AND B;
	F <= A OR C;
	G <= C NAND D;
	Q <= E XOR F XOR G;

end ajmr;