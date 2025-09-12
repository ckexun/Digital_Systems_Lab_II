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

-- DATE "05/02/2024 16:58:28"

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

ENTITY 	lab08_1 IS
    PORT (
	clrn : IN std_logic;
	clk : IN std_logic;
	Ldn : IN std_logic;
	Sh : IN std_logic;
	Di : IN std_logic;
	D3 : IN std_logic;
	D2 : IN std_logic;
	D1 : IN std_logic;
	D0 : IN std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic
	);
END lab08_1;

-- Design Ports Information
-- Q3	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Di	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ldn	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clrn	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sh	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab08_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clrn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Ldn : std_logic;
SIGNAL ww_Sh : std_logic;
SIGNAL ww_Di : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clrn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Di~input_o\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \clrn~input_o\ : std_logic;
SIGNAL \clrn~inputclkctrl_outclk\ : std_logic;
SIGNAL \Sh~input_o\ : std_logic;
SIGNAL \tmp[3]~1_combout\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \Ldn~input_o\ : std_logic;
SIGNAL \tmp~2_combout\ : std_logic;
SIGNAL \tmp~3_combout\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \tmp~4_combout\ : std_logic;
SIGNAL tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clrn~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clrn <= clrn;
ww_clk <= clk;
ww_Ldn <= Ldn;
ww_Sh <= Sh;
ww_Di <= Di;
ww_D3 <= D3;
ww_D2 <= D2;
ww_D1 <= D1;
ww_D0 <= D0;
Q3 <= ww_Q3;
Q2 <= ww_Q2;
Q1 <= ww_Q1;
Q0 <= ww_Q0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clrn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clrn~input_o\);
\ALT_INV_clrn~inputclkctrl_outclk\ <= NOT \clrn~inputclkctrl_outclk\;

-- Location: IOIBUF_X11_Y0_N1
\D1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: IOOBUF_X0_Y25_N2
\Q3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(3),
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Q2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(2),
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Q1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(1),
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\Q0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(0),
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X5_Y29_N1
\Di~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Di,
	o => \Di~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\D3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

-- Location: LCCOMB_X6_Y22_N24
\tmp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = (\Ldn~input_o\ & ((\D3~input_o\))) # (!\Ldn~input_o\ & (\Di~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ldn~input_o\,
	datab => \Di~input_o\,
	datac => \D3~input_o\,
	combout => \tmp~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\clrn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clrn,
	o => \clrn~input_o\);

-- Location: CLKCTRL_G2
\clrn~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clrn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clrn~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N1
\Sh~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sh,
	o => \Sh~input_o\);

-- Location: LCCOMB_X6_Y22_N0
\tmp[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[3]~1_combout\ = (\Ldn~input_o\) # (\Sh~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ldn~input_o\,
	datac => \Sh~input_o\,
	combout => \tmp[3]~1_combout\);

-- Location: FF_X6_Y22_N25
\tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~0_combout\,
	clrn => \ALT_INV_clrn~inputclkctrl_outclk\,
	ena => \tmp[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(3));

-- Location: IOIBUF_X0_Y24_N1
\D2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: IOIBUF_X41_Y22_N15
\Ldn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ldn,
	o => \Ldn~input_o\);

-- Location: LCCOMB_X6_Y22_N18
\tmp~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp~2_combout\ = (\Ldn~input_o\ & (\D2~input_o\)) # (!\Ldn~input_o\ & ((tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2~input_o\,
	datac => \Ldn~input_o\,
	datad => tmp(3),
	combout => \tmp~2_combout\);

-- Location: FF_X6_Y22_N19
\tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~2_combout\,
	clrn => \ALT_INV_clrn~inputclkctrl_outclk\,
	ena => \tmp[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(2));

-- Location: LCCOMB_X6_Y22_N12
\tmp~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp~3_combout\ = (\Ldn~input_o\ & (\D1~input_o\)) # (!\Ldn~input_o\ & ((tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datac => \Ldn~input_o\,
	datad => tmp(2),
	combout => \tmp~3_combout\);

-- Location: FF_X6_Y22_N13
\tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~3_combout\,
	clrn => \ALT_INV_clrn~inputclkctrl_outclk\,
	ena => \tmp[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(1));

-- Location: IOIBUF_X3_Y29_N8
\D0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: LCCOMB_X6_Y22_N6
\tmp~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp~4_combout\ = (\Ldn~input_o\ & (\D0~input_o\)) # (!\Ldn~input_o\ & ((tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D0~input_o\,
	datac => \Ldn~input_o\,
	datad => tmp(1),
	combout => \tmp~4_combout\);

-- Location: FF_X6_Y22_N7
\tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tmp~4_combout\,
	clrn => \ALT_INV_clrn~inputclkctrl_outclk\,
	ena => \tmp[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(0));

ww_Q3 <= \Q3~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;
END structure;


