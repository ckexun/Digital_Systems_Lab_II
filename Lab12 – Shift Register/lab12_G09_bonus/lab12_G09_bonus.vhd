library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab12_G09_bonus is
    Port (
        clk : in std_logic;
        pb1 : in std_logic;
        pb2 : in std_logic;
        btn1 : in std_logic;
        btn2 : in std_logic;
        LED_data : in std_logic_vector(4 downto 0); -- Modified for 10 LEDs
        LEDs : out std_logic_vector(9 downto 0) -- Modified for 10 LEDs
    );
end lab12_G09_bonus;

architecture Behavioral of lab12_G09_bonus is
    signal LED_reg : std_logic_vector(9 downto 0) := (others => '0'); -- Modified for 10 LEDs
    signal speed_counter : integer := 0;
    signal speed : integer := 50000000; -- initial speed value, assuming 50MHz clock

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if btn1 = '1' and btn2 = '0' then
                if speed > 1000000 then              
                   speed <= speed - 10000; -- increase speed
                end if;
            elsif btn2 = '1' and btn1 = '0' then
                if speed < 100000000 then
                   speed <= speed + 10000; -- decrease speed
                end if;
            end if;
           
            if speed_counter >= speed then
                speed_counter <= 0;
                if pb1 = '1' and pb2 = '0' then
                    -- Shift right
                    LED_reg <= LED_reg(0) & LED_reg(9 downto 1);
                elsif pb2 = '1' and pb1 = '0' then
                    -- Shift left
                    LED_reg <= LED_reg(8 downto 0) & LED_reg(9);
                elsif pb1 = '0' and pb2 = '0' then
                    -- Load initial values
                    LED_reg(0) <= LED_data(0);
                    LED_reg(1) <= LED_data(1);
                    LED_reg(2) <= LED_data(2);
                    LED_reg(3) <= LED_data(3);
                    LED_reg(4) <= LED_data(4);
                    LED_reg(5) <= '0';
                    LED_reg(6) <= '0';
                    LED_reg(7) <= '0';
                    LED_reg(8) <= '0';
                    LED_reg(9) <= '0';
                elsif pb1 = '1' and pb2 = '1' then
                    LED_reg <= LED_reg;
                end if;
            else
                speed_counter <= speed_counter + 1;
            end if;
        end if;
    end process;

    LEDs <= LED_reg;
end Behavioral;