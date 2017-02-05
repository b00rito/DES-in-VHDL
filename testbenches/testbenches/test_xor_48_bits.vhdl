library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_xor_48_bits is
end test_xor_48_bits;

architecture behavior of test_xor_48_bits is
	
	signal data_in: std_logic_vector(0 to 47);
	signal key: std_logic_vector(0 to 47);
	signal data_out: std_logic_vector(0 to 47);

begin
	uut: entity xor_48_bits port map (data_in,key,data_out);
	testprocess: process is
	begin
		data_in<="011000000000000000000000000000000000000000000001";
		key<="101000000000000000000000000000000000000000000000";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
