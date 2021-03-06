onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /extadcsimple_tb/DUT/Reset_n_i
add wave -noupdate /extadcsimple_tb/DUT/Clk_i
add wave -noupdate /extadcsimple_tb/DUT/TRFSM1_1/TRFSM_1/NextState_s
add wave -noupdate /extadcsimple_tb/DUT/TRFSM1_1/TRFSM_1/State_s
add wave -noupdate /extadcsimple_tb/DUT/Enable_i
add wave -noupdate /extadcsimple_tb/DUT/SensorPower_o
add wave -noupdate /extadcsimple_tb/DUT/SensorStart_o
add wave -noupdate /extadcsimple_tb/DUT/SensorReady_i
add wave -noupdate /extadcsimple_tb/DUT/AdcStart_o
add wave -noupdate /extadcsimple_tb/DUT/AdcDone_i
add wave -noupdate -radix unsigned /extadcsimple_tb/DUT/AdcValue_i
add wave -noupdate -radix unsigned /extadcsimple_tb/DUT/PeriodCounterPreset_i
add wave -noupdate -radix unsigned [find net {/extadcsimple_tb/DUT/*Counter*/Value}]
add wave -noupdate /extadcsimple_tb/DUT/TimerEnable
add wave -noupdate /extadcsimple_tb/DUT/TimerOvfl
add wave -noupdate /extadcsimple_tb/DUT/TimerPreset
add wave -noupdate [find net {/extadcsimple_tb/DUT/*WordRegister*/Enable_i}]
add wave -noupdate [find net {/extadcsimple_tb/DUT/*WordRegister*/Q_o}]
add wave -noupdate -radix unsigned /extadcsimple_tb/DUT/SensorValue_o
add wave -noupdate /extadcsimple_tb/DUT/CpuIntr_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {17276133 ps} 0}
configure wave -namecolwidth 244
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {17986500 ps}
