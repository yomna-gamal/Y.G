`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Y.G
// 
// Create Date: 12/14/2021 08:04:28 PM
// Design Name: 
// Module Name: design_delay
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


module design_delay #(parameter Nbits=2 )(
    input [Nbits:0] SIG_IN, 
    output [Nbits:0] Delay_sig_out,
    input clk
    );

reg [Nbits:0] input_d1,input_d2;
reg [Nbits:0] out;
always @ (posedge clk)
begin
 input_d1 <= SIG_IN;  
 input_d2 <= input_d1; 
 out <= input_d2; 
end
assign Delay_sig_out=out;
endmodule
