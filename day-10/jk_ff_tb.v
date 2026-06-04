module jk_tb;

reg j, k, clk;
wire  q;

jkff uut(

    .q(q),
    .j(j),
    .k(k),
    .clk(clk)
);
    
    always #5 clk = ~clk;
    initial begin
        $dumpfile("jk.vcd");
        $dumpvars(0,jk_tb);

        


        $display("jk filpflop");
        
        
        clk =0;
        
        $monitor("time =%0t | clk= %b |j= %b |k= %b |q= %b ",$time,clk,j,k,q);
        
    
        
        j=0; k=0;
        #10; 

        j=0; k=1;
        #10;
        
        j=1; k=0;
        #10; 
        
        j=1; k=1;
        #10;
        
        j=1; k=1;
        #10;
        
        j=1; k=1;
        #10;

        $finish;


    end
    initial begin
        
    end
endmodule