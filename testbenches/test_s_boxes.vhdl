library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.all;

entity test_s_boxes is
end test_s_boxes;

architecture behavior of test_s_boxes is
	signal data_in: std_logic_vector(0 to 5);
	signal data_out: std_logic_vector(0 to 3);

begin
	uut: entity s1_box port map (data_in, data_out);
	testprocess: process is
	begin
		data_in<="010010"; --this for sbox1 represents 10
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
