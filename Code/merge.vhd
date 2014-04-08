library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package array_type is
    type tube_out is array(0 to 6) of std_logic_vector (3 downto 0);
end package array_type;

entity merge is
    port(
	 tpm_in: in std_logic_vector(3 downto 0);
	 tm_in: in std_logic_vector(3 downto 0);
	 t_out: out tube_out );

end merge;


architecture job of merge is
begin

merge2 <= tpm_in & tm_in;

end job;

