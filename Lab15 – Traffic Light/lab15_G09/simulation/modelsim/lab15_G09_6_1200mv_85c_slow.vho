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

-- DATE "06/14/2024 16:21:20"

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

ENTITY 	lab15_G09 IS
    PORT (
	clk : IN std_logic;
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	ledr : OUT std_logic;
	ledg : OUT std_logic;
	ledy : OUT std_logic
	);
END lab15_G09;

-- Design Ports Information
-- led0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledy	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab15_G09 IS
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
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledr : std_logic;
SIGNAL ww_ledg : std_logic;
SIGNAL ww_ledy : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkTos[0]~26_combout\ : std_logic;
SIGNAL \clkTos[2]~30_combout\ : std_logic;
SIGNAL \clkTos[3]~32_combout\ : std_logic;
SIGNAL \clkTos[8]~42_combout\ : std_logic;
SIGNAL \clkTos[19]~64_combout\ : std_logic;
SIGNAL \countSh[3]~4_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \ledr~output_o\ : std_logic;
SIGNAL \ledg~output_o\ : std_logic;
SIGNAL \ledy~output_o\ : std_logic;
SIGNAL \clkTos[0]~27\ : std_logic;
SIGNAL \clkTos[1]~28_combout\ : std_logic;
SIGNAL \clkTos[1]~29\ : std_logic;
SIGNAL \clkTos[2]~31\ : std_logic;
SIGNAL \clkTos[3]~33\ : std_logic;
SIGNAL \clkTos[4]~34_combout\ : std_logic;
SIGNAL \clkTos[4]~35\ : std_logic;
SIGNAL \clkTos[5]~36_combout\ : std_logic;
SIGNAL \clkTos[5]~37\ : std_logic;
SIGNAL \clkTos[6]~38_combout\ : std_logic;
SIGNAL \clkTos[6]~39\ : std_logic;
SIGNAL \clkTos[7]~40_combout\ : std_logic;
SIGNAL \clkTos[7]~41\ : std_logic;
SIGNAL \clkTos[8]~43\ : std_logic;
SIGNAL \clkTos[9]~44_combout\ : std_logic;
SIGNAL \clkTos[9]~45\ : std_logic;
SIGNAL \clkTos[10]~47\ : std_logic;
SIGNAL \clkTos[11]~48_combout\ : std_logic;
SIGNAL \clkTos[11]~49\ : std_logic;
SIGNAL \clkTos[12]~51\ : std_logic;
SIGNAL \clkTos[13]~52_combout\ : std_logic;
SIGNAL \clkTos[13]~53\ : std_logic;
SIGNAL \clkTos[14]~54_combout\ : std_logic;
SIGNAL \clkTos[14]~55\ : std_logic;
SIGNAL \clkTos[15]~56_combout\ : std_logic;
SIGNAL \clkTos[15]~57\ : std_logic;
SIGNAL \clkTos[16]~59\ : std_logic;
SIGNAL \clkTos[17]~60_combout\ : std_logic;
SIGNAL \clkTos[17]~61\ : std_logic;
SIGNAL \clkTos[18]~63\ : std_logic;
SIGNAL \clkTos[19]~65\ : std_logic;
SIGNAL \clkTos[20]~66_combout\ : std_logic;
SIGNAL \clkTos[20]~67\ : std_logic;
SIGNAL \clkTos[21]~68_combout\ : std_logic;
SIGNAL \clkTos[21]~69\ : std_logic;
SIGNAL \clkTos[22]~70_combout\ : std_logic;
SIGNAL \clkTos[22]~71\ : std_logic;
SIGNAL \clkTos[23]~72_combout\ : std_logic;
SIGNAL \clkTos[23]~73\ : std_logic;
SIGNAL \clkTos[24]~75\ : std_logic;
SIGNAL \clkTos[25]~76_combout\ : std_logic;
SIGNAL \clkTos[18]~62_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \clkTos[24]~74_combout\ : std_logic;
SIGNAL \clkTos[16]~58_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \clkTos[12]~50_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \clkTos[10]~46_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \countSl~6_combout\ : std_logic;
SIGNAL \countSl~7_combout\ : std_logic;
SIGNAL \countSl~2_combout\ : std_logic;
SIGNAL \countSl~4_combout\ : std_logic;
SIGNAL \countSl~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \countSh[0]~0_combout\ : std_logic;
SIGNAL \countSh[1]~3_combout\ : std_logic;
SIGNAL \countSh[2]~1_combout\ : std_logic;
SIGNAL \countSh[0]~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \countSl~3_combout\ : std_logic;
SIGNAL \signalType~0_combout\ : std_logic;
SIGNAL \signalType~q\ : std_logic;
SIGNAL \countSl~8_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ledg~0_combout\ : std_logic;
SIGNAL \ledg~1_combout\ : std_logic;
SIGNAL \ledy~0_combout\ : std_logic;
SIGNAL clkTos : std_logic_vector(25 DOWNTO 0);
SIGNAL countSh : std_logic_vector(3 DOWNTO 0);
SIGNAL countSl : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ledg~1_combout\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
led0 <= ww_led0;
ledr <= ww_ledr;
ledg <= ww_ledg;
ledy <= ww_ledy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_ledg~1_combout\ <= NOT \ledg~1_combout\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;

