// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------

logic a, b, cin, a_ns, cout, s;

fas uut (
    .a(a),
    .b(b),
    .cin(cin),
    .a_ns(a_ns),
    .cout(cout),
    .s(s)
);

initial begin
    a=1'b0;
    b=1'b0;
    cin=1'b0;
    a_ns=1'b0;
    
    #36
    b=1'b1;

    #36
    b=1'b0;

    
end

// End of your code

endmodule
