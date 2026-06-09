module ALU_tb;
reg [3:0]a;
reg [3:0]b;
reg [3:0]sel;
wire [3:0]y;
reg [3:0]expect;

ALU uut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);
task checker_result;
begin
    

if (y == expect ) begin
    $display("PASS time=%0t | a=%b | b=%b |expect = %b |result=%b |",$time ,a,b,expect,y );
end else begin
    $display("FAIL time=%0t | a=%b | b=%b |expect = %b |result=%b |",$time ,a,b,expect,y);
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