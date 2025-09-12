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

-- DATE "03/11/2024 17:14:21"

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

ENTITY 	s1111408_lab03b IS
    PORT (
	C0 : OUT std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	C1 : OUT std_logic;
	B1 : IN std_logic;
	A1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	\0\ : IN std_logic;
	C2 : OUT std_logic;
	A2 : IN std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic
	);
END s1111408_lab03b;

-- Design Ports Information
-- C0	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C5	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C6	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 0	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF s1111408_lab03b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL \ww_0\ : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_C3 : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL ww_C5 : std_logic;
SIGNAL ww_C6 : std_logic;
SIGNAL \inst|inst7~combout\ : std_logic;
SIGNAL \inst9|inst7~combout\ : std_logic;
SIGNAL \C0~output_o\ : std_logic;
SIGNAL \C1~output_o\ : std_logic;
SIGNAL \C2~output_o\ : std_logic;
SIGNAL \C3~output_o\ : std_logic;
SIGNAL \C4~output_o\ : std_logic;
SIGNAL \C5~output_o\ : std_logic;
SIGNAL \C6~output_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst|inst|inst22~0_combout\ : std_logic;
SIGNAL \0~input_o\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst9|inst|inst21~0_combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst|inst|inst14~combout\ : std_logic;
SIGNAL \inst9|inst|inst21~1_combout\ : std_logic;
SIGNAL \inst9|inst|inst22~combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \inst|inst|inst12~combout\ : std_logic;
SIGNAL \inst|inst1|inst22~combout\ : std_logic;
SIGNAL \inst9|inst|inst12~combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst|inst2|inst22~0_combout\ : std_logic;
SIGNAL \inst9|inst|inst14~combout\ : std_logic;
SIGNAL \inst9|inst1|inst22~0_combout\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst|inst2|inst22~combout\ : std_logic;
SIGNAL \inst9|inst1|inst15~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst15~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst15~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst22~0_combout\ : std_logic;
SIGNAL \inst9|inst2|inst22~combout\ : std_logic;
SIGNAL \inst|inst3|inst15~0_combout\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \inst9|inst2|inst15~0_combout\ : std_logic;
SIGNAL \inst9|inst3|inst22~combout\ : std_logic;
SIGNAL \inst9|inst3|inst15~0_combout\ : std_logic;

BEGIN

C0 <= ww_C0;
ww_A0 <= A0;
ww_B0 <= B0;
C1 <= ww_C1;
ww_B1 <= B1;
ww_A1 <= A1;
ww_B2 <= B2;
ww_B3 <= B3;
\ww_0\ <= \0\;
C2 <= ww_C2;
ww_A2 <= A2;
C3 <= ww_C3;
C4 <= ww_C4;
C5 <= ww_C5;
C6 <= ww_C6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X4_Y14_N10
\inst|inst7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst7~combout\ = \0~input_o\ $ (((\B1~input_o\ & \A1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \0~input_o\,
	datab => \B1~input_o\,
	datac => \A1~input_o\,
	combout => \inst|inst7~combout\);

-- Location: LCCOMB_X4_Y14_N14
\inst9|inst7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst7~combout\ = \0~input_o\ $ (((\A2~input_o\ & \B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \B1~input_o\,
	datac => \0~input_o\,
	combout => \inst9|inst7~combout\);

-- Location: IOOBUF_X0_Y13_N2
\C0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \C0~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\C1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst22~0_combout\,
	devoe => ww_devoe,
	o => \C1~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\C2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst|inst22~combout\,
	devoe => ww_devoe,
	o => \C2~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\C3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|inst22~0_combout\,
	devoe => ww_devoe,
	o => \C3~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\C4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|inst22~combout\,
	devoe => ww_devoe,
	o => \C4~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\C5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|inst22~combout\,
	devoe => ww_devoe,
	o => \C5~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\C6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|inst15~0_combout\,
	devoe => ww_devoe,
	o => \C6~output_o\);

-- Location: IOIBUF_X0_Y22_N8
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X4_Y14_N8
inst1 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\B0~input_o\ & \A0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datac => \A0~input_o\,
	combout => \inst1~combout\);

-- Location: IOIBUF_X0_Y20_N8
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X4_Y14_N2
\inst|inst|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst22~0_combout\ = (\B0~input_o\ & (\A1~input_o\ $ (((\B1~input_o\ & \A0~input_o\))))) # (!\B0~input_o\ & (\B1~input_o\ & ((\A0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datab => \B1~input_o\,
	datac => \A1~input_o\,
	datad => \A0~input_o\,
	combout => \inst|inst|inst22~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_0\,
	o => \0~input_o\);

-- Location: LCCOMB_X4_Y14_N28
inst3 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\B2~input_o\ & \A0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datac => \A0~input_o\,
	combout => \inst3~combout\);

