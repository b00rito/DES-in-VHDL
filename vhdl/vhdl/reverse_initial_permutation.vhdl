--maybe there has to be count from 1 to 64, not 0 to 63


library ieee;

use ieee.std_logic_1164.all;


entity reverse_initial_permutation is 
port(	permuted_left_half: in std_logic_vector(0 to 31);
	permuted_right_half: in std_logic_vector(0 to 31);
	data_out: out  std_logic_vector(0 to 63));
end reverse_initial_permutation;




architecture behavior of reverse_initial_permutation is

signal permuted_data: std_logic_vector(0 to 63);

begin

--permuted_data<= permuted_right_half & permuted_left_half;
permuted_data<= permuted_left_half & permuted_right_half;

data_out(0)<=permuted_data(39);
data_out(1)<=permuted_data(7);
data_out(2)<=permuted_data(47);
data_out(3)<=permuted_data(15);
data_out(4)<=permuted_data(55);
data_out(5)<=permuted_data(23);
data_out(6)<=permuted_data(63);
data_out(7)<=permuted_data(31);

data_out(8)<=permuted_data(38);
data_out(9)<=permuted_data(6);
data_out(10)<=permuted_data(46);
data_out(11)<=permuted_data(14);
data_out(12)<=permuted_data(54);
data_out(13)<=permuted_data(22);
data_out(14)<=permuted_data(62);
data_out(15)<=permuted_data(30);

data_out(16)<=permuted_data(37);
data_out(17)<=permuted_data(5);
data_out(18)<=permuted_data(45);
data_out(19)<=permuted_data(13);
data_out(20)<=permuted_data(53);
data_out(21)<=permuted_data(21);
data_out(22)<=permuted_data(61);
data_out(23)<=permuted_data(29);

data_out(24)<=permuted_data(36);
data_out(25)<=permuted_data(4);
data_out(26)<=permuted_data(44);
data_out(27)<=permuted_data(12);
data_out(28)<=permuted_data(52);
data_out(29)<=permuted_data(20);
data_out(30)<=permuted_data(60);
data_out(31)<=permuted_data(28);

data_out(32)<=permuted_data(35);
data_out(33)<=permuted_data(3);
data_out(34)<=permuted_data(43);
data_out(35)<=permuted_data(11);
data_out(36)<=permuted_data(51);
data_out(37)<=permuted_data(19);
data_out(38)<=permuted_data(59);
data_out(39)<=permuted_data(27);

data_out(40)<=permuted_data(34);
data_out(41)<=permuted_data(2);
data_out(42)<=permuted_data(42);
data_out(43)<=permuted_data(10);
data_out(44)<=permuted_data(50);
data_out(45)<=permuted_data(18);
data_out(46)<=permuted_data(58);
data_out(47)<=permuted_data(26);

data_out(48)<=permuted_data(33);
data_out(49)<=permuted_data(1);
data_out(50)<=permuted_data(41);
data_out(51)<=permuted_data(9);
data_out(52)<=permuted_data(49);
data_out(53)<=permuted_data(17);
data_out(54)<=permuted_data(57);
data_out(55)<=permuted_data(25);

data_out(56)<=permuted_data(32);
data_out(57)<=permuted_data(0);
data_out(58)<=permuted_data(40);
data_out(59)<=permuted_data(8);
data_out(60)<=permuted_data(48);
data_out(61)<=permuted_data(16);
data_out(62)<=permuted_data(56);
data_out(63)<=permuted_data(24);

end behavior;
