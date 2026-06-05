module eq_c_tb;
reg [3:0]a;
reg [3:0]b;
wire eq;

eq_c uut(
    .a(a),
    .b(b),
    .eq(eq)
);
    initial begin
        $dumpfile("equality.vcd");
        $dumpvars(0,eq_c_tb);

        a=4'd7; b=4'd10;
        #10;

        a=4'd11; b=4'd7;
        #10;

        a=4'd2; b=4'd2;
        #10;

        a=4'd10; b=4'd10;
        #10;

        a=4'd1; b=4'd7;
        #10;
        $finish;

    end
endmodule