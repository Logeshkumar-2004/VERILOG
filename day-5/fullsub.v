module fullsub (
    input a, b, bin,
    output diff, borrow
);
    assign diff = a ^ b ^ bin;
    assign borrow = (~a & b) | (b * bin) | (!a & bin);

endmodule