library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab07 is port(
	A,B: in std_logic_vector(3 downto 0);
	sel: in std_logic_vector(1 downto 0);
	aluo: out std_logic_vector(4 downto 0)
	);
end lab07;

architecture arch of lab07 is
    signal calcu: signed(4 downto 0);
begin
    process(A, B, sel)
    begin
        case sel is
            when "00" =>
                calcu <= signed("0"&A) or signed("0"&B);
            when "01" =>
                calcu <= signed("0"&A) and signed("0"&B);
            when "10" =>
                calcu <= signed("0"&A) - signed("0"&B);
            when "11" =>
                calcu <= signed("0"&A) + signed("0"&B);
            when others =>
                calcu <= (others => '0'); -- default value
        end case;
    end process;

	aluo <= std_logic_vector(calcu);
end arch;
			