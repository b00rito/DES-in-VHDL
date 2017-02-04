library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_left_shift_by_2 is
end test_left_shift_by_2;

architecture behavior of test_left_shift_by_2 is
	
	signal data_in: std_logic_vector(0 to 27);
	signal data_out: std_logic_vector(0 to 27);

begin
	uut: entity left_shift_by_2 port map (data_in, data_out);
	testprocess: process is
	begin
		data_in<="0111111111111111111111111110";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
