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

-- DATE "03/01/2024 16:47:02"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab02 IS
    PORT (
	Q0 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Enable : IN std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic
	);
END lab02;

-- Design Ports Information
-- Q0	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q6	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q7	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_Q5 : std_logic;
SIGNAL ww_Q6 : std_logic;
SIGNAL ww_Q7 : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q4~output_o\ : std_logic;
SIGNAL \Q5~output_o\ : std_logic;
SIGNAL \Q6~output_o\ : std_logic;
SIGNAL \Q7~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst32~combout\ : std_logic;
SIGNAL \inst33~combout\ : std_logic;
SIGNAL \inst34~combout\ : std_logic;
SIGNAL \inst35~combout\ : std_logic;
SIGNAL \inst36~combout\ : std_logic;
SIGNAL \inst37~combout\ : std_logic;
SIGNAL \inst38~combout\ : std_logic;
SIGNAL \inst39~combout\ : std_logic;

BEGIN

Q0 <= ww_Q0;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_Enable <= Enable;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
Q3 <= ww_Q3;
Q4 <= ww_Q4;
Q5 <= ww_Q5;
Q6 <= ww_Q6;
Q7 <= ww_Q7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y26_N16
\Q0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\Q1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33~combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\Q2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34~combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\Q3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35~combout\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\Q4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36~combout\,
	devoe => ww_devoe,
	o => \Q4~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\Q5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst37~combout\,
	devoe => ww_devoe,
	o => \Q5~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\Q6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38~combout\,
	devoe => ww_devoe,
	o => \Q6~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\Q7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39~combout\,
	devoe => ww_devoe,
	o => \Q7~output_o\);

-- Location: IOIBUF_X0_Y25_N1
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\Enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X1_Y26_N16
inst32 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~combout\ = (!\A~input_o\ & (\Enable~input_o\ & (!\B~input_o\ & !\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Enable~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \inst32~combout\);

-- Location: LCCOMB_X1_Y26_N10
inst33 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33~combout\ = (\A~input_o\ & (\Enable~input_o\ & (!\B~input_o\ & !\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Enable~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \inst33~combout\);

-- Location: LCCOMB_X1_Y26_N20
inst34 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst34~combout\ = (!\A~input_o\ & (\Enable~input_o\ & (\B~input_o\ & !\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Enable~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \inst34~combout\);

-- Location: LCCOMB_X1_Y26_N30
inst35 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst35~combout\ = (\A~input_o\ & (\Enable~input_o\ & (\B~input_o\ & !\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Enable~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \inst35~combout\);

-- Location: LCCOMB_X1_Y26_N8
inst36 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst36~combout\ = (!\A~input_o\ & (\Enable~input_o\ & (!\B~input_o\ & \C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Enable~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \inst36~combout\);

-- Location: LCCOMB_X1_Y26_N2
inst37 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst37~combout\ = (\A~input_o\ & (\Enable~input_o\ & (!\B~input_o\ & \C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Enable~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \inst37~combout\);

-- Location: LCCOMB_X1_Y26_N4
inst38 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst38~combout\ = (!\A~input_o\ & (\Enable~input_o\ & (\B~input_o\ & \C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Enable~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \inst38~combout\);

-- Location: LCCOMB_X1_Y26_N14
inst39 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst39~combout\ = (\A~input_o\ & (\Enable~input_o\ & (\B~input_o\ & \C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Enable~input_o\,
	datac => \B~input_o\,
	datad => \C~input_o\,
	combout => \inst39~combout\);

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q3 <= \Q3~output_o\;

ww_Q4 <= \Q4~output_o\;

ww_Q5 <= \Q5~output_o\;

ww_Q6 <= \Q6~output_o\;

ww_Q7 <= \Q7~output_o\;
END structure;


