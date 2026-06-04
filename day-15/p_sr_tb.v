module p_sr_tb ;

reg clk, r, ip;
wire [3:0]q_4;
wire [7:0]q_8;

p_sr #(4) uut1 (
    .clk(clk),
    .reset(r),
    .ip(ip),
    .q(q_4)
);

p_sr #(8) uut2 (
    .clk(clk),
    .reset(r),
    .ip(ip),
    .q(q_8)
);

always #5 clk = ~clk;


initial begin
    
    r=1;
    clk=0;
    ip=0;
    #10;

    r=0;
    

    ip=1;
    #10;

    ip=0;
    #10;

    ip=1;
    #10;

    ip=1;
    #10;

    $finish;

end
initial begin

    $monitor("time=%0t | reset=%b | clk=%b|ip=%b | q_4=%b |q_8=%b",$time,r,clk,ip,q_4,q_8);
    
end


initial begin
    $dumpfile("p_sr.vcd");
    $dumpvars(0,p_sr_tb);
end

endmodule