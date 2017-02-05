library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_s_box is
end test_s_box;


architecture behavior of test_s_box is

	signal data_in: std_logic_vector(0 to 47);
	signal data_out: std_logic_vector(0 to 31);

begin

	uut: entity s_box port map(data_in, data_out);
	testprocess: process is
	begin
		data_in<="000010000000000000000000000000000000000000000000";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
