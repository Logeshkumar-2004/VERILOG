module e_tl (
    input clk , enable,reset,
    output reg RED,
    output reg YELLOW ,
    output reg GREEN,
    output reg WALK
);

parameter red = 2'b00 ;
parameter yellow = 2'b01 ;
parameter green = 2'b10 ;
parameter walk = 2'b11 ;
reg [1:0]state;
reg [1:0]next_state;

always @(posedge clk or posedge reset) begin

    if (reset) begin
        state <= red;
    end else begin
         if (enable) begin
               state <= next_state ;

    end else begin

        state <= state;       
    end
        
    end
   
    
end

always @(*) begin
    case (state)
         red : next_state = green;
         green : next_state = yellow;
         yellow : next_state = walk;
         walk : next_state = red ; 
        default: next_state = red ; 
    endcase
    
end

always @(*) begin
    RED = 0;
    GREEN = 0;
    YELLOW = 0;
    WALK = 0;

    case (state)
        red: RED = 1;
        green: GREEN = 1;
        yellow: YELLOW = 1; 
        walk: WALK = 1;
        
    endcase
end
    
endmodule