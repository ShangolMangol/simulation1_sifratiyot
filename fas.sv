// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------

logic line_g1, line_g2, line_g3, line_g4, line_g5, line_g6, line_g8;

XNOR2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g1 (
    .A(a),
    .B(a_ns),
    .Z(line_g1)
);

OR2#(
   .Tpdlh(8),
   .Tpdhl(8) 
) g2 (
    .A(b),
    .B(cin),
    .Z(line_g2)
);

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g3 (
    .A(line_g1),
    .B(line_g2),
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
    .A(b),
    .B(cin),
    .Z(line_g5)
);

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g6 (
    .A(line_g5),
    .B(line_g5),
    .Z(line_g6)
);

OR2#(
   .Tpdlh(8),
   .Tpdhl(8) 
) g7 (
    .A(line_g4),
    .B(line_g6),
    .Z(cout)
);

XNOR2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g8 (
    .A(b),
    .B(cin),
    .Z(line_g8)
);


XNOR2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g9 (
    .A(line_g8),
    .B(a),
    .Z(s)
);

// End of your code

endmodule
