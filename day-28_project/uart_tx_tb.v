module uart_tx_tb;
reg clk;
reg r ;
reg start ;
reg [7:0]data_in ;
wire tx ;
wire busy;

uart_tx uut(
    .reset(r),
    .clk(clk),
    .start(start),
    .data_in(data_in),
    .tx(tx),
    .busy(busy)
);
always #5 clk = ~clk;
    initial begin
        $dumpfile("uart_tx.vcd");
        $dumpvars(0,uart_tx_tb);
         $monitor("time =%0t | reset =%b | start=%b | tx=%b | busy =%b",$time, r,start,tx,busy);


        clk=0;
        r = 1;
        start = 0;
        data_in = 8'b10100101;
        #10;
        r = 0;
        #10;
        start = 1;
        #10;
        start = 0;
        #150$finish;
        


    end
   
endmodule