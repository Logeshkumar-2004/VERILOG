module comparator_tb;

reg [1:0]a;
reg [1:0]b;
wire g;
wire l;
wire e;

comparator uut(
    .a(a),
    .b(b),
    .g(g),
    .l(l),
    .e(e)
);

initial begin
    $dumpfile("2-bit_c.vcd");
    $dumpvars(0,comparator_tb);
    $monitor("time=%0t | g=%b | l=%b | e=%b",$time,g,l,e);

    a=01;b=01;
    #10;

    a=10;b=11;
    #10;

    a=11;b=01;
    #10;
    $finish;

end
    
endmodule