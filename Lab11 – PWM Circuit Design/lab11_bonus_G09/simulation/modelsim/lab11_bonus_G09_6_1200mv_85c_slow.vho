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

-- DATE "05/31/2024 16:48:51"

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

ENTITY 	lab11_bonus_G09 IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	led : OUT std_logic
	);
END lab11_bonus_G09;

-- Design Ports Information
-- led	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab11_bonus_G09 IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \clk_count~1_combout\ : std_logic;
SIGNAL \clk_count~3_combout\ : std_logic;
SIGNAL \clk_count~5_combout\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pwm_count~1_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \pwm_count~6_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \pwm_count~4_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \pwm_count~3_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \pwm_count~5_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \pwm_count~2_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \pwm_count~0_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \duty[0]~12\ : std_logic;
SIGNAL \duty[1]~14\ : std_logic;
SIGNAL \duty[2]~16\ : std_logic;
SIGNAL \duty[3]~18\ : std_logic;
SIGNAL \duty[4]~19_combout\ : std_logic;
SIGNAL \duty[1]~13_combout\ : std_logic;
SIGNAL \duty[4]~20\ : std_logic;
SIGNAL \duty[5]~22\ : std_logic;
SIGNAL \duty[6]~24\ : std_logic;
SIGNAL \duty[7]~26\ : std_logic;
SIGNAL \duty[8]~28\ : std_logic;
SIGNAL \duty[9]~30\ : std_logic;
SIGNAL \duty[10]~31_combout\ : std_logic;
SIGNAL \duty[2]~15_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \duty[3]~17_combout\ : std_logic;
SIGNAL \duty[6]~23_combout\ : std_logic;
SIGNAL \duty[5]~21_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \clk_count~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \clk_count~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \clk_count~4_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \clk_count~6_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \duty[10]~33_combout\ : std_logic;
SIGNAL \duty[7]~25_combout\ : std_logic;
SIGNAL \duty[9]~29_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \direction~0_combout\ : std_logic;
SIGNAL \direction~1_combout\ : std_logic;
SIGNAL \direction~q\ : std_logic;
SIGNAL \duty[8]~27_combout\ : std_logic;
SIGNAL \duty[0]~11_combout\ : std_logic;
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
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \led~reg0_q\ : std_logic;
SIGNAL clk_count : std_logic_vector(31 DOWNTO 0);
SIGNAL duty : std_logic_vector(10 DOWNTO 0);
SIGNAL pwm_count : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_enable~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_enable <= enable;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;

-- Location: LCCOMB_X31_Y19_N22
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (pwm_count(8) & (\Add3~15\ $ (GND))) # (!pwm_count(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((pwm_count(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X30_Y16_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_count(4) & (\Add0~7\ $ (GND))) # (!clk_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X30_Y16_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_count(5) & (!\Add0~9\)) # (!clk_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X30_Y16_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_count(6) & (\Add0~11\ $ (GND))) # (!clk_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X30_Y16_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_count(8) & (\Add0~15\ $ (GND))) # (!clk_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X30_Y16_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_count(14) & (\Add0~27\ $ (GND))) # (!clk_count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X30_Y15_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_count(22) & (\Add0~43\ $ (GND))) # (!clk_count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X30_Y15_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (clk_count(26) & (\Add0~51\ $ (GND))) # (!clk_count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((clk_count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X30_Y15_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (clk_count(27) & (!\Add0~53\)) # (!clk_count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!clk_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X30_Y15_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (clk_count(28) & (\Add0~55\ $ (GND))) # (!clk_count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((clk_count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X30_Y15_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (clk_count(29) & (!\Add0~57\)) # (!clk_count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!clk_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X30_Y15_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (clk_count(30) & (\Add0~59\ $ (GND))) # (!clk_count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((clk_count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X30_Y15_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = clk_count(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X31_Y16_N5
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~1_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: FF_X30_Y16_N11
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: LCCOMB_X31_Y16_N16
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clk_count(7) & (clk_count(4) & (clk_count(6) & !clk_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datab => clk_count(4),
	datac => clk_count(6),
	datad => clk_count(5),
	combout => \Equal0~1_combout\);

-- Location: FF_X31_Y16_N3
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~3_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: FF_X30_Y19_N1
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~5_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: FF_X30_Y15_N13
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: FF_X30_Y15_N23
\clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(27));

