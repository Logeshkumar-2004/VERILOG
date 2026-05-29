module srtb;

reg ip, clk, r;
wire [7:0] q;

sr uut(
    .ip(ip),
    .clk(clk),
    .reset(r),
    .q(q)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("sr8bit.vcd");
    $dumpvars(0,srtb);
    clk=0;
    ip=0;
    r=1;
    #10;
    r=0;
    $display("SHIFT REGISTER 8 BIT ");
    always @(*) begin
        $displlay("time=%t | reset=%b | clk=%b | ip=%b | q=%b",)
        
    end
end
    
endmodule