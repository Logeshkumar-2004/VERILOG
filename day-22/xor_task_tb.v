module xor_tb;
reg a , b;
wire y;

xor_gate uut(
    .a(a),
    .b(b),
    .y(y)
);

task xor_ip ;
    input ta ;
    input tb ;


begin
     a = ta ;
     b = tb ; 
    #10;
end
endtask

initial begin
    $dumpfile("xor_gate.vcd");
    $dumpvars(0,xor_tb);

    $monitor("time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);

        xor_ip(0,0);
    #10 xor_ip(0,1);
    #10 xor_ip(1,0);
    #10 xor_ip(1,1);
    #10 $finish;


end

    
endmodule