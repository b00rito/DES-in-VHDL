library ieee;

use ieee.std_logic_1164.all;

entity split_48_bits_to_8x6 is
port(	data_in: in std_logic_vector(0 to 47);
	data_out_1: out std_logic_vector(0 to 5); --holds data 0 to 5
	data_out_2: out std_logic_vector(0 to 5); --holds data 6 to 11
	data_out_3: out std_logic_vector(0 to 5); --holds data 12 to 17
	data_out_4: out std_logic_vector(0 to 5); --holds data 18 to 23
	data_out_5: out std_logic_vector(0 to 5); --holds data 24 to 29
	data_out_6: out std_logic_vector(0 to 5); --holds data 30 to 35
	data_out_7: out std_logic_vector(0 to 5); --holds data 36 to 41
	data_out_8: out std_logic_vector(0 to 5)); --holds data 42 to 47
end split_48_bits_to_8x6;


architecture behavior of split_48_bits_to_8x6 is

begin
	data_out_1<=data_in(0 to 5);
	data_out_2<=data_in(6 to 11);
	data_out_3<=data_in(12 to 17);
	data_out_4<=data_in(18 to 23);
	data_out_5<=data_in(24 to 29);
	data_out_6<=data_in(30 to 35);
	data_out_7<=data_in(36 to 41);
	data_out_8<=data_in(42 to 47);

end behavior;
