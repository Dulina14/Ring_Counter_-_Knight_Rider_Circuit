`timescale 1 ns/1 ns //define time period with precision.

module ring_counter_tb();

reg[0:0] sys_rst,clk; //inputs signals for top module

wire [7:0] out_signal;

// call top module for simulations.


ring_counter_top2 ring_counter(
.clk_i(clk),
.sys_rst_n_i(sys_rst),
.counter_o(out_signal)
);

always begin
    #20;
    clk = ~clk;
end

initial begin
    clk = 1'b0;
    sys_rst = 1'b1;
    #40;
    sys_rst = 1'b0;
end
endmodule
