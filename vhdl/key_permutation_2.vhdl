library ieee;

use ieee.std_logic_1164.all;

entity key_permutation_2 is
port(	left_half: in std_logic_vector(0 to 27);
	right_half: in std_logic_vector(0 to 27);
	permuted_key: out std_logic_vector(0 to 47));
end key_permutation_2;


architecture behavior of key_permutation_2 is

	signal merged_halfs: std_logic_vector(0 to 55);
	
	begin
		merged_halfs(0 to 27)<=left_half;
		merged_halfs(28 to 55)<=right_half;

		permuted_key(0)<=merged_halfs(13);
		permuted_key(1)<=merged_halfs(16);
		permuted_key(2)<=merged_halfs(10);
		permuted_key(3)<=merged_halfs(23);
		permuted_key(4)<=merged_halfs(0);
		permuted_key(5)<=merged_halfs(4);

		permuted_key(6)<=merged_halfs(2);
		permuted_key(7)<=merged_halfs(27);
		permuted_key(8)<=merged_halfs(14);
		permuted_key(9)<=merged_halfs(5);
		permuted_key(10)<=merged_halfs(20);
		permuted_key(11)<=merged_halfs(9);

		permuted_key(12)<=merged_halfs(22);
		permuted_key(13)<=merged_halfs(18);
		permuted_key(14)<=merged_halfs(11);
		permuted_key(15)<=merged_halfs(3);
		permuted_key(16)<=merged_halfs(25);
		permuted_key(17)<=merged_halfs(7);

		permuted_key(18)<=merged_halfs(15);
		permuted_key(19)<=merged_halfs(6);
		permuted_key(20)<=merged_halfs(26);
		permuted_key(21)<=merged_halfs(19);
		permuted_key(22)<=merged_halfs(12);
		permuted_key(23)<=merged_halfs(1);

		permuted_key(24)<=merged_halfs(40);
		permuted_key(25)<=merged_halfs(51);
		permuted_key(26)<=merged_halfs(30);
		permuted_key(27)<=merged_halfs(36);
		permuted_key(28)<=merged_halfs(46);
		permuted_key(29)<=merged_halfs(54);

		permuted_key(30)<=merged_halfs(29);
		permuted_key(31)<=merged_halfs(39);
		permuted_key(32)<=merged_halfs(50);
		permuted_key(33)<=merged_halfs(44);
		permuted_key(34)<=merged_halfs(32);
		permuted_key(35)<=merged_halfs(47);

		permuted_key(36)<=merged_halfs(43);
		permuted_key(37)<=merged_halfs(48);
		permuted_key(38)<=merged_halfs(38);
		permuted_key(39)<=merged_halfs(55);
		permuted_key(40)<=merged_halfs(33);
		permuted_key(41)<=merged_halfs(52);

		permuted_key(42)<=merged_halfs(45);
		permuted_key(43)<=merged_halfs(41);
		permuted_key(44)<=merged_halfs(49);
		permuted_key(45)<=merged_halfs(35);
		permuted_key(46)<=merged_halfs(28);
		permuted_key(47)<=merged_halfs(31);


end behavior;
