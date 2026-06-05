module encoder_tb;
reg [7:0]a;
wire [2:0]y;
    
    encoder uut(
        .a(a),
        .y(y)
    );

    initial begin
        $dumpfile("3x8_encoder.vcd");
        $dumpvars(0,encoder_tb);
        $monitor("time=%0t | a=%b| y=%b",$time,a,y);
              

         a=8'b00000001;
        #10;

          a=8'b00000010;
        #10;

         a=8'b00000100;
        #10;

          a=8'b00001000;
        #10;

         a=8'b00010000;
        #10;

          a=8'b00100000;
        #10;

          a=8'b01000000;
        #10;

          a=8'b10000000;
        #10;

        $finish;

    end
endmodule