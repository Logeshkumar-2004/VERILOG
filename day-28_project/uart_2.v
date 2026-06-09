/*
Challenge 1 — Transmit Another Byte

Change:

Data_in = 8’b11001100;

Expected UART Sequence

Start

0
0
1
1
0
0
1
1

Stop

GTKWave Signals

Tx
Bit_count

*/

module uart (
    input clk , reset ,start,
    input [7:0]data_in,
    output reg busy,
    output reg tx 

);
reg [3:0]bit_counter;
reg [7:0]data_reg;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        tx <= 1;
        busy <= 0;
        bit_counter <= 0;
    end else begin
        if (start && !busy) begin
            tx <= 0;
            busy <= 1;
            data_reg <= data_in;
            bit_counter <= 0;
            
        end 
        else if(busy) begin
            bit_counter <= bit_counter+1;
            case (bit_counter)
                0:tx <= data_reg[0];
                1:tx <= data_reg[1];
                2:tx <= data_reg[2];
                3:tx <= data_reg[3];
                4:tx <= data_reg[4];
                5:tx <= data_reg[5];
                6:tx <= data_reg[6];
                7:tx <= data_reg[7];
                8:
                begin
                    tx <= 1;
                    busy <= 0;
                end
                


                
            endcase

            
        end
        
    end

    
end
    
endmodule