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

-- DATE "03/08/2024 16:56:14"

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

ENTITY 	s1111403_lab3 IS
    PORT (
	S1 : OUT std_logic;
	M : IN std_logic;
	B1 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	S2 : OUT std_logic;
	B2 : IN std_logic;
	A2 : IN std_logic;
	S3 : OUT std_logic;
	B3 : IN std_logic;
	A3 : IN std_logic;
	V : OUT std_logic;
	S0 : OUT std_logic;
	C : OUT std_logic
	);
END s1111403_lab3;

-- Design Ports Information
-- S1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF s1111403_lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \inst44|inst14~combout\ : std_logic;
SIGNAL \inst44|inst12~combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst45|inst22~combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst45|inst15~0_combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst46|inst22~0_combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst46|inst15~0_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst47|inst22~0_combout\ : std_logic;
SIGNAL \inst36~combout\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst44|inst22~0_combout\ : std_logic;
SIGNAL \inst47|inst15~0_combout\ : std_logic;

BEGIN

S1 <= ww_S1;
ww_M <= M;
ww_B1 <= B1;
ww_A1 <= A1;
ww_B0 <= B0;
ww_A0 <= A0;
S2 <= ww_S2;
ww_B2 <= B2;
ww_A2 <= A2;
S3 <= ww_S3;
ww_B3 <= B3;
ww_A3 <= A3;
V <= ww_V;
S0 <= ww_S0;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y11_N2
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45|inst22~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\S2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst46|inst22~0_combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\S3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|inst22~0_combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst36~combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\S0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44|inst22~0_combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|inst15~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOIBUF_X0_Y13_N22
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\M~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X4_Y21_N12
\inst44|inst14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst44|inst14~combout\ = (\M~input_o\ & (\A0~input_o\ $ (!\B0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datac => \B0~input_o\,
	datad => \M~input_o\,
	combout => \inst44|inst14~combout\);

-- Location: LCCOMB_X4_Y21_N2
\inst44|inst12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst44|inst12~combout\ = (\A0~input_o\ & (\B0~input_o\ $ (\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datac => \B0~input_o\,
	datad => \M~input_o\,
	combout => \inst44|inst12~combout\);

-- Location: IOIBUF_X0_Y20_N8
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X41_Y14_N22
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X4_Y21_N0
inst20 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20~combout\ = \M~input_o\ $ (\B1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datad => \B1~input_o\,
	combout => \inst20~combout\);

-- Location: LCCOMB_X4_Y21_N30
\inst45|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst45|inst22~combout\ = \A1~input_o\ $ (\inst20~combout\ $ (((\inst44|inst14~combout\) # (\inst44|inst12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|inst14~combout\,
	datab => \inst44|inst12~combout\,
	datac => \A1~input_o\,
	datad => \inst20~combout\,
	combout => \inst45|inst22~combout\);

-- Location: IOIBUF_X26_Y29_N1
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X4_Y21_N16
\inst45|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst45|inst15~0_combout\ = (\A1~input_o\ & ((\inst44|inst14~combout\) # ((\inst44|inst12~combout\) # (\inst20~combout\)))) # (!\A1~input_o\ & (\inst20~combout\ & ((\inst44|inst14~combout\) # (\inst44|inst12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|inst14~combout\,
	datab => \inst44|inst12~combout\,
	datac => \A1~input_o\,
	datad => \inst20~combout\,
	combout => \inst45|inst15~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X4_Y21_N18
\inst46|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst46|inst22~0_combout\ = \A2~input_o\ $ (\inst45|inst15~0_combout\ $ (\B2~input_o\ $ (\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \inst45|inst15~0_combout\,
	datac => \B2~input_o\,
	datad => \M~input_o\,
	combout => \inst46|inst22~0_combout\);

-- Location: IOIBUF_X1_Y29_N22
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: LCCOMB_X4_Y21_N20
\inst46|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst46|inst15~0_combout\ = (\A2~input_o\ & ((\inst45|inst15~0_combout\) # (\B2~input_o\ $ (\M~input_o\)))) # (!\A2~input_o\ & (\inst45|inst15~0_combout\ & (\B2~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datab => \inst45|inst15~0_combout\,
	datac => \B2~input_o\,
	datad => \M~input_o\,
	combout => \inst46|inst15~0_combout\);

-- Location: IOIBUF_X28_Y0_N15
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X4_Y21_N22
\inst47|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst47|inst22~0_combout\ = \A3~input_o\ $ (\inst46|inst15~0_combout\ $ (\B3~input_o\ $ (\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \inst46|inst15~0_combout\,
	datac => \B3~input_o\,
	datad => \M~input_o\,
	combout => \inst47|inst22~0_combout\);

-- Location: LCCOMB_X4_Y21_N28
inst36 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst36~combout\ = (\A3~input_o\ & (!\inst46|inst15~0_combout\ & (\B3~input_o\ $ (\M~input_o\)))) # (!\A3~input_o\ & (\inst46|inst15~0_combout\ & (\B3~input_o\ $ (!\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \inst46|inst15~0_combout\,
	datac => \B3~input_o\,
	datad => \M~input_o\,
	combout => \inst36~combout\);

-- Location: IOIBUF_X0_Y22_N8
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X4_Y21_N26
\inst44|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst44|inst22~0_combout\ = \A0~input_o\ $ (\B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datac => \B0~input_o\,
	combout => \inst44|inst22~0_combout\);

-- Location: LCCOMB_X4_Y21_N24
\inst47|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst47|inst15~0_combout\ = (\A3~input_o\ & ((\inst46|inst15~0_combout\) # (\B3~input_o\ $ (\M~input_o\)))) # (!\A3~input_o\ & (\inst46|inst15~0_combout\ & (\B3~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \inst46|inst15~0_combout\,
	datac => \B3~input_o\,
	datad => \M~input_o\,
	combout => \inst47|inst15~0_combout\);

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_V <= \V~output_o\;

ww_S0 <= \S0~output_o\;

ww_C <= \C~output_o\;
END structure;


