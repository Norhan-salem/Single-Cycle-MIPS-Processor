LIBRARY ieee ; 
USE ieee.std_logic_1164.All ;
ENTITy tb_Mips is
end  tb_mips;
ARCHITECTURE behaviour of tb_Mips is
Signal se_in : std_logic_vector(15 down to 0) := x"7FFF";
Signal se_out: std_logic_vector (31 down to 0 ): "x"00000000";
Signal reg 2 : std_logic_vector (31 down to 0 ): "x"12345678";
signal mux_ct1: std_logic := '0';
Signal mux_out:std_logic_vector (31 down to 0 ): "x"00000000";
begin 
--instantiate the alu source mux
u1 : entity work.mux (Behavioral)
Port map(
mux_in0 =>reg2,
mux_in1 =>se.out,
mux_ct 1 =>muc ct2,
mux_m0 =>mux.out
);