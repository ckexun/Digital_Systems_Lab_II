transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {lab08_1.vho}

vlog -vlog01compat -work work +incdir+C:/Users/User/Desktop/s1111408_lab08_1/lab08_1 {C:/Users/User/Desktop/s1111408_lab08_1/lab08_1/test.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUT=lab08_1_vhd.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc" test

add wave *
view structure
view signals
run 1 us
