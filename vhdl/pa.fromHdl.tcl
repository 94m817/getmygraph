
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name xillydemo -dir "D:/Xillinux/xillinux-eval-zedboard-1.2-Backup/vhdl/planAhead_run_2" -part xc7z020clg484-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "D:/Xillinux/xillinux-eval-zedboard-1.2-Backup/vhdl/src/xillydemo.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {src/xillybus_core.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/system.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/fifo_8x2048.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/fifo_32x512.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/xillybus.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/smbus.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/i2s_audio.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/xillydemo.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top xillydemo $srcset
add_files [list {D:/Xillinux/xillinux-eval-zedboard-1.2-Backup/vhdl/src/xillydemo.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi4lite_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi_interconnect_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi_interconnect_1_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_processing_system7_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7z020clg484-1
