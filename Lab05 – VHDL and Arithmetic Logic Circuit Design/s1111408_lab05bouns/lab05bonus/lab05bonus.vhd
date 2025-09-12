library ieee;
use ieee.std_logic_1164.all;

entity lab05bonus is
    Port ( Preset : in STD_LOGIC;
           SIN : in STD_LOGIC;
           Clear : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end lab05bonus;

architecture Behavioral of lab05bonus is
    component JK_flip_flop
        Port (J,  K, CL, PR, CLK: in STD_LOGIC;
              Q, Qbar: out STD_LOGIC);
    end component;
    
    signal Q_temp : STD_LOGIC_VECTOR (3 downto 0);
begin
    
    JK0: JK_flip_flop port map (J => SIN, K => not SIN, CL => Clear, PR => Preset, CLK => CLK, Q => Q_temp(0), Qbar => open);
    JK1: JK_flip_flop port map (J => Q_temp(0), K => not Q_temp(0), CL => Clear, PR => Preset, CLK => CLK, Q => Q_temp(1), Qbar => open);
    JK2: JK_flip_flop port map (J => Q_temp(1), K => not Q_temp(1), CL => Clear, PR => Preset, CLK => CLK, Q => Q_temp(2), Qbar => open);
    JK3: JK_flip_flop port map (J => Q_temp(2), K => not Q_temp(2), CL => Clear, PR => Preset, CLK => CLK, Q => Q_temp(3), Qbar => open);


    -- Connect the outputs of the flip-flops in sequence
    process (Clear, Preset)
    begin
		if Clear = '0' then
			Q(0) <= '0';
			Q(1) <= '0';
			Q(2) <= '0';
			Q(3) <= '0';
		elsif Preset = '0' then
			Q(0) <= '1';
			Q(1) <= '1';
			Q(2) <= '1';
			Q(3) <= '1';
		else
			Q(0) <= Q_temp(0);
			Q(1) <= Q_temp(1);
			Q(2) <= Q_temp(2);
			Q(3) <= Q_temp(3);
		end if;
	end process;
end Behavioral;
