source $::env(SCRIPTS_DIR)/load.tcl
erase_non_stage_variables place

if {![env_var_equals IS_CHIP 1]} {
  load_design 3_5_place_dp.odb 2_floorplan.sdc
  source $::env(SCRIPTS_DIR)/io_placement_util.tcl
  write_db $::env(RESULTS_DIR)/3_6_place_io.odb
} else {
  log_cmd exec cp $::env(RESULTS_DIR)/3_5_place_dp.odb $::env(RESULTS_DIR)/3_2_place_iop.odb
}
