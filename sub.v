`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: y.g
// 
// Create Date: 12/15/2021 01:01:50 PM
// Design Name: 
// Module Name: sub_tb
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


module sub#(parameter Nbits=2 )(
    input [Nbits:0] SIG_IN, 
    input [Nbits:0] Delay_sig_out,     
    output [Nbits:0] sig_out_sub,
    input clk
    );


reg [Nbits:0] out;
always @ (posedge clk)
begin
 out <=SIG_IN - Delay_sig_out;  
end
assign sig_out_sub=out;
endmodule