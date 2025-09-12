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

-- DATE "03/22/2024 17:21:13"

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

ENTITY 	lab04 IS
    PORT (
	DIN : IN std_logic;
	CLK : IN std_logic;
	S : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab04;

-- Design Ports Information
-- S[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab04 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \DFF0|Q_int~q\ : std_logic;
SIGNAL \DFF1|Q_int~feeder_combout\ : std_logic;
SIGNAL \DFF1|Q_int~q\ : std_logic;
SIGNAL \DFF2|Q_int~feeder_combout\ : std_logic;
SIGNAL \DFF2|Q_int~q\ : std_logic;
SIGNAL \DFF3|Q_int~feeder_combout\ : std_logic;
SIGNAL \DFF3|Q_int~q\ : std_logic;
SIGNAL \DFF4|Q_int~feeder_combout\ : std_logic;
SIGNAL \DFF4|Q_int~q\ : std_logic;
SIGNAL \DFF5|Q_int~feeder_combout\ : std_logic;
SIGNAL \DFF5|Q_int~q\ : std_logic;
SIGNAL \DFF6|Q_int~feeder_combout\ : std_logic;
SIGNAL \DFF6|Q_int~q\ : std_logic;
SIGNAL \DFF7|Q_int~feeder_combout\ : std_logic;
SIGNAL \DFF7|Q_int~q\ : std_logic;

BEGIN

ww_DIN <= DIN;
ww_CLK <= CLK;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X7_Y0_N23
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DFF0|Q_int~q\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DFF1|Q_int~q\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DFF2|Q_int~q\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DFF3|Q_int~q\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DFF4|Q_int~q\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DFF5|Q_int~q\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DFF6|Q_int~q\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\S[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DFF7|Q_int~q\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

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

-- Location: IOIBUF_X0_Y23_N1
\DIN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN,
	o => \DIN~input_o\);

-- Location: FF_X1_Y26_N25
\DFF0|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF0|Q_int~q\);

-- Location: LCCOMB_X1_Y26_N10
\DFF1|Q_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF1|Q_int~feeder_combout\ = \DFF0|Q_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF0|Q_int~q\,
	combout => \DFF1|Q_int~feeder_combout\);

-- Location: FF_X1_Y26_N11
\DFF1|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DFF1|Q_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1|Q_int~q\);

-- Location: LCCOMB_X1_Y26_N28
\DFF2|Q_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF2|Q_int~feeder_combout\ = \DFF1|Q_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF1|Q_int~q\,
	combout => \DFF2|Q_int~feeder_combout\);

-- Location: FF_X1_Y26_N29
\DFF2|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DFF2|Q_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF2|Q_int~q\);

-- Location: LCCOMB_X1_Y26_N6
\DFF3|Q_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF3|Q_int~feeder_combout\ = \DFF2|Q_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF2|Q_int~q\,
	combout => \DFF3|Q_int~feeder_combout\);

-- Location: FF_X1_Y26_N7
\DFF3|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DFF3|Q_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF3|Q_int~q\);

-- Location: LCCOMB_X1_Y26_N0
\DFF4|Q_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF4|Q_int~feeder_combout\ = \DFF3|Q_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF3|Q_int~q\,
	combout => \DFF4|Q_int~feeder_combout\);

-- Location: FF_X1_Y26_N1
\DFF4|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DFF4|Q_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF4|Q_int~q\);

-- Location: LCCOMB_X1_Y26_N2
\DFF5|Q_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF5|Q_int~feeder_combout\ = \DFF4|Q_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF4|Q_int~q\,
	combout => \DFF5|Q_int~feeder_combout\);

-- Location: FF_X1_Y26_N3
\DFF5|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DFF5|Q_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF5|Q_int~q\);

-- Location: LCCOMB_X1_Y26_N12
\DFF6|Q_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF6|Q_int~feeder_combout\ = \DFF5|Q_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF5|Q_int~q\,
	combout => \DFF6|Q_int~feeder_combout\);

-- Location: FF_X1_Y26_N13
\DFF6|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DFF6|Q_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF6|Q_int~q\);

-- Location: LCCOMB_X1_Y26_N22
\DFF7|Q_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF7|Q_int~feeder_combout\ = \DFF6|Q_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF6|Q_int~q\,
	combout => \DFF7|Q_int~feeder_combout\);

-- Location: FF_X1_Y26_N23
\DFF7|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DFF7|Q_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF7|Q_int~q\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;
END structure;


