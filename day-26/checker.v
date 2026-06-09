/*
Challenge 1

nand Monitor & Checker

*/

module checker (
    input a , 
    input b ,
    output nand_gate
);
    assign nand_gate = ~(a & b);
endmodule