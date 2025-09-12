-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "05/24/2024 16:59:00"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab12_G09 IS
    PORT (
	clk : IN std_logic;
	pb1 : IN std_logic;
	pb2 : IN std_logic;
	btn1 : IN std_logic;
	btn2 : IN std_logic;
	LED_data : IN std_logic_vector(4 DOWNTO 0);
	LEDs : OUT std_logic_vector(9 DOWNTO 0)
	);
END lab12_G09;

-- Design Ports Information
-- LEDs[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn1	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn2	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab12_G09 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL ww_btn1 : std_logic;
SIGNAL ww_btn2 : std_logic;
SIGNAL ww_LED_data : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LEDs : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \speed_counter[3]~38_combout\ : std_logic;
SIGNAL \speed_counter[6]~44_combout\ : std_logic;
SIGNAL \speed_counter[13]~58_combout\ : std_logic;
SIGNAL \speed_counter[15]~62_combout\ : std_logic;
SIGNAL \speed_counter[19]~70_combout\ : std_logic;
SIGNAL \speed_counter[21]~74_combout\ : std_logic;
SIGNAL \speed_counter[27]~86_combout\ : std_logic;
SIGNAL \speed_counter[29]~90_combout\ : std_logic;
SIGNAL \LED_data[0]~input_o\ : std_logic;
SIGNAL \LED_data[1]~input_o\ : std_logic;
SIGNAL \LED_data[2]~input_o\ : std_logic;
SIGNAL \LED_data[3]~input_o\ : std_logic;
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \LEDs[4]~output_o\ : std_logic;
SIGNAL \LEDs[5]~output_o\ : std_logic;
SIGNAL \LEDs[6]~output_o\ : std_logic;
SIGNAL \LEDs[7]~output_o\ : std_logic;
SIGNAL \LEDs[8]~output_o\ : std_logic;
SIGNAL \LEDs[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \LED_data[4]~input_o\ : std_logic;
SIGNAL \LED_reg[4]~4_combout\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \btn1~input_o\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \btn2~input_o\ : std_logic;
SIGNAL \speed[31]~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~8\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \speed[12]~11_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \speed[14]~9_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \speed[17]~7_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31_combout\ : std_logic;
SIGNAL \speed[19]~6_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \speed[21]~4_combout\ : std_logic;
SIGNAL \Add1~36\ : std_logic;
SIGNAL \Add1~37_combout\ : std_logic;
SIGNAL \speed[22]~3_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43_combout\ : std_logic;
SIGNAL \speed[25]~1_combout\ : std_logic;
SIGNAL \Add1~44\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~48\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \speed_counter[0]~32_combout\ : std_logic;
SIGNAL \speed_counter[0]~33\ : std_logic;
SIGNAL \speed_counter[1]~34_combout\ : std_logic;
SIGNAL \speed_counter[1]~35\ : std_logic;
SIGNAL \speed_counter[2]~36_combout\ : std_logic;
SIGNAL \speed_counter[2]~37\ : std_logic;
SIGNAL \speed_counter[3]~39\ : std_logic;
SIGNAL \speed_counter[4]~40_combout\ : std_logic;
SIGNAL \speed_counter[4]~41\ : std_logic;
SIGNAL \speed_counter[5]~43\ : std_logic;
SIGNAL \speed_counter[6]~45\ : std_logic;
SIGNAL \speed_counter[7]~46_combout\ : std_logic;
SIGNAL \speed_counter[7]~47\ : std_logic;
SIGNAL \speed_counter[8]~48_combout\ : std_logic;
SIGNAL \speed_counter[8]~49\ : std_logic;
SIGNAL \speed_counter[9]~50_combout\ : std_logic;
SIGNAL \speed_counter[9]~51\ : std_logic;
SIGNAL \speed_counter[10]~52_combout\ : std_logic;
SIGNAL \speed_counter[10]~53\ : std_logic;
SIGNAL \speed_counter[11]~55\ : std_logic;
SIGNAL \speed_counter[12]~56_combout\ : std_logic;
SIGNAL \speed_counter[12]~57\ : std_logic;
SIGNAL \speed_counter[13]~59\ : std_logic;
SIGNAL \speed_counter[14]~60_combout\ : std_logic;
SIGNAL \speed_counter[14]~61\ : std_logic;
SIGNAL \speed_counter[15]~63\ : std_logic;
SIGNAL \speed_counter[16]~64_combout\ : std_logic;
SIGNAL \speed_counter[16]~65\ : std_logic;
SIGNAL \speed_counter[17]~66_combout\ : std_logic;
SIGNAL \speed_counter[17]~67\ : std_logic;
SIGNAL \speed_counter[18]~68_combout\ : std_logic;
SIGNAL \speed_counter[18]~69\ : std_logic;
SIGNAL \speed_counter[19]~71\ : std_logic;
SIGNAL \speed_counter[20]~72_combout\ : std_logic;
SIGNAL \speed_counter[20]~73\ : std_logic;
SIGNAL \speed_counter[21]~75\ : std_logic;
SIGNAL \speed_counter[22]~77\ : std_logic;
SIGNAL \speed_counter[23]~78_combout\ : std_logic;
SIGNAL \speed_counter[23]~79\ : std_logic;
SIGNAL \speed_counter[24]~80_combout\ : std_logic;
SIGNAL \speed_counter[24]~81\ : std_logic;
SIGNAL \speed_counter[25]~82_combout\ : std_logic;
SIGNAL \speed_counter[25]~83\ : std_logic;
SIGNAL \speed_counter[26]~84_combout\ : std_logic;
SIGNAL \speed_counter[26]~85\ : std_logic;
SIGNAL \speed_counter[27]~87\ : std_logic;
SIGNAL \speed_counter[28]~88_combout\ : std_logic;
SIGNAL \speed_counter[28]~89\ : std_logic;
SIGNAL \speed_counter[29]~91\ : std_logic;
SIGNAL \speed_counter[30]~92_combout\ : std_logic;
SIGNAL \speed_counter[30]~93\ : std_logic;
SIGNAL \speed_counter[31]~94_combout\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~49_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \speed[23]~2_combout\ : std_logic;
SIGNAL \speed_counter[22]~76_combout\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \speed[20]~5_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \speed[15]~8_combout\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \speed[13]~10_combout\ : std_logic;
SIGNAL \speed_counter[11]~54_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \speed[7]~12_combout\ : std_logic;
SIGNAL \speed_counter[5]~42_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~54_combout\ : std_logic;
SIGNAL \LED_reg[0]~5_combout\ : std_logic;
SIGNAL \LED_reg~6_combout\ : std_logic;
SIGNAL \LED_reg~7_combout\ : std_logic;
SIGNAL \LED_reg~8_combout\ : std_logic;
SIGNAL \LED_reg~9_combout\ : std_logic;
SIGNAL \LED_reg~10_combout\ : std_logic;
SIGNAL \LED_reg[0]~0_combout\ : std_logic;
SIGNAL \LED_reg[1]~1_combout\ : std_logic;
SIGNAL \LED_reg[2]~2_combout\ : std_logic;
SIGNAL \LED_reg[3]~3_combout\ : std_logic;
SIGNAL LED_reg : std_logic_vector(9 DOWNTO 0);
SIGNAL speed : std_logic_vector(31 DOWNTO 0);
SIGNAL speed_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~54_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
ww_btn1 <= btn1;
ww_btn2 <= btn2;
ww_LED_data <= LED_data;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan0~54_combout\ <= NOT \LessThan0~54_combout\;

-- Location: FF_X4_Y11_N27
\speed_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[29]~90_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(29));

-- Location: FF_X4_Y11_N23
\speed_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[27]~86_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(27));

