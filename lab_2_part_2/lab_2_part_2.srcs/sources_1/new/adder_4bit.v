`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2022 10:43:53 AM
// Design Name: 
// Module Name: adder_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_4bit(
    input [3:0] A, B,
    input [0:0] K,
    output [3:0] Sum,
    output [0:0] Cout
    );
    
    wire C0, C1, C2, Cin;
    assign Cin = K;
//    assign Sum_out = {Cout, Sum[0],Sum[1],Sum[2],Sum[3]};
    
    FA
        FA_0(.A(A[0]), .B(B[0] ^ K), .C_in(Cin), .C_out(C0), .Sum(Sum[0])),
        FA_1(.A(A[1]), .B(B[1] ^ K), .C_in(C0), .C_out(C1), .Sum(Sum[1])),
        FA_2(.A(A[2]), .B(B[2] ^ K), .C_in(C1), .C_out(C2), .Sum(Sum[2])),
        FA_3(.A(A[3]), .B(B[3] ^ K), .C_in(C2), .C_out(Cout), .Sum(Sum[3]));
        
endmodule
