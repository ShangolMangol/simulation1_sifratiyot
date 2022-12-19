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


genvar i;
generate
    for (i = 0; i< 64; i++) begin
        assign a[i]=1'b0;
        assign b[i]=1'b1;     
    end
endgenerate


initial begin
    // genvar i;
    // generate
    //     for (i = 0; i< 64; i++) begin
    //         a[i]=1'b0;
    //         b[i]=1'b0;     
    //     end
    // endgenerate
    cin=1'b0;
    op[0]=1'b0;
    op[1]=1'b1;   

    #2356
    op[0]=1'b1;

    #2356
    op[0]=1'b0;

end
// End of your code

endmodule
