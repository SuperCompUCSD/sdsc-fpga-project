module seven_segment_display (
    input logic[3:0] b,
    output logic[6:0] c
);

always_comb begin
    c = 7'b0000000; 
    case (b)
        4'b0000: c[6] = 1; 
        4'b0001: c[0] = 1; c[3] = 1; c[4] = 1; c[5] = 1; c[6] = 1;
        4'b0010: c[2] = 1; c[5] = 1;  
        4'b0011: c[5] = 1; c[4] = 1;  
        4'b0100: c[4] = 1; c[3] = 1; c[0] = 1;   
        4'b0101: c[4] = 1; c[1] = 1;  
        4'b0110: c[1] = 1;  
        4'b0111: c[6] = 1; c[5] = 1; c[4] = 1; c[3] = 1;  
        4'b1000: ;  
        4'b1001: c[4] = 1;   
        4'b1010: c[3] = 1; 
        4'b1011: c[1] = 1; c[0] = 1;  
        4'b1100: c[6] = 1; c[2] = 1; c[1] = 1; 
        4'b1101: c[5] = 1; c[0] = 1;  
        4'b1110: c[2] = 1; c[5] = 1; 
        4'b1111: c[2] = 1; c[1] = 1; 
    endcase
end

endmodule 