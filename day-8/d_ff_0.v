module d_ff_0 (
    input clk, d,
    output reg q
);

always @(negedge clk)
begin
    q<=d;
end
    
endmodule