onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Digital_Clock_opt

do {wave.do}

view wave
view structure
view signals

do {Digital_Clock.udo}

run -all

quit -force
