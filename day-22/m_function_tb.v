module m_f_tb;
reg [3:0]a;
reg [3:0]b;
wire [7:0]y;

m_f uut(

    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("m_f.vcd");
    $dumpvars(0,m_f_tb);
    $monitor("time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);


    a=0;b=0;

    #10 a = 1 ; b =10;
    #10 a = 2 ; b = 7;
    #10 a = 3 ; b = 3;
    #10 $finish;

end
endmodule