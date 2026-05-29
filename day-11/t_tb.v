module t_tb;

reg t, clk;
wire q;

t_ff uut(

    .t(t),
    .clk(clk),
    .q(q)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("t_ff.vcd");
    $dumpvars(0, t_tb);

    clk = 0;
    
    
    $display("t flipflop");
    $monitor("time=%0t | clk= %b| t=%b | q=%b",$time,clk,t,q);


   
    t=0;
    #10;
     t=1;
    #10 ;
    t=0;
    #10;
     t=1;
     #10;

    $finish;



end
    
    
endmodule