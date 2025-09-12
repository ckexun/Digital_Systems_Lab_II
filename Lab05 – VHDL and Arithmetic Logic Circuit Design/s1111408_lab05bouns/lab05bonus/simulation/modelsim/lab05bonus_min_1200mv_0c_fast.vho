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

-- DATE "03/27/2024 23:21:40"

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

ENTITY 	lab05bonus IS
    PORT (
	Preset : IN std_logic;
	SIN : IN std_logic;
	Clear : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab05bonus;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Preset	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIN	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab05bonus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Preset : std_logic;
SIGNAL ww_SIN : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JK0|Q_int~clear_lutclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Preset~input_o\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \JK0|Q_int~2_combout\ : std_logic;
SIGNAL \JK0|Q_int~latch_combout\ : std_logic;
SIGNAL \SIN~input_o\ : std_logic;
SIGNAL \JK0|Q_int~data_lut_combout\ : std_logic;
SIGNAL \JK0|Q_int~clear_lut_combout\ : std_logic;
SIGNAL \JK0|Q_int~clear_lutclkctrl_outclk\ : std_logic;
SIGNAL \JK0|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK0|Q_int~head_lut_combout\ : std_logic;
SIGNAL \Q~0_combout\ : std_logic;
SIGNAL \JK1|Q_int~data_lut_combout\ : std_logic;
SIGNAL \JK1|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK1|Q_int~head_lut_combout\ : std_logic;
SIGNAL \Q~1_combout\ : std_logic;
SIGNAL \JK2|Q_int~data_lut_combout\ : std_logic;
SIGNAL \JK2|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK2|Q_int~head_lut_combout\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \JK3|Q_int~data_lut_combout\ : std_logic;
SIGNAL \JK3|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK3|Q_int~head_lut_combout\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \JK0|ALT_INV_Q_int~clear_lutclkctrl_outclk\ : std_logic;

BEGIN

ww_Preset <= Preset;
ww_SIN <= SIN;
ww_Clear <= Clear;
ww_CLK <= CLK;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\JK0|Q_int~clear_lutclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \JK0|Q_int~clear_lut_combout\);
\JK0|ALT_INV_Q_int~clear_lutclkctrl_outclk\ <= NOT \JK0|Q_int~clear_lutclkctrl_outclk\;

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y4_N16
\Q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~0_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\Q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~1_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\Q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~2_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~3_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOIBUF_X0_Y4_N8
\Preset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Preset,
	o => \Preset~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\Clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\JK0|Q_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK0|Q_int~2_combout\ = (\Preset~input_o\ & !\Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datad => \Clear~input_o\,
	combout => \JK0|Q_int~2_combout\);

-- Location: LCCOMB_X1_Y4_N20
\JK0|Q_int~latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK0|Q_int~latch_combout\ = (!\JK0|Q_int~2_combout\ & ((\JK0|Q_int~latch_combout\) # (!\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datac => \JK0|Q_int~2_combout\,
	datad => \JK0|Q_int~latch_combout\,
	combout => \JK0|Q_int~latch_combout\);

-- Location: IOIBUF_X9_Y0_N15
\SIN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIN,
	o => \SIN~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\JK0|Q_int~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK0|Q_int~data_lut_combout\ = \JK0|Q_int~latch_combout\ $ (\SIN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JK0|Q_int~latch_combout\,
	datad => \SIN~input_o\,
	combout => \JK0|Q_int~data_lut_combout\);

-- Location: LCCOMB_X1_Y4_N8
\JK0|Q_int~clear_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK0|Q_int~clear_lut_combout\ = (\JK0|Q_int~2_combout\) # (!\Preset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datac => \JK0|Q_int~2_combout\,
	combout => \JK0|Q_int~clear_lut_combout\);

-- Location: CLKCTRL_G2
\JK0|Q_int~clear_lutclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \JK0|Q_int~clear_lutclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \JK0|Q_int~clear_lutclkctrl_outclk\);

-- Location: FF_X1_Y4_N25
\JK0|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \JK0|Q_int~data_lut_combout\,
	clrn => \JK0|ALT_INV_Q_int~clear_lutclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK0|Q_int~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N24