-- Location: FF_X30_Y15_N25
\clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(28));

-- Location: FF_X30_Y15_N27
\clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(29));

-- Location: FF_X30_Y15_N29
\clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(30));

-- Location: FF_X30_Y15_N31
\clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(31));

-- Location: LCCOMB_X28_Y18_N8
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!clk_count(30) & (!clk_count(29) & (!clk_count(31) & !clk_count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(30),
	datab => clk_count(29),
	datac => clk_count(31),
	datad => clk_count(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X31_Y16_N10
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (duty(8)) # (duty(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => duty(8),
	datad => duty(9),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X31_Y16_N4
\clk_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~1_combout\ = (\Add0~8_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_count~1_combout\);

-- Location: LCCOMB_X31_Y16_N2
\clk_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~3_combout\ = (\Add0~16_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_count~3_combout\);

-- Location: LCCOMB_X30_Y19_N0
\clk_count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~5_combout\ = (\Add0~28_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_count~5_combout\);

-- Location: IOOBUF_X0_Y20_N9
\led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~reg0_q\,
	devoe => ww_devoe,
	o => \led~output_o\);

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

-- Location: LCCOMB_X31_Y19_N2
\pwm_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~1_combout\ = (\Add3~16_combout\ & (((!\Equal3~0_combout\) # (!\Equal3~2_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal3~2_combout\,
	datad => \Equal3~0_combout\,
	combout => \pwm_count~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X31_Y19_N3
\pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~1_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(8));

-- Location: LCCOMB_X31_Y19_N30
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (pwm_count(9) & (!pwm_count(10) & pwm_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(9),
	datac => pwm_count(10),
	datad => pwm_count(8),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X31_Y19_N6
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = pwm_count(0) $ (VCC)
-- \Add3~1\ = CARRY(pwm_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X21_Y16_N20
\pwm_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~6_combout\ = (\Add3~0_combout\ & (((!\Equal3~2_combout\) # (!\Equal3~0_combout\)) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \pwm_count~6_combout\);

-- Location: FF_X21_Y16_N21
\pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~6_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(0));

-- Location: LCCOMB_X31_Y19_N14
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (pwm_count(4) & (\Add3~7\ $ (GND))) # (!pwm_count(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((pwm_count(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X31_Y19_N16
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (pwm_count(5) & (!\Add3~9\)) # (!pwm_count(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!pwm_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X21_Y16_N18
\pwm_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~4_combout\ = (\Add3~10_combout\ & (((!\Equal3~1_combout\) # (!\Equal3~0_combout\)) # (!\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Add3~10_combout\,
	combout => \pwm_count~4_combout\);

-- Location: FF_X21_Y16_N19
\pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(5));

-- Location: LCCOMB_X31_Y19_N18
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (pwm_count(6) & (\Add3~11\ $ (GND))) # (!pwm_count(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((pwm_count(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X21_Y16_N16
\pwm_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~3_combout\ = (\Add3~12_combout\ & (((!\Equal3~1_combout\) # (!\Equal3~0_combout\)) # (!\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Add3~12_combout\,
	combout => \pwm_count~3_combout\);

-- Location: FF_X21_Y16_N17
\pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~3_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(6));

-- Location: LCCOMB_X30_Y19_N30
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (pwm_count(7) & (!pwm_count(0) & (pwm_count(5) & pwm_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(7),
	datab => pwm_count(0),
	datac => pwm_count(5),
	datad => pwm_count(6),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X31_Y19_N8
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (pwm_count(1) & (!\Add3~1\)) # (!pwm_count(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!pwm_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X31_Y19_N9
\pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~2_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(1));

-- Location: LCCOMB_X31_Y19_N10
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (pwm_count(2) & (\Add3~3\ $ (GND))) # (!pwm_count(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((pwm_count(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X31_Y19_N12
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (pwm_count(3) & (!\Add3~5\)) # (!pwm_count(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!pwm_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X31_Y19_N28
\pwm_count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~5_combout\ = (\Add3~6_combout\ & (((!\Equal3~1_combout\) # (!\Equal3~0_combout\)) # (!\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Add3~6_combout\,
	combout => \pwm_count~5_combout\);

-- Location: FF_X31_Y19_N29
\pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~5_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(3));

-- Location: FF_X31_Y19_N15
\pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~8_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(4));

-- Location: FF_X31_Y19_N11
\pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(2));

-- Location: LCCOMB_X30_Y19_N28
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!pwm_count(1) & (!pwm_count(4) & (!pwm_count(2) & pwm_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datab => pwm_count(4),
	datac => pwm_count(2),
	datad => pwm_count(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X31_Y19_N20
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (pwm_count(7) & (!\Add3~13\)) # (!pwm_count(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!pwm_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X31_Y19_N4
\pwm_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~2_combout\ = (\Add3~14_combout\ & (((!\Equal3~1_combout\) # (!\Equal3~0_combout\)) # (!\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Add3~14_combout\,
	combout => \pwm_count~2_combout\);

-- Location: FF_X31_Y19_N5
\pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~2_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(7));

-- Location: LCCOMB_X31_Y19_N24
\Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (pwm_count(9) & (!\Add3~17\)) # (!pwm_count(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!pwm_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X31_Y19_N0
\pwm_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count~0_combout\ = (\Add3~18_combout\ & (((!\Equal3~1_combout\) # (!\Equal3~0_combout\)) # (!\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Add3~18_combout\,
	combout => \pwm_count~0_combout\);

-- Location: FF_X31_Y19_N1
\pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(9));

-- Location: LCCOMB_X31_Y19_N26
\Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = pwm_count(10) $ (!\Add3~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(10),
	cin => \Add3~19\,
	combout => \Add3~20_combout\);

-- Location: FF_X31_Y19_N27
\pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(10));

-- Location: LCCOMB_X28_Y16_N8
\duty[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[0]~11_combout\ = (duty(0) & (\Add1~3_combout\ $ (VCC))) # (!duty(0) & (\Add1~3_combout\ & VCC))
-- \duty[0]~12\ = CARRY((duty(0) & \Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(0),
	datab => \Add1~3_combout\,
	datad => VCC,
	combout => \duty[0]~11_combout\,
	cout => \duty[0]~12\);

-- Location: LCCOMB_X28_Y16_N10
\duty[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[1]~13_combout\ = (duty(1) & ((\direction~q\ & (\duty[0]~12\ & VCC)) # (!\direction~q\ & (!\duty[0]~12\)))) # (!duty(1) & ((\direction~q\ & (!\duty[0]~12\)) # (!\direction~q\ & ((\duty[0]~12\) # (GND)))))
-- \duty[1]~14\ = CARRY((duty(1) & (!\direction~q\ & !\duty[0]~12\)) # (!duty(1) & ((!\duty[0]~12\) # (!\direction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(1),
	datab => \direction~q\,
	datad => VCC,
	cin => \duty[0]~12\,
	combout => \duty[1]~13_combout\,
	cout => \duty[1]~14\);

-- Location: LCCOMB_X28_Y16_N12
\duty[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[2]~15_combout\ = ((duty(2) $ (\direction~q\ $ (!\duty[1]~14\)))) # (GND)
-- \duty[2]~16\ = CARRY((duty(2) & ((\direction~q\) # (!\duty[1]~14\))) # (!duty(2) & (\direction~q\ & !\duty[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(2),
	datab => \direction~q\,
	datad => VCC,
	cin => \duty[1]~14\,
	combout => \duty[2]~15_combout\,
	cout => \duty[2]~16\);

-- Location: LCCOMB_X28_Y16_N14
\duty[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[3]~17_combout\ = (duty(3) & ((\direction~q\ & (\duty[2]~16\ & VCC)) # (!\direction~q\ & (!\duty[2]~16\)))) # (!duty(3) & ((\direction~q\ & (!\duty[2]~16\)) # (!\direction~q\ & ((\duty[2]~16\) # (GND)))))
-- \duty[3]~18\ = CARRY((duty(3) & (!\direction~q\ & !\duty[2]~16\)) # (!duty(3) & ((!\duty[2]~16\) # (!\direction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(3),
	datab => \direction~q\,
	datad => VCC,
	cin => \duty[2]~16\,
	combout => \duty[3]~17_combout\,
	cout => \duty[3]~18\);

-- Location: LCCOMB_X28_Y16_N16
\duty[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[4]~19_combout\ = ((duty(4) $ (\direction~q\ $ (!\duty[3]~18\)))) # (GND)
-- \duty[4]~20\ = CARRY((duty(4) & ((\direction~q\) # (!\duty[3]~18\))) # (!duty(4) & (\direction~q\ & !\duty[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(4),
	datab => \direction~q\,
	datad => VCC,
	cin => \duty[3]~18\,
	combout => \duty[4]~19_combout\,
	cout => \duty[4]~20\);

-- Location: FF_X28_Y16_N11
\duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[1]~13_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(1));

-- Location: LCCOMB_X28_Y16_N18
\duty[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[5]~21_combout\ = (duty(5) & ((\direction~q\ & (\duty[4]~20\ & VCC)) # (!\direction~q\ & (!\duty[4]~20\)))) # (!duty(5) & ((\direction~q\ & (!\duty[4]~20\)) # (!\direction~q\ & ((\duty[4]~20\) # (GND)))))
-- \duty[5]~22\ = CARRY((duty(5) & (!\direction~q\ & !\duty[4]~20\)) # (!duty(5) & ((!\duty[4]~20\) # (!\direction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(5),
	datab => \direction~q\,
	datad => VCC,
	cin => \duty[4]~20\,
	combout => \duty[5]~21_combout\,
	cout => \duty[5]~22\);

-- Location: LCCOMB_X28_Y16_N20
\duty[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[6]~23_combout\ = ((duty(6) $ (\direction~q\ $ (!\duty[5]~22\)))) # (GND)
-- \duty[6]~24\ = CARRY((duty(6) & ((\direction~q\) # (!\duty[5]~22\))) # (!duty(6) & (\direction~q\ & !\duty[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(6),
	datab => \direction~q\,
	datad => VCC,
	cin => \duty[5]~22\,
	combout => \duty[6]~23_combout\,
	cout => \duty[6]~24\);

-- Location: LCCOMB_X28_Y16_N22
\duty[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[7]~25_combout\ = (duty(7) & ((\direction~q\ & (\duty[6]~24\ & VCC)) # (!\direction~q\ & (!\duty[6]~24\)))) # (!duty(7) & ((\direction~q\ & (!\duty[6]~24\)) # (!\direction~q\ & ((\duty[6]~24\) # (GND)))))
-- \duty[7]~26\ = CARRY((duty(7) & (!\direction~q\ & !\duty[6]~24\)) # (!duty(7) & ((!\duty[6]~24\) # (!\direction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(7),
	datab => \direction~q\,
	datad => VCC,
	cin => \duty[6]~24\,
	combout => \duty[7]~25_combout\,
	cout => \duty[7]~26\);

-- Location: LCCOMB_X28_Y16_N24
\duty[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[8]~27_combout\ = ((duty(8) $ (\direction~q\ $ (!\duty[7]~26\)))) # (GND)
-- \duty[8]~28\ = CARRY((duty(8) & ((\direction~q\) # (!\duty[7]~26\))) # (!duty(8) & (\direction~q\ & !\duty[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(8),
	datab => \direction~q\,
	datad => VCC,
	cin => \duty[7]~26\,
	combout => \duty[8]~27_combout\,
	cout => \duty[8]~28\);

-- Location: LCCOMB_X28_Y16_N26
\duty[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[9]~29_combout\ = (duty(9) & ((\direction~q\ & (\duty[8]~28\ & VCC)) # (!\direction~q\ & (!\duty[8]~28\)))) # (!duty(9) & ((\direction~q\ & (!\duty[8]~28\)) # (!\direction~q\ & ((\duty[8]~28\) # (GND)))))
-- \duty[9]~30\ = CARRY((duty(9) & (!\direction~q\ & !\duty[8]~28\)) # (!duty(9) & ((!\duty[8]~28\) # (!\direction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(9),
	datab => \direction~q\,
	datad => VCC,
	cin => \duty[8]~28\,
	combout => \duty[9]~29_combout\,
	cout => \duty[9]~30\);

-- Location: LCCOMB_X28_Y16_N28
\duty[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~31_combout\ = \direction~q\ $ (\duty[9]~30\ $ (!duty(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \direction~q\,
	datad => duty(10),
	cin => \duty[9]~30\,
	combout => \duty[10]~31_combout\);

-- Location: FF_X28_Y16_N29
\duty[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[10]~31_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(10));

-- Location: FF_X28_Y16_N13
\duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[2]~15_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(2));

-- Location: LCCOMB_X31_Y16_N14
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!duty(0) & (!duty(1) & (!duty(10) & !duty(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(0),
	datab => duty(1),
	datac => duty(10),
	datad => duty(2),
	combout => \Equal2~0_combout\);

-- Location: FF_X28_Y16_N15
\duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[3]~17_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(3));

-- Location: FF_X28_Y16_N21
\duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[6]~23_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(6));

-- Location: FF_X28_Y16_N19
\duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[5]~21_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(5));

-- Location: LCCOMB_X31_Y16_N24
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (duty(7)) # ((duty(3)) # ((duty(6)) # (duty(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(7),
	datab => duty(3),
	datac => duty(6),
	datad => duty(5),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X31_Y16_N12
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~2_combout\) # (((duty(4)) # (\Equal2~1_combout\)) # (!\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~0_combout\,
	datac => duty(4),
	datad => \Equal2~1_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X31_Y16_N22
\clk_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~2_combout\ = (\Add0~12_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_count~2_combout\);

-- Location: FF_X31_Y16_N23
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~2_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: LCCOMB_X30_Y16_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_count(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X31_Y16_N8
\clk_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~0_combout\ = (\Add0~0_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_count~0_combout\);

-- Location: FF_X31_Y16_N9
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X30_Y16_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_count(1) & (!\Add0~1\)) # (!clk_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X30_Y16_N3
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: LCCOMB_X30_Y16_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_count(2) & (\Add0~3\ $ (GND))) # (!clk_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X30_Y16_N5
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: LCCOMB_X30_Y16_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_count(3) & (!\Add0~5\)) # (!clk_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X30_Y16_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_count(7) & (!\Add0~13\)) # (!clk_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X30_Y16_N15
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X30_Y16_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_count(9) & (!\Add0~17\)) # (!clk_count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X30_Y16_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_count(10) & (\Add0~19\ $ (GND))) # (!clk_count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X30_Y16_N21
\clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(10));

-- Location: LCCOMB_X31_Y16_N20
\clk_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~4_combout\ = (\Add0~18_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_count~4_combout\);

-- Location: FF_X31_Y16_N21
\clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(9));

-- Location: LCCOMB_X30_Y16_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_count(11) & (!\Add0~21\)) # (!clk_count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X30_Y16_N23
\clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(11));

-- Location: LCCOMB_X31_Y16_N30
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_count(8) & (!clk_count(10) & (clk_count(9) & !clk_count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(8),
	datab => clk_count(10),
	datac => clk_count(9),
	datad => clk_count(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X30_Y16_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_count(12) & (\Add0~23\ $ (GND))) # (!clk_count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X30_Y16_N25
\clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(12));

-- Location: LCCOMB_X30_Y16_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_count(13) & (!\Add0~25\)) # (!clk_count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X30_Y16_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_count(15) & (!\Add0~29\)) # (!clk_count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X30_Y19_N24
\clk_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count~6_combout\ = (\Add0~30_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Equal0~10_combout\,
	combout => \clk_count~6_combout\);

-- Location: FF_X30_Y19_N25
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count~6_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: FF_X30_Y16_N27
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: LCCOMB_X30_Y19_N26
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clk_count(14) & (clk_count(15) & (!clk_count(12) & !clk_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datab => clk_count(15),
	datac => clk_count(12),
	datad => clk_count(13),
	combout => \Equal0~3_combout\);

-- Location: FF_X30_Y16_N7
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X31_Y16_N26
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_count(0) & (!clk_count(2) & (!clk_count(3) & !clk_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(0),
	datab => clk_count(2),
	datac => clk_count(3),
	datad => clk_count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y16_N2
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y15_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_count(16) & (\Add0~31\ $ (GND))) # (!clk_count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X30_Y15_N1
\clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(16));

-- Location: LCCOMB_X30_Y15_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_count(17) & (!\Add0~33\)) # (!clk_count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X30_Y15_N3
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: LCCOMB_X30_Y15_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_count(18) & (\Add0~35\ $ (GND))) # (!clk_count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X30_Y15_N5
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: LCCOMB_X30_Y15_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_count(19) & (!\Add0~37\)) # (!clk_count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X30_Y15_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_count(20) & (\Add0~39\ $ (GND))) # (!clk_count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X30_Y15_N9
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: LCCOMB_X30_Y15_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_count(21) & (!\Add0~41\)) # (!clk_count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X30_Y15_N11
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: LCCOMB_X30_Y15_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clk_count(23) & (!\Add0~45\)) # (!clk_count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X30_Y15_N15
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X29_Y17_N0
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!clk_count(22) & (!clk_count(21) & (!clk_count(20) & !clk_count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(22),
	datab => clk_count(21),
	datac => clk_count(20),
	datad => clk_count(23),
	combout => \Equal0~6_combout\);

-- Location: FF_X30_Y15_N7
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X29_Y21_N0
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_count(19) & !clk_count(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_count(19),
	datad => clk_count(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X28_Y16_N4
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!clk_count(17) & (\Equal0~6_combout\ & (\Equal0~5_combout\ & !clk_count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(17),
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => clk_count(16),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X30_Y15_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (clk_count(24) & (\Add0~47\ $ (GND))) # (!clk_count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((clk_count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X30_Y15_N17
\clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(24));

-- Location: LCCOMB_X30_Y15_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (clk_count(25) & (!\Add0~49\)) # (!clk_count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!clk_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X30_Y15_N19
\clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(25));

-- Location: FF_X30_Y15_N21
\clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(26));

-- Location: LCCOMB_X9_Y14_N16
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!clk_count(27) & (!clk_count(24) & (!clk_count(26) & !clk_count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(27),
	datab => clk_count(24),
	datac => clk_count(26),
	datad => clk_count(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X28_Y16_N6
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~4_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X28_Y16_N30
\duty[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~33_combout\ = (\enable~input_o\ & (\Equal0~10_combout\ & ((\Equal2~3_combout\) # (!\direction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \direction~q\,
	datac => \Equal2~3_combout\,
	datad => \Equal0~10_combout\,
	combout => \duty[10]~33_combout\);

-- Location: FF_X28_Y16_N17
\duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[4]~19_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(4));

-- Location: FF_X28_Y16_N23
\duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[7]~25_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(7));

-- Location: FF_X28_Y16_N27
\duty[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[9]~29_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(9));

-- Location: LCCOMB_X31_Y16_N28
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = ((!duty(9)) # (!duty(7))) # (!duty(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => duty(8),
	datac => duty(7),
	datad => duty(9),
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X31_Y16_N18
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (((\direction~q\) # (!duty(6))) # (!duty(5))) # (!duty(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(3),
	datab => duty(5),
	datac => duty(6),
	datad => \direction~q\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X28_Y16_N0
\Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = ((duty(4)) # ((\Add1~2_combout\) # (\Add1~1_combout\))) # (!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => duty(4),
	datac => \Add1~2_combout\,
	datad => \Add1~1_combout\,
	combout => \Add1~3_combout\);

-- Location: LCCOMB_X31_Y16_N6
\direction~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \direction~0_combout\ = (\enable~input_o\ & \Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datad => \Equal0~10_combout\,
	combout => \direction~0_combout\);

-- Location: LCCOMB_X31_Y16_N0
\direction~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \direction~1_combout\ = (\direction~0_combout\ & (((\Equal2~3_combout\ & \direction~q\)) # (!\Add1~3_combout\))) # (!\direction~0_combout\ & (((\direction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Add1~3_combout\,
	datac => \direction~q\,
	datad => \direction~0_combout\,
	combout => \direction~1_combout\);

-- Location: FF_X31_Y16_N1
direction : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \direction~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \direction~q\);

-- Location: FF_X28_Y16_N25
\duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[8]~27_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(8));

-- Location: FF_X28_Y16_N9
\duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[0]~11_combout\,
	ena => \duty[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(0));

-- Location: LCCOMB_X30_Y19_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!pwm_count(0) & duty(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(0),
	datab => duty(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X30_Y19_N4
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((duty(1) & (pwm_count(1) & !\LessThan0~1_cout\)) # (!duty(1) & ((pwm_count(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(1),
	datab => pwm_count(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X30_Y19_N6
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((duty(2) & ((!\LessThan0~3_cout\) # (!pwm_count(2)))) # (!duty(2) & (!pwm_count(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(2),
	datab => pwm_count(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X30_Y19_N8
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((duty(3) & (pwm_count(3) & !\LessThan0~5_cout\)) # (!duty(3) & ((pwm_count(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(3),
	datab => pwm_count(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X30_Y19_N10
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((duty(4) & ((!\LessThan0~7_cout\) # (!pwm_count(4)))) # (!duty(4) & (!pwm_count(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(4),
	datab => pwm_count(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X30_Y19_N12
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((duty(5) & (pwm_count(5) & !\LessThan0~9_cout\)) # (!duty(5) & ((pwm_count(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(5),
	datab => pwm_count(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X30_Y19_N14
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((pwm_count(6) & (duty(6) & !\LessThan0~11_cout\)) # (!pwm_count(6) & ((duty(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datab => duty(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X30_Y19_N16
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((pwm_count(7) & ((!\LessThan0~13_cout\) # (!duty(7)))) # (!pwm_count(7) & (!duty(7) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(7),
	datab => duty(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X30_Y19_N18
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((pwm_count(8) & (duty(8) & !\LessThan0~15_cout\)) # (!pwm_count(8) & ((duty(8)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(8),
	datab => duty(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X30_Y19_N20
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((duty(9) & (pwm_count(9) & !\LessThan0~17_cout\)) # (!duty(9) & ((pwm_count(9)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(9),
	datab => pwm_count(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X30_Y19_N22
\LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = (duty(10) & ((!pwm_count(10)) # (!\LessThan0~19_cout\))) # (!duty(10) & (!\LessThan0~19_cout\ & !pwm_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(10),
	datad => pwm_count(10),
	cin => \LessThan0~19_cout\,
	combout => \LessThan0~20_combout\);

-- Location: FF_X30_Y19_N23
\led~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~20_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led~reg0_q\);

ww_led <= \led~output_o\;
END structure;


