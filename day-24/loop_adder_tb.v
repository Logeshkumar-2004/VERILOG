module loop_2bit_adder ;
reg [1:0]a ;
reg [1:0]b;
wire [2:0]sum;
integer i , j;

loop_2bit uut(
    .a(a),
    .b(b),
    .sum(sum)
);


initial begin
    $dumpfile("loop_adder.vcd");
    $dumpvars(0,loop_2bit_adder);
    $monitor("time=%0t | a=%b | b=%b | sum=%b",$time,a,b,sum);

    for ( i = 0 ; i<4 ; i++ ) begin
        for (j = 0; j<4 ; j++ ) begin
            a = i ;
            b = j ;
            #10;            
        end
    end
    $finish;
end
    
endmodule