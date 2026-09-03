module subsys1 (
  input               clk  ,
  input               rst_n,
  output reg [15:0]    dout
);

always @(posedge clk or negedge rst_n) begin
  if (!rst_n) begin
    dout <= 1'b0;
  end else begin
    dout <= dout + 2;
  end
end

endmodule: subsys1
