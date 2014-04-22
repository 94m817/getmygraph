----------------------------------------------------------------------------------
-- Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.tube_in_type.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Separate is
    Port ( tube_in 	: in  cliquetube;--STD_LOGIC_VECTOR (7 downto 0);
           --t_bit 		: in  STD_LOGIC_VECTOR (4 downto 0);
           tp_out 	: out  cliquetube;--STD_LOGIC_VECTOR (7 downto 0);
           tm_out 	: out cliquetube);-- STD_LOGIC_VECTOR (7 downto 0));
end Separate;

architecture Behavioral of Separate is

	signal	t_in_1, t_in_2, t_in_3,	t_in_4, t_in_5, t_in_6, t_in_7, t_in_8, t_in_9	: std_logic_vector(7 DOWNTO 0);
	
begin

		t_in_1 <= tube_in(0);
		
		with t_in_1(j) select tp_out(0) <= 
						
				tube_in(0) when "1",
				(others => '0') when others;
				
		with t_in_1(j) select tm_out(0) <= 
						
				tube_in(0) when "0",
				(others => '0') when others;
		
		t_in_2 <= tube_in(1);
		
		with t_in_2(j) select tp_out(1) <= 
						
				tube_in(1) when "1",
				(others => '0') when others;
				
		with t_in_2(j) select tm_out(1) <= 
						
				tube_in(1) when "0",
				(others => '0') when others;

		t_in_3 <= tube_in(2);
		
		with t_in_3(j) select tp_out(2) <= 
						
				tube_in(2) when "1",
				(others => '0') when others;
				
		with t_in_3(j) select tm_out(2) <= 
						
				tube_in(2) when "0",
				(others => '0') when others;

		t_in_4 <= tube_in(3);
		
		with t_in_4(j) select tp_out(3) <= 
						
				tube_in(3) when "1",
				(others => '0') when others;
				
		with t_in_4(j) select tm_out(3) <= 
						
				tube_in(3) when "0",
				(others => '0') when others;

		t_in_5 <= tube_in(4);
		
		with t_in_5(j) select tp_out(4) <= 
						
				tube_in(4) when "1",
				(others => '0') when others;
				
		with t_in_5(j) select tm_out(4) <= 
						
				tube_in(4) when "0",
				(others => '0') when others;

		t_in_6 <= tube_in(5);
		
		with t_in_6(j) select tp_out(5) <= 
						
				tube_in(5) when "1",
				(others => '0') when others;
				
		with t_in_6(j) select tm_out(5) <= 
						
				tube_in(5) when "0",
				(others => '0') when others;

		t_in_7 <= tube_in(6);
		
		with t_in_7(j) select tp_out(6) <= 
						
				tube_in(6) when "1",
				(others => '0') when others;
				
		with t_in_7(j) select tm_out(6) <= 
						
				tube_in(6) when "0",
				(others => '0') when others;

		t_in_8 <= tube_in(7);
		
		with t_in_8(j) select tp_out(7) <= 
						
				tube_in(7) when "1",
				(others => '0') when others;
				
		with t_in_8(j) select tm_out(7) <= 
						
				tube_in(7) when "0",
				(others => '0') when others;

		t_in_9 <= tube_in(8);
		
		with t_in_9(j) select tp_out(8) <= 
						
				tube_in(8) when "1",
				(others => '0') when others;
				
		with t_in_9(j) select tm_out(8) <= 
						
				tube_in(8) when "0",
				(others => '0') when others;

end Behavioral;
