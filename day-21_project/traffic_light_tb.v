
module traffic_light_tb;
reg clk , enable,reset;
wire red , green , yellow ,walk;

e_tl uut(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .RED(red),
    .YELLOW(yellow),
    .GREEN(green),
    .WALK(walk)
);

always #5 clk = ~clk;

initial begin
     clk = 0;
     enable = 0;
     reset=1;
     #10;
      $monitor("time =%0t |reset=%b| enable=%b | clk=%b | red=%b | green=%b | yellow=%b | walk=%b",$time,reset,enable,clk,red,green,yellow,walk);
     reset=0;
    enable = 1;
    #30;
   
    enable = 0;
    #10;

    enable = 1;
    #30;
    $finish;
        
end



initial begin
    $dumpfile("traffic_light.vcd");
    $dumpvars(0,traffic_light_tb);
end    

endmodule