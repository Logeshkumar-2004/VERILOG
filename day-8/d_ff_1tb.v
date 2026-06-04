module dtb ;

reg d, clk;
wire q ;

seq_d  uut(
      .d(d),
      .clk(clk),
      .q(q)
);

always #5 clk = ~clk;


initial begin
    $dumpfile("d_ff_1.vcd");
    $dumpvars(0, dtb);

    clk=0;
    

    d=0;
    #10;

    d=1;
    #10;

    d=0;
    #10;

    d=1;
    #10;
    
    $finish;

end

endmodule