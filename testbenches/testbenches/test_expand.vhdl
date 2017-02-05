library ieee;
use ieee.std_logic_1164.all;


use work.all;

entity test_expand is
end test_expand;

architecture behavior of test_expand is
--component declaration of the unit under test
	signal data_in: std_logic_vector(0 to 31);
	signal data_out: std_logic_vector(0 to 47);


begin
	uut:entity expand port map(data_in,data_out);
	testprocess: process is
	begin
		data_in<="11110000101010101111000010101010";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
