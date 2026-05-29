`timescale 1ns/1ps
module nottb;
reg a;
wire y;

not_gate uut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("not.vcd");
    $dumpvars(0, nottb);

    $display("a y");

    a=0; 
    #10;
$display ("%b %b", a, y);
    a=1; 
    #10;
$display ("%b %b", a, y);
    a=0; 
    #10;
$display ("%b %b", a, y);
    a=1;
    #10;
$display ("%b %b", a, y);

$finish;
end
    
endmodule