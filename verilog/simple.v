module sub(input a, output b);
endmodule

module main(input a, output c);
    wire b;
    sub s(.a(a),.b(b));
    assign c = a & b;
endmodule