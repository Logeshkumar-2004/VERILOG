/*Practice Task

Build:

Mod-10 Counter

Count only:

0 → 9

Then restart from:

0
*/

module sc(
    input  clk , reset, 
    output reg [4:0]count
);

always @(posedge clk or posedge reset ) begin
    if (reset == 1 || count == 9) begin
        
       count <= 4'b0000;
        
    end else begin

         count <= count + 1;

        
        
    end
end


    
endmodule