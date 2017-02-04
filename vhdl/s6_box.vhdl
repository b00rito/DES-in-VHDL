library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s6_box is
port(	data_in: in std_logic_vector(0 to 5);
	data_out: out std_logic_vector(0 to 3));
end s6_box;


architecture behavior of s6_box is

	type s6box is array(0 to 3, 0 to 15) of integer range 0 to 15;
	constant box: s6box:= 
		((12,1,10,15,9,2,6,8,0,13,3,4,14,7,5,11),
		(10,15,4,2,7,12,9,5,6,1,13,14,0,11,3,8),
		(9,14,15,5,2,8,12,3,7,0,4,10,1,13,11,6),
		(4,3,2,12,9,5,15,10,11,14,1,7,6,0,8,13));

	begin
	
	process(data_in) is

		variable column: integer range 0 to 15;		
		variable row: integer range 0 to 3;
		variable tmp: std_logic_vector(0 to 1); --this variable holds the first and last bit of the input that represents the row. It is usedto cast two separate bits into one vector of size two.

		variable data_out_decimal: integer range 0 to 15; --this variable contains the output data in decimal representation

		begin

			column:=to_integer(unsigned(data_in(1 to 4)));
			tmp:=data_in(0)&data_in(5);
			row:=to_integer(unsigned(tmp));
			data_out_decimal:=box(row,column);

			data_out<=std_logic_vector(to_unsigned(data_out_decimal,data_out'length));

	end process;
end behavior;
