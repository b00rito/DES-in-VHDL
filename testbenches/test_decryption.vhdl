library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_decryption is
end test_decryption;


architecture behavior of test_decryption is

	signal data_in: std_logic_vector(0 to 63);
	signal key: std_logic_vector(0 to 63);
	signal data_out: std_logic_vector(0 to 63);

begin

	uut:entity decrypt port map(data_in,key,data_out);
	testprocess: process is
	begin
		--data_in<="0000000100100011010001010110011110001001101010111100110111101111";
		data_in<="1000010111101000000100110101010000001111000010101011010000000101";
		key<="0001001100110100010101110111100110011011101111001101111111110001";
		wait for 10 ns;
		wait;
	end process testprocess;
end architecture behavior;
