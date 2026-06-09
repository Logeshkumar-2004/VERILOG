/*
Challenge 2 — Function for Multiplication

*/

module m_f (
    input [3:0]a, 
    input [3:0]b,
    output [7:0]y
);

function [7:0] multiplication;
    input [3:0]ta;
    input [3:0]tb;
    begin
        multiplication = ta * tb ;
    end
endfunction

assign y = multiplication(a,b);
    
endmodule