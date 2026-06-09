module self_check_adder_tb ;
    reg [1:0]a;
    reg [1:0]b;

    wire [2:0]sum;

    integer i , j;


self_check_adder  uut(
    .a(a),
    .b(b),
    .sum(sum)
);

initial begin
    $dumpfile("self_check_adder.vcd");
    $dumpvars(0,self_check_adder_tb);
    //$monitor("time=%0t | a=%b | b=%b | sum=%b",$time,a,b,sum);

    for (i = 0;i < 4 ; i++ ) begin
        for (j = 0; j < 4 ; j++ ) begin
            a=i;
            b=j;
            #10;

            if (sum == a+b) begin
                $display("test_pass time=%0t | a=%b | b=%b | sum=%b",$time,a,b,sum);
            end else begin
                $display("test_fail time=%0t | a=%b | b=%b | sum=%b",$time,a,b,sum);
                
            end
        end
    end
    $finish;
end
    
endmodule