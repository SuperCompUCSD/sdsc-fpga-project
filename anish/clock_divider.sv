module clock_divider #(
  parameter integer PERIOD = 10000
)(
  input clk,
  input rst,

  output clk_div
);

logic [$clog2(PERIOD)-1:0] counter;

always_ff @(posedge clk) begin
  if (rst) begin
    counter <= '0;
    clk_div <= clk;
  end else begin
    if (counter == PERIOD/2) begin
      counter <= '0;
      clk_div <= ~clk_div;
    end else begin
      counter <= counter + 1;
    end
  end
end
endmodule
