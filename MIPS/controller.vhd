library iEEE;
use iEEE.NUMERIC_STD.ALL;
--Use IEEE.NUMERIC_STD.ALL

--Uncomment the following library declarion if instantiating 
-- any xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VCcomponents.all;
entity controller is 
port (
       opcode : in STD_LOGIC_VECTOR(5 dowtno 0); --instruction 31-26
       regDst : out STD_LOGIC;
	   jump : out STD_LOGIC;
	   Branch : out STD_LOGIC;
	   Memread : out STD_LOGIC;
	   ALUOp: out STD_LOGIC_vector(1 downto 0);
	   MemWrite : out STD_LOGIC;
	   ALUsrc : out STD_LOGIC;
	   RegWrite : out STD_LOGIC
	);
end controller;

architecture behavioral of controller is 

begin

     process(opcode)
	 begin
	 regwrite <= '0'; --deassert for next command
	 case opcode is 
	 
	  when "000000" => --add,or,add,sub, slt:0x00
	  regdst <= '1' ;
	  jump <= '0' ;
	  branch <= '0' ;
	  memread <= '0';
	   memtoreg <= '0';
	  aluop <= "10" ;
	  memwrite <= '0';
	  aluscr <='0';
	  regwrite <'1' after 10 ns;
	  
      when "100011" => --load word(lw): 0x23
	  regdst <= '0' ;
	  jump <= '0' ;
	  branch <= '0' ;
	  memread <= '1';
	   memtoreg <= '1';
	  aluop <= "00" ;
	  memwrite <= '0';
	  aluscr <='1';
	  regwrite <'1' after 10 ns;
	  
	  when "101011" => --store word(sw): 0x2B
	  regdst <= 'x' ; --don't care
	  jump <= '0' ;  
	  branch <= '0' ;
	  memread <= '0';
	   memtoreg <= 'x'; --don't care 
	  aluop <= "00" ;
	  memwrite <= '1';
	  aluscr <='1';
	  regwrite <'0' 
	  
	  when "000100" => -- branch equal(beq): 0x04
	   regdst <= 'x' ; 
	  jump <= '0' ;  
	  branch <= '1' ; after 2 ns;
	  memread <= '0';
	  memtoreg <= 'x';  --don't care
	  aluop <= "01" ;
	  memwrite <= '0';
	  aluscr <='1';
	  regwrite <'0' 
	  
	  when "000010" => --jump(j) : 0x02
	  regdst <= 'x';
	  jump <= '1' ;  
	  branch <= '0' ;
	  memread <= '0';
	  memtoreg <= 'x'; 
	  aluop <= "00" ;
	  memwrite <= '0';
	  aluscr <='0';
	  regwrite <'0' 
	  
	  when others => null; --implement other commands down here 
	  regdst <= '0';
	  jump <= '1' ;  
	  branch <= '0' ;
	  memread <= '0';
	  memtoreg <= '0'; 
	  aluop <= "00" ;
	  memwrite <= '0';
	  aluscr <='0';
	  regwrite <'0' 
	  
	  end case;
	  end process;

end behavioral;