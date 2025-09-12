library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab15_G09 is
	port (
		clk:in std_logic;
		led0: out unsigned(6 downto 0);
		ledr,ledg,ledy:out std_logic
	);
end lab15_G09;

architecture control of lab15_G09 is
	signal countSh : integer range 0 to 9 := 0;
	signal countSl : integer range 0 to 9 := 7;
	signal clkTos: integer range 0 to  50000000:=0;
	signal signalType:std_logic:='0';
begin
	 process(clk) is
	 begin
		if(falling_edge(clk)) then
			if(clkTos<50000000) then
				clkTos<=clkTos+1;
			else
				clkTos<=0;
				if(countSl=1)then
					countSl<=9;
					if(countSh=0) then
						signalType <= not signalType;
						if(signalType='0')then
							countSl<=5;
						else
							countSl<=7;
						end if;
					else
						countSh<=countSh-1;
					end if;
				else
					countSl<=countSl-1;
				end if;
			end if;
		end if;
		
		ledr<='0';
		ledg<='0';
		ledy<='0';
				
		if(signalType='0')then
			if(countSl<3)then
				ledy<='1';
				
			else
				ledg<='1';
			end if;
		else 
			ledr<='1';
		end if;
		
		
		
		case countSl is
			When 0=>led0<="1000000";
			When 1=>led0<="1111001";
			When 2=>led0<="0100100";
			When 3=>led0<="0110000";
			When 4=>led0<="0011001";
			When 5=>led0<="0010010";
			When 6=>led0<="0000010";
			When 7=>led0<="1111000";
			When 8=>led0<="0000000";
			When 9=>led0<="0010000";
		end case;

		

		
		
	 end process;
end control;