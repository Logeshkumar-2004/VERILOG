module c_4_tb;
reg [3:0]a;
reg[3:0]b;
reg e;
wire gt,lt,eq;
    c_4 uut(
        .a(a),
        .b(b),
        .gt(gt),
        .lt(lt),
        .eq(eq),
        .e(e)
    );

    initial begin
        $dumpfile("4-bit_comparator.vcd");
        $dumpvars(0,c_4_tb);

       
        e=0;
        #10;
        e=1;
         $monitor("time=%0t | enable=%b | a=%b | b=%b | greater than=%b | lesser than=%b | equal = %b",$time,e,a,b,gt,lt,eq);


        a=4'd5;b=4'd8;
        #10;

        a=4'd8;b=4'd8;
        #10;

        a=4'd11;b=4'd8;
        #10;

        $finish;
        
    end
endmodule