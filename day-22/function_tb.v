module f_and_tb;
reg [3:0]a;
reg [3:0]b;
wire [4:0]y;

f_and uut(
    .a(a),
    .b(b),
    .y(y)

);



initial begin
  
     $monitor("time=%0t | a=%b | b=%b | y=%b",$time,a,b,y);
     a=0;b=0;

    
       #10 ;
       a=4;b=3;

       #10 ;
       a=7;b=3;

       #10 ;
       a=4;b=4;

       #10 ;
       a=0;b=3;

       #10;

       $finish;

    

   
   
end
initial begin
    $dumpfile("function.vcd");
    $dumpvars(0,f_and_tb);
end


endmodule