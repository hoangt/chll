#!/bin/bash
#
# Start the simulation
#
# Be sure to create a Makefile first and compile all Verilog and VHDL files.
#

vsim -t ps -voptargs=+acc adt7310p16s16_tb -do "do wave-adt7310.do ; run -all"
