module tff_r ;

reg t, clk, r;
wire q;

t_ff_r uut(
    .t(t),
    .clk(clk),
    .reset(r),
    .q(q)

);

always #5 clk = ~clk;

initial begin
    $dumpfile("tff_rest.vcd");
    $dumpvars(0, tff_r);
    clk=0;
    $display("'/ T filopflop with reset button");
    $monitor("time=%0t, reset=%b, clk=%b, t=%b, q=%b",$time,r,clk,t,q);
    r=1;
    #10;
    r=0;

    #10 t=0;
    #10 t=1;
    #10 t=0;
    #10 t=1;
    #10

    $finish;
end
    
endmodule