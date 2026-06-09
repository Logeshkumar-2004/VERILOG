/*
Challenge 3 — Full Adder Verification Using Task
*/

module full (
    input a , b, c_in,
    output sum , carry
);
    assign {carry,sum} = a + b + c_in ;
endmodule