\JK0|Q_int~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK0|Q_int~head_lut_combout\ = (!\JK0|Q_int~2_combout\ & ((\JK0|Q_int~latch_combout\ $ (\JK0|Q_int~_emulated_q\)) # (!\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK0|Q_int~2_combout\,
	datab => \JK0|Q_int~latch_combout\,
	datac => \JK0|Q_int~_emulated_q\,
	datad => \Preset~input_o\,
	combout => \JK0|Q_int~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N16
\Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~0_combout\ = (\Clear~input_o\ & ((\JK0|Q_int~head_lut_combout\) # (!\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datab => \JK0|Q_int~head_lut_combout\,
	datad => \Clear~input_o\,
	combout => \Q~0_combout\);

-- Location: LCCOMB_X1_Y4_N18
\JK1|Q_int~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK1|Q_int~data_lut_combout\ = \JK0|Q_int~latch_combout\ $ (\JK0|Q_int~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JK0|Q_int~latch_combout\,
	datad => \JK0|Q_int~head_lut_combout\,
	combout => \JK1|Q_int~data_lut_combout\);

-- Location: FF_X1_Y4_N19
\JK1|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \JK1|Q_int~data_lut_combout\,
	clrn => \JK0|ALT_INV_Q_int~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK1|Q_int~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N28
\JK1|Q_int~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK1|Q_int~head_lut_combout\ = (!\JK0|Q_int~2_combout\ & ((\JK0|Q_int~latch_combout\ $ (\JK1|Q_int~_emulated_q\)) # (!\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datab => \JK0|Q_int~latch_combout\,
	datac => \JK0|Q_int~2_combout\,
	datad => \JK1|Q_int~_emulated_q\,
	combout => \JK1|Q_int~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N10
\Q~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~1_combout\ = (\Clear~input_o\ & ((\JK1|Q_int~head_lut_combout\) # (!\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datab => \JK1|Q_int~head_lut_combout\,
	datad => \Clear~input_o\,
	combout => \Q~1_combout\);

-- Location: LCCOMB_X1_Y4_N6
\JK2|Q_int~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK2|Q_int~data_lut_combout\ = \JK0|Q_int~latch_combout\ $ (\JK1|Q_int~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JK0|Q_int~latch_combout\,
	datad => \JK1|Q_int~head_lut_combout\,
	combout => \JK2|Q_int~data_lut_combout\);

-- Location: FF_X1_Y4_N7
\JK2|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \JK2|Q_int~data_lut_combout\,
	clrn => \JK0|ALT_INV_Q_int~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK2|Q_int~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N0
\JK2|Q_int~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK2|Q_int~head_lut_combout\ = (!\JK0|Q_int~2_combout\ & ((\JK0|Q_int~latch_combout\ $ (\JK2|Q_int~_emulated_q\)) # (!\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datab => \JK0|Q_int~latch_combout\,
	datac => \JK0|Q_int~2_combout\,
	datad => \JK2|Q_int~_emulated_q\,
	combout => \JK2|Q_int~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N4
\Q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = (\Clear~input_o\ & ((\JK2|Q_int~head_lut_combout\) # (!\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datab => \JK2|Q_int~head_lut_combout\,
	datad => \Clear~input_o\,
	combout => \Q~2_combout\);

-- Location: LCCOMB_X1_Y4_N2
\JK3|Q_int~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK3|Q_int~data_lut_combout\ = \JK0|Q_int~latch_combout\ $ (\JK2|Q_int~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JK0|Q_int~latch_combout\,
	datad => \JK2|Q_int~head_lut_combout\,
	combout => \JK3|Q_int~data_lut_combout\);

-- Location: FF_X1_Y4_N3
\JK3|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \JK3|Q_int~data_lut_combout\,
	clrn => \JK0|ALT_INV_Q_int~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK3|Q_int~_emulated_q\);

-- Location: LCCOMB_X1_Y4_N12
\JK3|Q_int~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JK3|Q_int~head_lut_combout\ = (!\JK0|Q_int~2_combout\ & ((\JK0|Q_int~latch_combout\ $ (\JK3|Q_int~_emulated_q\)) # (!\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datab => \JK0|Q_int~latch_combout\,
	datac => \JK0|Q_int~2_combout\,
	datad => \JK3|Q_int~_emulated_q\,
	combout => \JK3|Q_int~head_lut_combout\);

-- Location: LCCOMB_X1_Y4_N30
\Q~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = (\Clear~input_o\ & ((\JK3|Q_int~head_lut_combout\) # (!\Preset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preset~input_o\,
	datab => \Clear~input_o\,
	datad => \JK3|Q_int~head_lut_combout\,
	combout => \Q~3_combout\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


