/*
Challenge 1
3-to-8 Decoder
Design
module decoder_3x8(
    input [2:0] a,
    output reg [7:0] y
);

always @(*)
begin
    case(a)
        3'b000: y=8'b00000001;
        3'b001: y=8'b00000010;
        3'b010: y=8'b00000100;
        3'b011: y=8'b00001000;
        3'b100: y=8'b00010000;
        3'b101: y=8'b00100000;
        3'b110: y=8'b01000000;
        3'b111: y=8'b10000000;
    endcase
end

endmodule

Expected Output
000 → 00000001
001 → 00000010
010 → 00000100
011 → 00001000
100 → 00010000
101 → 00100000
110 → 01000000
111 → 10000000

GTKWave Signals
a[2:0]
y[7:0]

Challenge 2
Add Enable Signal
Design
module decoder_en(
    input en,
    input [1:0] a,
    output reg [3:0] y
);

always @(*)
begin
    if(en)
    begin
        case(a)
            2'b00:y=4'b0001;
            2'b01:y=4'b0010;
            2'b10:y=4'b0100;
            2'b11:y=4'b1000;
        endcase
    end
    else
        y=4'b0000;
end

endmodule

Expected Output
en=0 → 0000

en=1 a=00 → 0001

en=1 a=01 → 0010

GTKWave Signals
en
a[1:0]
y[3:0]

Challenge 3
Implement the decoder using:
assign
Hint:
assign y = (a==2'b00) ? 4'b0001 :
           (a==2'b01) ? 4'b0010 :
           (a==2'b10) ? 4'b0100 :
                        4'b1000;

*/

module decoder(
    input [2:0]a,
    output [7:0]y
);
    assign y =  (a==3'b000)? 8'b00000001 :
                (a==3'b001)? 8'b00000010 :
                (a==3'b010)? 8'b00000100 :
                (a==3'b011)? 8'b00001000 :
                (a==3'b100)? 8'b00010000 :
                (a==3'b101)? 8'b00100000 :
                (a==3'b110)? 8'b01000000 : 8'b10000000 ;

               
endmodule