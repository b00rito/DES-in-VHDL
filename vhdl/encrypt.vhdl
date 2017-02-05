library ieee;

use ieee.std_logic_1164.all;

entity encrypt is
port(	data_in: in std_logic_vector(0 to 63);
	key: in std_logic_vector(0 to 63);
	data_out: out std_logic_vector(0 to 63));
end encrypt;


architecture behavior of encrypt is

	component initial_permutation
	port(	data_in: in std_logic_vector(0 to 63);
		permuted_right_half: out std_logic_vector(0 to 31);
		permuted_left_half: out std_logic_vector(0 to 31));
	end component;

	component key_permutation_1
	port(	key: in std_logic_vector(0 to 63);
		permuted_left_key: out std_logic_vector(0 to 27);
		permuted_right_key: out std_logic_vector(0 to 27));
	end component;

	component subkey_production
	generic(shifting_parameter: std_logic_vector(0 to 1);
		left_or_right: std_logic_vector(0 to 0));
	port(	left_key_in: in std_logic_vector(0 to 27);
		right_key_in: in std_logic_vector(0 to 27);
		subkey: out std_logic_vector(0 to 47);
		left_key_out: out std_logic_vector(0 to 27);
		right_key_out: out std_logic_vector(0 to 27));
	end component;

	component round
	port(	left_plain: in std_logic_vector(0 to 31);
		right_plain: in std_logic_vector(0 to 31);
		subkey: in std_logic_vector(0 to 47);
		left_data_out: out std_logic_vector(0 to 31);
		right_data_out: out std_logic_vector(0 to 31));
	end component;

	component swap_left_right_64_bits
	port(	data_in_left: in std_logic_vector(0 to 31);
		data_in_right: in std_logic_vector(0 to 31);
		data_out_left: out std_logic_vector(0 to 31);
		data_out_right: out std_logic_vector(0 to 31));
	end component;

	component reverse_initial_permutation
	port(	permuted_left_half: in std_logic_vector(0 to 31);
		permuted_right_half: in std_logic_vector(0 to 31);
		data_out: out std_logic_vector(0 to 63));
	end component;


	signal permuted_right_plain_text: std_logic_vector(0 to 31);
	signal permuted_left_plain_text: std_logic_vector(0 to 31);
	signal left_key: std_logic_vector(0 to 27);
	signal right_key: std_logic_vector(0 to 27);
	signal subkey1,subkey2,subkey3,subkey4,subkey5,subkey6,subkey7,subkey8,subkey9,subkey10,subkey11,subkey12,subkey13,subkey14,subkey15,subkey16: std_logic_vector(0 to 47);
	signal left_key_1,left_key_2,left_key_3,left_key_4,left_key_5,left_key_6,left_key_7,left_key_8,left_key_9,left_key_10,left_key_11,left_key_12,left_key_13,left_key_14,left_key_15,left_key_16: std_logic_vector(0 to 27);
	signal right_key_1,right_key_2,right_key_3,right_key_4,right_key_5,right_key_6,right_key_7,right_key_8,right_key_9,right_key_10,right_key_11,right_key_12,right_key_13,right_key_14,right_key_15,right_key_16: std_logic_vector(0 to 27);
	signal left_plain_1,left_plain_2,left_plain_3,left_plain_4,left_plain_5,left_plain_6,left_plain_7,left_plain_8,left_plain_9,left_plain_10,left_plain_11,left_plain_12,left_plain_13,left_plain_14,left_plain_15,left_plain_16: std_logic_vector(0 to 31);
	signal right_plain_1,right_plain_2,right_plain_3,right_plain_4,right_plain_5,right_plain_6,right_plain_7,right_plain_8,right_plain_9,right_plain_10,right_plain_11,right_plain_12,right_plain_13,right_plain_14,right_plain_15,right_plain_16: std_logic_vector(0 to 31);
	signal swaped_plain_text_left,swaped_plain_text_right: std_logic_vector(0 to 31);

