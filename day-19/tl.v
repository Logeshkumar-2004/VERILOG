module traffic_light (
    input clk, reset,
    output reg RED, 
    output reg YELLOW,
    output reg GREEN
);
    parameter red =2'b00 ;
    parameter green =2'b01 ;
    parameter yellow =2'b10 ;

    reg [1:0] state;
    reg [1:0] next_state;

    //state workflow

    always @(posedge clk or posedge reset) begin
        if (!reset) begin
            state <= next_state;
        end else begin
            state <= red ;
        end
    end

    //next_state work flow

    always @(*) begin
        case (state)
            red : next_state = green;
            green : next_state = yellow;
            yellow : next_state = red;
            default:next_state = red; 
        endcase
        
    end

    always @(*) begin
        RED = 0;
        GREEN = 0;
        YELLOW = 0;
        case (state)
            red : RED = 1;
            green : GREEN = 1;
            yellow : YELLOW = 1;
            
        endcase
        
    end
endmodule