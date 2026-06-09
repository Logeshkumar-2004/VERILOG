//AND_LOOP
module random_gate (
    input [1:0]a ,
    input [1:0]b,
    output [2:0]y
);

      assign y = a | b ;
      
   // assign y = a ^ b ;
   
   // assign y = a & b ;
endmodule