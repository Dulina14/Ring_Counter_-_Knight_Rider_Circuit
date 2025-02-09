module ring_counter_top2(
	input clk_i,
	input sys_rst_n_i,
	output reg[7:0] counter_o
	);


always@(posedge clk_i)
	if(~sys_rst_n_i)begin
		counter_o<=8'd0000_0001;
	end
	else begin
		counter_o[1]<=counter_o[0];
		counter_o[2]<=counter_o[1];
		counter_o[3]<=counter_o[2];
		counter_o[4]<=counter_o[3];
		counter_o[5]<=counter_o[4];
		counter_o[6]<=counter_o[5];
		counter_o[7]<=counter_o[6];
		counter_o[0]<=counter_o[7];
	end
	
endmodule
