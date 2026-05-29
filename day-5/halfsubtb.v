module halfsubtb ;

reg a, b;
wire d, br;

halfsub uut(
    .a(a),
    .b(b),
    .diff(d),
    .borrow(br)
);

initial begin
    $dumpfile("halfsub.vcd");
    $dumpvars(0, halfsubtb);

    a=0; b=0;
    #10;
    $display("%b %b | %b %b",a,b,d,br);

    a=0; b=1;
    #10;
    $display("%b %b | %b %b",a,b,d,br);

    a=1; b=0;
    #10;
    $display("%b %b | %b %b",a,b,d,br);

    a=1; b=1;
    #10;
    $display("%b %b | %b %b",a,b,d,br);

    $finish;

    
end 
    

 
    
endmodule