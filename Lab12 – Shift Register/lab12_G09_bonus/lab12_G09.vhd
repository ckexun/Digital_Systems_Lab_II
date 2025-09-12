library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab12_G02 is
    Port ( clk : in STD_LOGIC;
           pb1 : in STD_LOGIC;
           pb2 : in STD_LOGIC;
           btn1 : in STD_LOGIC; -- New button to decrease speed
           btn2 : in STD_LOGIC; -- New button to increase speed
           LED_data : in STD_LOGIC_VECTOR(4 downto 0);
           LEDs : out STD_LOGIC_VECTOR(9 downto 0));
end lab12_G02;

architecture Behavioral of lab12_G02 is
    signal LED_pattern : std_logic_vector(9 downto 0) := (others => '0'); -- LED pattern
    signal shift_right : std_logic := '0'; -- Shift right signal
    signal shift_left : std_logic := '0'; -- Shift left signal
    signal clk_count : integer range 0 to 50000000 := 0; -- Clock counter for controlling data transfer speed
    signal clk_div : std_logic := '0'; -- Divided clock signal

    constant default_clk_div_value : integer := 10000000; -- Slower initial speed
    signal clk_div_value : integer := default_clk_div_value; -- Variable clock divider value

    signal btn1_prev : std_logic := '0'; -- Previous state of btn1
    signal btn2_prev : std_logic := '0'; -- Previous state of btn2

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if clk_count < clk_div_value then
                clk_count <= clk_count + 1;
            else
                clk_count <= 0;
                clk_div <= not clk_div; -- Toggle divided clock signal
            end if;

            -- Detect rising edge of btn1 to decrease speed
            if btn1 = '1' and btn1_prev = '0' then
                if clk_div_value < 50000000 then -- Prevent overflow
                    clk_div_value <= clk_div_value + 2000000; -- Decrease speed (increase divider value)
                end if;
            end if;

            -- Detect rising edge of btn2 to increase speed
            if btn2 = '1' and btn2_prev = '0' then
                if clk_div_value > 500000 then -- Prevent underflow
                    clk_div_value <= clk_div_value - 2000000; -- Increase speed (decrease divider value)
                end if;
            end if;

            -- Update previous states of btn1 and btn2
            btn1_prev <= btn1;
            btn2_prev <= btn2;
        end if;
    end process;

    process(clk_div)
    begin
        if rising_edge(clk_div) then
            -- Button control for shifting and initial state
            if pb1 = '0' and pb2 = '0' then
                -- Both buttons off, return to initial state
                shift_right <= '0';
                shift_left <= '0';
                LED_pattern <= (others => '0');
                LED_pattern(4 downto 0) <= LED_data;
            elsif pb1 = '1' and pb2 = '1' then
                -- Both buttons on, stop shifting
                shift_right <= '0';
                shift_left <= '0';
            elsif pb1 = '1' and pb2 = '0' then
                shift_right <= '1';
                shift_left <= '0';
            elsif pb1 = '0' and pb2 = '1' then
                shift_right <= '0';
                shift_left <= '1';
            else
                shift_right <= '0';
                shift_left <= '0';
            end if;

            -- Update LED pattern for circular shift
            if shift_right = '1' then
                LED_pattern <= LED_pattern(0) & LED_pattern(9 downto 1); -- Circular shift right
            elsif shift_left = '1' then
                LED_pattern <= LED_pattern(8 downto 0) & LED_pattern(9); -- Circular shift left
            end if;

            -- Output LED pattern
            LEDs <= LED_pattern;
        end if;
    end process;
end Behavioral;