-- Location: FF_X35_Y23_N23
\clkTos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[8]~42_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(8));

-- Location: FF_X35_Y22_N13
\clkTos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[19]~64_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(19));

-- Location: FF_X35_Y23_N13
\clkTos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[3]~32_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(3));

-- Location: FF_X35_Y23_N11
\clkTos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[2]~30_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(2));

-- Location: FF_X35_Y23_N7
\clkTos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[0]~26_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(0));

-- Location: LCCOMB_X35_Y23_N6
\clkTos[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[0]~26_combout\ = clkTos(0) $ (VCC)
-- \clkTos[0]~27\ = CARRY(clkTos(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(0),
	datad => VCC,
	combout => \clkTos[0]~26_combout\,
	cout => \clkTos[0]~27\);

-- Location: LCCOMB_X35_Y23_N10
\clkTos[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[2]~30_combout\ = (clkTos(2) & (\clkTos[1]~29\ $ (GND))) # (!clkTos(2) & (!\clkTos[1]~29\ & VCC))
-- \clkTos[2]~31\ = CARRY((clkTos(2) & !\clkTos[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(2),
	datad => VCC,
	cin => \clkTos[1]~29\,
	combout => \clkTos[2]~30_combout\,
	cout => \clkTos[2]~31\);

-- Location: LCCOMB_X35_Y23_N12
\clkTos[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[3]~32_combout\ = (clkTos(3) & (!\clkTos[2]~31\)) # (!clkTos(3) & ((\clkTos[2]~31\) # (GND)))
-- \clkTos[3]~33\ = CARRY((!\clkTos[2]~31\) # (!clkTos(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(3),
	datad => VCC,
	cin => \clkTos[2]~31\,
	combout => \clkTos[3]~32_combout\,
	cout => \clkTos[3]~33\);

-- Location: LCCOMB_X35_Y23_N22
\clkTos[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[8]~42_combout\ = (clkTos(8) & (\clkTos[7]~41\ $ (GND))) # (!clkTos(8) & (!\clkTos[7]~41\ & VCC))
-- \clkTos[8]~43\ = CARRY((clkTos(8) & !\clkTos[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(8),
	datad => VCC,
	cin => \clkTos[7]~41\,
	combout => \clkTos[8]~42_combout\,
	cout => \clkTos[8]~43\);

-- Location: LCCOMB_X35_Y22_N12
\clkTos[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[19]~64_combout\ = (clkTos(19) & (!\clkTos[18]~63\)) # (!clkTos(19) & ((\clkTos[18]~63\) # (GND)))
-- \clkTos[19]~65\ = CARRY((!\clkTos[18]~63\) # (!clkTos(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(19),
	datad => VCC,
	cin => \clkTos[18]~63\,
	combout => \clkTos[19]~64_combout\,
	cout => \clkTos[19]~65\);

-- Location: FF_X32_Y22_N11
\countSh[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \countSh[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countSh(3));

-- Location: LCCOMB_X32_Y22_N10
\countSh[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSh[3]~4_combout\ = (countSh(3) & (((!\LessThan0~6_combout\) # (!\Equal1~0_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal1~0_combout\,
	datac => countSh(3),
	datad => \LessThan0~6_combout\,
	combout => \countSh[3]~4_combout\);

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

-- Location: IOOBUF_X21_Y29_N23
\led0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\led0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\led0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\led0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\led0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\led0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\led0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\ledr~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signalType~q\,
	devoe => ww_devoe,
	o => \ledr~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\ledg~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledg~1_combout\,
	devoe => ww_devoe,
	o => \ledg~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\ledy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledy~0_combout\,
	devoe => ww_devoe,
	o => \ledy~output_o\);

-- Location: LCCOMB_X35_Y23_N8
\clkTos[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[1]~28_combout\ = (clkTos(1) & (!\clkTos[0]~27\)) # (!clkTos(1) & ((\clkTos[0]~27\) # (GND)))
-- \clkTos[1]~29\ = CARRY((!\clkTos[0]~27\) # (!clkTos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(1),
	datad => VCC,
	cin => \clkTos[0]~27\,
	combout => \clkTos[1]~28_combout\,
	cout => \clkTos[1]~29\);

-- Location: FF_X35_Y23_N9
\clkTos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[1]~28_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(1));

-- Location: LCCOMB_X35_Y23_N14
\clkTos[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[4]~34_combout\ = (clkTos(4) & (\clkTos[3]~33\ $ (GND))) # (!clkTos(4) & (!\clkTos[3]~33\ & VCC))
-- \clkTos[4]~35\ = CARRY((clkTos(4) & !\clkTos[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(4),
	datad => VCC,
	cin => \clkTos[3]~33\,
	combout => \clkTos[4]~34_combout\,
	cout => \clkTos[4]~35\);

-- Location: FF_X35_Y23_N15
\clkTos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[4]~34_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(4));

-- Location: LCCOMB_X35_Y23_N16
\clkTos[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[5]~36_combout\ = (clkTos(5) & (!\clkTos[4]~35\)) # (!clkTos(5) & ((\clkTos[4]~35\) # (GND)))
-- \clkTos[5]~37\ = CARRY((!\clkTos[4]~35\) # (!clkTos(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(5),
	datad => VCC,
	cin => \clkTos[4]~35\,
	combout => \clkTos[5]~36_combout\,
	cout => \clkTos[5]~37\);

-- Location: FF_X35_Y23_N17
\clkTos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[5]~36_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(5));

-- Location: LCCOMB_X35_Y23_N18
\clkTos[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[6]~38_combout\ = (clkTos(6) & (\clkTos[5]~37\ $ (GND))) # (!clkTos(6) & (!\clkTos[5]~37\ & VCC))
-- \clkTos[6]~39\ = CARRY((clkTos(6) & !\clkTos[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(6),
	datad => VCC,
	cin => \clkTos[5]~37\,
	combout => \clkTos[6]~38_combout\,
	cout => \clkTos[6]~39\);

-- Location: FF_X35_Y23_N19
\clkTos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[6]~38_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(6));

-- Location: LCCOMB_X35_Y23_N20
\clkTos[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[7]~40_combout\ = (clkTos(7) & (!\clkTos[6]~39\)) # (!clkTos(7) & ((\clkTos[6]~39\) # (GND)))
-- \clkTos[7]~41\ = CARRY((!\clkTos[6]~39\) # (!clkTos(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(7),
	datad => VCC,
	cin => \clkTos[6]~39\,
	combout => \clkTos[7]~40_combout\,
	cout => \clkTos[7]~41\);

-- Location: FF_X35_Y23_N21
\clkTos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[7]~40_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(7));

-- Location: LCCOMB_X35_Y23_N24
\clkTos[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[9]~44_combout\ = (clkTos(9) & (!\clkTos[8]~43\)) # (!clkTos(9) & ((\clkTos[8]~43\) # (GND)))
-- \clkTos[9]~45\ = CARRY((!\clkTos[8]~43\) # (!clkTos(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(9),
	datad => VCC,
	cin => \clkTos[8]~43\,
	combout => \clkTos[9]~44_combout\,
	cout => \clkTos[9]~45\);

-- Location: FF_X35_Y23_N25
\clkTos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[9]~44_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(9));

-- Location: LCCOMB_X35_Y23_N26
\clkTos[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[10]~46_combout\ = (clkTos(10) & (\clkTos[9]~45\ $ (GND))) # (!clkTos(10) & (!\clkTos[9]~45\ & VCC))
-- \clkTos[10]~47\ = CARRY((clkTos(10) & !\clkTos[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(10),
	datad => VCC,
	cin => \clkTos[9]~45\,
	combout => \clkTos[10]~46_combout\,
	cout => \clkTos[10]~47\);

-- Location: LCCOMB_X35_Y23_N28
\clkTos[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[11]~48_combout\ = (clkTos(11) & (!\clkTos[10]~47\)) # (!clkTos(11) & ((\clkTos[10]~47\) # (GND)))
-- \clkTos[11]~49\ = CARRY((!\clkTos[10]~47\) # (!clkTos(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(11),
	datad => VCC,
	cin => \clkTos[10]~47\,
	combout => \clkTos[11]~48_combout\,
	cout => \clkTos[11]~49\);

-- Location: FF_X35_Y23_N29
\clkTos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[11]~48_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(11));

-- Location: LCCOMB_X35_Y23_N30
\clkTos[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[12]~50_combout\ = (clkTos(12) & (\clkTos[11]~49\ $ (GND))) # (!clkTos(12) & (!\clkTos[11]~49\ & VCC))
-- \clkTos[12]~51\ = CARRY((clkTos(12) & !\clkTos[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(12),
	datad => VCC,
	cin => \clkTos[11]~49\,
	combout => \clkTos[12]~50_combout\,
	cout => \clkTos[12]~51\);

-- Location: LCCOMB_X35_Y22_N0
\clkTos[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[13]~52_combout\ = (clkTos(13) & (!\clkTos[12]~51\)) # (!clkTos(13) & ((\clkTos[12]~51\) # (GND)))
-- \clkTos[13]~53\ = CARRY((!\clkTos[12]~51\) # (!clkTos(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(13),
	datad => VCC,
	cin => \clkTos[12]~51\,
	combout => \clkTos[13]~52_combout\,
	cout => \clkTos[13]~53\);

-- Location: FF_X35_Y22_N1
\clkTos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[13]~52_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(13));

-- Location: LCCOMB_X35_Y22_N2
\clkTos[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[14]~54_combout\ = (clkTos(14) & (\clkTos[13]~53\ $ (GND))) # (!clkTos(14) & (!\clkTos[13]~53\ & VCC))
-- \clkTos[14]~55\ = CARRY((clkTos(14) & !\clkTos[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(14),
	datad => VCC,
	cin => \clkTos[13]~53\,
	combout => \clkTos[14]~54_combout\,
	cout => \clkTos[14]~55\);

-- Location: FF_X35_Y22_N3
\clkTos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[14]~54_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(14));

-- Location: LCCOMB_X35_Y22_N4
\clkTos[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[15]~56_combout\ = (clkTos(15) & (!\clkTos[14]~55\)) # (!clkTos(15) & ((\clkTos[14]~55\) # (GND)))
-- \clkTos[15]~57\ = CARRY((!\clkTos[14]~55\) # (!clkTos(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(15),
	datad => VCC,
	cin => \clkTos[14]~55\,
	combout => \clkTos[15]~56_combout\,
	cout => \clkTos[15]~57\);

-- Location: FF_X35_Y22_N5
\clkTos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[15]~56_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(15));

-- Location: LCCOMB_X35_Y22_N6
\clkTos[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[16]~58_combout\ = (clkTos(16) & (\clkTos[15]~57\ $ (GND))) # (!clkTos(16) & (!\clkTos[15]~57\ & VCC))
-- \clkTos[16]~59\ = CARRY((clkTos(16) & !\clkTos[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(16),
	datad => VCC,
	cin => \clkTos[15]~57\,
	combout => \clkTos[16]~58_combout\,
	cout => \clkTos[16]~59\);

-- Location: LCCOMB_X35_Y22_N8
\clkTos[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[17]~60_combout\ = (clkTos(17) & (!\clkTos[16]~59\)) # (!clkTos(17) & ((\clkTos[16]~59\) # (GND)))
-- \clkTos[17]~61\ = CARRY((!\clkTos[16]~59\) # (!clkTos(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(17),
	datad => VCC,
	cin => \clkTos[16]~59\,
	combout => \clkTos[17]~60_combout\,
	cout => \clkTos[17]~61\);

-- Location: FF_X35_Y22_N9
\clkTos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[17]~60_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(17));

-- Location: LCCOMB_X35_Y22_N10
\clkTos[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[18]~62_combout\ = (clkTos(18) & (\clkTos[17]~61\ $ (GND))) # (!clkTos(18) & (!\clkTos[17]~61\ & VCC))
-- \clkTos[18]~63\ = CARRY((clkTos(18) & !\clkTos[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(18),
	datad => VCC,
	cin => \clkTos[17]~61\,
	combout => \clkTos[18]~62_combout\,
	cout => \clkTos[18]~63\);

-- Location: LCCOMB_X35_Y22_N14
\clkTos[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[20]~66_combout\ = (clkTos(20) & (\clkTos[19]~65\ $ (GND))) # (!clkTos(20) & (!\clkTos[19]~65\ & VCC))
-- \clkTos[20]~67\ = CARRY((clkTos(20) & !\clkTos[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(20),
	datad => VCC,
	cin => \clkTos[19]~65\,
	combout => \clkTos[20]~66_combout\,
	cout => \clkTos[20]~67\);

-- Location: FF_X35_Y22_N15
\clkTos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[20]~66_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(20));

-- Location: LCCOMB_X35_Y22_N16
\clkTos[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[21]~68_combout\ = (clkTos(21) & (!\clkTos[20]~67\)) # (!clkTos(21) & ((\clkTos[20]~67\) # (GND)))
-- \clkTos[21]~69\ = CARRY((!\clkTos[20]~67\) # (!clkTos(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(21),
	datad => VCC,
	cin => \clkTos[20]~67\,
	combout => \clkTos[21]~68_combout\,
	cout => \clkTos[21]~69\);

-- Location: FF_X35_Y22_N17
\clkTos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[21]~68_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(21));

-- Location: LCCOMB_X35_Y22_N18
\clkTos[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[22]~70_combout\ = (clkTos(22) & (\clkTos[21]~69\ $ (GND))) # (!clkTos(22) & (!\clkTos[21]~69\ & VCC))
-- \clkTos[22]~71\ = CARRY((clkTos(22) & !\clkTos[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(22),
	datad => VCC,
	cin => \clkTos[21]~69\,
	combout => \clkTos[22]~70_combout\,
	cout => \clkTos[22]~71\);

-- Location: FF_X35_Y22_N19
\clkTos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[22]~70_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(22));

-- Location: LCCOMB_X35_Y22_N20
\clkTos[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[23]~72_combout\ = (clkTos(23) & (!\clkTos[22]~71\)) # (!clkTos(23) & ((\clkTos[22]~71\) # (GND)))
-- \clkTos[23]~73\ = CARRY((!\clkTos[22]~71\) # (!clkTos(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkTos(23),
	datad => VCC,
	cin => \clkTos[22]~71\,
	combout => \clkTos[23]~72_combout\,
	cout => \clkTos[23]~73\);

-- Location: FF_X35_Y22_N21
\clkTos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[23]~72_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(23));

-- Location: LCCOMB_X35_Y22_N22
\clkTos[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[24]~74_combout\ = (clkTos(24) & (\clkTos[23]~73\ $ (GND))) # (!clkTos(24) & (!\clkTos[23]~73\ & VCC))
-- \clkTos[24]~75\ = CARRY((clkTos(24) & !\clkTos[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(24),
	datad => VCC,
	cin => \clkTos[23]~73\,
	combout => \clkTos[24]~74_combout\,
	cout => \clkTos[24]~75\);

-- Location: LCCOMB_X35_Y22_N24
\clkTos[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkTos[25]~76_combout\ = \clkTos[24]~75\ $ (clkTos(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clkTos(25),
	cin => \clkTos[24]~75\,
	combout => \clkTos[25]~76_combout\);

-- Location: FF_X35_Y22_N25
\clkTos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[25]~76_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(25));

-- Location: FF_X35_Y22_N11
\clkTos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[18]~62_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(18));

-- Location: LCCOMB_X32_Y22_N20
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!clkTos(18) & !clkTos(17))) # (!clkTos(20))) # (!clkTos(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(19),
	datab => clkTos(18),
	datac => clkTos(17),
	datad => clkTos(20),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y22_N14
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((\LessThan0~4_combout\) # (!clkTos(22))) # (!clkTos(23))) # (!clkTos(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(21),
	datab => clkTos(23),
	datac => clkTos(22),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: FF_X35_Y22_N23
\clkTos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[24]~74_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(24));

-- Location: FF_X35_Y22_N7
\clkTos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[16]~58_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(16));

-- Location: LCCOMB_X32_Y22_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clkTos(18) & (!clkTos(24) & !clkTos(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(18),
	datac => clkTos(24),
	datad => clkTos(16),
	combout => \LessThan0~0_combout\);

-- Location: FF_X35_Y23_N31
\clkTos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[12]~50_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(12));

-- Location: LCCOMB_X32_Y22_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!clkTos(12)) # (!clkTos(14))) # (!clkTos(13))) # (!clkTos(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(15),
	datab => clkTos(13),
	datac => clkTos(14),
	datad => clkTos(12),
	combout => \LessThan0~1_combout\);

-- Location: FF_X35_Y23_N27
\clkTos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \clkTos[10]~46_combout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkTos(10));

-- Location: LCCOMB_X32_Y22_N24
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clkTos(8) & (!clkTos(7) & (!clkTos(10) & !clkTos(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(8),
	datab => clkTos(7),
	datac => clkTos(10),
	datad => clkTos(9),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y22_N18
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((!clkTos(11) & \LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(11),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y22_N0
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (clkTos(25) & (!\LessThan0~3_combout\ & ((clkTos(24)) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkTos(24),
	datab => clkTos(25),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X28_Y22_N24
\countSl~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSl~6_combout\ = (countSl(3) & (countSl(0) & (countSl(2) & countSl(1)))) # (!countSl(3) & (((!countSl(1)) # (!countSl(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(3),
	datab => countSl(0),
	datac => countSl(2),
	datad => countSl(1),
	combout => \countSl~6_combout\);

-- Location: LCCOMB_X32_Y22_N26
\countSl~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSl~7_combout\ = (!\countSl~6_combout\ & ((countSh(3)) # ((!\Equal1~0_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSh(3),
	datab => \Equal0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \countSl~6_combout\,
	combout => \countSl~7_combout\);

-- Location: FF_X32_Y22_N27
\countSl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \countSl~7_combout\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countSl(3));

-- Location: LCCOMB_X35_Y22_N26
\countSl~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSl~2_combout\ = (!countSl(0) & (((countSl(3)) # (!countSl(1))) # (!countSl(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(2),
	datab => countSl(1),
	datac => countSl(0),
	datad => countSl(3),
	combout => \countSl~2_combout\);

-- Location: FF_X35_Y22_N27
\countSl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \countSl~2_combout\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countSl(0));

-- Location: LCCOMB_X28_Y22_N22
\countSl~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSl~4_combout\ = countSl(2) $ (((!countSl(0)) # (!countSl(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(1),
	datab => countSl(0),
	datac => countSl(2),
	combout => \countSl~4_combout\);

-- Location: LCCOMB_X32_Y22_N16
\countSl~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSl~5_combout\ = (!\countSl~4_combout\ & ((countSh(3)) # ((!\Equal1~0_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSh(3),
	datab => \Equal0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \countSl~4_combout\,
	combout => \countSl~5_combout\);

-- Location: FF_X32_Y22_N17
\countSl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \countSl~5_combout\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countSl(2));

-- Location: LCCOMB_X28_Y22_N28
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!countSl(3) & (countSl(2) & (countSl(1) & !countSl(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(3),
	datab => countSl(2),
	datac => countSl(1),
	datad => countSl(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y22_N6
\countSh[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSh[0]~0_combout\ = (\Equal0~0_combout\ & (\LessThan0~6_combout\ & ((countSh(3)) # (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSh(3),
	datab => \Equal0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \LessThan0~6_combout\,
	combout => \countSh[0]~0_combout\);

-- Location: LCCOMB_X32_Y22_N22
\countSh[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSh[1]~3_combout\ = countSh(1) $ (((!countSh(0) & \countSh[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSh(0),
	datac => countSh(1),
	datad => \countSh[0]~0_combout\,
	combout => \countSh[1]~3_combout\);

-- Location: FF_X32_Y22_N23
\countSh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \countSh[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countSh(1));

-- Location: LCCOMB_X32_Y22_N2
\countSh[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSh[2]~1_combout\ = countSh(2) $ (((!countSh(0) & (!countSh(1) & \countSh[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSh(0),
	datab => countSh(1),
	datac => countSh(2),
	datad => \countSh[0]~0_combout\,
	combout => \countSh[2]~1_combout\);

-- Location: FF_X32_Y22_N3
\countSh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \countSh[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countSh(2));

-- Location: LCCOMB_X32_Y22_N12
\countSh[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSh[0]~2_combout\ = countSh(0) $ (\countSh[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countSh(0),
	datad => \countSh[0]~0_combout\,
	combout => \countSh[0]~2_combout\);

-- Location: FF_X32_Y22_N13
\countSh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \countSh[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countSh(0));

-- Location: LCCOMB_X32_Y22_N8
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!countSh(2) & (!countSh(1) & !countSh(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countSh(2),
	datac => countSh(1),
	datad => countSh(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X32_Y22_N4
\countSl~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSl~3_combout\ = (!countSh(3) & (\Equal1~0_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSh(3),
	datac => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \countSl~3_combout\);

-- Location: LCCOMB_X35_Y22_N30
\signalType~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \signalType~0_combout\ = \signalType~q\ $ (((\LessThan0~6_combout\ & \countSl~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~6_combout\,
	datac => \signalType~q\,
	datad => \countSl~3_combout\,
	combout => \signalType~0_combout\);

-- Location: FF_X35_Y22_N31
signalType : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \signalType~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signalType~q\);

-- Location: LCCOMB_X35_Y22_N28
\countSl~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \countSl~8_combout\ = (\signalType~q\ & (!\countSl~3_combout\ & (countSl(0) $ (countSl(1))))) # (!\signalType~q\ & (countSl(0) $ ((countSl(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(0),
	datab => \signalType~q\,
	datac => countSl(1),
	datad => \countSl~3_combout\,
	combout => \countSl~8_combout\);

-- Location: FF_X35_Y22_N29
\countSl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \countSl~8_combout\,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countSl(1));

-- Location: LCCOMB_X28_Y22_N16
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (countSl(1) & (!countSl(3) & (countSl(2) $ (countSl(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(1),
	datab => countSl(2),
	datac => countSl(3),
	datad => countSl(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X28_Y22_N18
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!countSl(2) & (countSl(0) $ (countSl(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countSl(0),
	datac => countSl(2),
	datad => countSl(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X28_Y22_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (countSl(0) & (countSl(2) & !countSl(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countSl(0),
	datac => countSl(2),
	datad => countSl(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X28_Y22_N14
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!countSl(3) & ((countSl(1) & (countSl(2) $ (countSl(0)))) # (!countSl(1) & (!countSl(2) & !countSl(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(1),
	datab => countSl(2),
	datac => countSl(3),
	datad => countSl(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X28_Y22_N0
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ((!countSl(2) & countSl(1))) # (!countSl(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countSl(0),
	datac => countSl(2),
	datad => countSl(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X28_Y22_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!countSl(3) & ((countSl(1) & (countSl(2) & !countSl(0))) # (!countSl(1) & ((countSl(2)) # (!countSl(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(1),
	datab => countSl(2),
	datac => countSl(3),
	datad => countSl(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X28_Y22_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (countSl(3)) # ((countSl(1) & (!countSl(2))) # (!countSl(1) & ((countSl(2)) # (countSl(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(1),
	datab => countSl(2),
	datac => countSl(3),
	datad => countSl(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X28_Y22_N6
\ledg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ledg~0_combout\ = (countSl(2) & (!countSl(3) & ((countSl(1)) # (countSl(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countSl(1),
	datab => countSl(2),
	datac => countSl(3),
	datad => countSl(0),
	combout => \ledg~0_combout\);

-- Location: LCCOMB_X28_Y22_N8
\ledg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ledg~1_combout\ = (\ledg~0_combout\) # (\signalType~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledg~0_combout\,
	datad => \signalType~q\,
	combout => \ledg~1_combout\);

-- Location: LCCOMB_X28_Y22_N26
\ledy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ledy~0_combout\ = (\ledg~0_combout\ & !\signalType~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledg~0_combout\,
	datad => \signalType~q\,
	combout => \ledy~0_combout\);

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_ledr <= \ledr~output_o\;

ww_ledg <= \ledg~output_o\;

ww_ledy <= \ledy~output_o\;
END structure;


