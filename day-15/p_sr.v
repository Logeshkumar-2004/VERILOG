/*
Challenge 2 — Parameterized Shift Register

Make:

4-bit

8-bit

16-bit shift register
*/
module p_sr #(
    parameter WIDTH=4
) (
    input clk , reset , ip,
    output reg [WIDTH - 1:0]q
);

always @(posedge clk or posedge reset) begin
    if (reset==0) begin
        q <= 0;
    end else begin
        q <= {q[WIDTH-2:0],ip};
    end
end
    
endmodule
