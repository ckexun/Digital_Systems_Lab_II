library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity lab08_1 is
    port(
        clrn, clk, Ldn, Sh, Di: in std_logic;
        D3, D2, D1, D0: in std_logic;
        Q3, Q2, Q1, Q0: out std_logic
    );
end lab08_1;

architecture arch of lab08_1 is 
    signal tmp: std_logic_vector(3 downto 0);
begin

    process(clk, clrn)
    begin
        if clrn = '0' then
            tmp <= (others => '0'); 
        elsif rising_edge(clk) then
            if Ldn = '1' then
                tmp <= D3 & D2 & D1 & D0; 
			elsif Sh = '1' then
				tmp <= tmp(2 downto 0) & Di;
				--tmp(3) <= Di;
				--tmp(2) <= tmp(3);
				--tmp(1) <= tmp(2); 
				--tmp(0) <= tmp(1);  
            end if;
        end if;
    end process;
		Q3 <= tmp(0);
		Q2 <= tmp(1);
		Q1 <= tmp(2);
		Q0 <= tmp(3);
end arch;
