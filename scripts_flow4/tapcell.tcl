source $::env(SCRIPTS_DIR)/load.tcl
erase_non_stage_variables floorplan

load_design 2_5_place_iop.odb 2_floorplan.sdc

if {[env_var_exists_and_non_empty TAPCELL_TCL]} {
    source $::env(TAPCELL_TCL)
} else {
    cut_rows
}

write_db $::env(RESULTS_DIR)/2_6_floorplan_tapcell.odb
