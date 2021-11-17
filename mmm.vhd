LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY MMM IS 
PORT(
     SE:IN STD_LOGIC;    
     CLK:IN STD_LOGIC;    
     D:IN STD_LOGIC;     
     CLR:IN STD_LOGIC;   
     UA:OUT STD_LOGIC    
);
END MMM;
ARCHITECTURE A OF MMM IS
BEGIN
     PROCESS(CLR,SE,CLK)
     BEGIN
          IF(CLR='0') THEN 
               UA<='0';
          ELSIF(SE='0')THEN 
               UA<='1';
          ELSIF(CLK'EVENT AND CLK='1') THEN 
               UA<=D;
          END IF;
     END PROCESS;
END A;


