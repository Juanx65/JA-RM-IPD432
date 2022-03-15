onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib eucHW_1_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {eucHW_1.udo}

run -all

quit -force
