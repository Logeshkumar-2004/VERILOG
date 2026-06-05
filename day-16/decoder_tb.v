module decoder_tb;

reg [1:0]a;
wire [3:0]y;

decoder uut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("decoder.vcd");

    $dumpvars(0,decoder_tb);

    $monitor("time=%0t | a=%b | y=%b",$time,a,y);

    a=00;
    #10;

    a=01;
    #10;

    a=10;
    #10;

    a=11;
    #10;

    #5;


    $finish;
end
    
endmodule