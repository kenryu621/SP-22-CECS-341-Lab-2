`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 03:24:24 PM
// Design Name: 
// Module Name: f1_tb
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


module f1_tb();

    reg[0:0] A,B,C;
    wire[0:0] Output;
    
    integer i, j, p;
    
    f1 add(.A(A), .B(B), .C(C), .Output(Output));
    
    initial begin
        $timeformat(-9,1,"ns",9);
        
        for(i=0; i<2; i=i+1) begin
            A = i;
            for(j=0; j<2; j=j+1) begin
                B = j;
                for(p=0; p<2; p=p+1) begin
                    C = p;
                    #5 $display("time = %t  A=%1b  B=%1b  C=%1b  ||  Output=%1b", $time, A, B, C, Output);
                end
            end
         end
         $finish; 
    end
    
endmodule
