module t_and_tb;
reg a, b;
wire y;

t_and uut(
    .a(a),
    .b(b),
    .y(y)
);

    task task_input;
    input ta ;
    input tb ;
    begin
        a = ta ;
        b = tb ;
        #10;


    end
    endtask

    initial begin
        $dumpfile("task_and.vcd");
        $dumpvars(0,t_and_tb);

        task_input (0,0);
        task_input (0,1);
        task_input (1,1);
        task_input (1,0);

        $finish;
    end

    initial begin
        $monitor("time=%0t | a=%b |b=%b | y=%b |",$time,a,b,y);
        
    end


    
endmodule