library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab08_2 is
    port (
        clk, clrn: in std_logic;
        Q: out std_logic_vector(1 downto 0)
    );
end entity lab08_2;

architecture Behavioral of lab08_2 is
    signal preQ: unsigned(1 downto 0) := "00";
begin
    process(clk, clrn)
    begin
        if clrn = '0' then
            preQ <= "00";  -- Asynchronous clear
        elsif rising_edge(clk) then
            if preQ = "11" then
                preQ <= "00";
            else
                preQ <= preQ + 1;
            end if;
        end if;
    end process;   
    Q <= std_logic_vector(preQ);
end architecture Behavioral;
