module muxtb ;

reg a, b, s;
wire y;

mux uut (
    .i0(a),
    .i1(b),
    .sel(s),
    .y(y)
);

initial begin
    $dumpfile("mux2x1.vcd");
    $dumpvars(0, muxtb);

    a=0; b=1; s=0;
    #10
    $display("%b %b %b %b", a,b,s,y);

    a=1; b=0; s=1;
    #10
    $display("%b %b %b %b", a,b,s,y);

    $finish;
    

    
end
    
endmodule