library ieee;

use ieee.std_logic_1164.all;

entity round is
port(	left_plain: in std_logic_vector(0 to 31);
	right_plain: in std_logic_vector(0 to 31);
	subkey: in std_logic_vector(0 to 47);
	left_data_out: out std_logic_vector(0 to 31);
	right_data_out: out std_logic_vector(0 to 31));
end round;


architecture behavior of round is

	component f
	port(	data_in: in std_logic_vector(0 to 31);
		key: in std_logic_vector(0 to 47);
		data_out: out std_logic_vector(0 to 31));
	end component;

	component xor_32_bits 
	port(	data_in: in std_logic_vector(0 to 31);
		key: in std_logic_vector(0 to 31);
		data_out: out std_logic_vector(0 to 31));
	end component;

	signal after_f: std_logic_vector(0 to 31);


begin

	s1: f port map(
		data_in=>right_plain,
		key=>subkey,
		data_out=>after_f);

	s2: xor_32_bits port map(
		data_in=>after_f,
		key=>left_plain,
		data_out=>right_data_out);

	left_data_out<=right_plain;

end;
