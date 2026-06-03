/*
Challenge 1 — Parameterized Adder

Create:

4-bit adder

8-bit adder


Using SAME module.

Hint:

Parameter WIDTH = 4;
*/



module p_adder #(
    parameter WIDTH = 4
) (
   input a ,b ,cin ,
   output [WIDTH-1:0]sum,
   output [WIDTH-1:0]carry

    /*input [WIDTH-1:0] a ,
    input [WIDTH-1:0] b ,
    output sum,carry*/
);
  assign sum =a ^ b ^ cin;
  assign carry = (a & b) | (b & cin) | (cin & a);

  

    //assign {carry,sum} = a+b;
endmodule