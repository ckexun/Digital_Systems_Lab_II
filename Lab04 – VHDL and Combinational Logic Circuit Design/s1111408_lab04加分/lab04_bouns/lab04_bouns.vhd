library ieee;
	use ieee.std_logic_1164.all;
ENTITY lab04_bouns IS
	PORT(A:IN STD_LOGIC_vector(0 to 7);
	EN:IN STD_LOGIC;
	Y:OUT STD_LOGIC_vector(0 to 2));
END lab04_bouns;

ARCHITECTURE A OF lab04_bouns IS
BEGIN 
	Y(0) <= EN and(A(1)or A(3)or A(5) or A(7));
	Y(1) <= EN and(A(2)or A(3)or A(6) or A(7));
	Y(2) <= EN and(A(4)or A(5)or A(6) or A(7));
END A;