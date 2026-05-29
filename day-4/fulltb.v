module fulltb;

reg a, b, cin ;
wire sum, carry;

full uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(s),
    .carry(c)
);

initial begin
    $dumpfile("full.vcd");
    $dumpvars(0, fulltb);

       a=0; b=0; cin=0;
    #10;
    $display("%b %b  %b  |  %b    %b" , a,b,cin,s,c);

     a=0; b=0; cin=1;
    #10;
     $display("%b %b  %b  |  %b    %b" , a,b,cin,s,c);

     a=0; b=1; cin=0;
    #10;
     $display("%b %b  %b  |  %b    %b" , a,b,cin,s,c);

     a=0; b=1; cin=1;
    #10;
     $display("%b %b  %b  |  %b    %b" , a,b,cin,s,c);


     a=1; b=0; cin=0;
    #10;
     $display("%b %b  %b  |  %b    %b" , a,b,cin,s,c);


     a=1; b=0; cin=1;
    #10;
     $display("%b %b  %b  |  %b    %b" , a,b,cin,s,c);


     a=1; b=1; cin=0;
    #10;
     $display("%b %b  %b  |  %b    %b" , a,b,cin,s,c);


     a=1; b=1; cin=1;
    #10;
     $display("%b %b  %b  |  %b    %b" , a,b,cin,s,c);

    $finish;


end
    
endmodule