library ieee;

use ieee.std_logic_1164.all;

use work.all;

entity test_split_48_bits_to_8x6 is
end test_split_48_bits_to_8x6;

architecture behavior of test_split_48_bits_to_8x6 is

	signal data_in: std_logic_vector(0 to 47);
	signal data_out_1: std_logic_vector(0 to 5);
	signal data_out_2: std_logic_vector(0 to 5);
	signal data_out_3: std_logic_vector(0 to 5);
	signal data_out_4: std_logic_vector(0 to 5);
	signal data_out_5: std_logic_vector(0 to 5);
	signal data_out_6: std_logic_vector(0 to 5);
	signal data_out_7: std_logic_vector(0 to 5);
	signal data_out_8: std_logic_vector(0 to 5);

begin

	uut: entity split_48_bits_to_8x6 port map (data_in, data_out_1, data_out_2, data_out_3, data_out_4, data_out_5, data_out_6, data_out_7, data_out_8);
	testprocess: process is
	begin
		data_in<="000000111111000000111111000000111111000000111111";
		wait for 10 ns;
	end process testprocess;

end architecture behavior;
