library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_swap_left_right_64_bits is
end test_swap_left_right_64_bits;


architecture behavior of test_swap_left_right_64_bits is
	
	signal data_in_left: std_logic_vector(0 to 31);
	signal data_in_right: std_logic_vector(0 to 31);
	signal data_out_left: std_logic_vector(0 to 31);
	signal data_out_right: std_logic_vector(0 to 31);

begin
	uut: entity swap_left_right_64_bits port map(data_in_left,data_in_right,data_out_left,data_out_right);
	testprocess: process is
	begin
		data_in_left<="11111111111111111111111111111111";
		data_in_right<="00000000000000000000000000000000";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
