LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE IEEE.STD_LOGIC_ARITH.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY COUNTER IS 
PORT( 
     CLK,CLR: IN STD_LOGIC; 
     T1,T2,T3,T4: OUT STD_LOGIC 
    ); 
END COUNTER; 
ARCHITECTURE A OF COUNTER IS 
SIGNAL X:STD_LOGIC_VECTOR(1 DOWNTO 0):="00"; 
BEGIN 
     PROCESS(CLK,CLR) 
     BEGIN 
          IF(CLR='0') THEN 
               T1<='0'; 
               T2<='0'; 
               T3<='0'; 
               T4<='0'; 
               X<="00"; 
          ELSIF(CLK'EVENT AND CLK='1') THEN 
               X<=X+1; 
               T1<=(NOT X(1))AND(NOT X(0)); 
               T2<=(NOT X(1))AND X(0); 
               T3<=X(1) AND(NOT X(0)); 
               T4<=X(1) AND X(0); 
          END IF; 
     END PROCESS; 
END A; 
