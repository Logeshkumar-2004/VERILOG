module full_adder (
    input [2:0]a,
    input [2:0]b,
    input [2:0]cin,
    output [3:0]sum,
    output [3:0]carry
);

assign {carry ,sum} = a + b + cin ;
    
endmodule