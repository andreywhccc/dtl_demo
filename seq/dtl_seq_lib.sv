class dtl_base_seq extends uvm_sequence;
    `uvm_object_utils(dtl_base_seq)
    `uvm_declare_p_sequencer(dtl_demo_sqr)
 
    function new(string name="dtl_base_seq");
        super.new(name);
    endfunction: new
 
    virtual task body();
        `uvm_info(get_full_name(),"dtl_base_seq",UVM_NONE);
    endtask: body
endclass: dtl_base_seq
 
class dtl_work_seq extends dtl_base_seq;
    `uvm_object_utils(dtl_work_seq)

    function new(string name="dtl_work_seq");
        super.new(name);
    endfunction: new

    virtual task body();
        `uvm_info(get_full_name(),"dtl_work_seq",UVM_NONE);
    endtask: body
endclass: dtl_work_seq
