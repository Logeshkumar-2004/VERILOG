module full_task_tb;
reg a, b, c_in;
wire sum , carry;

full uut(
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum),
    .carry(carry)
);


    task full_adder;
    input ta ;
    input tb ;
    input tc ;
    begin
        a = ta;
        b = tb;
        c_in = tc;
        #10;
    end
    
    endtask

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_task_tb);

    $monitor("time=%0t | a = %b | b = %b | c_in = %b | sum = %b | carry = %b |",$time,a,b,c_in,sum,carry);

    full_adder(0,0,0);
    full_adder(0,0,1);
    full_adder(0,1,0);
    full_adder(0,1,1);
    full_adder(1,0,0);
    full_adder(1,0,1);
    full_adder(1,1,0);
    full_adder(1,1,1);
    
end


    
endmodule