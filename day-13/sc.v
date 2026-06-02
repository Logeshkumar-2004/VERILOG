/*Today:

4-bit Synchronous Up Counter



Important Concept

In synchronous counters: ✅ All flip-flops use SAME clock

Advantages:

Faster

Reliable

Used in industry




Counter Logic

Every positive clock edge:

Count = count + 1*/

module sc(
    input  clk, reset,
    output reg [3:0]count 
);

always @(posedge clk or posedge reset) begin
    if (reset == 0) begin
        count <= count + 1;
        
    end else begin

        count <= 4'b0000;
        
    end
end


    
endmodule