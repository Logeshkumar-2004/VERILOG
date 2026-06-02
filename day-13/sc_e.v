/*
Challenge 3 — Add Enable Signal

Only count when:

If(enable)
*/

module sc(
    input  clk, reset,enable,
    output reg [3:0]count 
);

always @(posedge clk or posedge reset) begin
    if (reset == 0 && enable ==1) begin
        count <= count + 1;
        
    end else begin

        count <= 4'b0000;
        
    end
end


    
endmodule