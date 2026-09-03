restore ../<?DTL_BASE_TEST_DIR?>/saveddesign
echo "Restored simulation and current simulation time=$now \n"
call \$dtl_load
call tb_top.refresh
run
