/*
Challenge 2 — 8-bit Counter

Change:

Output reg [7:0] count;
*/
module sc(
    input clk, reset,
    output reg [7:0]count
);


always @(posedge clk or posedge reset) begin
    if (reset == 1) begin
        count <= 8'b00000000;
        
    end else begin

        count <= count + 1;
        
    end
end
    
endmodule