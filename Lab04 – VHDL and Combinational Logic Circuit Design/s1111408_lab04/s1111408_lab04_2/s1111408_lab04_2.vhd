library ieee;
	use ieee.std_logic_1164.all;
ENTITY s1111408_lab04_2 IS
	PORT(A,B,C,D:IN STD_LOGIC;
	Y:OUT STD_LOGIC);
END s1111408_lab04_2;

ARCHITECTURE A OF s1111408_lab04_2 IS
BEGIN 
	Y <= (B or not C or D)and(A or not B or not C)and(not A or not B or C or not D);
END A;