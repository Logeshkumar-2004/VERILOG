module d_ff_0tb ;

reg d, c;
wire q;   

d_ff_0  uut (
    .d(d),
    .clk(c),
    .q(q)
);

always #5 c = ~c;

initial begin
    $dumpfile("d_ff_0.vcd");
    $dumpvars(0, d_ff_0tb);

    c=0;

    d=0;
    #10;

    d=1;
    #10;

    d=0;
    #10;

    d=1;
    #10;

    $finish;


    
    
end
endmodule