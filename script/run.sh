mkdir -p build
objcopy -O ihex $1 build/run.hex
JLinkExe -device ATSAMD21G18A -if SWD -speed 4000 -autoconnect 1 -CommandFile build/upload.jlink
