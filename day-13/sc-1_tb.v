module sc_tb;

reg clk, r;
wire [3:0]c;

sc uut(
    .clk(clk),
    .reset(r),
    .count(c)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("sc-1.vcd");
    $dumpvars(0,sc_tb);
    clk=0;
    
    $display("synchronous counters (-1)");
    $monitor("time=%0t , reset=%b, clk=%b, count=%b",$time, r, clk, c);
    r=1;
    #10;

    r=0;
    #10;


    #160;
    $finish;    
end
    
endmodule