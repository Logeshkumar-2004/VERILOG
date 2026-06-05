/*
Challenge 1

4-Bit Comparator

Challenge 2

Comparator with Enable
*/
module c_4(
    input [3:0]a,
    input [3:0]b,
    input e,
    output reg gt,
    output reg lt,
    output reg eq
);

always @(*) begin
    


if (!e) begin
   
    gt=0;
    lt=0;
    eq=0;
end else begin
    if (a>b) begin
        gt=1;
        lt=0;
        eq=0;
        
    end else begin
        if (a<b) begin
            gt=0;
            lt=1;
            eq=0;
        end else begin
            if (a==b) begin
                gt=0;
                lt=0;
                eq=1;
            end 
        end
        
    end
    
end

end
    
endmodule