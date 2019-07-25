# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "update_interval" -parent ${Page_0}


}

proc update_PARAM_VALUE.update_interval { PARAM_VALUE.update_interval } {
	# Procedure called to update update_interval when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.update_interval { PARAM_VALUE.update_interval } {
	# Procedure called to validate update_interval
	return true
}


proc update_MODELPARAM_VALUE.update_interval { MODELPARAM_VALUE.update_interval PARAM_VALUE.update_interval } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.update_interval}] ${MODELPARAM_VALUE.update_interval}
}

