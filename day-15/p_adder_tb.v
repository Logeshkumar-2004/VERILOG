module p_adder_tb;

reg a,b,cin;
wire [3:0]s_4;
wire [3:0]c_4;
wire [7:0]s_8;
wire [7:0]c_8;

p_adder #(4)  uut1(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(s_4),
    .carry(c_4)
);

p_adder #(8)  uut2(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(s_8),
    .carry(c_8)
);


initial begin
    a=0;b=0;cin=0;
    #10;

    a=0;b=0;cin=1;
    #10;

    a=0;b=1;cin=0;
    #10;

    a=0;b=1;cin=1;
    #10;


    a=1;b=0;cin=0;
    #10;

    a=1;b=0;cin=1;
    #10;

    a=1;b=1;cin=0;
    #10;

    a=1;b=1;cin=1;
    #10;

    $finish;
      
end
initial begin
    $display("PARAMETER ADDER");
    
//end

//always @(c_4 or c_8 or s_4 or s_8 ) begin
    
    
    $monitor("time=%0t | a=%b | b=%b | cin=%b | sum_4bit=%b |carry_4bit=%b | sum_8bit=%b | carry_8bit=%b",$time,a,b,cin,s_4,c_4,s_8,c_8);

    
end



initial begin
    $dumpfile("parameter_adder.vcd");
    $dumpvars(0,p_adder_tb);
end


    
endmodule 

/* module p_adder_tb ;

reg [3:0] a_4 ;
reg [3:0] b_4 ;
reg [7:0] a_8 ;
reg [7:0] b_8 ;
wire s,c;

p_adder #(4)  uut1(
    .a(a_4),
    .b(b_4),
    .sum(s),
    .carry(c)
);

p_adder #(8)  uut2(
    .a(a_8),
    .b(b_8),
    .sum(s),
    .carry(c)
);

initial begin
    a_4 = 4'd10;
    b_4 = 4'd5;

    #20;

    a_8 = 8'd100;
    a_8 = 8'd50;

    $finish;

end

initial begin
    $dumpfile("p_adder.vcd");
    $dumpvars(0,p_adder_tb);

end

initial begin
    $display("PARAMETER 4-bit ADDER");
    $monitor("a=%b | b=%b |sum=%b | carry=%b",a_4,b_4,s,c);

    $display("PARAMETER 8-bit ADDER");
    $monitor("a=%b | b=%b |sum=%b | carry=%b",a_8,b_8,s,c);
end
    
endmodule */