transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fir_demo  -L xbip_utils_v3_0_11 -L axi_utils_v2_0_7 -L fir_compiler_v7_2_20 -L xil_defaultlib -L xlconstant_v1_1_8 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fir_demo xil_defaultlib.glbl

do {fir_demo.udo}

run 1000ns

endsim

quit -force
