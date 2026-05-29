//Shift Register {series input series output(siso)}
/*
Concept

Suppose input sequence is:

1 → 0 → 1 → 1

After each clock pulse, bits shift like this:

Clock	Q3 Q2 Q1 Q0

1	0001
2	0010
3	0101
4	1011
*/

module sr(
    input reset, clk,ip,
    output reg [3:0]q
);
    always @(posedge clk or posedge reset) begin

        if (reset) begin
            q <= 4'b0000;
        end else begin
            q <= {q[2:0],ip}; // left shift register
           // q <= {ip,q[3:1]}; // right shift register


        end
        
    end
endmodule