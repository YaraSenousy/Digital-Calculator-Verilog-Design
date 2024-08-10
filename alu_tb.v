module alu_tb;
reg [2:0] A;
reg [2:0] B;
reg [1:0] S;
wire [3:0] R;
wire  SF;
wire  ZF;
wire  DZF;

alu DUT(
    .A(A),
    .B(B),
    .S(S),
    .R(R),
    .SF(SF),
    .ZF(ZF),
    .DZF(DZF)
);

initial begin
    A = 001;
    B = 001;
    S = 00;
    #100;
    $display("A=%b , B=%b, A + B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 101;
    B = 001;
    S = 00;
    #100;
    $display("A=%b , B=%b, A + B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 111;
    B = 001;
    S = 00;
    #100;
    $display("A=%b , B=%b, A + B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 110;
    B = 011;
    S = 00;
    #100;
    $display("A=%b , B=%b, A + B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 010;
    B = 011;
    S = 00;
    #100;
    $display("A=%b , B=%b, A + B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 111;
    B = 111;
    S = 00;
    #100;
    $display("A=%b , B=%b, A + B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 111;
    B = 101;
    S = 00;
    #100;
    $display("A=%b , B=%b, A + B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 000;
    B = 000;
    S = 00;
    #100;
    $display("A=%b , B=%b, A + B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);
    $display("\n");

    A= 001;
    B = 001;
    S = 01;
    #100;
    $display("A=%b , B=%b, A - B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A= 101;
    B = 001;
    S = 01;
    #100;
    $display("A=%b , B=%b, A - B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A= 111;
    B = 001;
    S = 01;
    #100;
    $display("A=%b , B=%b, A - B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A= 111;
    B = 111;
    S = 01;
    #100;
    $display("A=%b , B=%b, A - B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A= 010;
    B = 011;
    S = 01;
    #100;
    $display("A=%b , B=%b, A - B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A= 010;
    B = 000;
    S = 01;
    #100;
    $display("A=%b , B=%b, A - B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A= 010;
    B = 101;
    S = 01;
    #100;
    $display("A=%b , B=%b, A - B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A= 000;
    B = 000;
    S = 01;
    #100;
    $display("A=%b , B=%b, A - B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);
    $display("\n");

    A = 001;
    B = 001;
    S = 10;
    #100;
    $display("A=%b , B=%b, A * B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 110;
    B = 001;
    S = 10;
    #100;
    $display("A=%b , B=%b, A * B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 110;
    B = 111;
    S = 10;
    #100;
    $display("A=%b , B=%b, A * B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 111;
    B = 011;
    S = 10;
    #100;
    $display("A=%b , B=%b, A * B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 010;
    B = 001;
    S = 10;
    #100;
    $display("A=%b , B=%b, A * B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 001;
    B = 011;
    S = 10;
    #100;
    $display("A=%b , B=%b, A * B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 110;
    B = 000;
    S = 10;
    #100;
    $display("A=%b , B=%b, A * B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);

    A = 000;
    B = 000;
    S = 10;
    #100;
    $display("A=%b , B=%b, A * B= result=%b, signed flag=%b, zero flag=%b",A,B,R,SF,ZF);
    $display("\n");

    A = 001;
    B = 001;
    S = 11;
    #100;
    $display("A=%b , B=%b, A %% B= result=%b, signed flag=%b, zero flag=%b, div_by_zero flag=%b",A,B,R,SF,ZF,DZF);

    A = 001;
    B = 011;
    S = 11;
    #100;
    $display("A=%b , B=%b, A %% B= result=%b, signed flag=%b, zero flag=%b, div_by_zero flag=%b",A,B,R,SF,ZF,DZF);

    A = 101;
    B = 011;
    S = 11;
    #100;
    $display("A=%b , B=%b, A %% B= result=%b, signed flag=%b, zero flag=%b, div_by_zero flag=%b",A,B,R,SF,ZF,DZF);

    A = 110;
    B = 011;
    S = 11;
    #100;
    $display("A=%b , B=%b, A %% B= result=%b, signed flag=%b, zero flag=%b, div_by_zero flag=%b",A,B,R,SF,ZF,DZF);

    A = 110;
    B = 010;
    S = 11;
    #100;
    $display("A=%b , B=%b, A %% B= result=%b, signed flag=%b, zero flag=%b, div_by_zero flag=%b",A,B,R,SF,ZF,DZF);

    A = 001;
    B = 010;
    S = 11;
    #100;
    $display("A=%b , B=%b, A %% B= result=%b, signed flag=%b, zero flag=%b, div_by_zero flag=%b",A,B,R,SF,ZF,DZF);

    A = 000;
    B = 001;
    S = 11;
    #100;
    $display("A=%b , B=%b, A %% B= result=%b, signed flag=%b, zero flag=%b, div_by_zero flag=%b",A,B,R,SF,ZF,DZF);

    A = 001;
    B = 000;
    S = 11;
    #100;
    $display("A=%b , B=%b, A %% B= result=%b, signed flag=%b, zero flag=%b, div_by_zero flag=%b",A,B,R,SF,ZF,DZF);
    $finish();
end
endmodule