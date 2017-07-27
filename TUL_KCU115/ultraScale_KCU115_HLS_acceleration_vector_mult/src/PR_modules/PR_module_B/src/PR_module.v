`timescale 1 ps / 1 ps

module PR_module (
    input clk,
    input reset_n,
    output [7:0] LED_out

);

  // User Clock LED Heartbeat
  reg    [25:0] user_clk_heartbeat = 26'd0;
  // Create a Clock Heartbeat
  always @(posedge clk) begin
    if(!reset_n) begin
      user_clk_heartbeat <= 26'd0;
    end else begin
      user_clk_heartbeat <= user_clk_heartbeat + 1'b1;
    end
  end

  assign LED_out = user_clk_heartbeat[20] ? 8'b00000000 : 8'b11111111;


endmodule
