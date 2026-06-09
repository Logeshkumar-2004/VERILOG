//AND_LOOP
module loop_gate (
    input a ,
    input b,
    output y
);

      assign y = a | b ;
      
   // assign y = a ^ b ;
   
   // assign y = a & b ;
endmodule