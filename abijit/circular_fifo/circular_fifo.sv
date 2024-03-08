module circular_fifo #(parameter DATA_WIDTH = 4, parameter FIFO_DEPTH = 16) (
    input clk, rst, 
    input read, write, 
    input [DATA_WIDTH-1:0] write_in,

    output full, empty, 
    output [DATA_WIDTH-1:0] read_out
); 

reg [DATA_WIDTH-1:0] fifo [FIFO_DEPTH]; 
reg [$clog2(FIFO_DEPTH)-1:0] read_idx, write_idx; // ceiling log base 2 

assign read_out = fifo[read_idx]; 
assign full = read_idx == write_idx + 1; 
assign empty = read_idx == write_idx; 

always @(posedge clk) begin
    if (rst) begin
        read_idx <= 0; 
        write_idx <= 0; 
    end else begin
        if (write) begin
            fifo[write_idx] <= write_in; 
            write_idx <= write_idx + 1; 
        end

        if (read) begin
            read_idx <= read_idx + 1; 
        end
    end
end

endmodule 