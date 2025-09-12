library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab06 is
port( CLK, RESET, Din :in std_logic;
	  Qout:out std_logic);
end lab06;

architecture Behavioral of lab06 is
	type state_type is(s0,s1,s2,s3);
	signal presentS, nextS : state_type;
begin
	
	process(CLK, RESET)
	begin
		if RESET = '1' then               -- Reset condition
            presentS <= S0;        -- Initialize state to S0
        elsif rising_edge(CLK) then     -- Clock rising edge
            presentS <= nextS; -- Update present state
        end if;
	end process;
	
	process (presentS, Din)
    begin
        case presentS is
            when S0 =>
                if Din = '0' then
                    nextS <= S0;
                else
                    nextS <= S2;
                end if;
                Qout <= '0';   -- Output for state S0
            when S1 =>
                if Din = '0' then
                    nextS <= S0;
                else
                    nextS <= S2;
                end if;
                Qout <= '1';   -- Output for state S1
            when S2 =>
                if Din = '0' then
                    nextS <= S2;
                else
                    nextS <= S3;
                end if;
                Qout <= '1';   -- Output for state S2
            when others =>
                if Din = '0' then
                    nextS <= S3;
                else
                    nextS <= S1;
                end if;
                Qout <= '0';
        end case;
    end process;

end Behavioral;