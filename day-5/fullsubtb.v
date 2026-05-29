module fullsubtb;

reg a, b, bi;
wire br, d;

fullsub uut(
    .a(a),
    .b(b),
    .bin(bi),
    .diff(d),
    .borrow(br)
);

initial begin
    $dumpfile("fullsub.vcd");
    $dumpvars(0, fullsubtb);

    a=0; b=0; bi=0;
    #10;
    $display("%b %b %b | %b %b",a,b,bi,d,br);

    a=0; b=0; bi=1;
    #10;
    $display("%b %b %b | %b %b",a,b,bi,d,br);

    a=0; b=1; bi=0;
    #10;
    $display("%b %b %b | %b %b",a,b,bi,d,br);

    a=0; b=1; bi=1;
    #10;
    $display("%b %b %b | %b %b",a,b,bi,d,br);

    a=1; b=0; bi=0;
    #10;
    $display("%b %b %b | %b %b",a,b,bi,d,br);

    a=1; b=0; bi=1;
    #10;
    $display("%b %b %b | %b %b",a,b,bi,d,br);

    a=1; b=1; bi=0;
    #10;
    $display("%b %b %b | %b %b",a,b,bi,d,br);

    a=1; b=1; bi=1;
    #10;
    $display("%b %b %b | %b %b",a,b,bi,d,br);
    $finish;

end
    
endmodule