-- Location: FF_X4_Y11_N11
\speed_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[21]~74_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(21));

-- Location: FF_X4_Y11_N7
\speed_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[19]~70_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(19));

-- Location: FF_X4_Y12_N31
\speed_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[15]~62_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(15));

-- Location: FF_X4_Y12_N27
\speed_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[13]~58_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(13));

-- Location: FF_X4_Y12_N13
\speed_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[6]~44_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(6));

-- Location: LCCOMB_X3_Y13_N6
\Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (speed(5) & ((\btn1~input_o\ & (!\Add1~2\)) # (!\btn1~input_o\ & (\Add1~2\ & VCC)))) # (!speed(5) & ((\btn1~input_o\ & ((\Add1~2\) # (GND))) # (!\btn1~input_o\ & (!\Add1~2\))))
-- \Add1~4\ = CARRY((speed(5) & (\btn1~input_o\ & !\Add1~2\)) # (!speed(5) & ((\btn1~input_o\) # (!\Add1~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(5),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~2\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X3_Y13_N16
\Add1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = ((speed(10) $ (\btn1~input_o\ $ (!\Add1~12\)))) # (GND)
-- \Add1~14\ = CARRY((speed(10) & ((\btn1~input_o\) # (!\Add1~12\))) # (!speed(10) & (\btn1~input_o\ & !\Add1~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(10),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~12\,
	combout => \Add1~13_combout\,
	cout => \Add1~14\);

-- Location: LCCOMB_X3_Y12_N24
\Add1~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = ((speed(30) $ (\btn1~input_o\ $ (\Add1~52\)))) # (GND)
-- \Add1~54\ = CARRY((speed(30) & ((!\Add1~52\) # (!\btn1~input_o\))) # (!speed(30) & (!\btn1~input_o\ & !\Add1~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(30),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~53_combout\,
	cout => \Add1~54\);

-- Location: FF_X4_Y12_N7
\speed_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[3]~38_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(3));

-- Location: LCCOMB_X4_Y12_N6
\speed_counter[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[3]~38_combout\ = (speed_counter(3) & (!\speed_counter[2]~37\)) # (!speed_counter(3) & ((\speed_counter[2]~37\) # (GND)))
-- \speed_counter[3]~39\ = CARRY((!\speed_counter[2]~37\) # (!speed_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(3),
	datad => VCC,
	cin => \speed_counter[2]~37\,
	combout => \speed_counter[3]~38_combout\,
	cout => \speed_counter[3]~39\);

-- Location: LCCOMB_X4_Y12_N12
\speed_counter[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[6]~44_combout\ = (speed_counter(6) & (\speed_counter[5]~43\ $ (GND))) # (!speed_counter(6) & (!\speed_counter[5]~43\ & VCC))
-- \speed_counter[6]~45\ = CARRY((speed_counter(6) & !\speed_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(6),
	datad => VCC,
	cin => \speed_counter[5]~43\,
	combout => \speed_counter[6]~44_combout\,
	cout => \speed_counter[6]~45\);

-- Location: LCCOMB_X4_Y12_N26
\speed_counter[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[13]~58_combout\ = (speed_counter(13) & (!\speed_counter[12]~57\)) # (!speed_counter(13) & ((\speed_counter[12]~57\) # (GND)))
-- \speed_counter[13]~59\ = CARRY((!\speed_counter[12]~57\) # (!speed_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(13),
	datad => VCC,
	cin => \speed_counter[12]~57\,
	combout => \speed_counter[13]~58_combout\,
	cout => \speed_counter[13]~59\);

-- Location: LCCOMB_X4_Y12_N30
\speed_counter[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[15]~62_combout\ = (speed_counter(15) & (!\speed_counter[14]~61\)) # (!speed_counter(15) & ((\speed_counter[14]~61\) # (GND)))
-- \speed_counter[15]~63\ = CARRY((!\speed_counter[14]~61\) # (!speed_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(15),
	datad => VCC,
	cin => \speed_counter[14]~61\,
	combout => \speed_counter[15]~62_combout\,
	cout => \speed_counter[15]~63\);

-- Location: LCCOMB_X4_Y11_N6
\speed_counter[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[19]~70_combout\ = (speed_counter(19) & (!\speed_counter[18]~69\)) # (!speed_counter(19) & ((\speed_counter[18]~69\) # (GND)))
-- \speed_counter[19]~71\ = CARRY((!\speed_counter[18]~69\) # (!speed_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(19),
	datad => VCC,
	cin => \speed_counter[18]~69\,
	combout => \speed_counter[19]~70_combout\,
	cout => \speed_counter[19]~71\);

-- Location: LCCOMB_X4_Y11_N10
\speed_counter[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[21]~74_combout\ = (speed_counter(21) & (!\speed_counter[20]~73\)) # (!speed_counter(21) & ((\speed_counter[20]~73\) # (GND)))
-- \speed_counter[21]~75\ = CARRY((!\speed_counter[20]~73\) # (!speed_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(21),
	datad => VCC,
	cin => \speed_counter[20]~73\,
	combout => \speed_counter[21]~74_combout\,
	cout => \speed_counter[21]~75\);

-- Location: LCCOMB_X4_Y11_N22
\speed_counter[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[27]~86_combout\ = (speed_counter(27) & (!\speed_counter[26]~85\)) # (!speed_counter(27) & ((\speed_counter[26]~85\) # (GND)))
-- \speed_counter[27]~87\ = CARRY((!\speed_counter[26]~85\) # (!speed_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(27),
	datad => VCC,
	cin => \speed_counter[26]~85\,
	combout => \speed_counter[27]~86_combout\,
	cout => \speed_counter[27]~87\);

-- Location: LCCOMB_X4_Y11_N26
\speed_counter[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[29]~90_combout\ = (speed_counter(29) & (!\speed_counter[28]~89\)) # (!speed_counter(29) & ((\speed_counter[28]~89\) # (GND)))
-- \speed_counter[29]~91\ = CARRY((!\speed_counter[28]~89\) # (!speed_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(29),
	datad => VCC,
	cin => \speed_counter[28]~89\,
	combout => \speed_counter[29]~90_combout\,
	cout => \speed_counter[29]~91\);

-- Location: FF_X3_Y12_N25
\speed[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~53_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(30));

-- Location: FF_X3_Y13_N17
\speed[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~13_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(10));

-- Location: FF_X3_Y13_N7
\speed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~3_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(5));

-- Location: IOIBUF_X0_Y24_N1
\LED_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(0),
	o => \LED_data[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\LED_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(1),
	o => \LED_data[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\LED_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(2),
	o => \LED_data[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\LED_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(3),
	o => \LED_data[3]~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\LEDs[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(0),
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LEDs[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(1),
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDs[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(2),
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDs[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(3),
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LEDs[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(4),
	devoe => ww_devoe,
	o => \LEDs[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDs[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(5),
	devoe => ww_devoe,
	o => \LEDs[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LEDs[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(6),
	devoe => ww_devoe,
	o => \LEDs[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDs[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(7),
	devoe => ww_devoe,
	o => \LEDs[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LEDs[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(8),
	devoe => ww_devoe,
	o => \LEDs[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDs[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_reg(9),
	devoe => ww_devoe,
	o => \LEDs[9]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N1
\pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb2,
	o => \pb2~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\LED_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(4),
	o => \LED_data[4]~input_o\);

-- Location: LCCOMB_X4_Y21_N8
\LED_reg[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg[4]~4_combout\ = (\pb2~input_o\ & (LED_reg(3))) # (!\pb2~input_o\ & ((\LED_data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LED_reg(3),
	datab => \pb2~input_o\,
	datad => \LED_data[4]~input_o\,
	combout => \LED_reg[4]~4_combout\);

-- Location: IOIBUF_X0_Y26_N1
\pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb1,
	o => \pb1~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\btn1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn1,
	o => \btn1~input_o\);

-- Location: LCCOMB_X3_Y13_N4
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = speed(4) $ (VCC)
-- \Add1~2\ = CARRY(speed(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => speed(4),
	datad => VCC,
	combout => \Add1~1_combout\,
	cout => \Add1~2\);

-- Location: IOIBUF_X0_Y23_N15
\btn2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn2,
	o => \btn2~input_o\);

-- Location: LCCOMB_X4_Y13_N8
\speed[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[31]~0_combout\ = (!\btn2~input_o\) # (!\btn1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datad => \btn2~input_o\,
	combout => \speed[31]~0_combout\);

-- Location: FF_X3_Y13_N5
\speed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~1_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(4));

-- Location: LCCOMB_X3_Y13_N8
\Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = ((\btn1~input_o\ $ (speed(6) $ (\Add1~4\)))) # (GND)
-- \Add1~6\ = CARRY((\btn1~input_o\ & (speed(6) & !\Add1~4\)) # (!\btn1~input_o\ & ((speed(6)) # (!\Add1~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(6),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~5_combout\,
	cout => \Add1~6\);

-- Location: FF_X3_Y13_N9
\speed[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~5_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(6));

-- Location: LCCOMB_X3_Y13_N10
\Add1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = (speed(7) & ((\btn1~input_o\ & ((\Add1~6\) # (GND))) # (!\btn1~input_o\ & (!\Add1~6\)))) # (!speed(7) & ((\btn1~input_o\ & (!\Add1~6\)) # (!\btn1~input_o\ & (\Add1~6\ & VCC))))
-- \Add1~8\ = CARRY((speed(7) & ((\btn1~input_o\) # (!\Add1~6\))) # (!speed(7) & (\btn1~input_o\ & !\Add1~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(7),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~6\,
	combout => \Add1~7_combout\,
	cout => \Add1~8\);

-- Location: LCCOMB_X3_Y13_N12
\Add1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = ((\btn1~input_o\ $ (speed(8) $ (!\Add1~8\)))) # (GND)
-- \Add1~10\ = CARRY((\btn1~input_o\ & ((speed(8)) # (!\Add1~8\))) # (!\btn1~input_o\ & (speed(8) & !\Add1~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(8),
	datad => VCC,
	cin => \Add1~8\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: FF_X3_Y13_N13
\speed[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~9_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(8));

-- Location: LCCOMB_X3_Y13_N14
\Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (speed(9) & ((\btn1~input_o\ & (\Add1~10\ & VCC)) # (!\btn1~input_o\ & (!\Add1~10\)))) # (!speed(9) & ((\btn1~input_o\ & (!\Add1~10\)) # (!\btn1~input_o\ & ((\Add1~10\) # (GND)))))
-- \Add1~12\ = CARRY((speed(9) & (!\btn1~input_o\ & !\Add1~10\)) # (!speed(9) & ((!\Add1~10\) # (!\btn1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(9),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~11_combout\,
	cout => \Add1~12\);

-- Location: LCCOMB_X3_Y13_N18
\Add1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (\btn1~input_o\ & ((speed(11) & (!\Add1~14\)) # (!speed(11) & ((\Add1~14\) # (GND))))) # (!\btn1~input_o\ & ((speed(11) & (\Add1~14\ & VCC)) # (!speed(11) & (!\Add1~14\))))
-- \Add1~16\ = CARRY((\btn1~input_o\ & ((!\Add1~14\) # (!speed(11)))) # (!\btn1~input_o\ & (!speed(11) & !\Add1~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(11),
	datad => VCC,
	cin => \Add1~14\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: FF_X3_Y13_N19
\speed[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~15_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(11));

-- Location: LCCOMB_X3_Y13_N20
\Add1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = ((\btn1~input_o\ $ (speed(12) $ (!\Add1~16\)))) # (GND)
-- \Add1~18\ = CARRY((\btn1~input_o\ & (!speed(12) & !\Add1~16\)) # (!\btn1~input_o\ & ((!\Add1~16\) # (!speed(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(12),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~17_combout\,
	cout => \Add1~18\);

-- Location: LCCOMB_X5_Y13_N0
\speed[12]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[12]~11_combout\ = !\Add1~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~17_combout\,
	combout => \speed[12]~11_combout\);

-- Location: FF_X5_Y13_N1
\speed[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[12]~11_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(12));

-- Location: LCCOMB_X3_Y13_N22
\Add1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = (speed(13) & ((\btn1~input_o\ & (!\Add1~18\)) # (!\btn1~input_o\ & ((\Add1~18\) # (GND))))) # (!speed(13) & ((\btn1~input_o\ & (\Add1~18\ & VCC)) # (!\btn1~input_o\ & (!\Add1~18\))))
-- \Add1~20\ = CARRY((speed(13) & ((!\Add1~18\) # (!\btn1~input_o\))) # (!speed(13) & (!\btn1~input_o\ & !\Add1~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(13),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~18\,
	combout => \Add1~19_combout\,
	cout => \Add1~20\);

-- Location: LCCOMB_X3_Y13_N24
\Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = ((\btn1~input_o\ $ (speed(14) $ (!\Add1~20\)))) # (GND)
-- \Add1~22\ = CARRY((\btn1~input_o\ & (!speed(14) & !\Add1~20\)) # (!\btn1~input_o\ & ((!\Add1~20\) # (!speed(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(14),
	datad => VCC,
	cin => \Add1~20\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X3_Y13_N0
\speed[14]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[14]~9_combout\ = !\Add1~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~21_combout\,
	combout => \speed[14]~9_combout\);

-- Location: FF_X3_Y13_N1
\speed[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[14]~9_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(14));

-- Location: LCCOMB_X3_Y13_N26
\Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (speed(15) & ((\btn1~input_o\ & ((\Add1~22\) # (GND))) # (!\btn1~input_o\ & (!\Add1~22\)))) # (!speed(15) & ((\btn1~input_o\ & (!\Add1~22\)) # (!\btn1~input_o\ & (\Add1~22\ & VCC))))
-- \Add1~24\ = CARRY((speed(15) & ((\btn1~input_o\) # (!\Add1~22\))) # (!speed(15) & (\btn1~input_o\ & !\Add1~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(15),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~23_combout\,
	cout => \Add1~24\);

-- Location: LCCOMB_X3_Y13_N28
\Add1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = ((\btn1~input_o\ $ (speed(16) $ (\Add1~24\)))) # (GND)
-- \Add1~26\ = CARRY((\btn1~input_o\ & (speed(16) & !\Add1~24\)) # (!\btn1~input_o\ & ((speed(16)) # (!\Add1~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(16),
	datad => VCC,
	cin => \Add1~24\,
	combout => \Add1~25_combout\,
	cout => \Add1~26\);

-- Location: FF_X3_Y13_N29
\speed[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~25_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(16));

-- Location: LCCOMB_X3_Y13_N30
\Add1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (\btn1~input_o\ & ((speed(17) & ((\Add1~26\) # (GND))) # (!speed(17) & (!\Add1~26\)))) # (!\btn1~input_o\ & ((speed(17) & (!\Add1~26\)) # (!speed(17) & (\Add1~26\ & VCC))))
-- \Add1~28\ = CARRY((\btn1~input_o\ & ((speed(17)) # (!\Add1~26\))) # (!\btn1~input_o\ & (speed(17) & !\Add1~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(17),
	datad => VCC,
	cin => \Add1~26\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X4_Y13_N12
\speed[17]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[17]~7_combout\ = !\Add1~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~27_combout\,
	combout => \speed[17]~7_combout\);

-- Location: FF_X4_Y13_N13
\speed[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[17]~7_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(17));

-- Location: LCCOMB_X3_Y12_N0
\Add1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = ((\btn1~input_o\ $ (speed(18) $ (\Add1~28\)))) # (GND)
-- \Add1~30\ = CARRY((\btn1~input_o\ & (speed(18) & !\Add1~28\)) # (!\btn1~input_o\ & ((speed(18)) # (!\Add1~28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(18),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~29_combout\,
	cout => \Add1~30\);

-- Location: FF_X3_Y12_N1
\speed[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~29_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(18));

-- Location: LCCOMB_X3_Y12_N2
\Add1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~31_combout\ = (\btn1~input_o\ & ((speed(19) & ((\Add1~30\) # (GND))) # (!speed(19) & (!\Add1~30\)))) # (!\btn1~input_o\ & ((speed(19) & (!\Add1~30\)) # (!speed(19) & (\Add1~30\ & VCC))))
-- \Add1~32\ = CARRY((\btn1~input_o\ & ((speed(19)) # (!\Add1~30\))) # (!\btn1~input_o\ & (speed(19) & !\Add1~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(19),
	datad => VCC,
	cin => \Add1~30\,
	combout => \Add1~31_combout\,
	cout => \Add1~32\);

-- Location: LCCOMB_X5_Y12_N30
\speed[19]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[19]~6_combout\ = !\Add1~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~31_combout\,
	combout => \speed[19]~6_combout\);

-- Location: FF_X5_Y12_N31
\speed[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[19]~6_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(19));

-- Location: LCCOMB_X3_Y12_N4
\Add1~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = ((speed(20) $ (\btn1~input_o\ $ (!\Add1~32\)))) # (GND)
-- \Add1~34\ = CARRY((speed(20) & (!\btn1~input_o\ & !\Add1~32\)) # (!speed(20) & ((!\Add1~32\) # (!\btn1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(20),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~32\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

-- Location: LCCOMB_X3_Y12_N6
\Add1~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (\btn1~input_o\ & ((speed(21) & ((\Add1~34\) # (GND))) # (!speed(21) & (!\Add1~34\)))) # (!\btn1~input_o\ & ((speed(21) & (!\Add1~34\)) # (!speed(21) & (\Add1~34\ & VCC))))
-- \Add1~36\ = CARRY((\btn1~input_o\ & ((speed(21)) # (!\Add1~34\))) # (!\btn1~input_o\ & (speed(21) & !\Add1~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(21),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~35_combout\,
	cout => \Add1~36\);

-- Location: LCCOMB_X4_Y13_N26
\speed[21]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[21]~4_combout\ = !\Add1~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~35_combout\,
	combout => \speed[21]~4_combout\);

-- Location: FF_X4_Y13_N27
\speed[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[21]~4_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(21));

-- Location: LCCOMB_X3_Y12_N8
\Add1~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~37_combout\ = ((\btn1~input_o\ $ (speed(22) $ (!\Add1~36\)))) # (GND)
-- \Add1~38\ = CARRY((\btn1~input_o\ & (!speed(22) & !\Add1~36\)) # (!\btn1~input_o\ & ((!\Add1~36\) # (!speed(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(22),
	datad => VCC,
	cin => \Add1~36\,
	combout => \Add1~37_combout\,
	cout => \Add1~38\);

-- Location: LCCOMB_X3_Y12_N30
\speed[22]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[22]~3_combout\ = !\Add1~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~37_combout\,
	combout => \speed[22]~3_combout\);

-- Location: FF_X3_Y12_N31
\speed[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[22]~3_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(22));

-- Location: LCCOMB_X3_Y12_N10
\Add1~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (speed(23) & ((\btn1~input_o\ & ((\Add1~38\) # (GND))) # (!\btn1~input_o\ & (!\Add1~38\)))) # (!speed(23) & ((\btn1~input_o\ & (!\Add1~38\)) # (!\btn1~input_o\ & (\Add1~38\ & VCC))))
-- \Add1~40\ = CARRY((speed(23) & ((\btn1~input_o\) # (!\Add1~38\))) # (!speed(23) & (\btn1~input_o\ & !\Add1~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(23),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~38\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X3_Y12_N12
\Add1~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = ((\btn1~input_o\ $ (speed(24) $ (\Add1~40\)))) # (GND)
-- \Add1~42\ = CARRY((\btn1~input_o\ & (speed(24) & !\Add1~40\)) # (!\btn1~input_o\ & ((speed(24)) # (!\Add1~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(24),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~41_combout\,
	cout => \Add1~42\);

-- Location: FF_X3_Y12_N13
\speed[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~41_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(24));

-- Location: LCCOMB_X3_Y12_N14
\Add1~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~43_combout\ = (\btn1~input_o\ & ((speed(25) & ((\Add1~42\) # (GND))) # (!speed(25) & (!\Add1~42\)))) # (!\btn1~input_o\ & ((speed(25) & (!\Add1~42\)) # (!speed(25) & (\Add1~42\ & VCC))))
-- \Add1~44\ = CARRY((\btn1~input_o\ & ((speed(25)) # (!\Add1~42\))) # (!\btn1~input_o\ & (speed(25) & !\Add1~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(25),
	datad => VCC,
	cin => \Add1~42\,
	combout => \Add1~43_combout\,
	cout => \Add1~44\);

-- Location: LCCOMB_X3_Y12_N28
\speed[25]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[25]~1_combout\ = !\Add1~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~43_combout\,
	combout => \speed[25]~1_combout\);

-- Location: FF_X3_Y12_N29
\speed[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[25]~1_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(25));

-- Location: LCCOMB_X3_Y12_N16
\Add1~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = ((\btn1~input_o\ $ (speed(26) $ (\Add1~44\)))) # (GND)
-- \Add1~46\ = CARRY((\btn1~input_o\ & (speed(26) & !\Add1~44\)) # (!\btn1~input_o\ & ((speed(26)) # (!\Add1~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(26),
	datad => VCC,
	cin => \Add1~44\,
	combout => \Add1~45_combout\,
	cout => \Add1~46\);

-- Location: FF_X3_Y12_N17
\speed[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~45_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(26));

-- Location: LCCOMB_X3_Y12_N18
\Add1~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (speed(27) & ((\btn1~input_o\ & (!\Add1~46\)) # (!\btn1~input_o\ & (\Add1~46\ & VCC)))) # (!speed(27) & ((\btn1~input_o\ & ((\Add1~46\) # (GND))) # (!\btn1~input_o\ & (!\Add1~46\))))
-- \Add1~48\ = CARRY((speed(27) & (\btn1~input_o\ & !\Add1~46\)) # (!speed(27) & ((\btn1~input_o\) # (!\Add1~46\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(27),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~46\,
	combout => \Add1~47_combout\,
	cout => \Add1~48\);

-- Location: LCCOMB_X3_Y12_N20
\Add1~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~49_combout\ = ((speed(28) $ (\btn1~input_o\ $ (\Add1~48\)))) # (GND)
-- \Add1~50\ = CARRY((speed(28) & ((!\Add1~48\) # (!\btn1~input_o\))) # (!speed(28) & (!\btn1~input_o\ & !\Add1~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(28),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~48\,
	combout => \Add1~49_combout\,
	cout => \Add1~50\);

-- Location: LCCOMB_X3_Y12_N22
\Add1~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (speed(29) & ((\btn1~input_o\ & (!\Add1~50\)) # (!\btn1~input_o\ & (\Add1~50\ & VCC)))) # (!speed(29) & ((\btn1~input_o\ & ((\Add1~50\) # (GND))) # (!\btn1~input_o\ & (!\Add1~50\))))
-- \Add1~52\ = CARRY((speed(29) & (\btn1~input_o\ & !\Add1~50\)) # (!speed(29) & ((\btn1~input_o\) # (!\Add1~50\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(29),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add1~50\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

-- Location: LCCOMB_X3_Y12_N26
\Add1~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~55_combout\ = speed(31) $ (\Add1~54\ $ (!\btn1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(31),
	datad => \btn1~input_o\,
	cin => \Add1~54\,
	combout => \Add1~55_combout\);

-- Location: FF_X3_Y12_N27
\speed[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~55_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(31));

-- Location: LCCOMB_X4_Y12_N0
\speed_counter[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[0]~32_combout\ = speed_counter(0) $ (VCC)
-- \speed_counter[0]~33\ = CARRY(speed_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(0),
	datad => VCC,
	combout => \speed_counter[0]~32_combout\,
	cout => \speed_counter[0]~33\);

-- Location: FF_X4_Y12_N1
\speed_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[0]~32_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(0));

-- Location: LCCOMB_X4_Y12_N2
\speed_counter[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[1]~34_combout\ = (speed_counter(1) & (!\speed_counter[0]~33\)) # (!speed_counter(1) & ((\speed_counter[0]~33\) # (GND)))
-- \speed_counter[1]~35\ = CARRY((!\speed_counter[0]~33\) # (!speed_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(1),
	datad => VCC,
	cin => \speed_counter[0]~33\,
	combout => \speed_counter[1]~34_combout\,
	cout => \speed_counter[1]~35\);

-- Location: FF_X4_Y12_N3
\speed_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[1]~34_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(1));

-- Location: LCCOMB_X4_Y12_N4
\speed_counter[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[2]~36_combout\ = (speed_counter(2) & (\speed_counter[1]~35\ $ (GND))) # (!speed_counter(2) & (!\speed_counter[1]~35\ & VCC))
-- \speed_counter[2]~37\ = CARRY((speed_counter(2) & !\speed_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(2),
	datad => VCC,
	cin => \speed_counter[1]~35\,
	combout => \speed_counter[2]~36_combout\,
	cout => \speed_counter[2]~37\);

-- Location: FF_X4_Y12_N5
\speed_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[2]~36_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(2));

-- Location: LCCOMB_X4_Y12_N8
\speed_counter[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[4]~40_combout\ = (speed_counter(4) & (\speed_counter[3]~39\ $ (GND))) # (!speed_counter(4) & (!\speed_counter[3]~39\ & VCC))
-- \speed_counter[4]~41\ = CARRY((speed_counter(4) & !\speed_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(4),
	datad => VCC,
	cin => \speed_counter[3]~39\,
	combout => \speed_counter[4]~40_combout\,
	cout => \speed_counter[4]~41\);

-- Location: FF_X4_Y12_N9
\speed_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[4]~40_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(4));

-- Location: LCCOMB_X4_Y12_N10
\speed_counter[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[5]~42_combout\ = (speed_counter(5) & (!\speed_counter[4]~41\)) # (!speed_counter(5) & ((\speed_counter[4]~41\) # (GND)))
-- \speed_counter[5]~43\ = CARRY((!\speed_counter[4]~41\) # (!speed_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(5),
	datad => VCC,
	cin => \speed_counter[4]~41\,
	combout => \speed_counter[5]~42_combout\,
	cout => \speed_counter[5]~43\);

-- Location: LCCOMB_X4_Y12_N14
\speed_counter[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[7]~46_combout\ = (speed_counter(7) & (!\speed_counter[6]~45\)) # (!speed_counter(7) & ((\speed_counter[6]~45\) # (GND)))
-- \speed_counter[7]~47\ = CARRY((!\speed_counter[6]~45\) # (!speed_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(7),
	datad => VCC,
	cin => \speed_counter[6]~45\,
	combout => \speed_counter[7]~46_combout\,
	cout => \speed_counter[7]~47\);

-- Location: FF_X4_Y12_N15
\speed_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[7]~46_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(7));

-- Location: LCCOMB_X4_Y12_N16
\speed_counter[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[8]~48_combout\ = (speed_counter(8) & (\speed_counter[7]~47\ $ (GND))) # (!speed_counter(8) & (!\speed_counter[7]~47\ & VCC))
-- \speed_counter[8]~49\ = CARRY((speed_counter(8) & !\speed_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(8),
	datad => VCC,
	cin => \speed_counter[7]~47\,
	combout => \speed_counter[8]~48_combout\,
	cout => \speed_counter[8]~49\);

-- Location: FF_X4_Y12_N17
\speed_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[8]~48_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(8));

-- Location: LCCOMB_X4_Y12_N18
\speed_counter[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[9]~50_combout\ = (speed_counter(9) & (!\speed_counter[8]~49\)) # (!speed_counter(9) & ((\speed_counter[8]~49\) # (GND)))
-- \speed_counter[9]~51\ = CARRY((!\speed_counter[8]~49\) # (!speed_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(9),
	datad => VCC,
	cin => \speed_counter[8]~49\,
	combout => \speed_counter[9]~50_combout\,
	cout => \speed_counter[9]~51\);

-- Location: FF_X4_Y12_N19
\speed_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[9]~50_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(9));

-- Location: LCCOMB_X4_Y12_N20
\speed_counter[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[10]~52_combout\ = (speed_counter(10) & (\speed_counter[9]~51\ $ (GND))) # (!speed_counter(10) & (!\speed_counter[9]~51\ & VCC))
-- \speed_counter[10]~53\ = CARRY((speed_counter(10) & !\speed_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(10),
	datad => VCC,
	cin => \speed_counter[9]~51\,
	combout => \speed_counter[10]~52_combout\,
	cout => \speed_counter[10]~53\);

-- Location: FF_X4_Y12_N21
\speed_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[10]~52_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(10));

-- Location: LCCOMB_X4_Y12_N22
\speed_counter[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[11]~54_combout\ = (speed_counter(11) & (!\speed_counter[10]~53\)) # (!speed_counter(11) & ((\speed_counter[10]~53\) # (GND)))
-- \speed_counter[11]~55\ = CARRY((!\speed_counter[10]~53\) # (!speed_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(11),
	datad => VCC,
	cin => \speed_counter[10]~53\,
	combout => \speed_counter[11]~54_combout\,
	cout => \speed_counter[11]~55\);

-- Location: LCCOMB_X4_Y12_N24
\speed_counter[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[12]~56_combout\ = (speed_counter(12) & (\speed_counter[11]~55\ $ (GND))) # (!speed_counter(12) & (!\speed_counter[11]~55\ & VCC))
-- \speed_counter[12]~57\ = CARRY((speed_counter(12) & !\speed_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(12),
	datad => VCC,
	cin => \speed_counter[11]~55\,
	combout => \speed_counter[12]~56_combout\,
	cout => \speed_counter[12]~57\);

-- Location: FF_X4_Y12_N25
\speed_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[12]~56_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(12));

-- Location: LCCOMB_X4_Y12_N28
\speed_counter[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[14]~60_combout\ = (speed_counter(14) & (\speed_counter[13]~59\ $ (GND))) # (!speed_counter(14) & (!\speed_counter[13]~59\ & VCC))
-- \speed_counter[14]~61\ = CARRY((speed_counter(14) & !\speed_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(14),
	datad => VCC,
	cin => \speed_counter[13]~59\,
	combout => \speed_counter[14]~60_combout\,
	cout => \speed_counter[14]~61\);

-- Location: FF_X4_Y12_N29
\speed_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[14]~60_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(14));

-- Location: LCCOMB_X4_Y11_N0
\speed_counter[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[16]~64_combout\ = (speed_counter(16) & (\speed_counter[15]~63\ $ (GND))) # (!speed_counter(16) & (!\speed_counter[15]~63\ & VCC))
-- \speed_counter[16]~65\ = CARRY((speed_counter(16) & !\speed_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(16),
	datad => VCC,
	cin => \speed_counter[15]~63\,
	combout => \speed_counter[16]~64_combout\,
	cout => \speed_counter[16]~65\);

-- Location: FF_X4_Y11_N1
\speed_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[16]~64_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(16));

-- Location: LCCOMB_X4_Y11_N2
\speed_counter[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[17]~66_combout\ = (speed_counter(17) & (!\speed_counter[16]~65\)) # (!speed_counter(17) & ((\speed_counter[16]~65\) # (GND)))
-- \speed_counter[17]~67\ = CARRY((!\speed_counter[16]~65\) # (!speed_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(17),
	datad => VCC,
	cin => \speed_counter[16]~65\,
	combout => \speed_counter[17]~66_combout\,
	cout => \speed_counter[17]~67\);

-- Location: FF_X4_Y11_N3
\speed_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[17]~66_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(17));

-- Location: LCCOMB_X4_Y11_N4
\speed_counter[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[18]~68_combout\ = (speed_counter(18) & (\speed_counter[17]~67\ $ (GND))) # (!speed_counter(18) & (!\speed_counter[17]~67\ & VCC))
-- \speed_counter[18]~69\ = CARRY((speed_counter(18) & !\speed_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(18),
	datad => VCC,
	cin => \speed_counter[17]~67\,
	combout => \speed_counter[18]~68_combout\,
	cout => \speed_counter[18]~69\);

-- Location: FF_X4_Y11_N5
\speed_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[18]~68_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(18));

-- Location: LCCOMB_X4_Y11_N8
\speed_counter[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[20]~72_combout\ = (speed_counter(20) & (\speed_counter[19]~71\ $ (GND))) # (!speed_counter(20) & (!\speed_counter[19]~71\ & VCC))
-- \speed_counter[20]~73\ = CARRY((speed_counter(20) & !\speed_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(20),
	datad => VCC,
	cin => \speed_counter[19]~71\,
	combout => \speed_counter[20]~72_combout\,
	cout => \speed_counter[20]~73\);

-- Location: FF_X4_Y11_N9
\speed_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[20]~72_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(20));

-- Location: LCCOMB_X4_Y11_N12
\speed_counter[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[22]~76_combout\ = (speed_counter(22) & (\speed_counter[21]~75\ $ (GND))) # (!speed_counter(22) & (!\speed_counter[21]~75\ & VCC))
-- \speed_counter[22]~77\ = CARRY((speed_counter(22) & !\speed_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(22),
	datad => VCC,
	cin => \speed_counter[21]~75\,
	combout => \speed_counter[22]~76_combout\,
	cout => \speed_counter[22]~77\);

-- Location: LCCOMB_X4_Y11_N14
\speed_counter[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[23]~78_combout\ = (speed_counter(23) & (!\speed_counter[22]~77\)) # (!speed_counter(23) & ((\speed_counter[22]~77\) # (GND)))
-- \speed_counter[23]~79\ = CARRY((!\speed_counter[22]~77\) # (!speed_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(23),
	datad => VCC,
	cin => \speed_counter[22]~77\,
	combout => \speed_counter[23]~78_combout\,
	cout => \speed_counter[23]~79\);

-- Location: FF_X4_Y11_N15
\speed_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[23]~78_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(23));

-- Location: LCCOMB_X4_Y11_N16
\speed_counter[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[24]~80_combout\ = (speed_counter(24) & (\speed_counter[23]~79\ $ (GND))) # (!speed_counter(24) & (!\speed_counter[23]~79\ & VCC))
-- \speed_counter[24]~81\ = CARRY((speed_counter(24) & !\speed_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(24),
	datad => VCC,
	cin => \speed_counter[23]~79\,
	combout => \speed_counter[24]~80_combout\,
	cout => \speed_counter[24]~81\);

-- Location: FF_X4_Y11_N17
\speed_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[24]~80_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(24));

-- Location: LCCOMB_X4_Y11_N18
\speed_counter[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[25]~82_combout\ = (speed_counter(25) & (!\speed_counter[24]~81\)) # (!speed_counter(25) & ((\speed_counter[24]~81\) # (GND)))
-- \speed_counter[25]~83\ = CARRY((!\speed_counter[24]~81\) # (!speed_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(25),
	datad => VCC,
	cin => \speed_counter[24]~81\,
	combout => \speed_counter[25]~82_combout\,
	cout => \speed_counter[25]~83\);

-- Location: FF_X4_Y11_N19
\speed_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[25]~82_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(25));

-- Location: LCCOMB_X4_Y11_N20
\speed_counter[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[26]~84_combout\ = (speed_counter(26) & (\speed_counter[25]~83\ $ (GND))) # (!speed_counter(26) & (!\speed_counter[25]~83\ & VCC))
-- \speed_counter[26]~85\ = CARRY((speed_counter(26) & !\speed_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(26),
	datad => VCC,
	cin => \speed_counter[25]~83\,
	combout => \speed_counter[26]~84_combout\,
	cout => \speed_counter[26]~85\);

-- Location: FF_X4_Y11_N21
\speed_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[26]~84_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(26));

-- Location: LCCOMB_X4_Y11_N24
\speed_counter[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[28]~88_combout\ = (speed_counter(28) & (\speed_counter[27]~87\ $ (GND))) # (!speed_counter(28) & (!\speed_counter[27]~87\ & VCC))
-- \speed_counter[28]~89\ = CARRY((speed_counter(28) & !\speed_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(28),
	datad => VCC,
	cin => \speed_counter[27]~87\,
	combout => \speed_counter[28]~88_combout\,
	cout => \speed_counter[28]~89\);

-- Location: FF_X4_Y11_N25
\speed_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[28]~88_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(28));

-- Location: LCCOMB_X4_Y11_N28
\speed_counter[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[30]~92_combout\ = (speed_counter(30) & (\speed_counter[29]~91\ $ (GND))) # (!speed_counter(30) & (!\speed_counter[29]~91\ & VCC))
-- \speed_counter[30]~93\ = CARRY((speed_counter(30) & !\speed_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed_counter(30),
	datad => VCC,
	cin => \speed_counter[29]~91\,
	combout => \speed_counter[30]~92_combout\,
	cout => \speed_counter[30]~93\);

-- Location: FF_X4_Y11_N29
\speed_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[30]~92_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(30));

-- Location: LCCOMB_X4_Y11_N30
\speed_counter[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_counter[31]~94_combout\ = speed_counter(31) $ (\speed_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(31),
	cin => \speed_counter[30]~93\,
	combout => \speed_counter[31]~94_combout\);

-- Location: FF_X4_Y11_N31
\speed_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[31]~94_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(31));

-- Location: FF_X3_Y12_N23
\speed[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~51_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(29));

-- Location: FF_X3_Y12_N21
\speed[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~49_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(28));

-- Location: FF_X3_Y12_N19
\speed[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~47_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(27));

-- Location: LCCOMB_X4_Y13_N16
\speed[23]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[23]~2_combout\ = !\Add1~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~39_combout\,
	combout => \speed[23]~2_combout\);

-- Location: FF_X4_Y13_N17
\speed[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[23]~2_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(23));

-- Location: FF_X4_Y11_N13
\speed_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[22]~76_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(22));

-- Location: LCCOMB_X5_Y12_N28
\speed[20]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[20]~5_combout\ = !\Add1~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~33_combout\,
	combout => \speed[20]~5_combout\);

-- Location: FF_X5_Y12_N29
\speed[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[20]~5_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(20));

-- Location: LCCOMB_X4_Y13_N30
\speed[15]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[15]~8_combout\ = !\Add1~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~23_combout\,
	combout => \speed[15]~8_combout\);

-- Location: FF_X4_Y13_N31
\speed[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[15]~8_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(15));

-- Location: LCCOMB_X3_Y13_N2
\speed[13]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[13]~10_combout\ = !\Add1~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~19_combout\,
	combout => \speed[13]~10_combout\);

-- Location: FF_X3_Y13_N3
\speed[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[13]~10_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(13));

-- Location: FF_X4_Y12_N23
\speed_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[11]~54_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(11));

-- Location: FF_X3_Y13_N15
\speed[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(9));

-- Location: LCCOMB_X5_Y13_N2
\speed[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[7]~12_combout\ = !\Add1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~7_combout\,
	combout => \speed[7]~12_combout\);

-- Location: FF_X5_Y13_N3
\speed[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[7]~12_combout\,
	ena => \speed[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(7));

-- Location: FF_X4_Y12_N11
\speed_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed_counter[5]~42_combout\,
	sclr => \ALT_INV_LessThan0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed_counter(5));

-- Location: LCCOMB_X5_Y13_N4
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!speed_counter(4) & speed(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(4),
	datab => speed(4),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X5_Y13_N6
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((speed(5) & (speed_counter(5) & !\LessThan0~1_cout\)) # (!speed(5) & ((speed_counter(5)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(5),
	datab => speed_counter(5),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X5_Y13_N8
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((speed_counter(6) & (speed(6) & !\LessThan0~3_cout\)) # (!speed_counter(6) & ((speed(6)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(6),
	datab => speed(6),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X5_Y13_N10
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((speed_counter(7) & ((speed(7)) # (!\LessThan0~5_cout\))) # (!speed_counter(7) & (speed(7) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(7),
	datab => speed(7),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X5_Y13_N12
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((speed(8) & ((!\LessThan0~7_cout\) # (!speed_counter(8)))) # (!speed(8) & (!speed_counter(8) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(8),
	datab => speed_counter(8),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X5_Y13_N14
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((speed_counter(9) & ((!\LessThan0~9_cout\) # (!speed(9)))) # (!speed_counter(9) & (!speed(9) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(9),
	datab => speed(9),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X5_Y13_N16
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((speed(10) & ((!\LessThan0~11_cout\) # (!speed_counter(10)))) # (!speed(10) & (!speed_counter(10) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(10),
	datab => speed_counter(10),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X5_Y13_N18
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((speed(11) & (speed_counter(11) & !\LessThan0~13_cout\)) # (!speed(11) & ((speed_counter(11)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(11),
	datab => speed_counter(11),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X5_Y13_N20
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((speed_counter(12) & (!speed(12) & !\LessThan0~15_cout\)) # (!speed_counter(12) & ((!\LessThan0~15_cout\) # (!speed(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(12),
	datab => speed(12),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X5_Y13_N22
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((speed_counter(13) & ((speed(13)) # (!\LessThan0~17_cout\))) # (!speed_counter(13) & (speed(13) & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(13),
	datab => speed(13),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X5_Y13_N24
\LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((speed(14) & (!speed_counter(14) & !\LessThan0~19_cout\)) # (!speed(14) & ((!\LessThan0~19_cout\) # (!speed_counter(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(14),
	datab => speed_counter(14),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X5_Y13_N26
\LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((speed_counter(15) & ((speed(15)) # (!\LessThan0~21_cout\))) # (!speed_counter(15) & (speed(15) & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(15),
	datab => speed(15),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X5_Y13_N28
\LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((speed(16) & ((!\LessThan0~23_cout\) # (!speed_counter(16)))) # (!speed(16) & (!speed_counter(16) & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(16),
	datab => speed_counter(16),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X5_Y13_N30
\LessThan0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((speed(17) & ((speed_counter(17)) # (!\LessThan0~25_cout\))) # (!speed(17) & (speed_counter(17) & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(17),
	datab => speed_counter(17),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X5_Y12_N0
\LessThan0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((speed_counter(18) & (speed(18) & !\LessThan0~27_cout\)) # (!speed_counter(18) & ((speed(18)) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(18),
	datab => speed(18),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X5_Y12_N2
\LessThan0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((speed_counter(19) & ((speed(19)) # (!\LessThan0~29_cout\))) # (!speed_counter(19) & (speed(19) & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(19),
	datab => speed(19),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X5_Y12_N4
\LessThan0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((speed_counter(20) & (!speed(20) & !\LessThan0~31_cout\)) # (!speed_counter(20) & ((!\LessThan0~31_cout\) # (!speed(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(20),
	datab => speed(20),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X5_Y12_N6
\LessThan0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((speed_counter(21) & ((speed(21)) # (!\LessThan0~33_cout\))) # (!speed_counter(21) & (speed(21) & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(21),
	datab => speed(21),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X5_Y12_N8
\LessThan0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((speed(22) & (!speed_counter(22) & !\LessThan0~35_cout\)) # (!speed(22) & ((!\LessThan0~35_cout\) # (!speed_counter(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(22),
	datab => speed_counter(22),
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X5_Y12_N10
\LessThan0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((speed_counter(23) & ((speed(23)) # (!\LessThan0~37_cout\))) # (!speed_counter(23) & (speed(23) & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(23),
	datab => speed(23),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X5_Y12_N12
\LessThan0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((speed(24) & ((!\LessThan0~39_cout\) # (!speed_counter(24)))) # (!speed(24) & (!speed_counter(24) & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(24),
	datab => speed_counter(24),
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X5_Y12_N14
\LessThan0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((speed_counter(25) & ((speed(25)) # (!\LessThan0~41_cout\))) # (!speed_counter(25) & (speed(25) & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(25),
	datab => speed(25),
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X5_Y12_N16
\LessThan0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((speed(26) & ((!\LessThan0~43_cout\) # (!speed_counter(26)))) # (!speed(26) & (!speed_counter(26) & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(26),
	datab => speed_counter(26),
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X5_Y12_N18
\LessThan0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((speed_counter(27) & ((!\LessThan0~45_cout\) # (!speed(27)))) # (!speed_counter(27) & (!speed(27) & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(27),
	datab => speed(27),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X5_Y12_N20
\LessThan0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((speed_counter(28) & (speed(28) & !\LessThan0~47_cout\)) # (!speed_counter(28) & ((speed(28)) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(28),
	datab => speed(28),
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X5_Y12_N22
\LessThan0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((speed_counter(29) & ((!\LessThan0~49_cout\) # (!speed(29)))) # (!speed_counter(29) & (!speed(29) & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed_counter(29),
	datab => speed(29),
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X5_Y12_N24
\LessThan0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((speed(30) & ((!\LessThan0~51_cout\) # (!speed_counter(30)))) # (!speed(30) & (!speed_counter(30) & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(30),
	datab => speed_counter(30),
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X5_Y12_N26
\LessThan0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~54_combout\ = (speed(31) & (\LessThan0~53_cout\ & speed_counter(31))) # (!speed(31) & ((\LessThan0~53_cout\) # (speed_counter(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => speed(31),
	datad => speed_counter(31),
	cin => \LessThan0~53_cout\,
	combout => \LessThan0~54_combout\);

-- Location: LCCOMB_X4_Y21_N28
\LED_reg[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg[0]~5_combout\ = (!\LessThan0~54_combout\ & ((!\pb2~input_o\) # (!\pb1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datac => \pb2~input_o\,
	datad => \LessThan0~54_combout\,
	combout => \LED_reg[0]~5_combout\);

-- Location: FF_X4_Y21_N9
\LED_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg[4]~4_combout\,
	asdata => LED_reg(5),
	sload => \pb1~input_o\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(4));

-- Location: LCCOMB_X4_Y21_N26
\LED_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg~6_combout\ = (\pb1~input_o\ & (((LED_reg(6))))) # (!\pb1~input_o\ & (LED_reg(4) & (\pb2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => LED_reg(4),
	datac => \pb2~input_o\,
	datad => LED_reg(6),
	combout => \LED_reg~6_combout\);

-- Location: FF_X4_Y21_N27
\LED_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg~6_combout\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(5));

-- Location: LCCOMB_X4_Y21_N20
\LED_reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg~7_combout\ = (\pb1~input_o\ & (LED_reg(7))) # (!\pb1~input_o\ & (((LED_reg(5) & \pb2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => LED_reg(7),
	datac => LED_reg(5),
	datad => \pb2~input_o\,
	combout => \LED_reg~7_combout\);

-- Location: FF_X4_Y21_N21
\LED_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg~7_combout\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(6));

-- Location: LCCOMB_X4_Y21_N14
\LED_reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg~8_combout\ = (\pb1~input_o\ & (LED_reg(8))) # (!\pb1~input_o\ & (((\pb2~input_o\ & LED_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => LED_reg(8),
	datac => \pb2~input_o\,
	datad => LED_reg(6),
	combout => \LED_reg~8_combout\);

-- Location: FF_X4_Y21_N15
\LED_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg~8_combout\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(7));

-- Location: LCCOMB_X4_Y21_N16
\LED_reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg~9_combout\ = (\pb1~input_o\ & (((LED_reg(9))))) # (!\pb1~input_o\ & (LED_reg(7) & (\pb2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => LED_reg(7),
	datac => \pb2~input_o\,
	datad => LED_reg(9),
	combout => \LED_reg~9_combout\);

-- Location: FF_X4_Y21_N17
\LED_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg~9_combout\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(8));

-- Location: LCCOMB_X4_Y21_N10
\LED_reg~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg~10_combout\ = (\pb1~input_o\ & (LED_reg(0))) # (!\pb1~input_o\ & (((\pb2~input_o\ & LED_reg(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => LED_reg(0),
	datac => \pb2~input_o\,
	datad => LED_reg(8),
	combout => \LED_reg~10_combout\);

-- Location: FF_X4_Y21_N11
\LED_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg~10_combout\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(9));

-- Location: LCCOMB_X4_Y21_N24
\LED_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg[0]~0_combout\ = (\pb2~input_o\ & ((LED_reg(9)))) # (!\pb2~input_o\ & (\LED_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_data[0]~input_o\,
	datab => \pb2~input_o\,
	datad => LED_reg(9),
	combout => \LED_reg[0]~0_combout\);

-- Location: LCCOMB_X4_Y21_N2
\LED_reg[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg[1]~1_combout\ = (\pb2~input_o\ & ((LED_reg(0)))) # (!\pb2~input_o\ & (\LED_data[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_data[1]~input_o\,
	datab => \pb2~input_o\,
	datad => LED_reg(0),
	combout => \LED_reg[1]~1_combout\);

-- Location: LCCOMB_X4_Y21_N4
\LED_reg[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg[2]~2_combout\ = (\pb2~input_o\ & ((LED_reg(1)))) # (!\pb2~input_o\ & (\LED_data[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_data[2]~input_o\,
	datab => \pb2~input_o\,
	datad => LED_reg(1),
	combout => \LED_reg[2]~2_combout\);

-- Location: LCCOMB_X4_Y21_N22
\LED_reg[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_reg[3]~3_combout\ = (\pb2~input_o\ & ((LED_reg(2)))) # (!\pb2~input_o\ & (\LED_data[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_data[3]~input_o\,
	datab => LED_reg(2),
	datad => \pb2~input_o\,
	combout => \LED_reg[3]~3_combout\);

-- Location: FF_X4_Y21_N23
\LED_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg[3]~3_combout\,
	asdata => LED_reg(4),
	sload => \pb1~input_o\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(3));

-- Location: FF_X4_Y21_N5
\LED_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg[2]~2_combout\,
	asdata => LED_reg(3),
	sload => \pb1~input_o\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(2));

-- Location: FF_X4_Y21_N3
\LED_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg[1]~1_combout\,
	asdata => LED_reg(2),
	sload => \pb1~input_o\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(1));

-- Location: FF_X4_Y21_N25
\LED_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_reg[0]~0_combout\,
	asdata => LED_reg(1),
	sload => \pb1~input_o\,
	ena => \LED_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_reg(0));

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;

ww_LEDs(4) <= \LEDs[4]~output_o\;

ww_LEDs(5) <= \LEDs[5]~output_o\;

ww_LEDs(6) <= \LEDs[6]~output_o\;

ww_LEDs(7) <= \LEDs[7]~output_o\;

ww_LEDs(8) <= \LEDs[8]~output_o\;

ww_LEDs(9) <= \LEDs[9]~output_o\;
END structure;


