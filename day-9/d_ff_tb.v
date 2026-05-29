module dff_tb;

reg d, clk;
wire q ;

dff uut(
    .d(d),
    .q(q),
    .clk(clk)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0,dff_tb);
    clk = 0;

    $display("time clk d , q");
    $monitor("%0t,%b,%b,%b",$time,d,clk,q);

    d=0;
    #10;

    d=1;
    #10;

    $finish;

end

    
endmodule