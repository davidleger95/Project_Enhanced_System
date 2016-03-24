onerror {quit -f}
vlib work
vlog -work work SimpleCompArch_QII_14.vo
vlog -work work SimpleCompArch_QII_14.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SimpleCompArch_vlg_vec_tst
vcd file -direction SimpleCompArch_QII_14.msim.vcd
vcd add -internal SimpleCompArch_vlg_vec_tst/*
vcd add -internal SimpleCompArch_vlg_vec_tst/i1/*
add wave /*
run -all
