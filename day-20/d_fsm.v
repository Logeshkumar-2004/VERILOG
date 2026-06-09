module d_fsm (
    input clk , reset, d_in,
    output reg detect
);
    parameter s0 = 3'b000 ;
    parameter s1 = 3'b001 ;
    parameter s2 = 3'b010 ;
    parameter s3 = 3'b011 ;
    parameter s4 = 3'b100 ;

    reg [2:0]state ;
    reg [2:0]next_state;

    always @(posedge clk or posedge reset) begin
        if (!reset) begin
            state <= next_state;
        end else begin
            state <= s0 ;
        end
                
    end

    always @(*) begin
        case (state)
        s0:
            if (d_in) begin
                next_state = s1 ;
            end else begin
                next_state = s0 ;
            end 
            s1:
            if (!d_in) begin
                next_state = s2 ;
            end else begin
                next_state = s1 ;
            end 
            s2:
            if (d_in) begin
                next_state = s3 ;
            end else begin
                next_state = s0 ;                
            end
            s3:
            if (d_in) begin
                next_state = s4;
            end else begin
                next_state = s2;
            end
            s4:
            if (d_in) begin
                next_state = s1;
            end else begin
                next_state = s2;
            end
            default: next_state = s0;
        endcase
    end

    always @(*) begin
        detect = (state == s4);
    end
endmodule