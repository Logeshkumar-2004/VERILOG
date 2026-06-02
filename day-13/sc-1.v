/*Small Modification Challenge

Challenge 1 — Down Counter

Modify:

Count <= count – 1;*/

module sc(
    input clk,reset,
    output reg [3:0]count
);

always @(posedge clk or posedge reset) begin
    if (reset == 1) begin
        count <= 4'b1111 ;
        
    end else begin
        count <= count-1;
        
    end
end
    
endmodule