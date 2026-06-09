/*

Task Structure

Task task_name;

Input ...

Begin

...

End

Endtask
*/

module t_and (
    input a,b,
    output y
);
    assign y = a & b;
endmodule