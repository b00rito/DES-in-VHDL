library ieee;

use ieee.std_logic_1164.all;

--XOR is an easy task and can take place everywhere easily. But since in DES it is a separate step, it is implemented separetely.


entity xor_32_bits is
port(	data_in: in std_logic_vector(0 to 31);
	key: in std_logic_vector(0 to 31);
	data_out: out std_logic_vector(0 to 31));
end xor_32_bits;


architecture behavior of xor_32_bits is

begin 	
	data_out<= key xor data_in;
end behavior;
