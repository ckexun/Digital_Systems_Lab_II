library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab14_G09 is
    Port ( clk : in STD_LOGIC;
           button : in STD_LOGIC_VECTOR (2 downto 0);
           hex0 : out STD_LOGIC_VECTOR (7 downto 0);
           hex1 : out STD_LOGIC_VECTOR (7 downto 0));
end lab14_G09;

architecture Behavioral of lab14_G09 is
    signal count : INTEGER range 0 to 99 := 0;
    signal btn_reg : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal btn_last : STD_LOGIC_VECTOR (2 downto 0) := "000";
   
    -- Seven segment display encoding
    function to_seven_segment(input: INTEGER) return STD_LOGIC_VECTOR is
        variable segments : STD_LOGIC_VECTOR(7 downto 0);
    begin
        case input is
            when 0 => segments := "11000000"; -- 0
            when 1 => segments := "11111001"; -- 1
            when 2 => segments := "10100100"; -- 2
            when 3 => segments := "10110000"; -- 3
            when 4 => segments := "10011001"; -- 4
            when 5 => segments := "10010010"; -- 5
            when 6 => segments := "10000010"; -- 6
            when 7 => segments := "11111000"; -- 7
            when 8 => segments := "10000000"; -- 8
            when 9 => segments := "10010000"; -- 9
            when others => segments := "11111111"; -- all segments off
        end case;
        return segments;
    end function;

begin
    process(clk)
    begin
        if rising_edge(clk) then
            btn_last <= btn_reg;
            btn_reg <= button;

            -- Detect the rising edge of each button
            if btn_last(0) = '0' and btn_reg(0) = '1' then
                count <= 0; -- Reset count to 0
            elsif btn_last(1) = '0' and btn_reg(1) = '1' then
                if count = 0 then
                    count <= 99; -- Wrap around to 99 if count is 0
                else
                    count <= count - 1;
                end if;
            elsif btn_last(2) = '0' and btn_reg(2) = '1' then
                if count = 99 then
                    count <= 0; -- Wrap around to 0 if count is 99
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;

    hex0 <= to_seven_segment(count mod 10);
    hex1 <= to_seven_segment(count / 10);

end Behavioral;