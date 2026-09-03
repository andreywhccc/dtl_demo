import uvm_pkg::*;

task refresh ;
    string test_name;
    uvm_root root = uvm_root::get();

    if($test$plusargs("UVM_TESTNAME")) begin
        if($value$plusargs("UVM_TESTNAME=%s",test_name)) begin
            `uvm_info("restore",$sformatf("UVM_TESTNAME name passed from the command line=%0s",test_name),UVM_NONE);
        end
    end

    $display("[SNPS_DEBUG_RESTORE] Refreshed test_name to %0s at time=%0t",test_name,$time);
    $display("[SNPS_DEBUG_RESTORE] Running test=%0s at time=%0t",test_name,$time);
    root.run_test(test_name);
endtask: refresh

module tb_top;
    `ifndef DTL_ENV
        import  dtl_demo_base_test_pkg::*;
        import  dtl_demo_sub_test_pkg::*;
    `endif //DTL_ENV

    logic clk;
    logic rst_n;
    logic [ 7:0] dout_0;
    logic [15:0] dout_1;
    logic [31:0] dout_2;

    initial clk <= 0;
    always #1ns clk = !clk;

    chiptop u_chiptop();

    assign u_chiptop.dout_0 = dout_0;
    assign u_chiptop.dout_1 = dout_1;
    assign u_chiptop.dout_2 = dout_2;
    assign u_chiptop.rst_n  = rst_n;
    assign u_chiptop.clk    = clk;

    initial begin
        run_test();
    end

endmodule: tb_top
