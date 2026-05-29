module jk_tb;
reg j, k, r, clk;
wire q;
jk_ff uut(
    .q(q),
    .j(j),
    .k(k),
    .reset(r),
    .clk(clk)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("jk_reset.vcd");
    $dumpvars(0,jk_tb);

    j=0;
    
    k=0;
    clk=0;
    r=1;
    #10;
    r=0;

    j=0; k=0;
    #10;

    j=0; k=1;
    #10;

    j=1; k=0;
    #10;

    j=1; k=1;
    #10;

    j=1; k=1;
    #10;

    j=1; k=1;
    #10;

    $finish;

end

initial begin
    $display("jk filpflop with reset button");
    $monitor("time=%0t| clk=%b | reset=%b | j=%b | k=%b| q=%b",$time,clk,r,j,k,q);
end
    
endmodule