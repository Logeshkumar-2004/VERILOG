module decoder_tb;
reg [2:0]a;
wire [7:0]y;

decoder uut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("3x8_decoder.vcd");
    $dumpvars(0,decoder_tb);

    $monitor("time=%0t | a=%b | y=%b ",$time,a,y);

    a=000;
    #10;

    a=001;
    #10;

    a=010;
    #10;

    a=011;
    #10;

    a=100;
    #10;

    a=101;
    #10;

    a=110;
    #10;

    a=111;
    #10;

    $finish;

    
end
endmodule