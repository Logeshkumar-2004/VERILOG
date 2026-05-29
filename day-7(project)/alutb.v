module alutb;

reg  [3:0]A,B; 
reg [1:0]Sel;
wire [3:0]y;

alu uut(
    .a(A),
    .b(B),
    .sel(Sel),
    .y(y)
);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alutb);

      // ADD
    A = 4'b0011;
    B = 4'b0001;
    Sel = 2'b00;
    #10;
    $display("%b %b %b %b",A,B,Sel,y);

     // SUB
    A = 4'b0100;
    B = 4'b0001;
    Sel = 2'b01;
    #10;
    $display("%b %b %b %b",A,B,Sel,y);

     // AND
    A = 4'b1100;
    B = 4'b1010;
    Sel = 2'b10;
    #10;
    $display("%b %b %b %b",A,B,Sel,y);


    // OR
    A = 4'b1100;
    B = 4'b1010;
    Sel = 2'b11;
    #10;
    $display("%b %b %b %b",A,B,Sel,y);

    $finish;

      
end


    
endmodule