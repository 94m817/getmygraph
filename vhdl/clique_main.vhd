----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:35:14 04/08/2014 
-- Design Name: 
-- Module Name:    clique_main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.tube_in_type.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clique_main is

	Port ( tube_in_main 	: in  cliquetube;--STD_LOGIC_VECTOR (7 downto 0);
			 bus_clk			: in std_logic;
           --t_bit 		: in  STD_LOGIC_VECTOR (4 downto 0);
           tube_out		: out  cliquetube);

end clique_main;

architecture Behavioral of clique_main is

	signal i	: integer range 0 to 10	:= 0;
	signal j	: integer range 0 to 10	:= 1;
	signal	tube_temp_in, tube_temp_out, tube_tp, tube_tm, tube_tpm : cliquetube;
	signal	t_in_1, t_in_2, t_in_3,	t_in_4, t_in_5, t_in_6, t_in_7, t_in_8, t_in_9	: std_logic_vector(7 DOWNTO 0);
	
begin

	process(bus_clk)
	
		begin
		
			if i = 0 then
				tube_temp_in <= tube_in_main;
			else
				tube_temp_in <= tube_temp_out;
			end if;
			if j > 9 then
				i <= i + 1 ;
				j <= 1;
			else
				j <= j + 1 ;
			end if;
			
			t_in_1 <= tube_temp_in(0);
			
			if (t_in_1(i)='1') then
		
				tube_tp(0) <= t_in_1;
				tube_tm(0) <= (others => '0');
			else
				tube_tp(0) <= (others => '0');
				tube_tm(0) <= t_in_1;
			end if;

		t_in_1 <= tube_temp_in(1);
		
		if (t_in_1(i)='1') then
		
				tube_tp(1) <= t_in_1;
				tube_tm(1) <= (others => '0');
			else
				tube_tp(1) <= (others => '0');
				tube_tm(1) <= t_in_1;
			end if;
			
		t_in_1 <= tube_temp_in(2);
		
		if (t_in_1(i)='1') then
		
				tube_tp(2) <= t_in_1;
				tube_tm(2) <= (others => '0');
			else
				tube_tp(2) <= (others => '0');
				tube_tm(2) <= t_in_1;
			end if;
			
		t_in_1 <= tube_temp_in(3);
		
		if (t_in_1(i)='1') then
		
				tube_tp(3) <= t_in_1;
				tube_tm(3) <= (others => '0');
			else
				tube_tp(3) <= (others => '0');
				tube_tm(3) <= t_in_1;
			end if;
			
		t_in_1 <= tube_temp_in(4);
		
		if (t_in_1(i)='1') then
		
				tube_tp(4) <= t_in_1;
				tube_tm(4) <= (others => '0');
			else
				tube_tp(4) <= (others => '0');
				tube_tm(4) <= t_in_1;
			end if;
			
		t_in_1 <= tube_temp_in(5);
		
		if (t_in_1(i)='1') then
		
				tube_tp(5) <= t_in_1;
				tube_tm(5) <= (others => '0');
			else
				tube_tp(5) <= (others => '0');
				tube_tm(5) <= t_in_1;
			end if;

		t_in_1 <= tube_temp_in(6);
		
		if (t_in_1(i)='1') then
		
				tube_tp(6) <= t_in_1;
				tube_tm(6) <= (others => '0');
			else
				tube_tp(6) <= (others => '0');
				tube_tm(6) <= t_in_1;
			end if;

		t_in_1 <= tube_temp_in(7);
		
		if (t_in_1(i)='1') then
		
				tube_tp(7) <= t_in_1;
				tube_tm(7) <= (others => '0');
			else
				tube_tp(7) <= (others => '0');
				tube_tm(7) <= t_in_1;
			end if;

		t_in_1 <= tube_temp_in(8);
		
		if (t_in_1(i)='1') then
		
				tube_tp(8) <= t_in_1;
				tube_tm(8) <= (others => '0');
			else
				tube_tp(8) <= (others => '0');
				tube_tm(8) <= t_in_1;
			end if;

-- T+- starts here						
		tube_temp_in <= tube_tp;
		
		t_in_1 <= tube_temp_in(0);
		
			if (t_in_1(j)='0') then
		
				tube_tpm(0) <= t_in_1;
			else
				tube_tpm(0) <= (others => '0');
			end if;
		
		t_in_1 <= tube_temp_in(1);
		
			if (t_in_1(j)='0') then
		
				tube_tpm(1) <= t_in_1;
			else
				tube_tpm(1) <= (others => '0');
			end if;
			
		t_in_1 <= tube_temp_in(2);
		
			if (t_in_1(j)='0') then
		
				tube_tpm(2) <= t_in_1;
			else
				tube_tpm(2) <= (others => '0');
			end if;
			
		t_in_1 <= tube_temp_in(3);
		
			if (t_in_1(j)='0') then
		
				tube_tpm(3) <= t_in_1;
			else
				tube_tpm(3) <= (others => '0');
			end if;

		t_in_1 <= tube_temp_in(4);
		
			if (t_in_1(j)='0') then
		
				tube_tpm(4) <= t_in_1;
			else
				tube_tpm(4) <= (others => '0');
			end if;

		t_in_1 <= tube_temp_in(5);
		
			if (t_in_1(j)='0') then
		
				tube_tpm(5) <= t_in_1;
			else
				tube_tpm(5) <= (others => '0');
			end if;

		t_in_1 <= tube_temp_in(6);
		
			if (t_in_1(j)='0') then
		
				tube_tpm(6) <= t_in_1;
			else
				tube_tpm(6) <= (others => '0');
			end if;

		t_in_1 <= tube_temp_in(7);
		
			if (t_in_1(j)='0') then
		
				tube_tpm(7) <= t_in_1;
			else
				tube_tpm(7) <= (others => '0');
			end if;

		t_in_1 <= tube_temp_in(8);
		
			if (t_in_1(j)='0') then
		
				tube_tpm(8) <= t_in_1;
			else
				tube_tpm(8) <= (others => '0');
			end if;
				
		end process;
					
	
end Behavioral;

