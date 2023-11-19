LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY contador IS
	PORT(CLK, RST: IN STD_LOGIC;
		C, D, U: BUFFER INTEGER RANGE 0 TO 9);
END ENTITY;

ARCHITECTURE amr OF contador IS
BEGIN
	PROCESS(CLK, RST)
	BEGIN
	IF FALLING_EDGE (CLK) THEN
		IF RST = '1' THEN
			U <= 0;
			D <= 0;
			C <= 0;
		ELSE
			IF U = 9 THEN
				U <= 0;
				IF D = 9 THEN
					D <= 0;
					IF C = 9 THEN
						C <= 0;
					ELSE
						C <= C + 1;
					END IF;
				ELSE
					D <= D + 1;
				END IF;
			ELSE
				U <= U + 1;
			END IF;
		END IF;
	END IF;
	END PROCESS;

END amr;
