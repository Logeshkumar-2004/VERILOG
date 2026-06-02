 module sc_tb;

reg clk ,r ;
wire [4:0]c ;

sc uut (

    .clk(clk),
    .count(c),
    .reset(r)
    
);

always #5 clk = ~clk;
initial begin
    $dumpfile("sc_10_counter.vcd");
    $dumpvars(0,sc_tb);
    r=1;
   

    $display("Synchronous Counter");
    $monitor("time=%0t ,reset=%b , clk=%b ,counter=%b",$time,r,clk,c);



    clk=0;
     #10;
    r=0;

    
    
    
    
    
    #10 

    #400;
    $finish;
     


end
    
endmodule