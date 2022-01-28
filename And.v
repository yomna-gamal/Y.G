`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 12:04:08 PM
// Design Name: 
// Module Name: And
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


module And #(parameter Nbits=1,obits=1 )(
    input [Nbits:0] a,b,
    output [obits:0] and_out,//input 9 bits
    input clk
    );
  
reg [Nbits:0] out=0;
always @ (posedge clk)
begin
    out=a&b;
end
assign and_out=out;

endmodule 
