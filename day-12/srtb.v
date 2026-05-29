module srtb;

reg ip,clk,r;
wire [3:0]q;

sr uut (

    .ip(ip),
    .clk(clk),
    .reset(r),
    .q(q)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("sr.vcd");
    $dumpvars(0,srtb);
    clk=0;
    r=1;
    #10;
    r=0;
    $display("shift register");
    //lift shift register
    $monitor("time=%0t|reset=%b|clk=%b|ip=%b | q=%b",$time,r,clk,ip,q);
    //right shift register
   // $monitor("time=%0t | clk=%b | q=%b | ip=%b",$time , clk, q , ip);


    ip=1;
    #10;

    ip=0;
    #10;

    ip=1;
    #10;

    ip=1;
    #10;

    $finish;
    
end


    
endmodule