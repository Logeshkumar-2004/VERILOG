module checker_tb;

reg  a;
reg  b;
wire nand_gate ;
integer i;

checker uut(
    .a(a),
    .b(b),
    .nand_gate(nand_gate)
);
    
    
        
        /*task nand_ip;
        input ip1 ;
        input ip2 ;
        begin
            a = ip1 ; 
            b = ip2 ;
            #10;

            if (nand_gate == ~(a & b)) begin
                $display("YES time=%0t | a=%b | b=%b | nand=%b",$time,a,b,nand_gate);

            end else begin
                $display("NO time=%0t | a=%b | b=%b | nand=%b",$time,a,b,nand_gate);
            end
        
        end
        endtask
*/
        initial begin
            $dumpfile("checker.vcd");
            $dumpvars(0 , checker_tb);

            for (i = 0; i < 4 ; i++ ) begin
                a=$random;
                b=$random;
                #10;

                if (nand_gate == ~(a & b)) begin
                $display("YES time=%0t | a=%b | b=%b | nand=%b",$time,a,b,nand_gate);

            end else begin
                $display("NO time=%0t | a=%b | b=%b | nand=%b",$time,a,b,nand_gate);
            end


            end

            /*#10 nand_ip (0,0);
             #10 nand_ip (0,1);
              #10 nand_ip (1,0);
               #10 nand_ip (1,1); */
               #10 $finish;



            
        end

    
    
    
endmodule