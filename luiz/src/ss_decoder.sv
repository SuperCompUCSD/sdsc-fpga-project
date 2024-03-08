module ss_decoder (
	input [3:0] b,
	output [6:0] c
);
always_comb begin
	case(b) begin
		4'b0000: c = 7'b1000000;
		4'b0001: c = 7'b1111001;
		4'b0010: c = 7'b0100100;
		4'b0011: c = 7'b0110000;
		4'b0100: c = 7'b0011001;
		4'b0101: c = 7'b0010010;
		4'b0110: c = 7'b0000010;
		4'b0111: c = 7'b1111000;
		4'b1000: c = 7'b0000000;
		4'b1001: c = 7'b0010000;
		4'b1010: c = 7'b0001000;
		4'b1011: c = 7'b0000011;
		4'b1100: c = 7'b1000110;
		4'b1101: c = 7'b0100001;
		4'b1110: c = 7'b0000110;
		4'b1111: c = 7'b0000110;
	end
end

endmodule