//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Jan 14 00:23:40 2025
//Host        : SHUN_PC running 64-bit major release  (build 9200)
//Command     : generate_target fir_demo_wrapper.bd
//Design      : fir_demo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module fir_demo_wrapper
   (clk,
    m_axis_data_tdata,
    m_axis_data_tvalid,
    s_axis_config_tdata,
    s_axis_config_tready,
    s_axis_config_tvalid,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_reload_tdata,
    s_axis_reload_tlast,
    s_axis_reload_tready,
    s_axis_reload_tvalid);
  input clk;
  output [39:0]m_axis_data_tdata;
  output m_axis_data_tvalid;
  input [7:0]s_axis_config_tdata;
  output s_axis_config_tready;
  input s_axis_config_tvalid;
  input [15:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  input [15:0]s_axis_reload_tdata;
  input s_axis_reload_tlast;
  output s_axis_reload_tready;
  input s_axis_reload_tvalid;

  wire clk;
  wire [39:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [7:0]s_axis_config_tdata;
  wire s_axis_config_tready;
  wire s_axis_config_tvalid;
  wire [15:0]s_axis_data_tdata;
  wire s_axis_data_tvalid;
  wire [15:0]s_axis_reload_tdata;
  wire s_axis_reload_tlast;
  wire s_axis_reload_tready;
  wire s_axis_reload_tvalid;

  fir_demo fir_demo_i
       (.clk(clk),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_config_tdata(s_axis_config_tdata),
        .s_axis_config_tready(s_axis_config_tready),
        .s_axis_config_tvalid(s_axis_config_tvalid),
        .s_axis_data_tdata(s_axis_data_tdata),
        .s_axis_data_tvalid(s_axis_data_tvalid),
        .s_axis_reload_tdata(s_axis_reload_tdata),
        .s_axis_reload_tlast(s_axis_reload_tlast),
        .s_axis_reload_tready(s_axis_reload_tready),
        .s_axis_reload_tvalid(s_axis_reload_tvalid));
endmodule
