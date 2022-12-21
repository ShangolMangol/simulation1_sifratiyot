// 64-bit ALU test bench template
module alu64bit_test;

// Put your code here
// ------------------

logic [63:0] a;
logic [63:0] b;
logic cin, cout;
logic [1:0] op;
logic [63:0] s;


alu64bit uut (
    .a(a),
    .b(b),
    .cin(cin),
    .op(op),
    .s(s),
    .cout(cout)
);



initial begin

    a={64{1'b0}};
    b={64{1'b0}};
    cin=1'b1;
    op[0]=1'b1;
    op[1]=1'b1;   

    #3000
    op[0]=1'b0;


    #1000
    op[0]=1'b1;


end
// End of your code

endmodule
