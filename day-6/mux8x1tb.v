module muxtb ;
reg a, b, c, d, e, f, g, h, s0, s1, s2 ;
wire y;

mux uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .h(h),
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .y(y)
);

initial begin
    $dumpfile("mux8x1.vcd");
    $dumpvars(0, muxtb);

    a=0; b=1; c=0; d=1; e=0; f=1; g=0; h=1;
    #10;

    s2=0; s1=0; s0=0;
    #10;

    s2=0; s1=0; s0=1;
    #10;

    s2=0; s1=1; s0=0;
    #10;

    s2=0; s1=1; s0=1;
    #10;

    s2=1; s1=0; s0=0;
    #10;

    s2=1; s1=0; s0=1;
    #10;

    s2=1; s1=1; s0=0;
    #10;

    s2=1; s1=1; s0=1;
    #10;

    $finish;

    

end
    always @(s2 or s1 or s0) begin
       $display("%b %b %b %b %b %b %b %b | %b %b %b | %b ",a,b,c,d,e,f,g,h,s0,s1,s2,y);
    
    end

endmodule