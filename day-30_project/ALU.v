module ALU (
    input [3:0]a ,
    input [3:0]b,
    input [3:0]sel,
    output reg [3:0]y

);
always @(*) begin
    case (sel)
    4'b0000:y <= a + b ;
    4'b0001:y <= a - b ;
    4'b0010:y <= a & b ;
    4'b0011:y <= a | b ;
    4'b0100:y <= a ^ b ;
    4'b0101:y <= ~(a & b) ;
    4'b0110:y <= ~(a | b) ;
    4'b0111:y <= ~(a ^ b) ;

    default: $display("invalid input");
endcase
    
end


    
endmodule