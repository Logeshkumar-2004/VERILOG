module random_full_adder_tb ;
reg [1:0]a;
reg [1:0]b;
wire [2:0]y;


integer i;

random_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("random_test_gate.vcd");
    $dumpvars(0,random_full_adder_tb);
    $monitor("time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);

    for (i = 0;i < 20; i++ ) begin
        {a,b} = $random ;
       // a = $random;
        // b = $random;
        #10;
        if (y == a | b) begin
              $display("PASS time=%0t | a=%b | b=%b | y=%b|",$time,a,b,y);
            
        end else begin

              $display("fail time=%0t | a=%b | b=%b |y=%b |",$time,a,b,y);
        end
    end

    
    $finish;

end
    
endmodule