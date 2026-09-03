stop -in uvm_component::post_configure_phase -once -continue -command {run 0; save saveddesign; puts "SAVED AT TIME = $now"; run}
run