module SevenSegmentDecoder #(parameter WIDTH = 4) (
    input [WIDTH-1:0] b,
    output logic [6:0] c
);

always_comb begin
    case(b)
        4'b0000: c = 7'b1000000; // 0
        4'b0001: c = 7'b1111001; // 1
        4'b0010: c = 7'b0100100; // 2
        4'b0011: c = 7'b0110000; // 3
        4'b0100: c = 7'b0011001; // 4
        4'b0101: c = 7'b0010010; // 5
        4'b0110: c = 7'b0000010; // 6
        4'b0111: c = 7'b1110000; // 7
        4'b1000: c = 7'b0000000; // 8
        4'b1001: c = 7'b0010000; // 9
        4'b1010: c = 7'b0001000; // A
        4'b1011: c = 7'b0000011; // b
        4'b1100: c = 7'b1000110; // C
        4'b1101: c = 7'b0100001; // d
        4'b1110: c = 7'b0000110; // E
        4'b1111: c = 7'b0001110; // F
        default: c = 7'b0000000; // Handle other cases
    endcase
end

endmodule
