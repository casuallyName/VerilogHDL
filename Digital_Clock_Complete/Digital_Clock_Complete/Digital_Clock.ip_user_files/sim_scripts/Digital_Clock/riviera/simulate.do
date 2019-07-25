onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Digital_Clock -L xil_defaultlib -L xpm -L xlconstant_v1_1_3 -L xlconcat_v2_1_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Digital_Clock xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Digital_Clock.udo}

run -all

endsim

quit -force
