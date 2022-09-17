`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2022 10:54:23 AM
// Design Name: 
// Module Name: f2
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


module f2(
    input A,
    input B,
    output Output
    );
    
    assign Output = (~A | B) & (A | ~B);
    
endmodule
