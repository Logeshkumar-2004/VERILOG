/* Build:

4-bit Ring Counter

Hint:

Q <= {q[2:0], q[3]}; */

module rc (
    input clk,reset,
    output reg [3:0] q=4'b0001
);

always @(posedge clk or posedge reset) begin
    if (reset == 0) begin
        q <= {q[2:0], q[3]}; 
    end else begin
        q <= 4'b0001;
        
    end
    
end
    
endmodule