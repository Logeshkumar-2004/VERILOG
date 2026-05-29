module t_ff(
    input t,clk,
    output reg q=1'b0 // initial the value of  q without initial it  take q value q=x
);

always @(posedge clk) begin
    if (t) 

        q <= ~q;
        else 
        q <= q;
        
    
    
end
    
endmodule