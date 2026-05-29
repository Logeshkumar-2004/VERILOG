module t_ff_r(
    input reset, t, clk,
    output reg q 
 );
 always @(posedge clk) begin

    if (reset == 0) begin
     if (t) begin
        q <= ~q ;        
     end    
     else begin
        q <= q ;        
     end    
   end 
   else begin
    q <= 1'b0 ;    
    end
    
    
 end
   
endmodule