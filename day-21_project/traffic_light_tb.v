
module traffic_light_tb;
reg clk , enable,reset;
wire r , g , y ,w;

e_tl uut(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .RED(r),
    .YELLOW(y),
    .GREEN(g),
    .WALK(w)
);

always #5 clk = ~clk;

initial begin
     clk = 0;
     enable = 0;
     reset=1;
     #10;
      $monitor("time =%0t |reset=%b| enable=%b | clk=%b | red=%b | green=%b | yellow=%b | walk=%b",$time,reset,enable,clk,r,g,y,w);
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
    $dumpfile("e_tl.vcd");
    $dumpvars(0,traffic_light_tb);
end    

endmodule