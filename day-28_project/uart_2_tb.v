module uart_tb;
reg clk; 
reg r; 
reg start;
reg [7:0]data_in ;
wire busy;
wire tx;

uart uut(
    .reset(r),
    .clk(clk),
    .start(start),
    .data_in(data_in),
    .tx(tx),
    .busy(busy)
);
    always #5 clk = ~clk ;
    initial begin
        $dumpfile("uart.vcd");
        $dumpvars(0,uart_tb);
        $monitor("time=%0t | reset=%b | tx =%b | busy =%b",$time,r,tx,busy);

///10100101




        clk = 0;
        r = 1;
        start = 0;
        data_in = 8'b10100101;
        #10;
        r=0;
        start = 1;
        #10;
        start = 0;

        #150 ;

        //11001100
        
        $display(" 11001100");
        clk = 0;
        r = 1;
        start = 0;
        data_in = 8'b11001100;
        #10;
        r=0;
        start = 1;
        #10;
        start = 0;

        #150 ;

        //11110000
         $display(" 11110000");

        clk = 0;
        r = 1;
        start = 0;
        data_in = 8'b11110000;
        #10;
        r=0;
        start = 1;
        #10;
        start = 0;

        #150 ;
        $finish;



//11001100

//11110000
    end
endmodule