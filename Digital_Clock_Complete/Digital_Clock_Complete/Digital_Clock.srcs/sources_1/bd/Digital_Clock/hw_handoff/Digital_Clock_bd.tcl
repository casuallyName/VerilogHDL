
################################################################
# This is a generated script based on design: Digital_Clock
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source Digital_Clock_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcsg324-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name Digital_Clock

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set LED0 [ create_bd_port -dir O -from 7 -to 0 LED0 ]
  set LED1 [ create_bd_port -dir O -from 7 -to 0 LED1 ]
  set LED_BIT0 [ create_bd_port -dir O -from 3 -to 0 LED_BIT0 ]
  set LED_BIT1 [ create_bd_port -dir O -from 3 -to 0 LED_BIT1 ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set key_0 [ create_bd_port -dir I key_0 ]
  set key_1 [ create_bd_port -dir I key_1 ]
  set key_2 [ create_bd_port -dir I key_2 ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set sel_0 [ create_bd_port -dir I sel_0 ]

  # Create instance: Mux2to1_DF_0, and set properties
  set Mux2to1_DF_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux2to1_DF:1.0 Mux2to1_DF_0 ]

  # Create instance: Mux2to1_DF_1, and set properties
  set Mux2to1_DF_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux2to1_DF:1.0 Mux2to1_DF_1 ]

  # Create instance: Mux2to1_DF_2, and set properties
  set Mux2to1_DF_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux2to1_DF:1.0 Mux2to1_DF_2 ]

  # Create instance: clk_div, and set properties
  set clk_div [ create_bd_cell -type ip -vlnv xilinx.com:user:clk_div:1.0 clk_div ]

  # Create instance: clk_out_0, and set properties
  set clk_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:clk_out:1.0 clk_out_0 ]

  # Create instance: clk_out_1, and set properties
  set clk_out_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:clk_out:1.0 clk_out_1 ]

  # Create instance: clk_out_2, and set properties
  set clk_out_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:clk_out:1.0 clk_out_2 ]

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {137.681} \
   CONFIG.CLKOUT1_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {137.681} \
   CONFIG.CLKOUT2_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {9} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {9} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {9} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz

  # Create instance: cnt24_0, and set properties
  set cnt24_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:cnt24:1.0 cnt24_0 ]

  # Create instance: concat, and set properties
  set concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $concat

  # Create instance: constant_0, and set properties
  set constant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 constant_0 ]

  # Create instance: constant_1, and set properties
  set constant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 constant_1 ]

  # Create instance: constant_2, and set properties
  set constant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 constant_2 ]

  # Create instance: constant_3, and set properties
  set constant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 constant_3 ]

  # Create instance: display_0, and set properties
  set display_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:display:1.0 display_0 ]

  # Create instance: display_1, and set properties
  set display_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:display:1.0 display_1 ]

  # Create instance: minute_H, and set properties
  set minute_H [ create_bd_cell -type ip -vlnv xilinx.com:user:cnt6:1.0 minute_H ]

  # Create instance: minute_L, and set properties
  set minute_L [ create_bd_cell -type ip -vlnv xilinx.com:user:cnt10:1.0 minute_L ]

  # Create instance: second_H, and set properties
  set second_H [ create_bd_cell -type ip -vlnv xilinx.com:user:cnt6:1.0 second_H ]

  # Create instance: second_L, and set properties
  set second_L [ create_bd_cell -type ip -vlnv xilinx.com:user:cnt10:1.0 second_L ]

  # Create port connections
  connect_bd_net -net Mux2to1_DF_0_out [get_bd_pins Mux2to1_DF_0/out] [get_bd_pins minute_L/clk]
  connect_bd_net -net Mux2to1_DF_1_out [get_bd_pins Mux2to1_DF_1/out] [get_bd_pins second_L/clk]
  connect_bd_net -net Mux2to1_DF_2_out [get_bd_pins Mux2to1_DF_2/out] [get_bd_pins cnt24_0/clk]
  connect_bd_net -net Net [get_bd_pins clk_wiz/clk_out2] [get_bd_pins display_0/clk] [get_bd_pins display_1/clk]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net clk_div_clk_out [get_bd_pins Mux2to1_DF_1/b] [get_bd_pins clk_div/clk_out]
  connect_bd_net -net clk_out_0_out [get_bd_pins Mux2to1_DF_1/a] [get_bd_pins clk_out_0/out]
  connect_bd_net -net clk_out_1_out [get_bd_pins Mux2to1_DF_0/a] [get_bd_pins clk_out_1/out]
  connect_bd_net -net clk_out_2_out [get_bd_pins Mux2to1_DF_2/a] [get_bd_pins clk_out_2/out]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins clk_div/clk_in] [get_bd_pins clk_out_0/clk] [get_bd_pins clk_out_1/clk] [get_bd_pins clk_out_2/clk] [get_bd_pins clk_wiz/clk_out1]
  connect_bd_net -net cnt10_0_carry [get_bd_pins minute_H/clk] [get_bd_pins minute_L/carry]
  connect_bd_net -net cnt10_0_cnt [get_bd_pins display_1/data1] [get_bd_pins minute_L/cnt]
  connect_bd_net -net cnt24_0_data_H [get_bd_pins cnt24_0/data_H] [get_bd_pins display_0/data1]
  connect_bd_net -net cnt24_0_data_L [get_bd_pins cnt24_0/data_L] [get_bd_pins display_0/data2]
  connect_bd_net -net cnt6_0_cnt [get_bd_pins display_0/data4] [get_bd_pins minute_H/cnt]
  connect_bd_net -net display_0_en [get_bd_ports LED_BIT0] [get_bd_pins display_0/en]
  connect_bd_net -net display_0_led [get_bd_ports LED0] [get_bd_pins display_0/led]
  connect_bd_net -net display_1_en [get_bd_ports LED_BIT1] [get_bd_pins display_1/en]
  connect_bd_net -net display_1_led [get_bd_ports LED1] [get_bd_pins display_1/led]
  connect_bd_net -net key_0_1 [get_bd_ports key_0] [get_bd_pins clk_out_0/key]
  connect_bd_net -net key_1_1 [get_bd_ports key_1] [get_bd_pins clk_out_1/key]
  connect_bd_net -net key_2_1 [get_bd_ports key_2] [get_bd_pins clk_out_2/key]
  connect_bd_net -net minute_H_carry [get_bd_pins Mux2to1_DF_2/b] [get_bd_pins minute_H/carry]
  connect_bd_net -net rst_n_0_1 [get_bd_ports rst] [get_bd_pins cnt24_0/rst] [get_bd_pins minute_H/rst_n] [get_bd_pins minute_L/rst_n] [get_bd_pins second_H/rst_n] [get_bd_pins second_L/rst_n]
  connect_bd_net -net second_H_carry [get_bd_pins Mux2to1_DF_0/b] [get_bd_pins second_H/carry]
  connect_bd_net -net second_H_cnt [get_bd_pins display_1/data3] [get_bd_pins second_H/cnt]
  connect_bd_net -net second_L_carry [get_bd_pins second_H/clk] [get_bd_pins second_L/carry]
  connect_bd_net -net second_L_cnt [get_bd_pins display_1/data4] [get_bd_pins second_L/cnt]
  connect_bd_net -net sel_0_1 [get_bd_ports sel_0] [get_bd_pins Mux2to1_DF_0/sel] [get_bd_pins Mux2to1_DF_1/sel] [get_bd_pins Mux2to1_DF_2/sel]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins concat/dout] [get_bd_pins display_0/data3] [get_bd_pins display_1/data2]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins concat/In3] [get_bd_pins constant_3/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins concat/In1] [get_bd_pins constant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins concat/In2] [get_bd_pins constant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins concat/In0] [get_bd_pins constant_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


