LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY CONTROM IS
PORT(ADDR: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
     UA:OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
     O:OUT STD_LOGIC_VECTOR(20 DOWNTO 0)
    );
END CONTROM;
ARCHITECTURE A OF CONTROM IS
SIGNAL DATAOUT: STD_LOGIC_VECTOR(26 DOWNTO 0);
BEGIN 
    PROCESS
    BEGIN
        CASE ADDR IS    
        --        ΢??ַ                         ΢ָ??
        WHEN "000000" => DATAOUT<="110100111111111101100000000";--ȡ??ַ
        WHEN "000001" => DATAOUT<="100010111111111110000000000";--MOV
        WHEN "000010" => DATAOUT<="100010111110111111000000000";--IN1
        WHEN "000011" => DATAOUT<="101000101101111111000000100";--STO1
        WHEN "000100" => DATAOUT<="100000011111101111000000000";--STO2
        WHEN "000101" => DATAOUT<="100011101001111111000000000";--INC
        WHEN "000110" => DATAOUT<="100001100111111111000000000";--CMP
        WHEN "000111" => DATAOUT<="100000111111111111010000000";--JB
        WHEN "001000" => DATAOUT<="100000111111111111001000000";--JZ
        WHEN "001001" => DATAOUT<="100011100001111111000000000";--ADD
        WHEN "001010" => DATAOUT<="101000011111111111000001011";--LAD1
        WHEN "001011" => DATAOUT<="100010111111110011000000000";--LAD2
        WHEN "001100" => DATAOUT<="010000111111111110000000000";--JMP
        WHEN "001101" => DATAOUT<="100000011111011111000000000";--OUT
        WHEN "100000" => DATAOUT<="010000111111111110000000000";--P2
        WHEN "010000" => DATAOUT<="010000111111111110000000000";--P3
        
        WHEN OTHERS   => DATAOUT<="110100111111111101100000000";
        END CASE;
        UA(5 DOWNTO 0)<=DATAOUT(5 DOWNTO 0);
        O(20 DOWNTO 0)<=DATAOUT(26 DOWNTO 6);
    END PROCESS;
END A;