-- Location: LCCOMB_X4_Y14_N30
\inst9|inst|inst21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst21~0_combout\ = (\A2~input_o\ & (\B0~input_o\ $ (((\A1~input_o\ & \B1~input_o\))))) # (!\A2~input_o\ & (\A1~input_o\ & ((\B1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \A1~input_o\,
	datac => \B0~input_o\,
	datad => \B1~input_o\,
	combout => \inst9|inst|inst21~0_combout\);

-- Location: LCCOMB_X4_Y14_N24
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\A0~input_o\ & \B1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A0~input_o\,
	datad => \B1~input_o\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X4_Y14_N12
\inst|inst|inst14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst14~combout\ = (\0~input_o\ & (\inst2~combout\ $ (((!\B0~input_o\) # (!\A1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \0~input_o\,
	datab => \A1~input_o\,
	datac => \B0~input_o\,
	datad => \inst2~combout\,
	combout => \inst|inst|inst14~combout\);

-- Location: LCCOMB_X4_Y14_N6
\inst9|inst|inst21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst21~1_combout\ = \inst3~combout\ $ (\inst9|inst|inst21~0_combout\ $ (((\inst|inst|inst12~combout\) # (\inst|inst|inst14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst12~combout\,
	datab => \inst3~combout\,
	datac => \inst9|inst|inst21~0_combout\,
	datad => \inst|inst|inst14~combout\,
	combout => \inst9|inst|inst21~1_combout\);

-- Location: LCCOMB_X8_Y21_N0
\inst9|inst|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst22~combout\ = \0~input_o\ $ (\inst9|inst|inst21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \0~input_o\,
	datad => \inst9|inst|inst21~1_combout\,
	combout => \inst9|inst|inst22~combout\);

-- Location: IOIBUF_X0_Y22_N15
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X4_Y14_N0
inst12 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~combout\ = (\B1~input_o\ & \A2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1~input_o\,
	datad => \A2~input_o\,
	combout => \inst12~combout\);

-- Location: LCCOMB_X4_Y14_N26
\inst|inst|inst12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst12~combout\ = (\inst2~combout\ & (\0~input_o\ $ (((\A1~input_o\ & \B0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \0~input_o\,
	datab => \A1~input_o\,
	datac => \B0~input_o\,
	datad => \inst2~combout\,
	combout => \inst|inst|inst12~combout\);

-- Location: LCCOMB_X4_Y14_N16
\inst|inst1|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst22~combout\ = \inst|inst7~combout\ $ (\inst3~combout\ $ (((\inst|inst|inst12~combout\) # (\inst|inst|inst14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~combout\,
	datab => \inst3~combout\,
	datac => \inst|inst|inst12~combout\,
	datad => \inst|inst|inst14~combout\,
	combout => \inst|inst1|inst22~combout\);

-- Location: LCCOMB_X4_Y14_N18
\inst9|inst|inst12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst12~combout\ = (\inst|inst1|inst22~combout\ & (\0~input_o\ $ (((\B0~input_o\ & \A2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datab => \inst|inst1|inst22~combout\,
	datac => \0~input_o\,
	datad => \A2~input_o\,
	combout => \inst9|inst|inst12~combout\);

-- Location: IOIBUF_X0_Y20_N1
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X8_Y21_N2
inst6 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\A1~input_o\ & \B2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datad => \B2~input_o\,
	combout => \inst6~combout\);

-- Location: LCCOMB_X4_Y14_N22
\inst|inst2|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst22~0_combout\ = \inst|inst1|inst15~0_combout\ $ (\inst6~combout\ $ (((\B3~input_o\ & \A0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst15~0_combout\,
	datab => \B3~input_o\,
	datac => \A0~input_o\,
	datad => \inst6~combout\,
	combout => \inst|inst2|inst22~0_combout\);

-- Location: LCCOMB_X8_Y21_N28
\inst9|inst|inst14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst|inst14~combout\ = (\0~input_o\ & \inst9|inst|inst21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \0~input_o\,
	datad => \inst9|inst|inst21~1_combout\,
	combout => \inst9|inst|inst14~combout\);

-- Location: LCCOMB_X8_Y21_N6
\inst9|inst1|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst1|inst22~0_combout\ = \inst12~combout\ $ (\inst|inst2|inst22~0_combout\ $ (((\inst9|inst|inst12~combout\) # (\inst9|inst|inst14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~combout\,
	datab => \inst9|inst|inst12~combout\,
	datac => \inst|inst2|inst22~0_combout\,
	datad => \inst9|inst|inst14~combout\,
	combout => \inst9|inst1|inst22~0_combout\);

-- Location: LCCOMB_X8_Y21_N14
inst11 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~combout\ = (\A2~input_o\ & \B2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datad => \B2~input_o\,
	combout => \inst11~combout\);

-- Location: LCCOMB_X8_Y21_N24
inst4 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\A0~input_o\ & \B3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datad => \B3~input_o\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X4_Y14_N20
\inst|inst2|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst22~combout\ = \inst|inst1|inst15~0_combout\ $ (\inst6~combout\ $ (\0~input_o\ $ (\inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst15~0_combout\,
	datab => \inst6~combout\,
	datac => \0~input_o\,
	datad => \inst4~combout\,
	combout => \inst|inst2|inst22~combout\);

-- Location: LCCOMB_X8_Y21_N8
\inst9|inst1|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst1|inst15~0_combout\ = (\inst9|inst7~combout\ & ((\inst9|inst|inst12~combout\) # ((\inst|inst2|inst22~combout\) # (\inst9|inst|inst14~combout\)))) # (!\inst9|inst7~combout\ & (\inst|inst2|inst22~combout\ & ((\inst9|inst|inst12~combout\) # 
-- (\inst9|inst|inst14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7~combout\,
	datab => \inst9|inst|inst12~combout\,
	datac => \inst|inst2|inst22~combout\,
	datad => \inst9|inst|inst14~combout\,
	combout => \inst9|inst1|inst15~0_combout\);

-- Location: LCCOMB_X4_Y14_N4
\inst|inst1|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst15~0_combout\ = (\inst|inst7~combout\ & ((\inst3~combout\) # ((\inst|inst|inst12~combout\) # (\inst|inst|inst14~combout\)))) # (!\inst|inst7~combout\ & (\inst3~combout\ & ((\inst|inst|inst12~combout\) # (\inst|inst|inst14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~combout\,
	datab => \inst3~combout\,
	datac => \inst|inst|inst12~combout\,
	datad => \inst|inst|inst14~combout\,
	combout => \inst|inst1|inst15~0_combout\);

-- Location: LCCOMB_X8_Y21_N18
\inst|inst2|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst15~0_combout\ = (\inst|inst1|inst15~0_combout\ & ((\inst4~combout\) # (\0~input_o\ $ (\inst6~combout\)))) # (!\inst|inst1|inst15~0_combout\ & (\inst4~combout\ & (\0~input_o\ $ (\inst6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \0~input_o\,
	datab => \inst6~combout\,
	datac => \inst|inst1|inst15~0_combout\,
	datad => \inst4~combout\,
	combout => \inst|inst2|inst15~0_combout\);

-- Location: LCCOMB_X8_Y21_N20
\inst|inst3|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst22~0_combout\ = \inst|inst2|inst15~0_combout\ $ (((\A1~input_o\ & \B3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B3~input_o\,
	datad => \inst|inst2|inst15~0_combout\,
	combout => \inst|inst3|inst22~0_combout\);

-- Location: LCCOMB_X8_Y21_N10
\inst9|inst2|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst2|inst22~combout\ = \0~input_o\ $ (\inst11~combout\ $ (\inst9|inst1|inst15~0_combout\ $ (\inst|inst3|inst22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \0~input_o\,
	datab => \inst11~combout\,
	datac => \inst9|inst1|inst15~0_combout\,
	datad => \inst|inst3|inst22~0_combout\,
	combout => \inst9|inst2|inst22~combout\);

-- Location: LCCOMB_X8_Y21_N12
\inst|inst3|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst15~0_combout\ = (\A1~input_o\ & ((\B3~input_o\ & ((\inst|inst2|inst15~0_combout\))) # (!\B3~input_o\ & (\0~input_o\)))) # (!\A1~input_o\ & (\0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \0~input_o\,
	datac => \B3~input_o\,
	datad => \inst|inst2|inst15~0_combout\,
	combout => \inst|inst3|inst15~0_combout\);

-- Location: LCCOMB_X8_Y21_N22
inst10 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (\B3~input_o\ & \A2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3~input_o\,
	datad => \A2~input_o\,
	combout => \inst10~combout\);

-- Location: LCCOMB_X8_Y21_N16
\inst9|inst2|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst2|inst15~0_combout\ = (\inst9|inst1|inst15~0_combout\ & ((\inst|inst3|inst22~0_combout\) # (\0~input_o\ $ (\inst11~combout\)))) # (!\inst9|inst1|inst15~0_combout\ & (\inst|inst3|inst22~0_combout\ & (\0~input_o\ $ (\inst11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \0~input_o\,
	datab => \inst11~combout\,
	datac => \inst9|inst1|inst15~0_combout\,
	datad => \inst|inst3|inst22~0_combout\,
	combout => \inst9|inst2|inst15~0_combout\);

-- Location: LCCOMB_X8_Y21_N26
\inst9|inst3|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst3|inst22~combout\ = \inst|inst3|inst15~0_combout\ $ (\0~input_o\ $ (\inst10~combout\ $ (\inst9|inst2|inst15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst15~0_combout\,
	datab => \0~input_o\,
	datac => \inst10~combout\,
	datad => \inst9|inst2|inst15~0_combout\,
	combout => \inst9|inst3|inst22~combout\);

-- Location: LCCOMB_X8_Y21_N4
\inst9|inst3|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|inst3|inst15~0_combout\ = (\inst|inst3|inst15~0_combout\ & ((\inst9|inst2|inst15~0_combout\) # (\0~input_o\ $ (\inst10~combout\)))) # (!\inst|inst3|inst15~0_combout\ & (\inst9|inst2|inst15~0_combout\ & (\0~input_o\ $ (\inst10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst15~0_combout\,
	datab => \0~input_o\,
	datac => \inst10~combout\,
	datad => \inst9|inst2|inst15~0_combout\,
	combout => \inst9|inst3|inst15~0_combout\);

ww_C0 <= \C0~output_o\;

ww_C1 <= \C1~output_o\;

ww_C2 <= \C2~output_o\;

ww_C3 <= \C3~output_o\;

ww_C4 <= \C4~output_o\;

ww_C5 <= \C5~output_o\;

ww_C6 <= \C6~output_o\;
END structure;


