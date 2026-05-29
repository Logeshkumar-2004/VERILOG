/*Challenge 2

Create:

8-bit Shift Register


Change:

Output reg [7:0] q; */

module sr (
    input clk, reset, ip,
    output reg [7:0]q
);

always @(posedge clk or posedge reset) begin
    if (reset ==1 ) begin
        q <= 4'b00000000;
    end else begin
        q <= {q[6:0],ip};
        
    end
end
    
endmodule