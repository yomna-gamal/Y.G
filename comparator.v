`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 03:53:38 PM
// Design Name: 
// Module Name: comparator
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

module comparator #(parameter Nbits=2,obits=1 )(
    input [Nbits:0] a,b,
    output [obits:0] comparator_out,//input 9 bits
    input clk
    );

reg [Nbits:0] out=0;
always @ (posedge clk)
begin
if(a<=b)
    out=1;
else
    out=0;
end
assign comparator_out=out;
endmodule
