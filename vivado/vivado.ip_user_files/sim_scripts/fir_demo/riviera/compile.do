transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xbip_utils_v3_0_11
vlib riviera/axi_utils_v2_0_7
vlib riviera/fir_compiler_v7_2_20
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_8

vmap xbip_utils_v3_0_11 riviera/xbip_utils_v3_0_11
vmap axi_utils_v2_0_7 riviera/axi_utils_v2_0_7
vmap fir_compiler_v7_2_20 riviera/fir_compiler_v7_2_20
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_8 riviera/xlconstant_v1_1_8

vcom -work xbip_utils_v3_0_11 -93  -incr \
"../../../../vivado.gen/sources_1/bd/fir_demo/ipshared/9836/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_7 -93  -incr \
"../../../../vivado.gen/sources_1/bd/fir_demo/ipshared/e392/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_20 -93  -incr \
"../../../../vivado.gen/sources_1/bd/fir_demo/ipshared/1055/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/fir_demo/ip/fir_demo_fir_compiler_0_0/sim/fir_demo_fir_compiler_0_0.vhd" \

vlog -work xlconstant_v1_1_8  -incr -v2k5 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l xil_defaultlib -l xlconstant_v1_1_8 \
"../../../../vivado.gen/sources_1/bd/fir_demo/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l fir_compiler_v7_2_20 -l xil_defaultlib -l xlconstant_v1_1_8 \
"../../../bd/fir_demo/ip/fir_demo_xlconstant_0_1/sim/fir_demo_xlconstant_0_1.v" \
"../../../bd/fir_demo/sim/fir_demo.v" \

vlog -work xil_defaultlib \
"glbl.v"

