if { [info exists FSDB_DUMP] } {
# -------------- 1. set parameter ------------------------
  if { [info exists CASE_WAVE_NAME] } {
      set wave_name      $CASE_WAVE_NAME;
  } else {
      set wave_name      "novas";
  }

  set dump_size      0              ;
  set dump_num       0              ;
  set fsdb_dir       "./wav"        ;
# -------------- 2. del old wav dir and create new --------------
#  if {[file exists $fsdb_dir]} {
#     file delete -force $fsdb_dir
#  }
  file mkdir $fsdb_dir
# -------------- 3. FSDBDump config ---------------------------
# 1) set fsdb_file
  set fsdb_file "${fsdb_dir}/${wave_name}.fsdb"
  if {$dump_size == 0} {
      fsdbDumpfile $fsdb_file
  }
# 2) set fsdb switch size
  if {$dump_size > 0} {
      fsdbAutoSwitchDumpfile $dump_size $fsdb_file $dump_num
  }
# 3) set fsdb dump hier
  fsdbDumpvars 0 tb_top
# fsdbDumpvars 1 tb_top.u_counter_4bit
# fsdbDumpvars 1 tb_top.u_counter_4bit.u_sub_rtl0.u_sub_rtl1.u_sub_rtl2
# 4) flush fsdb
  fsdbDumpflush
  fsdbDumpMDA
}
