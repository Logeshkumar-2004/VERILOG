/*
2-to-4 Decoder
Inputs:
a[1:0]
Outputs:
y[3:0]
Only ONE output becomes HIGH at a time.
a	y
00	0001
01	0010
10	0100
11	1000
*/

module decoder (
    input [1:0]a,
    output reg [3:0]y
);

always @(*) begin
    case (a)
        2'b00: y = 4'b0000;
        2'b01: y = 4'b0001;
        2'b10: y = 4'b0100;
        2'b11: y = 4'b1000;
         
    endcase
end
    
endmodule