`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2022 08:30:28 PM
// Design Name: 
// Module Name: mul
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


module mul #(parameter Nbits=5,obits=5 )(
    input [Nbits:0] Delay_sig_out_b,out_center_der_a, 
    output [obits:0] mul_out,
    input clk
    );

reg [Nbits:0] out;
always @ (posedge clk)
begin
   out <= Delay_sig_out_b* out_center_der_a;
end
assign mul_out=out;
endmodule
