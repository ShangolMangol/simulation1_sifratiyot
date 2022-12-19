// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

// Put your code here
// ------------------

logic line_g1, line_g2, line_g3, line_g4, line_g5;

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g1 (
    .A(sel),
    .B(sel),
    .Z(line_g1)
);

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g2 (
    .A(d0),
    .B(line_g1),
    .Z(line_g2)
);

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g3 (
    .A(d1),
    .B(sel),
    .Z(line_g3)
);

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g4 (
    .A(line_g2),
    .B(line_g2),
    .Z(line_g4)
);

NAND2#(
   .Tpdlh(10),
   .Tpdhl(10) 
) g5 (
    .A(line_g3),
    .B(line_g3),
    .Z(line_g5)
);

OR2#(
   .Tpdlh(8),
   .Tpdhl(8) 
) g6 (
    .A(line_g4),
    .B(line_g5),
    .Z(z)
);


// End of your code

endmodule
