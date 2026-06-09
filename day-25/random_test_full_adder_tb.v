module random_test_full_adder_tb ;

reg [2:0]a;
reg [2:0]b;
reg [2:0]cin;

wire [3:0]sum;
wire [3:0]carry;

integer i , j ,k;

full_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
);

initial begin
    $dumpfile("random_test_full_adder.vcd");
    $dumpvars(0,random_test_full_adder_tb);
    

    for (i = 0; i < 8 ; i++) begin
        for (j = 0; j < 8 ; j++ ) begin
            for (k =0 ; k < 8; k++ ) begin

            a = $random;
            b = $random;
            cin = $random;
            #10;
            if ({carry,sum} == (a + b + cin)) begin
                $display("PASS time=%0t | a=%b | b=%b | c_in=%b | sum=%b |carry=%b |",$time,a,b,cin,sum,carry);
            end else begin
                $display("NO time=%0t | a=%b | b=%b | c_in=%b | sum=%b |carry=%b |",$time,a,b,cin,sum,carry);
            end
                
            end
            
        end
    end
    $finish;
end
    
endmodule