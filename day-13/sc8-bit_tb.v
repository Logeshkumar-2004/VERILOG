module sc_tb;
reg clk, r;
wire [7:0] c;

sc uut(
    .clk(clk),
    .reset(r),
    .count(c)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("sc8-bit.vcd");
    $dumpvars(0,sc_tb);
    clk=0;
    $display(" 8-bit synchronous counters ");
    $monitor("time=%0t , reset=%b, clk=%b, count=%b",$time, r, clk, c);

    r=1;
    #10;

    r=0;
    #600;
    $finish;

end
endmodule