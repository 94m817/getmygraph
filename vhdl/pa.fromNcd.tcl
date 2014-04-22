
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name xillydemo -dir "D:/Xillinux/xillinux-eval-zedboard-1.2/vhdl/planAhead_run_3" -part xc7z020clg484-1
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/Xillinux/xillinux-eval-zedboard-1.2/vhdl/xillydemo.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Xillinux/xillinux-eval-zedboard-1.2/vhdl} {../system/implementation} {../cores} {../runonce} }
add_files [list {../system/implementation/system_axi4lite_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi_interconnect_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi_interconnect_1_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_processing_system7_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "D:/Xillinux/xillinux-eval-zedboard-1.2/vhdl/src/xillydemo.ucf" [current_fileset -constrset]
add_files [list {D:/Xillinux/xillinux-eval-zedboard-1.2/vhdl/src/xillydemo.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/Xillinux/xillinux-eval-zedboard-1.2/vhdl/xillydemo.ncd"
if {[catch {read_twx -name results_1 -file "D:/Xillinux/xillinux-eval-zedboard-1.2/vhdl/xillydemo.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/Xillinux/xillinux-eval-zedboard-1.2/vhdl/xillydemo.twx\": $eInfo"
}
