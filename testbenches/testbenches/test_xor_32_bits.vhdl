library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_xor_32_bits is
end test_xor_32_bits;

architecture behavior of test_xor_32_bits is
	
	signal data_in: std_logic_vector(0 to 31);
	signal key: std_logic_vector(0 to 31);
	signal data_out: std_logic_vector(0 to 31);

begin
	uut: entity xor_32_bits port map (data_in,key,data_out);
	testprocess: process is
	begin
		data_in<="01100000000000000000000000000001";
		key<="10100000000000000000000000000000";
		wait for 10 ns;
	end process testprocess;
end architecture behavior;
