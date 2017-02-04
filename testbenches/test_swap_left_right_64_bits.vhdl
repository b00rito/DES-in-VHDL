library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_swap_left_right_64_bits is
end test_swap_left_right_64_bits;


architecture behavior of test_swap_left_right_64_bits is
	
	signal data_in: std_logic_vector(0 to 63);
	signal data_out: std_logic_vector(0 to 63);

begin
	uut: entity swap_left_right_64_bits port map(data_in,data_out);
	testprocess: process is
	begin
		data_in<="1111111111111111111111111111111100000000000000000000000000000000";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
