module sc_tb;

reg clk  ,r;
wire [3:0] c;

sc uut (

    .clk(clk),
    .reset(r),
    .count(c)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("4-bit_sc.vcd");
    $dumpvars(0,sc_tb);

    clk=0;
    r=1;
    $display("Synchronous Counter");
    $monitor("time=%0t, reset=%b, clk=%b ,counter=%b",$time,r,clk,c);

    #10 r=0;


    #100;
    $finish;
     


end
    
endmodule