begin

	s1: initial_permutation port map(
		data_in=>data_in,
		permuted_right_half=>permuted_right_plain_text,
		permuted_left_half=>permuted_left_plain_text);

	s2: key_permutation_1 port map(
		key=>key,
		permuted_left_key=>left_key,
		permuted_right_key=>right_key);








	s3: subkey_production generic map(
		shifting_parameter=>"01",
		left_or_right=>"0")
		port map(	left_key_in=>left_key,
				right_key_in=>right_key,
				subkey=>subkey1,
				left_key_out=>left_key_1,
				right_key_out=>right_key_1);

	s4: round port map(
		left_plain=>permuted_left_plain_text,
		right_plain=>permuted_right_plain_text,
		subkey=>subkey1,
		left_data_out=>left_plain_1,
		right_data_out=>right_plain_1);




	
	s5: subkey_production generic map(
		shifting_parameter=>"01",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_1,
				right_key_in=>right_key_1,
				subkey=>subkey2,
				left_key_out=>left_key_2,
				right_key_out=>right_key_2);

	s6: round port map(
		left_plain=>left_plain_1,
		right_plain=>right_plain_1,
		subkey=>subkey2,
		left_data_out=>left_plain_2,
		right_data_out=>right_plain_2);






	
	s7: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_2,
				right_key_in=>right_key_2,
				subkey=>subkey3,
				left_key_out=>left_key_3,
				right_key_out=>right_key_3);

	s8: round port map(
		left_plain=>left_plain_2,
		right_plain=>right_plain_2,
		subkey=>subkey3,
		left_data_out=>left_plain_3,
		right_data_out=>right_plain_3);






	
	s9: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")

		port map(	left_key_in=>left_key_3,
				right_key_in=>right_key_3,
				subkey=>subkey4,
				left_key_out=>left_key_4,
				right_key_out=>right_key_4);

	s10: round port map(
		left_plain=>left_plain_3,
		right_plain=>right_plain_3,
		subkey=>subkey4,
		left_data_out=>left_plain_4,
		right_data_out=>right_plain_4);







	
	s11: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_4,
				right_key_in=>right_key_4,
				subkey=>subkey5,
				left_key_out=>left_key_5,
				right_key_out=>right_key_5);

	s12: round port map(
		left_plain=>left_plain_4,
		right_plain=>right_plain_4,
		subkey=>subkey5,
		left_data_out=>left_plain_5,
		right_data_out=>right_plain_5);





	
	s13: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_5,
				right_key_in=>right_key_5,
				subkey=>subkey6,
				left_key_out=>left_key_6,
				right_key_out=>right_key_6);

	s14: round port map(
		left_plain=>left_plain_5,
		right_plain=>right_plain_5,
		subkey=>subkey6,
		left_data_out=>left_plain_6,
		right_data_out=>right_plain_6);






	
	s15: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_6,
				right_key_in=>right_key_6,
				subkey=>subkey7,
				left_key_out=>left_key_7,
				right_key_out=>right_key_7);

	s16: round port map(
		left_plain=>left_plain_6,
		right_plain=>right_plain_6,
		subkey=>subkey7,
		left_data_out=>left_plain_7,
		right_data_out=>right_plain_7);




	
	s17: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_7,
				right_key_in=>right_key_7,
				subkey=>subkey8,
				left_key_out=>left_key_8,
				right_key_out=>right_key_8);

	s18: round port map(
		left_plain=>left_plain_7,
		right_plain=>right_plain_7,
		subkey=>subkey8,
		left_data_out=>left_plain_8,
		right_data_out=>right_plain_8);






	
	s19: subkey_production generic map(
		shifting_parameter=>"01",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_8,
				right_key_in=>right_key_8,
				subkey=>subkey9,
				left_key_out=>left_key_9,
				right_key_out=>right_key_9);

	s20: round port map(
		left_plain=>left_plain_8,
		right_plain=>right_plain_8,
		subkey=>subkey9,
		left_data_out=>left_plain_9,
		right_data_out=>right_plain_9);





	
	s21: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_9,
				right_key_in=>right_key_9,
				subkey=>subkey10,
				left_key_out=>left_key_10,
				right_key_out=>right_key_10);

	s22: round port map(
		left_plain=>left_plain_9,
		right_plain=>right_plain_9,
		subkey=>subkey10,
		left_data_out=>left_plain_10,
		right_data_out=>right_plain_10);





	
	s23: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_10,
				right_key_in=>right_key_10,
				subkey=>subkey11,
				left_key_out=>left_key_11,
				right_key_out=>right_key_11);

	s24: round port map(
		left_plain=>left_plain_10,
		right_plain=>right_plain_10,
		subkey=>subkey11,
		left_data_out=>left_plain_11,
		right_data_out=>right_plain_11);





	
	s25: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_11,
				right_key_in=>right_key_11,
				subkey=>subkey12,
				left_key_out=>left_key_12,
				right_key_out=>right_key_12);

	s26: round port map(
		left_plain=>left_plain_11,
		right_plain=>right_plain_11,
		subkey=>subkey12,
		left_data_out=>left_plain_12,
		right_data_out=>right_plain_12);






	
	s27: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_12,
				right_key_in=>right_key_12,
				subkey=>subkey13,
				left_key_out=>left_key_13,
				right_key_out=>right_key_13);

	s28: round port map(
		left_plain=>left_plain_12,
		right_plain=>right_plain_12,
		subkey=>subkey13,
		left_data_out=>left_plain_13,
		right_data_out=>right_plain_13);




	
	s29: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_13,
				right_key_in=>right_key_13,
				subkey=>subkey14,
				left_key_out=>left_key_14,
				right_key_out=>right_key_14);

	s30: round port map(
		left_plain=>left_plain_13,
		right_plain=>right_plain_13,
		subkey=>subkey14,
		left_data_out=>left_plain_14,
		right_data_out=>right_plain_14);





	
	s31: subkey_production generic map(
		shifting_parameter=>"10",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_14,
				right_key_in=>right_key_14,
				subkey=>subkey15,
				left_key_out=>left_key_15,
				right_key_out=>right_key_15);

	s32: round port map(
		left_plain=>left_plain_14,
		right_plain=>right_plain_14,
		subkey=>subkey15,
		left_data_out=>left_plain_15,
		right_data_out=>right_plain_15);




	
	s33: subkey_production generic map(
		shifting_parameter=>"01",
		left_or_right=>"0")
		port map(	left_key_in=>left_key_15,
				right_key_in=>right_key_15,
				subkey=>subkey16,
				left_key_out=>left_key_16,
				right_key_out=>right_key_16);

	s34: round port map(
		left_plain=>left_plain_15,
		right_plain=>right_plain_15,
		subkey=>subkey16,
		left_data_out=>left_plain_16,
		right_data_out=>right_plain_16);











	s35: swap_left_right_64_bits port map(
		data_in_left=>left_plain_16,
		data_in_right=>right_plain_16,
		data_out_left=>swaped_plain_text_left,
		data_out_right=>swaped_plain_text_right);






	s36: reverse_initial_permutation port map(
		permuted_left_half=>swaped_plain_text_left,
		permuted_right_half=>swaped_plain_text_right,
		data_out=>data_out);


end;
