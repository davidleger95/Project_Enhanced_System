transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/MP_lib.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/IR.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/bigmux.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/cacheController.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/smallmux.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/SimpleCompArch.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/reg_file.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/PC.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/obuf.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/datapath.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/ctrl_unit.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/CPU.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/controller.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/alu.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/MainMemory.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/cache.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/lineMemory.vhd}
vcom -93 -work work {C:/Users/dorozco/Desktop/Project_Enhanced_System/SimpleCompArch_QII_14/dataMemory.vhd}

