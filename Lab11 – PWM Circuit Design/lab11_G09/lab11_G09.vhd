library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab11_G09 is
    Port (
        clk : in STD_LOGIC;               -- �t�ή���
        enable : in STD_LOGIC;            -- �ϯ�H��
        duty : in UNSIGNED(2 downto 0);   -- PWM��duty cycle
        led : out STD_LOGIC               -- LED��X
    );
end lab11_G09;

architecture Behavioral of lab11_G09 is
    constant period : integer := 10;  -- PWM���g��
   
    signal count : unsigned(3 downto 0) := (others => '0');  -- �g���p�ƾ�
    signal pwm_out : STD_LOGIC := '0';                        -- PWM��X�H��

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' then
                count <= count + 1;
               
                if count = to_unsigned(period, count'length) then
                    count <= (others => '0');  -- �g�������A���m�p�ƾ�
                end if;
               
                -- �ھ�duty cycle�ͦ�PWM�߽�
                if count < unsigned(duty) then
                    pwm_out <= '1';
                else
                    pwm_out <= '0';
                end if;
               
                -- �NPWM��X��LED
                if pwm_out = '1' then
                    led <= '1';
                else
                    led <= '0';
                end if;
            else
                -- �ϯ�H����0�ɡA�NLED����
                led <= '0';
            end if;
        end if;
    end process;

end Behavioral;