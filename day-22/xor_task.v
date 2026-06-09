///Challenge 1 — XOR Gate Testbench Using Task
module xor_gate(
    input a, b,
    output y
);
    assign y = a ^ b ;
endmodule