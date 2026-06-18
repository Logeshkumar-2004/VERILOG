module ALU_tb;
reg [3:0]a;
reg [3:0]b;
reg [3:0]sel;
wire [3:0]result;
reg [3:0]expect;

ALU uut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(result)
);
task checker_result;
begin
    

if (result == expect ) begin
    $display("PASS time=%0t | a=%0d | b=%0d |expect = %0d,result=%0d ",$time ,a,b,expect,result );
end else begin
    $display("FAIL time=%0t | a=%0d | b=%0d |expect = %0d,result=%0d ",$time ,a,b,expect,result);
end
end
endtask

initial begin
    $dumpfile("ALU.vcd");
    $dumpvars(0,ALU_tb);
    

    // y = a + b 
   
    a=4'd7 ; b = 4'd5;
    expect = a + b ;
     sel = 4'b0000;
    #10;
    checker_result;

    // y = a - b 
    
    a=4'd7 ; b = 4'd5;
    expect = a - b ;
    sel = 4'b0001;
    #10;
    checker_result;


    // y = a & b 
    
    a=4'd7 ; b = 4'd5;
    expect = a & b ;
    sel = 4'b0010;
    #10;
    checker_result;


    // y = a | b 
    
    a=4'd7 ; b = 4'd5;
    expect = a | b ;
    sel = 4'b0011;
    #10;
    checker_result;

    // y = a ^ b 
    
    a=4'd7 ; b = 4'd5;
    expect = a ^ b ;
    sel = 4'b0100;
    #10;
    checker_result;

    // y = ~(a & b) 
    
    a=4'd7 ; b = 4'd5;
    expect = ~(a & b);
    sel = 4'b0101;
    #10;
    checker_result;

    // y = ~(a | b) 
    
    a=4'd7 ; b = 4'd5;
    expect = ~(a | b) ;
    sel = 4'b0110;
    #10;
    checker_result;

    // y = ~(a ^ b) 
    
    a=4'd7 ; b = 4'd5;
    expect = (a ^ b) ;
    sel = 4'b0111;
    #10;
    checker_result;

    // y = a + b 
    
    a=4'd7 ; b = 4'd5;
    expect = a + b ;
    sel = 4'b1000;
    #10;
    checker_result;
    #10 $finish ;

     
    

end

    
endmodule