`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 09:45:44 PM
// Design Name: 
// Module Name: f2_tb
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


module f2_tb();

    reg[0:0] A, B;
    wire[0:0] Output;
    
    integer i, j;
    
    f2 add(.A(A), .B(B), .Output(Output));
    
    initial begin
        $timeformat(-9,1,"ns",9);
        
        for(i=0; i<2; i=i+1) begin
            A = i;
            for(j=0; j<2; j=j+1) begin
                B = j;
                #5 $display("time = %t  A=%1b  B=%1b  ||  Output=%1b", $time, A, B, Output);
            end
        end
        $finish; 
    end
endmodule
