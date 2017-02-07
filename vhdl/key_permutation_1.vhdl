library ieee;

use ieee.std_logic_1164.all;

entity key_permutation_1 is
port(	key: in std_logic_vector(0 to 63);
	permuted_left_key: out std_logic_vector(0 to 27);
	permuted_right_key: out std_logic_vector(0 to 27));
end key_permutation_1;



architecture behavior of key_permutation_1 is


begin

permuted_left_key(0)<=key(56);
permuted_left_key(1)<=key(48);
permuted_left_key(2)<=key(40);
permuted_left_key(3)<=key(32);
permuted_left_key(4)<=key(24);
permuted_left_key(5)<=key(16);
permuted_left_key(6)<=key(8);

permuted_left_key(7)<=key(0);
permuted_left_key(8)<=key(57);
permuted_left_key(9)<=key(49);
permuted_left_key(10)<=key(41);
permuted_left_key(11)<=key(33);
permuted_left_key(12)<=key(25);
permuted_left_key(13)<=key(17);

permuted_left_key(14)<=key(9);
permuted_left_key(15)<=key(1);
permuted_left_key(16)<=key(58);
permuted_left_key(17)<=key(50);
permuted_left_key(18)<=key(42);
permuted_left_key(19)<=key(34);
permuted_left_key(20)<=key(26);

permuted_left_key(21)<=key(18);
permuted_left_key(22)<=key(10);
permuted_left_key(23)<=key(2);
permuted_left_key(24)<=key(59);
permuted_left_key(25)<=key(51);
permuted_left_key(26)<=key(43);
permuted_left_key(27)<=key(35);


permuted_right_key(0)<=key(62);
permuted_right_key(1)<=key(54);
permuted_right_key(2)<=key(46);
permuted_right_key(3)<=key(38);
permuted_right_key(4)<=key(30);
permuted_right_key(5)<=key(22);
permuted_right_key(6)<=key(14);

permuted_right_key(7)<=key(6);
permuted_right_key(8)<=key(61);
permuted_right_key(9)<=key(53);
permuted_right_key(10)<=key(45);
permuted_right_key(11)<=key(37);
permuted_right_key(12)<=key(29);
permuted_right_key(13)<=key(21);

permuted_right_key(14)<=key(13);
permuted_right_key(15)<=key(5);
permuted_right_key(16)<=key(60);
permuted_right_key(17)<=key(52);
permuted_right_key(18)<=key(44);
permuted_right_key(19)<=key(36);
permuted_right_key(20)<=key(28);

permuted_right_key(21)<=key(20);
permuted_right_key(22)<=key(12);
permuted_right_key(23)<=key(4);
permuted_right_key(24)<=key(27);
permuted_right_key(25)<=key(19);
permuted_right_key(26)<=key(11);
permuted_right_key(27)<=key(3);

end behavior;
