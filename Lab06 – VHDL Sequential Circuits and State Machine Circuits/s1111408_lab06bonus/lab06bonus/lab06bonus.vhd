library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity lab06bonus is
port( CLK, rst, str_in: in std_logic;
	  match : out std_logic;
	  str_out: out std_logic_vector(2 downto 0));
end lab06bonus;

architecture Behavioral of lab06bonus is
	type state_type is(s0,s1,s2,s3);
	signal presentS, nextS : state_type;
	signal Out_temp : std_logic_vector(2 downto 0);
begin
	
	process(CLK, rst)
	begin
		if  rst = '1' then               -- Reset condition
            presentS <= S0;        -- Initialize state to S0
            Out_temp <= "000";
        elsif rising_edge(CLK) then     -- Clock rising edge
            presentS <= nextS; -- Update present state
            Out_temp <= Out_temp(1 downto 0) & str_in;
        end if;
	end process;
			
	process (presentS, str_in)
    begin
        case presentS is
            when S0 =>
                if str_in = '0' then
                    nextS <= S0;
                else
                    nextS <= S1;
                end if;
            when S1 =>
                if str_in = '0' then
                    nextS <= S0;
                else
                    nextS <= S2;
                end if;
            when S2 =>
                if str_in = '0' then
                    nextS <= S3;
                else
                    nextS <= S2;
                end if;
            when S3 =>
                if str_in = '0' then
                    nextS <= S0;
                else
                    nextS <= S1;
                end if;
        end case;
    end process;
    match <= '1' when Out_temp = "110"
	else '0';
	str_out <= Out_temp;
    str_out <= Out_temp;
end Behavioral;