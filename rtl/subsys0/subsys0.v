module subsys0 (
  input               clk  ,
  input               rst_n,
  output reg [7:0]    dout
);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    dout <= 1'b0;
  end else begin
    dout <= dout + 1;
  end
end

endmodule: subsys0
