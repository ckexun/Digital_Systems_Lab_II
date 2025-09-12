library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab11_bonus_G09 is
    Port (
        clk     : in  std_logic;
        enable  : in  std_logic;
        led     : out std_logic
    );
end lab11_bonus_G09;

architecture Behavioral of lab11_bonus_G09 is

    signal clk_count : std_logic_vector(31 downto 0) := (others => '0');
    signal pwm_count : std_logic_vector(10 downto 0) := (others => '0');
    signal duty      : std_logic_vector(10 downto 0) := (others => '0');
    signal direction : std_logic := '0'; -- '0' for increasing, '1' for decreasing

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' then
                -- Increment the clock count
                clk_count <= clk_count + 1;

                -- Update duty cycle every 50,000 clock cycles
                if clk_count = 50000 then
                    clk_count <= (others => '0');

                    if direction = '0' then
                        if duty = "1111101000" then -- 1000 in binary
                            direction <= '1';
                        else
                            duty <= duty + 1;
                        end if;
                    else
                        if duty = "0000000000" then
                            direction <= '0';
                        else
                            duty <= duty - 1;
                        end if;
                    end if;
                end if;

                -- PWM logic
                pwm_count <= pwm_count + 1;
                if pwm_count < duty then
                    led <= '1';
                else
                    led <= '0';
                end if;

                if pwm_count = 1000 then
                    pwm_count <= (others => '0');
                end if;
            else
                -- If enable is low, turn off the LED
                led <= '0';
            end if;
        end if;
    end process;

end Behavioral;
