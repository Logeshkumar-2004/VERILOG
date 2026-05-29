`timescale 1ns/1ps
module xortb ;
reg a, b;
wire y;

xor_gate uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("xor.vcd");
    $dumpvars(0, xortb);

    a=0; b=0;
    #10;
    $display ("%b %b %b" , a, b ,y);

    a=0; b=1;
    #10;
    $display ("%b %b %b" , a, b ,y);


    a=1; b=0;
    #10;
    $display ("%b %b %b" , a, b ,y);

    a=1; b=1;
    #10;
    $display ("%b %b %b" , a, b ,y);
    $finish;
end
    
    
endmodule