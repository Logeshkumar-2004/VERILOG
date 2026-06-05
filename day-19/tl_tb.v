`timescale 1ns/1ps
module traffic_light_tb;
reg clk , reset;
wire r , g , y;

traffic_light uut(
    .clk(clk),
    .reset(reset),
    .RED(r),
    .YELLOW(y),
    .GREEN(g)
);

always #5 clk = ~clk;

initial begin
     clk = 0;
    reset = 1;
    #10;
   
    reset = 0;
    #60;
    $finish;
        
end

initial begin
    $monitor("time =%0t | reset=%b | clk=%b | red=%b | green=%b | yellow=%b",$time,reset,clk,r,g,y);
end

initial begin
    $dumpfile("tl.vcd");
    $dumpvars(0,traffic_light_tb);
end    

endmodule