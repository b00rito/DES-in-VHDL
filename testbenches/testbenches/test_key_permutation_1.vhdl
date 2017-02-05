library ieee;
use ieee.std_logic_1164.all;


use work.all;

entity test_key_permutation_1 is
end test_key_permutation_1;

architecture behavior of test_key_permutation_1 is
--component declaration of the unit under test
	signal data_in: std_logic_vector(0 to 63);
	signal permuted_left_half: std_logic_vector(0 to 27);
	signal permuted_right_half: std_logic_vector(0 to 27);


begin
	uut:entity key_permutation_1 port map(data_in,permuted_left_half,permuted_right_half);
	testprocess: process is
	begin
		data_in<="1101111000010000100111000101100011101000101001001010011000110000";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
