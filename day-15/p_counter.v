module p_counter #(parameter WIDTH = 4)
 (
    input clk, reset,
    output reg [WIDTH-1:0]counter
);
    always @(posedge clk or posedge reset) begin
        if (reset == 0) begin
            counter <= counter + 1;
        end else begin
            counter <= 0;
        end
    end
endmodule