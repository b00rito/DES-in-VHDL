library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_initial_permutation is
end test_initial_permutation;


architecture behavior of test_initial_permutation is

	signal data_in: std_logic_vector(0 to 63);
	signal permuted_right_half: std_logic_vector(0 to 31);
	signal permuted_left_half: std_logic_vector(0 to 31);

begin

	uut: entity initial_permutation port map(data_in, permuted_right_half, permuted_left_half);
	testprocess: process is
	begin
		data_in<="0101011011101001100111101010110011011110010111111111010010110001";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
