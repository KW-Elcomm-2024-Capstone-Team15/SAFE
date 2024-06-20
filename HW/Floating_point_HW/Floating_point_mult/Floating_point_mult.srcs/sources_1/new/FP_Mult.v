`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 19:44:47
// Design Name: 
// Module Name: FP_Mult
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


module FP_Mult(
    input               clk,
    input               rst,
    input               tvalid_input,
    input   [31:0]      in1,
    input   [31:0]      in2,
    
    output              s_axis_a_tready,
    output              s_axis_b_tready,
    output              tvalid_out,
    output  [31:0]      result
    );
    reg                 r_tvalid_input;
    reg     [31:0]      r_in1;
    reg     [31:0]      r_in2;  

    always @(posedge clk) begin
        if(rst) begin
            r_tvalid_input <= 1'b0;
            r_in1          <= 32'h0000_0000;
            r_in2          <= 32'h0000_0000;
        end
        else begin
            r_tvalid_input <= tvalid_input;         
            r_in1          <= in1;
            r_in2          <= in2;
        end
    end
    
    floating_point_mult mult (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(tvalid_input),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(s_axis_a_tready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(in1),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(tvalid_input),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(s_axis_b_tready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(in2),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(tvalid_out),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(result)    // output wire [31 : 0] m_axis_result_tdata
);     
    
endmodule
