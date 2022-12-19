// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------

logic line_g1, line_g2, line_g3, line_g4, line_g5, line_fas;
OR2#(
   .Tpdlh(8),
   .Tpdhl(8) 
) g1 (
    .A(a),
    .B(b),
    .Z(line_g1)
);

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g2 (
    .A(line_g1),
    .B(line_g1),
    .Z(line_g2)
);

XNOR2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g3 (
    .A(a),
    .B(b),
    .Z(line_g3)
);

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g4 (
    .A(line_g3),
    .B(line_g3),
    .Z(line_g4)
);

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g5 (
    .A(op[0]),
    .B(op[0]),
    .Z(line_g5)
);

mux4 my_mux(
    .d0(line_g2),
    .d1(line_g4),
    .d2(line_fas),
    .d3(line_fas),
    .sel(op),
    .z(s)
);

fas my_fas(
    .a(a),
    .b(b),
    .cin(cin),
    .a_ns(line_g5),
    .s(line_fas),
    .cout(cout)

);


// End of your code

endmodule
