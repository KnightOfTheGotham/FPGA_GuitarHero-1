# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.cache/wt [current_project]
set_property parent.project_path C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/working/songProgress.sv
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/working/seg7.sv
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/working/PushButton_Debouncer.sv
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/working/pointKeeper.sv
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/working/equalityCheck.sv
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/working/counters.sv
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/new/songData.sv
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/working/datapath.sv
}
read_verilog -library xil_defaultlib {
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/NERP_demo/vga640x480.v
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/NERP_demo/clockdiv.v
  C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/sources_1/imports/Desktop/NERP_demo/NERP_demo_top.v
}
read_xdc C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/constrs_1/imports/Desktop/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Users/srhar/Desktop/Combined/VGAHero/VGAHero.srcs/constrs_1/imports/Desktop/Basys3_Master.xdc]

synth_design -top FPGA_HERO -part xc7a35tcpg236-1
write_checkpoint -noxdef FPGA_HERO.dcp
catch { report_utilization -file FPGA_HERO_utilization_synth.rpt -pb FPGA_HERO_utilization_synth.pb }