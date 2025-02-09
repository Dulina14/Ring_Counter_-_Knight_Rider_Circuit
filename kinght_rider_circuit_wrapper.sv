module Knight_rider_circuit_wrapper(
    input clk_i,
    input sys_rst_i,
    output [7:0] knight_rider_o
);

reg [13:0] counter; 
wire clk_o;
wire [7:0] modified_counter;

// Clock divider instantiation
clk_div clk_div_inst (
    .clk_i(clk_i),
    .clk_o(clk_o)
);

// Knight Rider circuit instantiation
Knight_rider_circuit Knight_rider_circuit_inst (
    .clk_i(clk_o),
    .sys_rst_i(sys_rst_i),
    .counter_o(counter)
);

// Generate modified counter pattern
assign modified_counter = {
    counter[0],                          // First bit
    counter[1] ^ counter[8],             // XOR of bits [1] and [8]
    counter[2] ^ counter[9],             // XOR of bits [2] and [9]
    counter[3] ^ counter[10],            // XOR of bits [3] and [10]
    counter[4] ^ counter[11],            // XOR of bits [4] and [11]
    counter[5] ^ counter[12],            // XOR of bits [5] and [12]
    counter[6] ^ counter[13],            // XOR of bits [6] and [13]
    counter[7]                           // Last bit
};

// Ring counter top instantiation
ring_counter_top ring_counter_top_inst (
    .clk_i(clk_o),
    .sys_rst_i(sys_rst_i),
    .counter_o(knight_rider_o)
);

assign knight_rider_o = modified_counter;

endmodule
