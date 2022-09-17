`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2022 11:43:10 AM
// Design Name: 
// Module Name: adder_4bit_tb
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


module adder_4bit_tb();
    reg [3:0] A, B;
    reg [0:0] K;
    wire [3:0] Sumout;
    wire [0:0] Cout;
    integer i, j;
    
    adder_4bit add(
        .A(A),
        .B(B),
        .K(K),
        .Sum(Sumout),
        .Cout(Cout)
    );
    
    initial begin
        $timeformat(-9, 1, " ns", 9);
            for(j=0; j<2; j=j+1) begin
                K = j;
                for(i=0; i<256; i=i+1) begin
                    A = i; B = i; 
                    if(K == 0) #5 $display("time=%t  A=%4b + B=%4b  K=%1b  ||  Carry_Out=%1b  Output=%4b", $time, A, B, K, Cout, Sumout);
                    else if (K == 1) #5 $display("time=%t  A=%4b - B=%4b  K=%1b  ||  Carry_Out=%1b  Output=%4b", $time, A, B, K, Cout, Sumout);
                end
            end
    $finish;
    end
    
endmodule
