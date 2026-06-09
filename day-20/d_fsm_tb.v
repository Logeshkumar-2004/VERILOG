module d_fsm_tb;
reg d_in ; 
reg clk ;
reg r;
wire d;

d_fsm uut(
    .d_in(d_in),
    .clk(clk),
    .reset(r),
    .detect(d)
);
always #5 clk = ~clk;

initial begin
    clk=0;
    r=1;
    d_in=0;
    #10;
    r=0;

    #10 d_in = 1;
    #10 d_in = 0;
    #10 d_in = 1;
    #10 d_in = 1;
    #20;

 

    $finish;

end

initial begin
    $dumpfile("d_fsm.vcd");
    $dumpvars(0,d_fsm_tb);
end
initial begin
    $monitor("time=%0t | reset=%b | clk=%b | d_in=%b | detect=%b |",$time,r,clk,d_in,d);
end
    
endmodule