module loop_gate_tb ;
reg a;
reg b;
wire y;


integer i;

loop_ uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("loop_gate.vcd");
    $dumpvars(0,loop_gate_tb);
    $monitor("time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);

    for (i = 0;i < 4; i++ ) begin
        {a,b} = i ;
        #10;
    end

    
    $finish;

end
    
endmodule