library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;



ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU is
    PORT(
data1 : in std_logic_vector(31 downto 0) ;
data2 : in std_logic_vector(31 downto 0) ;
aluop : in std_logic_vector(3 downto 0) ;
cin : in std_logic; 
dataout: out std_logic_vector(31 downto 0) ;
cflag: out std_logic ;
zflag: out std_logic ;
oflag: out std_logic );

 END COMPONENT ;





       --Inputs
   signal data1 : std_logic_vector(31 downto 0) := (others => '0');
   signal data2 : std_logic_vector(31 downto 0) := (others => '0');
   signal aluop : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

  --Outputs
  signal dataout: std_logic_vector(31 downto 0) ;
signal cflag:  std_logic ;
signal zflag:  std_logic ;
signal oflag:  std_logic ;

BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          data1 => data1,
          data2 => data2,
          aluop => aluop,
          cin => cin,
          dataout => dataout,
          cflag => cflag,
          oflag => oflag,
          zflag => zflag
          );

   -- Stimulus process
   stim_proc: process
   begin  
    
  data1 <= X"00000009";
  data2 <= X"0000000A";
  aluop <= "0010";
  wait for 100 ns;

data1 <= X"0000000C";
data2 <= X"0000000A";
aluop <= "0110";
wait for 100 ns;

data1 <= X"FFFFFFF9";
data2 <= X"FFFFFFFA";
aluop<= "0010";
wait for 100 ns;

data1 <= X"FFFFFFF9";
data2 <= X"FFFFFFFA";
aluop<= "0110";
wait for 100 ns;

data1 <= X"00000001";
data2 <= X"00000001";
aluop<= "0110";
wait for 100 ns;

data1 <= X"7FFFFFFF";
data2 <= X"7FFFFFFF";
aluop<= "0010";
wait for 100 ns;

data1 <= X"0F0F0F0F";
data2 <= X"FF0FF0F0";
aluop<= "0000";
wait for 100 ns;


data1 <= X"0F0F0F0F";
data2 <= X"FF0FF0F0";
aluop<= "0001";
wait for 100 ns;


data1 <= X"0F0F0F0F";
data2 <= X"FF0FF0F0";
aluop<= "1100";
wait for 100 ns;

wait;
   end process;

END;