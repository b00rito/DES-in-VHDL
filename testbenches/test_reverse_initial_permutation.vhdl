library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_reverse_initial_permutation is
end test_reverse_initial_permutation;

architecture behavior of test_reverse_initial_permutation is

	signal permuted_left_half: std_logic_vector(0 to 31);
	signal permuted_right_half: std_logic_vector(0 to 31);
	signal data_out: std_logic_vector(0 to 63);

begin

	uut: entity reverse_initial_permutation port map(permuted_left_half, permuted_right_half, data_out);
	testprocess: process is
	begin
		permuted_left_half<="00001010010011001101100110010101";
		permuted_right_half<="01000011010000100011001000110100";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
