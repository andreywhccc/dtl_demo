module chiptop (
  input         clk      ,
  input         rst_n    ,
  output [7:0]  dout_0   ,
  output [15:0] dout_1   ,
  output [31:0] dout_2
);

subsys0 u_subsys_0 (
  .clk      (clk),
  .rst_n    (rst_n),
  .dout     (dout_0)
);

subsys1 u_subsys_1 (
  .clk      (clk),
  .rst_n    (rst_n),
  .dout     (dout_1)
);

subsys2 u_subsys_2 (
  .clk      (clk),
  .rst_n    (rst_n),
  .dout     (dout_2)
);

endmodule: chiptop
