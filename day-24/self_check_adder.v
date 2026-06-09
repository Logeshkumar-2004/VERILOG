//Concept 3 — Self-Checking Testbench
module self_check_adder (
    input [1:0]a,
    input [1:0]b,
    output [2:0]sum
);
    assign sum = a + b ;
endmodule