//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Jan 14 00:08:52 2025
//Host        : SHUN_PC running 64-bit major release  (build 9200)
//Command     : generate_target fir_demo.bd
//Design      : fir_demo
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "fir_demo,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fir_demo,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "fir_demo.hwdef" *) 
module fir_demo
   (clk,
    m_axis_data_tdata,
    m_axis_data_tvalid,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_reload_tdata,
    s_axis_reload_tlast,
    s_axis_reload_tready,
    s_axis_reload_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN fir_demo_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  output [39:0]m_axis_data_tdata;
  output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_AXIS_DATA_TDATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_AXIS_DATA_TDATA, LAYERED_METADATA undef" *) input [15:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  input [15:0]s_axis_reload_tdata;
  input s_axis_reload_tlast;
  output s_axis_reload_tready;
  input s_axis_reload_tvalid;

  wire clk_1;
  wire [39:0]fir_compiler_0_m_axis_data_tdata;
  wire fir_compiler_0_m_axis_data_tvalid;
  wire fir_compiler_0_s_axis_reload_tready;
  wire [15:0]s_axis_data_tdata_1;
  wire s_axis_data_tvalid_1;
  wire [15:0]s_axis_reload_tdata_1;
  wire s_axis_reload_tlast_1;
  wire s_axis_reload_tvalid_1;
  wire [0:0]xlconstant_0_dout;

  assign clk_1 = clk;
  assign m_axis_data_tdata[39:0] = fir_compiler_0_m_axis_data_tdata;
  assign m_axis_data_tvalid = fir_compiler_0_m_axis_data_tvalid;
  assign s_axis_data_tdata_1 = s_axis_data_tdata[15:0];
  assign s_axis_data_tvalid_1 = s_axis_data_tvalid;
  assign s_axis_reload_tdata_1 = s_axis_reload_tdata[15:0];
  assign s_axis_reload_tlast_1 = s_axis_reload_tlast;
  assign s_axis_reload_tready = fir_compiler_0_s_axis_reload_tready;
  assign s_axis_reload_tvalid_1 = s_axis_reload_tvalid;
  fir_demo_fir_compiler_0_0 fir_compiler_0
       (.aclk(clk_1),
        .m_axis_data_tdata(fir_compiler_0_m_axis_data_tdata),
        .m_axis_data_tready(xlconstant_0_dout),
        .m_axis_data_tvalid(fir_compiler_0_m_axis_data_tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_config_tvalid(1'b0),
        .s_axis_data_tdata(s_axis_data_tdata_1),
        .s_axis_data_tvalid(s_axis_data_tvalid_1),
        .s_axis_reload_tdata(s_axis_reload_tdata_1),
        .s_axis_reload_tlast(s_axis_reload_tlast_1),
        .s_axis_reload_tready(fir_compiler_0_s_axis_reload_tready),
        .s_axis_reload_tvalid(s_axis_reload_tvalid_1));
  fir_demo_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
