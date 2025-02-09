//Modify the above module to a 14-bit ring counter. Then create and simulate an 8-bit signal pattern of Knight
//Rider circuit based on this 14-bit ring counter. Knight Rider LED pattern is an effect where LEDs are lit in a sequential
//fashion one at a time in both directions alternatively

module Knight_rider_circuit(
    input clk_i,
    input sys_rst_i,
    output [13:0] counter_o
);

wire w_q0, w_q1, w_q2, w_q3,
       w_q4, w_q5, w_q6, w_q7,w_q8,w_q9,w_q10,w_q11,w_q12,w_q13;

// Instantiating 14 D-flip-flops
  // First FF instantiation
  d_ff d_ff_1_inst (
      .clk_i(clk_i),
      .pr_i(sys_rst_i),
      .clr_i(),
      .d_i(w_q13 ),
      .q_o(w_q0)
  );

  // Second FF instantiation
  d_ff d_ff_2_inst (
      .clk_i(clk_i),
      .pr_i(),
      .clr_i(sys_rst_i),
      .d_i(w_q0),
      .q_o(w_q1)
  );


  // Third FF instantiation
  d_ff d_ff_3_inst (
      .clk_i(clk_i),
      .pr_i(),
      .clr_i(sys_rst_i),
      .d_i(w_q1 ),
      .q_o(w_q2)
  );


  // Fourth FF instantiation
  d_ff d_ff_4_inst (
      .clk_i(clk_i),
      .pr_i(),
      .clr_i(sys_rst_i),
      .d_i(w_q2),
      .q_o(w_q3)
  );


  // Fifth FF instantiation
  d_ff d_ff_5_inst (
      .clk_i(clk_i),
      .pr_i(),
      .clr_i(sys_rst_i),
      .d_i(w_q3 ),
      .q_o(w_q4)
  );


  // Sixth FF instantiation
  d_ff d_ff_6_inst (
      .clk_i(clk_i),
      .pr_i(),
      .clr_i(sys_rst_i),
      .d_i(w_q4 ),
      .q_o(w_q5)
  );


  // Seventh FF instantiation
  d_ff d_ff_7_inst (
      .clk_i(clk_i),
      .pr_i(),
      .clr_i(sys_rst_i),
      .d_i(w_q5 ),
      .q_o(w_q6)
  );


  // Eighth FF instantiation
  d_ff d_ff_8_inst (
      .clk_i(clk_i),
      .pr_i(),
      .clr_i(sys_rst_i),
      .d_i(w_q6 ),
      .q_o(w_q7)
  );

    // Ninth FF instantiation  
    d_ff d_ff_9_inst (
        .clk_i(clk_i),
        .pr_i(),
        .clr_i(sys_rst_i),
        .d_i(w_q7 ),
        .q_o(w_q8)
    );

    // Tenth FF instantiation
    d_ff d_ff_10_inst (
        .clk_i(clk_i),
        .pr_i(),
        .clr_i(sys_rst_i),
        .d_i(w_q8 ),
        .q_o(w_q9)
    );

    // Eleventh FF instantiation
    d_ff d_ff_11_inst (
        .clk_i(clk_i),
        .pr_i(),
        .clr_i(sys_rst_i),
        .d_i(w_q9 ),
        .q_o(w_q10)
    );

    // Twelfth FF instantiation
    d_ff d_ff_12_inst (
        .clk_i(clk_i),
        .pr_i(),
        .clr_i(sys_rst_i),
        .d_i(w_q10 ),
        .q_o(w_q11)
    );

    // Thirteenth FF instantiation 
    d_ff d_ff_13_inst (
        .clk_i(clk_i),
        .pr_i(),
        .clr_i(sys_rst_i),
        .d_i(w_q11),
        .q_o(w_q12)
    );

    // Fourteenth FF instantiation  
    d_ff d_ff_14_inst (
        .clk_i(clk_i),
        .pr_i(),
        .clr_i(sys_rst_i),
        .d_i(w_q12),
        .q_o(w_q13)
    );

    // Directing output pins of each flip-flops to
  // the output pins
  assign counter_o = {w_q13,w_q12,w_q11,w_q10,w_q9,w_q8,w_q7, w_q6, w_q5,
                       w_q4, w_q3, w_q2, w_q1, w_q0};

endmodule




