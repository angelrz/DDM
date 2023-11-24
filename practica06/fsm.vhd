-- PROGRAMA ESTANDAR PARA CARTA FMS Y ASM
-- M.I. BRYAN EMMANUEL ALVAREZ SERNA

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fsm IS
	PORT(P, CLK: IN STD_LOGIC;
	       SEM: OUT INTEGER RANGE 0 TO 2);
END ENTITY;

ARCHITECTURE BEAS OF fsm IS
TYPE ESTADOS IS (V1,V2,V3,A1,A2,R1,R2,R3,R4); -- estados
SIGNAL PRESENTE: ESTADOS := V1; -- INDICAR MI ESTADO INICIAL
BEGIN

	PROCESS(P,CLK)
	BEGIN
		IF RISING_EDGE(CLK) THEN
			CASE PRESENTE IS
				WHEN V1 => SEM <= 0; -- TAREAS EN INICIO
								PRESENTE <= V2;
								
				WHEN V2 => SEM <= 0; -- TAREAS EN ESTADO V1
								PRESENTE <= V3;
								
				WHEN V3 => SEM <= 0;	-- TAREAS EN ESTADO V2
								PRESENTE <= A1;
				
				WHEN A1 => SEM <= 1;
								PRESENTE <= A2;
								
				WHEN A2 => SEM <= 1;
								PRESENTE <= R1;
				
				WHEN R1 => SEM <= 2;
								PRESENTE <= R2;
								
				WHEN R2 => SEM <= 2;
								IF P = '0' THEN -- CONDICION BOTON PEATON
									PRESENTE <= R3;
								ELSE
									PRESENTE <= V1;
								END IF;
				
				WHEN R3 => SEM <= 2; -- TAREAS EN ESTADOR3
								PRESENTE <= R4;
								
				WHEN R4 => SEM <= 2;
								PRESENTE <= V1;
			END CASE;
		END IF;
	END PROCESS;

END BEAS;