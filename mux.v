`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 10:42:08 PM
// Design Name: 
// Module Name: mux
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

module mux #(parameter width_size = 2)( 
           input[width_size:0] d1,d0,
           input sel,
            output  reg [width_size:0]  out_mux
           );

always @(*) begin
case(sel)
1'b0:  begin out_mux=d0; end
1'b1:  begin out_mux=d1; end
default: begin out_mux=1'b0; end
endcase
end
endmodule
