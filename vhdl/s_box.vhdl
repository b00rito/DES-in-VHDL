library ieee;

use ieee.std_logic_1164.all;

entity s_box is
port(	data_in: in std_logic_vector(0 to 47);
	data_out: out std_logic_vector(0 to 31));
end s_box;


architecture behavior of s_box is

	component s1_box
	port(	data_in: in std_logic_vector(0 to 5);
		data_out: out std_logic_vector(0 to 3));
	end component;

	component s2_box
	port(	data_in: in std_logic_vector(0 to 5);
		data_out: out std_logic_vector(0 to 3));
	end component;

	component s3_box
	port(	data_in: in std_logic_vector(0 to 5);
		data_out: out std_logic_vector(0 to 3));
	end component;

	component s4_box
	port(	data_in: in std_logic_vector(0 to 5);
		data_out: out std_logic_vector(0 to 3));
	end component;

	component s5_box
	port(	data_in: in std_logic_vector(0 to 5);
		data_out: out std_logic_vector(0 to 3));
	end component;

	component s6_box
	port(	data_in: in std_logic_vector(0 to 5);
		data_out: out std_logic_vector(0 to 3));
	end component;

	component s7_box
	port(	data_in: in std_logic_vector(0 to 5);
		data_out: out std_logic_vector(0 to 3));
	end component;

	component s8_box
	port(	data_in: in std_logic_vector(0 to 5);
		data_out: out std_logic_vector(0 to 3));
	end component;


begin


	s1: s1_box port map(
		data_in=>data_in(0 to 5),
		data_out=>data_out(0 to 3));


	s2: s2_box port map(
		data_in=>data_in(6 to 11),
		data_out=>data_out(4 to 7));

	s3: s3_box port map(
		data_in=>data_in(12 to 17),
		data_out=>data_out(8 to 11));

	s4: s4_box port map(
		data_in=>data_in(18 to 23),
		data_out=>data_out(12 to 15));

	s5: s5_box port map(
		data_in=>data_in(24 to 29),
		data_out=>data_out(16 to 19));

	s6: s6_box port map(
		data_in=>data_in(30 to 35),
		data_out=>data_out(20 to 23));

	s7: s7_box port map(
		data_in=>data_in(36 to 41),
		data_out=>data_out(24 to 27));

	s8: s8_box port map(
		data_in=>data_in(42 to 47),
		data_out=>data_out(28 to 31));


end;
