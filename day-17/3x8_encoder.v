/*
Challenge 1

8-to-3 Encoder

*/

module encoder(
    input [7:0]a,
    output reg [2:0]y
);
    always @(*) begin
        case (a)
            8'b00000001 : y=000;
            8'b00000010 : y=001;
            8'b00000100 : y=010;
            8'b00001000 : y=011;
            8'b00010000 : y=100;
            8'b00100000 : y=101;
            8'b01000000 : y=110;
            8'b10000000 : y=111;
            
        endcase
        
    end
endmodule