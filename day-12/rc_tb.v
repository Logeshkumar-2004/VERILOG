`timescale 1ns/1ps
module rc_tb ;

reg  clk, r;
wire [3:0] q;

rc uut (
   
    .clk(clk),
    .reset(r),
    .q(q)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("rc_4-bit.vcd");
    $dumpvars(0, rc_tb);

    clk=0;

    r=1;
    #10;
    r=0;

    $display("4-BIT RING COUNTER");
    $monitor("time=%0t | reset=%b | q=%b",$time, r, q);

    #45;

    $finish;

    

end

endmodule