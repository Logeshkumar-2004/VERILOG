module and_3_tb;

reg a, b, c;
wire y;

and_3 uut(
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);

initial begin
    $dumpfile("and_3.vcd");
    $dumpvars(0, and_3_tb);

    a=0; b=0; c=0; 
    #10;

    a=0; b=0; c=1;
    #10;


    a=0; b=1; c=0;
    #10;

    a=0; b=1; c=1;
    #10;

    a=1; b=0; c=0;
    #10;

    a=1; b=0; c=1;
    #10;

    a=1; b=1; c=0;
    #10;

    a=1; b=1; c=1;
    #10;

    $finish;


end



endmodule