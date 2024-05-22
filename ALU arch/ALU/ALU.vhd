library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity ALU is
  generic ( 
     constant N: natural := 1  );
  
    Port (
data1 : in std_logic_vector(31 downto 0) ;
data2 : in std_logic_vector(31 downto 0) ;
aluop : in std_logic_vector(3 downto 0) ;
cin : in std_logic ;
dataout: out std_logic_vector(31 downto 0) ;
cflag: out std_logic ;
zflag: out std_logic ;
oflag: out std_logic
);

end ALU;

architecture Behavioral of ALU is
signal tmp1, tmp2 : std_logic_vector (32 downto 0);
signal ALU_Result : std_logic_vector (31 downto 0);

 
begin

tmp1 <= (data1(31) & data1) +(data2(31)&data2);
tmp2 <= (data1(31) & data1) - (data2(31)&data2);

ALU_result <= (data1 AND data2) when aluop= "0000" else
(data1 OR data2) when aluop= "0001" else
(data1 NOR data2) when aluop= "1100" else
tmp1(31 downto 0) when aluop= "0010" else
tmp2(31 downto 0) when aluop= "0110" else
(Others => 'Z');
 

zflag <= '1' when ALU_result = x"00000000" else '0';

cflag <= tmp1(32) when aluop ="0010" else
tmp2(32) when aluop ="0110" else
'Z';

oflag <= (tmp1(32) XOR tmp1(31)) when aluop ="0010" else
(tmp2(32) XOR tmp2(31)) when aluop ="0110" else
'Z';

 dataout <= ALU_Result; 
end Behavioral;