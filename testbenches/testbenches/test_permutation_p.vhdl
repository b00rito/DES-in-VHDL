library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_permutation_p is
end test_permutation_p;


architecture behavior of test_permutation_p is

	signal data_in: std_logic_vector(0 to 31);
	signal data_out: std_logic_vector(0 to 31);

begin
	
	uut: entity permutation_p port map(data_in,data_out);
	testprocess: process is
	begin
		data_in<="00101001001011001001001100100000";
		wait for 10 ns;
	end process;
end architecture behavior;
