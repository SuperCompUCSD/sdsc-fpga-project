module SevenSegmentDecoder #(parameter WIDTH = 4) (
    input [WIDTH-1:0] b,
    output reg [6:0] c
);

always @* begin
    case(b)
        4'h0: c = 7'b1000000; // 0
        4'h1: c = 7'b1111001; // 1
        4'h2: c = 7'b0100100; // 2
        4'h3: c = 7'b0110000; // 3
        4'h4: c = 7'b0011001; // 4
        4'h5: c = 7'b0010010; // 5
        4'h6: c = 7'b0000010; // 6
        4'h7: c = 7'b1110000; // 7
        4'h8: c = 7'b0000000; // 8
        4'h9: c = 7'b0010000; // 9
        4'hA: c = 7'b0001000; // A
        4'hB: c = 7'b0000011; // b
        4'hC: c = 7'b1000110; // C
        4'hD: c = 7'b0100001; // d
        4'hE: c = 7'b0000110; // E
        4'hF: c = 7'b0001110; // F
        default: c = 7'bxxxxxxx; // Handle other cases
    endcase
end

endmodule
