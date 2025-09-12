library ieee;
use ieee.std_logic_1164.all;

entity lab04 is
    Port ( DIN : in STD_LOGIC;
           CLK : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0));
end lab04;

architecture Behavioral of lab04 is
    component D_flip_flop
        Port ( DIN : in STD_LOGIC;
               CLK : in STD_LOGIC;
               Q : out STD_LOGIC);
    end component;
    
    signal Q_temp : STD_LOGIC_VECTOR (7 downto 0);
	signal carry : STD_LOGIC; -- Additional signal for connecting flip-flops

begin
    DFF0: D_flip_flop port map (DIN, CLK, Q_temp(0));
    DFF1: D_flip_flop port map (Q_temp(0), CLK, Q_temp(1));
    DFF2: D_flip_flop port map (Q_temp(1), CLK, Q_temp(2));
    DFF3: D_flip_flop port map (Q_temp(2), CLK, Q_temp(3));
    DFF4: D_flip_flop port map (Q_temp(3), CLK, Q_temp(4));
    DFF5: D_flip_flop port map (Q_temp(4), CLK, Q_temp(5));
    DFF6: D_flip_flop port map (Q_temp(5), CLK, Q_temp(6));
	DFF7: D_flip_flop port map (Q_temp(6), CLK, Q_temp(7));

    
    S(0) <= Q_temp(0);
    S(1) <= Q_temp(1);
    S(2) <= Q_temp(2);
    S(3) <= Q_temp(3);
    S(4) <= Q_temp(4);
    S(5) <= Q_temp(5);
    S(6) <= Q_temp(6);
    S(7) <= Q_temp(7);
end Behavioral;