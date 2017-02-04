library ieee;

use ieee.std_logic_1164.all;

entity initial_permutation is 
port(	data_in: in std_logic_vector(63 downto 0);
	permuted_right_half: out std_logic_vector(31 downto 0);
	permuted_left_half: out std_logic_vector(31 downto 0));
end initial_permutation;


architecture behavior of initial_permutation is

	type ip_array is array(63 downto 0) of integer range 0 to 63;

	constant ip: ip_array :=
		((57,49,41,33,25,17,9,1,59,51,43,35,27,19,11,3,61,53,45,37,29,21,13,5,63,55,47,39,31,23,15,7,56,48,40,32,24,16,8,0,58,50,42,34,26,18,10,2,60,52,44,36,28,20,12,4,62,54,46,38,30,22,14,6));


	begin

	process(data_in) is

		variable permuted : std_logic_vector(0 to 63);

		begin

			for i in data_in'range loop
				permuted(i):=data_in(ip(i));

			end loop;

			permuted_right_half<=permuted(32 to 63);
			permuted_left_half<=permuted(0 to 31);

	end process;
end behavior;
