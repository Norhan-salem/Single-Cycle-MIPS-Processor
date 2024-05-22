library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RegisterFile is
Generic(
  B:integer := 32;
  w:integer := 5
);

Port(

read_sel1 : in std_logic_vector(4 downto 0) ;
read_sel2 : in std_logic_vector(4 downto 0) ;
write_sel : in std_logic_vector(4 downto 0) ;
write_ena : in std_logic ;

write_data: in std_logic_vector(31 downto 0); 
data1: out std_logic_vector(31 downto 0) ;
  data2: out std_logic_vector(31 downto 0);
  clk: in std_logic 
);

end RegisterFile;

architecture Behavioral of RegisterFile is


  type reg_file_type is array (0 to 31) of std_logic_vector(31 downto 0);

signal array_reg : reg_file_type := (x"00000000",
                                     x"11111111",
                                     x"22222222",
                                     x"33333333",
                                     x"44444444",
                                     x"55555555",
                                     x"66666666",
                                     x"77777777",
                                     x"88888888",
                                     x"99999999",
                                     x"AAAAAAAA",
                                     x"BBBBBBBB",
                                     x"CCCCCCCC",
                                     x"DDDDDDDD",
                                     x"EEEEEEEE",
                                     x"FFFFFFFF",
                                     x"00000000",
                                     x"11111111",
                                     x"22222222",
                                     x"33333333",
                                     x"44444444",
                                     x"55555555",
                                     x"66666666",
                                     x"77777777",
                                     x"88888888",
                                     x"99999999",
                                     x"AAAAAAAA",
                                     x"BBBBBBBB",
                                     x"10008000",
                                     x"7FFFF1EC",
                                     x"EEEEEEEE",
                                     x"FFFFFFFF"
);
                                     
  begin
    
     
    
    
    process (write_ena) --pulse on write
begin
  if ( write_ena = '1' ) then
    array_reg (to_integer (unsigned (write_sel ))) <= write_data;
end if;
end process;

--read port

data1 <= array_reg(to_integer (unsigned (read_sel1 )) );
data2 <= array_reg (to_integer (unsigned (read_sel2)) ) ;

end Behavioral;