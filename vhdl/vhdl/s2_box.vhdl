library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s2_box is
port(	data_in: in std_logic_vector(0 to 5);
	data_out: out std_logic_vector(0 to 3));
end s2_box;


architecture behavior of s2_box is

	type s2box is array(0 to 3, 0 to 15) of integer range 0 to 15;
	constant box: s2box:= 
		((15,1,8,14,6,11,3,4,9,7,2,13,12,0,5,10),
		(3,13,4,7,15,2,8,14,12,0,1,10,6,9,11,5),
		(0,14,7,11,10,4,13,1,5,8,12,6,9,3,2,15),
		(13,8,10,1,3,15,4,2,11,6,7,12,0,5,14,9));

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
