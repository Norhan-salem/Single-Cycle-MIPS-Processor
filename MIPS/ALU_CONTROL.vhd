
Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_CONTROL is
port ( funct : in std_logic_vector (5 downto 0);
ALUOp : in std_logic_vector (1 downto 0);
Operation : out std_logic_vector (3 downto 0);
);
END ALU_CONTROL;

architecture Behavioral of ALU_CONTROL is
begin

Operation (3) <= '0';
Operation (2) <= ALUOp(0) or (ALUOp(1) AND funct(0));
Operation (1) <= not ALUOp(1) or not funct(2);
Operation (0) <= (funct(3) or funct(0)) AND ALUOp(1);

END Behavioral;

--TEST BENCH CODE

Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY tb_ALU_CONTROL is
END tb_ALU_CONTROL;

Architecture behavior of tb_ALU_CONTROL is

--inputs
signal tb_funct :  std_logic_vector (5 downto 0) := (others => '0') ;
signal tb_ALUOp :  std_logic_vector (1 downto 0) := (others => '0') ;

--outputs
signal tb_Operation :  std_logic_vector (3 downto 0);

BEGIN
 --instantiate uut
 
 uut: entity work.ALU_CONTROL(Behavioral)
 
 PORT MAP(
 funct => tb_funct,
 ALUOp => tb_ALUOp,
 Operation => tb_Operation
 );
 
 --stimulus process
 
 stim_proc: process
 begin
 
 --R-TYPE COMMANDS
 
 tb_ALUOp <= "10"; --AND
 tb_funct <= "100100";
 wait for 20 ns;
 
  tb_ALUOp <= "10";  --or
 tb_funct <= "100101";
 wait for 20 ns;
 
  tb_ALUOp <= "10";  --add
 tb_funct <= "100000";
 wait for 20 ns;
 
  tb_ALUOp <= "10";   --sub
 tb_funct <= "100010";
 wait for 20 ns;
 
  tb_ALUOp <= "10";  --slt
 tb_funct <= "101010";
 wait for 20 ns;
 
 --I-TYPE COMMANDS
 
 --lw
   tb_ALUOp <= "00";  
 tb_funct <= "XXXXXX";
 wait for 20 ns;
 
 --sw
   tb_ALUOp <= "00";  
 tb_funct <= "XXXXXX";
 wait for 20 ns;
 
 --beq
   tb_ALUOp <= "01";  
 tb_funct <= "XXXXXX";
 wait for 20 ns;
 
 --bne
   tb_ALUOp <= "01";  
 tb_funct <= "XXXXXX";
 wait for 20 ns;
 
 --J INSTRUCTION
 
 
 assert false 
 report "End"
 severity failure;
 
 end process;
 end;