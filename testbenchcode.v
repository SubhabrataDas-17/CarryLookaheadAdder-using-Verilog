`timescale 1ns/1ps

module cla_4bit_tb;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

// Instantiate CLA
cla_4bit uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

// Task for testing
task test;
    input [3:0] a, b;
    input cin;
    begin
        A = a; B = b; Cin = cin;
        #10;
        $display("A=%b B=%b Cin=%b => Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
    end
endtask

initial begin
    $display("---- CLA Testbench ----");

    test(4'b0001, 4'b0010, 0);
    test(4'b0101, 4'b0011, 0);
    test(4'b1111, 4'b0001, 0); // overflow
    test(4'b1010, 4'b0101, 1);
    test(4'b1111, 4'b1111, 1);

    $finish;
end

endmodule
