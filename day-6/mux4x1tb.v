module muxtb;
reg a, b, c, d, s1=0, s0=0;
wire y;

muxd uut(
    .i0(a),
    .i1(b),
    .i2(c),
    .i3(d),
    .s0(s0),
    .s1(s1),
    .y(y)
);

initial begin
    $dumpfile("mux4x1tb.vcd");
    $dumpvars(0, muxtb);
    

    a=0; b=1; c=0; d=1;
    #10;
    s1=0; s0=0;
    #10;

    s1=0; s0=1;
    #10;

    s1=1; s0=0;
    #10;

    s1=1; s0=1;
    #10;

    $finish;


end

always @(s0 or s1) begin
    $display("%b %b %b %b %b %b %b",a,b,c,d,s0,s1,y);
    
end
    
endmodule