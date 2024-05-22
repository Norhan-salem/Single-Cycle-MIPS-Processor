library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity tb_RegisterFile is

end tb_RegisterFile;

ARCHITECTURE behavior OF tb_RegisterFile IS

--INPUTS

signal read_sel1 :std_logic_vector (4 downto 0) := (others =>'0');
signal read_sel2 :std_logic_vector (4 downto 0) := (others =>'0');
signal write_sel :std_logic_vector (4 downto 0) :=(others =>'0');
signal write_data :std_logic_vector (31 downto 0) := (others =>'0');
signal write_ena : std_logic :='0';
signal clk :std_logic :='0';


--Outputs

signal data1 : std_logic_vector (31 downto 0) ;
signal data2 : std_logic_vector (31 downto 0) ;

constant clk_period : time := 10 ns;
BEGIN 

U1_Reg: entity work.RegisterFile(Behavioral)
PORT MAP(
  read_sel1 => read_sel1,
  read_sel2 => read_sel2,
  write_sel => write_sel,
  write_data => write_data,
  write_ena => write_ena,
  clk=>clk,
   data1 =>  data1 ,
   data2 =>  data2 
);

clk_process :process
begin
  
clk <= '0';
  wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

stim_proc: process 
begin
  
  for I in 0to 30 loop
    read_sel1 <= std_logic_vector(to_unsigned(I,5));
    read_sel2 <= std_logic_vector(to_unsigned(I+1,5));
  wait for 25 ns;
end loop; 
  
write_sel <= "01000";
write_data <= x"a5a5a5a5";
wait for 50 ns;

write_sel <= "00001";
wait for 5 ns;

write_sel <= "00000";
wait for 5 ns;


  assert false 
    report "End"
    severity failure;

    end process;
    END;