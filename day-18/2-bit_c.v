/*
2-bit_comparator
*/
module comparator(
    input [1:0]a ,
    input [1:0]b,
    output g,
    output e,
    output l
);

assign g = (a < b);
assign l = (a > b);
assign e = (a == b);
    
endmodule