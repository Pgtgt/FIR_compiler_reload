`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 02:26:41
// Design Name: 
// Module Name: fir_reload_tb
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


module fir_reload_tb;

    parameter DATA_WIDTH = 16;
    parameter CLK_WITDH = 8;
    
    parameter INTERVAL = 320;


    reg clk;
    reg reset;
    
    reg [DATA_WIDTH-1:0] s_axis_data_tdata;
    reg s_axis_data_tvalid;
    wire s_axis_tready;

    wire [DATA_WIDTH-1:0] m_axis_data_tdata;
    wire m_axis_data_tvalid;
//    reg m_axis_tready;
    
    
    // reload def
    
    reg [DATA_WIDTH-1:0] s_axis_reload_tdata;
    reg s_axis_reload_tlast;
    reg s_axis_reload_tvalid;
    wire s_axis_reload_tready;
    
      // config def   
      reg [7:0]s_axis_config_tdata;
      wire s_axis_config_tready;
      reg s_axis_config_tvalid;
    
      fir_demo_wrapper dut
       (.clk(clk),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_data_tdata(s_axis_data_tdata),
        .s_axis_data_tvalid(s_axis_data_tvalid),
        .s_axis_reload_tdata(s_axis_reload_tdata),
        .s_axis_reload_tlast(s_axis_reload_tlast),
        .s_axis_reload_tready(s_axis_reload_tready),
        .s_axis_reload_tvalid(s_axis_reload_tvalid));

    
    


    always #(CLK_WITDH/2) clk = ~clk;

    initial begin
 
        clk = 1;
        reset = 0;
        s_axis_data_tdata = 0;
        s_axis_data_tvalid = 0;
        s_axis_reload_tdata = 0;
        s_axis_reload_tlast = 0;
        s_axis_reload_tvalid = 0;

        #INTERVAL;
        
    //////fir compieler test////////
    
        #1;
        
        //// sample 1
        #CLK_WITDH;
        s_axis_data_tdata = -15;
        s_axis_data_tvalid = 1;
        #CLK_WITDH;
        s_axis_data_tdata = 0;
        s_axis_data_tvalid = 0;
        #CLK_WITDH;
        #INTERVAL;
        
        //// reload(2 value)
        #(INTERVAL/2);
        s_axis_reload_tdata = 1;
        s_axis_reload_tlast = 0;
        s_axis_reload_tvalid = 1;
        #CLK_WITDH;
        s_axis_reload_tdata = 0;
        s_axis_reload_tlast = 1;
        s_axis_reload_tvalid = 1;
        #CLK_WITDH;
        s_axis_reload_tdata = 0;
        s_axis_reload_tlast = 0;
        s_axis_reload_tvalid = 0;
        
        //// coef ??


        //// sample 2 
        #CLK_WITDH;
        s_axis_data_tdata = -15;
        s_axis_data_tvalid = 1;
        #CLK_WITDH;
        s_axis_data_tdata = 0;
        s_axis_data_tvalid = 0;
        #CLK_WITDH;
        #INTERVAL;

        //// sample 3
        #CLK_WITDH;
        s_axis_data_tdata = -15;
        s_axis_data_tvalid = 1;
        #CLK_WITDH;
        s_axis_data_tdata = 0;
        s_axis_data_tvalid = 0;
        #CLK_WITDH;
        #INTERVAL;
        
          $finish;
    end
    
endmodule