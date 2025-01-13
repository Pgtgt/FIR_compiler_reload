//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon Jan 13 02:39:52 2025
//Host        : SHUN_PC running 64-bit major release  (build 9200)
//Command     : generate_target fir_demo_wrapper.bd
//Design      : fir_demo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module fir_demo_wrapper
   (clk,
    s_axis_data_tdata,
    s_axis_data_tvalid);
  input clk;
  input [15:0]s_axis_data_tdata;
  input s_axis_data_tvalid;

  wire clk;
  wire [15:0]s_axis_data_tdata;
  wire s_axis_data_tvalid;

  fir_demo fir_demo_i
       (.clk(clk),
        .s_axis_data_tdata(s_axis_data_tdata),
        .s_axis_data_tvalid(s_axis_data_tvalid));
endmodule
