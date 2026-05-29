`timescale 1ns/1ps
module dff_tb;

reg d;
reg clk; 
reg reset;
wire q;

dff uut(
    .d(d),
    .clk(clk),
    .reset(reset),
    .q(q)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("dff_reset.vcd");
    $dumpvars(0,dff_tb);
      $monitor("%0t|%b|%b|%b|%b",$time,reset,clk,d,q);

    clk=0;
    reset =1;
    
    #5 reset = 0;
    

    d=0;
    #5;

    d=1;
    #10;

    

     d=0;
    #10;

    d=1;
    #10;

    

    $finish;
end
initial begin
      
end




endmodule