library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_f is
end test_f;


architecture behavior of test_f is

	signal data_in: std_logic_vector(0 to 31);
	signal key: std_logic_vector(0 to 47);
	signal data_out: std_logic_vector(0 to 31);

begin

	uut: entity f port map(data_in,key,data_out);
	testprocess: process is
	begin
		data_in<="00000000000000000000000000000000";
		key<="000000000000000000000000000000000000000000000000";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
