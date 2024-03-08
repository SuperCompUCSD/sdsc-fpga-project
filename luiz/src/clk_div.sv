module clk_div (
	input clk,
	input rst,
	output logic [3:0] a
);

reg [3:0] hold;

always_ff (posedge @ clk, posedge @ rst) begin
	if (rst) begin
		hold <= 1;
	end 
	else begin
		hold <= hold << 1;
	end
end

always_comb begin
	a = hold;
end

endmodule
