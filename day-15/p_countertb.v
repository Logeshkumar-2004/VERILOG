module p_counter_tb ;

reg clk, r;
wire [3:0]counter_4;
wire [7:0]counter_8;
// 4-bit  counter
p_counter #(4) uut1(
    .clk(clk),
    .reset(r),
    .counter(counter_4)
);
// 8-bit counter
p_counter #(8) uut2(
    .clk(clk),
    .reset(r),
    .counter(counter_8)
);

always #5 clk = ~clk;
initial begin
    clk=0;
    r=1;

    #10 r=0;

    #200;
    $finish;
end

initial begin
    $display("PARAMETER_COUNTER");
    $monitor("time=%0t | reset= %b | clk= %b | counter_4= %b | counter_8= %b",$time,r,clk,counter_4,counter_8);
end

initial begin
    $dumpfile("parameter_counter.vcd");
    $dumpvars(0,p_counter_tb);

end

    
endmodule