module halfaddertb;

reg a, b;
wire sum, carry;

half_adder uut (
    .a(a),
    .b(b),
    .sum(s),
    .carry(c)
);
    
    initial begin
        $dumpfile("halfadder.vcd");
        $dumpvars(0, halfaddertb);

        a=0; b=0;
        #10;
        $display ("%b %b | %b %b" , a, b, s, c);

        a=0; b=1;
        #10;
        $display ("%b %b | %b %b" , a, b, s, c);

        a=1; b=0;
        #10;
        $display ("%b %b | %b %b" , a, b, s, c);

        a=1; b=1;
        #10;
        $display ("%b %b | %b %b" , a, b, s, c);
        
        $finish;
    end
endmodule