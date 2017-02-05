library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_subkey_production is
end test_subkey_production;


architecture behavior of test_subkey_production is

	signal left_key_in: std_logic_vector(0 to 27);
	signal right_key_in: std_logic_vector(0 to 27);
--	signal shifting_parameter: std_logic_vector(0 to 1);
	signal subkey: std_logic_vector(0 to 47);
	signal left_key_out: std_logic_vector(0 to 27);
	signal right_key_out: std_logic_vector(0 to 27);

begin

	uut: entity subkey_production
		generic map(shifting_parameter=>"01",left_or_right=>"0") 
		port map(left_key_in, right_key_in, subkey, left_key_out, right_key_out);
		testprocess: process is
		begin
			left_key_in<="0000000000000000000000000001";
			right_key_in<="0000000000000000000000000001";
--			shifting_parameter<="00";
			wait for 10 ns;
		end process testprocess;
end architecture behavior;
