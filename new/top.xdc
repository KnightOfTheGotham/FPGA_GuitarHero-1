# Clock signal 
set_property PACKAGE_PIN W5 [get_ports clk]  	 	 	 	  
 	set_property IOSTANDARD LVCMOS33 [get_ports clk] 
# create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk] 




set_property PACKAGE_PIN W7 [get_ports {seg[0]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}] 
set_property PACKAGE_PIN W6 [get_ports {seg[1]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}] 
set_property PACKAGE_PIN U8 [get_ports {seg[2]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}] 
set_property PACKAGE_PIN V8 [get_ports {seg[3]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}] 
set_property PACKAGE_PIN U5 [get_ports {seg[4]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}] 
set_property PACKAGE_PIN V5 [get_ports {seg[5]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}] 
set_property PACKAGE_PIN U7 [get_ports {seg[6]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}] 

set_property PACKAGE_PIN U2 [get_ports {an[0]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}] 
set_property PACKAGE_PIN U4 [get_ports {an[1]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}] 
set_property PACKAGE_PIN V4 [get_ports {an[2]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}] 
set_property PACKAGE_PIN W4 [get_ports {an[3]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}] 

#Buttons 
set_property PACKAGE_PIN J1 [get_ports {button_input[0]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {button_input[0]}] 
#Sch name = JA2 
set_property PACKAGE_PIN L2 [get_ports {button_input[1]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {button_input[1]}] 
#Sch name = JA3 
set_property PACKAGE_PIN J2 [get_ports {button_input[2]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {button_input[2]}] 
#Sch name = JA4 
set_property PACKAGE_PIN G2 [get_ports {button_input[3]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {button_input[3]}] 
 	
set_property PACKAGE_PIN H1 [get_ports {button_input[4]}] 	 	 	 	 	 
          set_property IOSTANDARD LVCMOS33 [get_ports {button_input[4]}] 
set_property PACKAGE_PIN A14 [get_ports {songD[0]}]  	 	 	 	 
       set_property IOSTANDARD LVCMOS33 [get_ports {songD[0]}] 
  #Sch name = JB2 
  set_property PACKAGE_PIN A16 [get_ports {songD[1]}]                      
       set_property IOSTANDARD LVCMOS33 [get_ports {songD[1]}] 
  #Sch name = JB3 
  set_property PACKAGE_PIN B15 [get_ports {songD[2]}]                      
       set_property IOSTANDARD LVCMOS33 [get_ports {songD[2]}]
  set_property PACKAGE_PIN B16 [get_ports {songD[3]}]                      
       set_property IOSTANDARD LVCMOS33 [get_ports {songD[3]}] 
  #Sch name = JB7 
  set_property PACKAGE_PIN A15 [get_ports {songD[4]}]                      
       set_property IOSTANDARD LVCMOS33 [get_ports {songD[4]}] 
          ##Sch name = JB8 
        
##Sch name = JC1 
  set_property PACKAGE_PIN K17 [get_ports {songplay}]                      
       set_property IOSTANDARD LVCMOS33 [get_ports {songplay}] 


 set_property CFGBVS VCCO [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE 3.3 [current_design]
 #where value2 is the voltage provided to configuration bank 0
