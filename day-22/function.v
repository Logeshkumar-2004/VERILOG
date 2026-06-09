/*
Function Structure

Function return_type function_name;

Input ...

Begin

    Function_name = value;

End

Endfunction

*/
module f_and (
    input [3:0]a,
    input [3:0]b,

    output [4:0]y
);

function [4:0]and_gate;

input [3:0]ip_1;
input [3:0]ip_2;
begin
    and_gate= ip_1 + ip_2;
end

    
endfunction

 assign y = and_gate(a,b);

    
endmodule
