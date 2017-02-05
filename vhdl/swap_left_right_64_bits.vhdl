library ieee;

use ieee.std_logic_1164.all;

--This function is used right after the final round. The encrypted plain text goes under this operation, in reverse IP and the encryption is completed


entity swap_left_right_64_bits is
port(	data_in_left: in std_logic_vector(0 to 31);
	data_in_right: in std_logic_vector(0 to 31);
	data_out_left: out std_logic_vector(0 to 31);
	data_out_right: out std_logic_vector(0 to 31));
end swap_left_right_64_bits;


architecture behavior of swap_left_right_64_bits is

begin
	
	data_out_left(0 to 31)<=data_in_right(0 to 31);
	data_out_right(0 to 31)<=data_in_left(0 to 31);

end behavior;
