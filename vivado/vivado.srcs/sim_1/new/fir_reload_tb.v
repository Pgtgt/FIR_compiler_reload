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

//    parameter DATA_WIDTH = 16;
//    parameter CLK_WITDH = 8;
    
//    parameter INTERVAL = 160;


//    reg clk;
//    reg reset;
    
//    reg [DATA_WIDTH-1:0] s_axis_data_tdata;
//    reg s_axis_data_tvalid;
//    wire s_axis_tready;

//    wire [DATA_WIDTH-1:0] m_axis_data_tdata;
//    wire m_axis_data_tvalid;
////    reg m_axis_tready;
    
    
//    // reload def
    
//    reg [DATA_WIDTH-1:0] s_axis_reload_tdata;
//    reg s_axis_reload_tlast;
//    reg s_axis_reload_tvalid;
    
//      // config def   
//      reg [7:0]s_axis_config_tdata;
//      wire s_axis_config_tready;
//      reg s_axis_config_tvalid;
    
//      fir_demo_wrapper dut
//        (.clk(clk),
//        .s_axis_data_tdata(s_axis_data_tdata),
//        .s_axis_data_tvalid(s_axis_data_tvalid));


//    always #(CLK_WITDH/2) clk = ~clk;

//    initial begin
 
//        clk = 1;
//        reset = 0;
//        s_axis_data_tdata = 0;
//        s_axis_data_tvalid = 0;
////        // m_axis_tready = 0; // ready tekitou
////////         s_axis_reload_tdata    =   16'b0000000000000000;
////////         s_axis_reload_tlast    =   0;
////////         s_axis_reload_tvalid   =   0;
////////         s_axis_config_tdata    =   8'b00000000;
//////         s_axis_config_tvalid   =   0;

//////        #32
//////        reset = 1;       
//////        #32 
//////        reset = 0;
        
//////        #32 
////        #INTERVAL;
        
//    //////fir compieler test////////
//        #CLK_WITDH;
////        s_axis_data_tdata = 48'h123412345678; ---
////        s_axis_data_tdata = 16'sd1;
//        s_axis_data_tvalid = 1;
//        #CLK_WITDH;
////        #4;
        
//        // m_axis_tready = 0;
//        s_axis_data_tdata = 0;
//        s_axis_data_tvalid = 0;
//        #CLK_WITDH;
        
//        #INTERVAL;
        
//          $finish;
//    end
    
endmodule