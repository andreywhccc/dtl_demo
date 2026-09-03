package dtl_top_demo_base_test_pkg;
import uvm_pkg::*;

class dtl_top_demo_base_test extends uvm_test;
  `uvm_component_utils(dtl_top_demo_base_test)

  function new (string name="dtl_top_demo_base_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction: new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction: build_phase

  virtual task reset_phase (uvm_phase phase);
    phase.raise_objection(this,"reset_phase");
    #30ns;
    `uvm_info("dtl_top_demo_base_test","reset_phase",UVM_NONE);
    phase.drop_objection(this,"reset_phase");
  endtask: reset_phase

  virtual task configure_phase (uvm_phase phase);
    phase.raise_objection(this,"configure_phase");
    #30ns;
    `uvm_info("dtl_top_demo_base_test","configure_phase",UVM_NONE);
    phase.drop_objection(this,"configure_phase");
  endtask: configure_phase

  virtual task post_configure_phase (uvm_phase phase);
    phase.raise_objection(this,"post_configure_phase");
    #1;
    `uvm_info("dtl_top_demo_base_test","post_configure_phase",UVM_NONE);
    phase.drop_objection(this,"post_configure_phase");
  endtask: post_configure_phase

  virtual task main_phase (uvm_phase phase);
    phase.raise_objection(this,"main_phase");
    #100ns;
    `uvm_info("dtl_top_demo_base_test","main_phase",UVM_NONE);
    phase.drop_objection(this,"main_phase");
  endtask: main_phase

endclass: dtl_top_demo_base_test

endpackage: dtl_top_demo_base_test_pkg
