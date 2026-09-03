module subsys2 (
  input               clk  ,
  input               rst_n,
  output reg [31:0]    dout
);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    dout <= 1'b0;
  end else begin
    dout <= dout + 4;
  end
end

endmodule: subsys2
