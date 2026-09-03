package dtl_top_demo_sub_test_pkg;
import uvm_pkg::*;
import dtl_demo_base_test_pkg::*;

class dtl_top_demo_sub_test extends dtl_top_demo_base_test;
  `uvm_component_utils(dtl_top_demo_sub_test)

  virtual task main_phase (uvm_phase phase);
    phase.raise_objection(this,"main_phase");
    #200ns;
    `uvm_info("dtl_top_demo_sub_test","main_phase",UVM_NONE);
    phase.drop_objection(this,"main_phase");
  endtask: main_phase
endclass: dtl_top_demo_sub_test

endpackage: dtl_top_demo_sub_test_pkg
