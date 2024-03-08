`timescale 1ns / 1ps

module seven_segment_decoder(
    input [3:0] number,
    output [7:0] cathodes
    );
   
    reg [7:0] cathode_reg;
    
    always_comb begin
      case (number)
        4'd0: begin
          cathode_reg = 8'b11000000;
        end
        4'd1: begin
          cathode_reg = 8'b11111001;
        end
        4'd2: begin
          cathode_reg = 8'b10100100;
        end
        4'd3: begin
          cathode_reg = 8'b10110000;
        end
        4'd4: begin
          cathode_reg = 8'b10011001;
        end
        4'd5: begin
          cathode_reg = 8'b10010010;
        end
        4'd6: begin
          cathode_reg = 8'b10000010;
        end
        4'd7: begin
          cathode_reg = 8'b11111000;
        end
        4'd8: begin
          cathode_reg = 8'b10000000;
        end
        4'd9: begin
          cathode_reg = 8'b10010000;
        end
        4'd10: begin
          cathode_reg = 8'b10001000;
        end
        4'd11: begin
          cathode_reg = 8'b10000011;
        end
        4'd12: begin
          cathode_reg = 8'b11000110;
        end
        4'd13: begin
          cathode_reg = 8'b10100001;
        end
        4'd14: begin
          cathode_reg = 8'b10000110;
        end
        4'd15: begin
          cathode_reg = 8'b10001110;
        end

        default: begin
          cathode_reg = 8'hff;
        end
      endcase 
    end

    assign cathodes = cathode_reg;
endmodule
