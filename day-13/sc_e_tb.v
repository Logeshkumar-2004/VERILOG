module sc_enable_tb;

reg clk  ,r ,e;
wire [3:0] c;

sc uut (

    .clk(clk),
    .reset(r),
    .count(c),
    .enable(e)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("sc_enable.vcd");
    $dumpvars(0,sc_enable_tb);

    clk=0;
    r=1;
    e=0;

    $display("Synchronous Counter");
    $monitor("time=%0t, reset=%b, enable=%b, clk=%b ,counter=%b",$time,r,e,clk,c);

    #10 r=0;e=1;


    #100;
    $finish;
     


end
    
endmodule