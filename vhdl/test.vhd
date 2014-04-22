----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:27:17 03/07/2014 
-- Design Name: 
-- Module Name:    test - Behavioral 
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_SIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
--use IEEE.NUMERIC_BIT.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- entity
entity clique is
    port(

-- combinatorial input
        t_in_1: in std_logic_vector(3 downto 0);
        t_in_2: in std_logic_vector(3 downto 0);
        t_in_3: in std_logic_vector(3 downto 0);
        t_in_4: in std_logic_vector(3 downto 0);

-- adjacent matrix input
--		  ad_in_1: in std_logic_vector(3 downto 0);
--        ad_in_2: in std_logic_vector(3 downto 0);
--        ad_in_3: in std_logic_vector(3 downto 0);
--        ad_in_4: in std_logic_vector(3 downto 0);
		  
		  t_out_1: out std_logic_vector(3 downto 0);
        t_out_2: out std_logic_vector(3 downto 0);
        t_out_3: out std_logic_vector(3 downto 0);
        t_out_4: out std_logic_vector(3 downto 0)
		  );
    
end clique;

architecture work of clique is
 
 signal mask_1 : std_logic_vector(3 downto 0):= "1000";
 signal mask_2 : std_logic_vector(3 downto 0):= "0100";
 signal mask_u	: std_logic_vector(3 DOWNTO 0);
 signal a_in_1,a_in_2,a_in_3,a_in_4 :std_logic_vector(3 downto 0); -- T++
 signal b_in_1,b_in_2,b_in_3,b_in_4 :std_logic_vector(3 downto 0); -- T-
 signal c_in_1,c_in_2,c_in_3,c_in_4 :std_logic_vector(3 downto 0); -- T+-
 signal r1,r2,r3,r4:std_logic_vector(3 downto 0); -- masked values
 signal SEL: integer range 0 to 255; -- To select the value  
 signal ad_st : std_logic_vector(3 downto 0); -- storage of the masked value from the adjacent matrix.
 signal ad_in_1: std_logic_vector(3 downto 0) := "1010";
 signal ad_in_2: std_logic_vector(3 downto 0) := "1100";
 signal ad_in_3: std_logic_vector(3 downto 0) := "0001";
 signal ad_in_4: std_logic_vector(3 downto 0) := "0100";
 Signal Clique_out: std_logic_vector(3 downto 0);

type merger_array is array (11 DOWNTO 0) of std_logic_vector(3 downto 0); 
signal merge1 : merger_array;
signal merge2 : merger_array;

    begin
        process (t_in_1,t_in_2,t_in_3,t_in_4)
        begin
		  for i in 1 to 3 loop
            for j in 2 to 4 loop

        -- for i loop
                 r1 <= t_in_1 and mask_1;
                 r2 <= t_in_2 and mask_1;
                 r3 <= t_in_3 and mask_1;
                 r4 <= t_in_4 and mask_1;

                 if (r1 /= 000) then
                     a_in_1 <= t_in_1;
                     b_in_1 <= "0000";
                 else
                     b_in_1 <= t_in_1;
                     a_in_1 <= "0000" ;
                 end if;
                 
					  if (r2/=0000) then
                     a_in_2 <= t_in_2;
                     b_in_2 <= "0000";
                 else
                     b_in_2 <= t_in_2;
                     a_in_2 <= "0000" ;
                 end if;

                 if (r3/=0000) then
                     a_in_3 <= t_in_3;
                     b_in_3 <= "0000";
					  else
                     b_in_3 <= t_in_3;
                     a_in_3 <= "0000" ;
                 end if;

                 if (r4/=0000) then
                    a_in_4 <= t_in_4;
						  b_in_4 <= "0000";
                 else
                    b_in_4 <= t_in_4;
                    a_in_4 <= "0000" ;
                 end if;
					mask_u <= "0000";
                 mask_1 <= "0" & mask_1(2 DOWNTO 0);


                 --for j loop


                 r1 <= a_in_1 and mask_2;
                 r2 <= a_in_2 and mask_2;
                 r3 <= a_in_3 and mask_2;
                 r4 <= a_in_4 and mask_2;

                 if (r1/=000) then
                     a_in_1 <= a_in_1;
                     c_in_1 <= "0000";
                 else
                     c_in_1 <= a_in_1;
                     a_in_1 <= "0000" ;
                 end if;
                 
					  if (r2/=0000) then
                     a_in_2 <= a_in_2;
                     c_in_2 <= "0000";
                 else
                     c_in_2 <= a_in_2;
                     a_in_2 <= "0000" ;
                 end if;
                 
					  if (r3/=0000) then
                     a_in_3 <= a_in_3;
                     c_in_3 <= "0000";
      			  else
                     c_in_3 <= a_in_3;
                     a_in_3 <= "0000" ;
                 end if;

                 if (r4/=0000) then
                     a_in_4 <= a_in_4;
						   c_in_4 <= "0000";
                 else
                     c_in_4 <= a_in_4;  -- c_in_1 to c_in_4 is T+-
                     a_in_4 <= "0000" ;

                 end if;
                 mask_2 <= "0" & mask_2(2 DOWNTO 0);


merge1(0)<= b_in_1; 
merge1(1)<= b_in_2; 
merge1(2)<= b_in_3; 
merge1(3)<= b_in_4; 
merge1(4)<= c_in_1; 
merge1(5)<= c_in_2; 
merge1(6)<= c_in_3; 
merge1(7)<= c_in_4; 

SEL <= i;
case SEL is
	 when 1 => clique_out <= ad_in_1;
    when 2 => clique_out <= ad_in_2;
	 when 3 => clique_out <= ad_in_3;
	 when 4 => clique_out <= ad_in_4;
    when others => clique_out <= (others => '0');
end case;
ad_st <=  clique_out AND mask_2;

if (ad_st /= "0") then
merge2 <= merge1(11 DOWNTO 4) & a_in_1 & a_in_2 & a_in_3 & a_in_4;

else 
a_in_1 <= "0000" ;
a_in_2 <= "0000" ;
a_in_3 <= "0000" ;
a_in_4 <= "0000" ;

end if;
end loop;
end loop;

end process; 
end work ;