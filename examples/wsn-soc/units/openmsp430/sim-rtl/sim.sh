#!/bin/bash
#
# Start the simulation
#
# Be sure to create a Makefile first and compile all VHDL files.
#

if [ $# -ne 1 ] ; then
  echo "Usage: $0 [-mod_a|-mod_b]"
  exit 1
fi

if [ "$1" = "-mod_a" ] ; then
  vsim mod_a_tb_behavior_cfg -do "do wave-mod_a.do ; run -all"
elif [ "$1" = "-mod_b" ] ; then
  vsim mod_b_tb_behavior_cfg -do "do wave-mod_b.do ; run -all"
else
  echo "Error: Invalid parameter $1"
  exit 1;
fi
