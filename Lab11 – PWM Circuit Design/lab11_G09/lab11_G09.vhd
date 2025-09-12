library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab11_G09 is
    Port (
        clk : in STD_LOGIC;               -- 系統時鐘
        enable : in STD_LOGIC;            -- 使能信號
        duty : in UNSIGNED(2 downto 0);   -- PWM的duty cycle
        led : out STD_LOGIC               -- LED輸出
    );
end lab11_G09;

architecture Behavioral of lab11_G09 is
    constant period : integer := 10;  -- PWM的週期
   
    signal count : unsigned(3 downto 0) := (others => '0');  -- 週期計數器
    signal pwm_out : STD_LOGIC := '0';                        -- PWM輸出信號

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' then
                count <= count + 1;
               
                if count = to_unsigned(period, count'length) then
                    count <= (others => '0');  -- 週期結束，重置計數器
                end if;
               
                -- 根據duty cycle生成PWM脈衝
                if count < unsigned(duty) then
                    pwm_out <= '1';
                else
                    pwm_out <= '0';
                end if;
               
                -- 將PWM輸出到LED
                if pwm_out = '1' then
                    led <= '1';
                else
                    led <= '0';
                end if;
            else
                -- 使能信號為0時，將LED關閉
                led <= '0';
            end if;
        end if;
    end process;

end Behavioral;