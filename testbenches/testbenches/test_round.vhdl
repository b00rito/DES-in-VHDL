library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_round is
end test_round;


architecture behavior of test_round is

	signal left_plain: std_logic_vector(0 to 31);
	signal right_plain: std_logic_vector(0 to 31);
	signal subkey: std_logic_vector(0 to 47);
	signal left_data_out: std_logic_vector(0 to 31);
	signal right_data_out: std_logic_vector(0 to 31);

begin

	uut: entity round port map(left_plain,right_plain,subkey,left_data_out,right_data_out);
	testprocess: process is
	begin
		left_plain<="00000000000000000000000000000000";
		right_plain<="00000000000000000000000000000000";
		subkey<="000000000000000000000000000000000000000000000000";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
