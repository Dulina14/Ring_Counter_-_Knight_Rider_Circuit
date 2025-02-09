module D_ff(
    input logic clk,
    input logic clr,
    input logic pr,
    input logic d,
    output logic q
);

always @(posedge clk or posedge pr or poseedge clr) begin
    if (clr) 
        q <= 1'b0;
    else if (pr)
        q <= 1'b1;
    else
        q <= d;   
end

endmodule