library ieee;

use ieee.std_logic_1164.all;

entity initial_permutation is 
port(	data_in: in std_logic_vector(0 to 63);
	permuted_right_half: out std_logic_vector(0 to 31);
	permuted_left_half: out std_logic_vector(0 to 31));
end initial_permutation;


architecture behavior of initial_permutation is

begin

	permuted_left_half(0)<=data_in(57);
	permuted_left_half(1)<=data_in(49);
	permuted_left_half(2)<=data_in(41);
	permuted_left_half(3)<=data_in(33);
	permuted_left_half(4)<=data_in(25);
	permuted_left_half(5)<=data_in(17);
	permuted_left_half(6)<=data_in(9);
	permuted_left_half(7)<=data_in(1);

	permuted_left_half(8)<=data_in(59);
	permuted_left_half(9)<=data_in(51);
	permuted_left_half(10)<=data_in(43);
	permuted_left_half(11)<=data_in(35);
	permuted_left_half(12)<=data_in(27);
	permuted_left_half(13)<=data_in(19);
	permuted_left_half(14)<=data_in(11);
	permuted_left_half(15)<=data_in(3);

	permuted_left_half(16)<=data_in(61);
	permuted_left_half(17)<=data_in(53);
	permuted_left_half(18)<=data_in(45);
	permuted_left_half(19)<=data_in(37);
	permuted_left_half(20)<=data_in(29);
	permuted_left_half(21)<=data_in(21);
	permuted_left_half(22)<=data_in(13);
	permuted_left_half(23)<=data_in(5);

	permuted_left_half(24)<=data_in(63);
	permuted_left_half(25)<=data_in(55);
	permuted_left_half(26)<=data_in(47);
	permuted_left_half(27)<=data_in(39);
	permuted_left_half(28)<=data_in(31);
	permuted_left_half(29)<=data_in(23);
	permuted_left_half(30)<=data_in(15);
	permuted_left_half(31)<=data_in(7);


	permuted_right_half(0)<=data_in(56);
	permuted_right_half(1)<=data_in(48);
	permuted_right_half(2)<=data_in(40);
	permuted_right_half(3)<=data_in(32);
	permuted_right_half(4)<=data_in(24);
	permuted_right_half(5)<=data_in(16);
	permuted_right_half(6)<=data_in(8);
	permuted_right_half(7)<=data_in(0);

	permuted_right_half(8)<=data_in(58);
	permuted_right_half(9)<=data_in(50);
	permuted_right_half(10)<=data_in(42);
	permuted_right_half(11)<=data_in(34);
	permuted_right_half(12)<=data_in(26);
	permuted_right_half(13)<=data_in(18);
	permuted_right_half(14)<=data_in(10);
	permuted_right_half(15)<=data_in(2);

	permuted_right_half(16)<=data_in(60);
	permuted_right_half(17)<=data_in(52);
	permuted_right_half(18)<=data_in(44);
	permuted_right_half(19)<=data_in(36);
	permuted_right_half(20)<=data_in(28);
	permuted_right_half(21)<=data_in(20);
	permuted_right_half(22)<=data_in(12);
	permuted_right_half(23)<=data_in(4);

	permuted_right_half(24)<=data_in(62);
	permuted_right_half(25)<=data_in(54);
	permuted_right_half(26)<=data_in(46);
	permuted_right_half(27)<=data_in(38);
	permuted_right_half(28)<=data_in(30);
	permuted_right_half(29)<=data_in(22);
	permuted_right_half(30)<=data_in(14);
	permuted_right_half(31)<=data_in(6);

end behavior;
