# Generated by Yosys 0.3.0+ (git sha1 3b52121)

attribute \src "../../verilog/spifsm.v:3"
module $paramod\SPIFSM\SPPRWidth=4\SPRWidth=4\DataWidth=8

  attribute \src "../../verilog/spifsm.v:187"
  wire width 8 $0\Byte0_o[7:0]

  attribute \src "../../verilog/spifsm.v:187"
  wire width 8 $0\Byte1_o[7:0]

  attribute \src "../../verilog/spifsm.v:217"
  wire width 32 $0\SPI_FSM_Timer[31:0]

  attribute \src "../../verilog/spifsm.v:65"
  wire $2\ADT7310CS_n_o[0:0]

  attribute \src "../../verilog/spifsm.v:65"
  wire $2\SPI_FSM_TimerEnable[0:0]

  attribute \src "../../verilog/spifsm.v:65"
  wire $2\SPI_ReadNext_o[0:0]

  wire $auto$opt_reduce.cc:126:opt_mux$2453

  wire $auto$opt_reduce.cc:126:opt_mux$2455

  wire $auto$opt_reduce.cc:126:opt_mux$2457

  wire $auto$opt_reduce.cc:126:opt_mux$2459

  wire $auto$opt_reduce.cc:126:opt_mux$2461

  wire $auto$opt_reduce.cc:126:opt_mux$2477

  wire $procmux$297_CMP

  wire $procmux$298_CMP

  wire $procmux$301_CMP

  wire $procmux$302_CMP

  wire $procmux$305_CMP

  wire $procmux$334_CMP

  wire $procmux$335_CMP

  wire $procmux$336_CMP

  wire width 32 $procmux$80_Y

  attribute \src "../../verilog/spifsm.v:231"
  wire width 32 $sub$../../verilog/spifsm.v:231$46_Y

  attribute \src "../../verilog/spifsm.v:24"
  wire output 14 \ADT7310CS_n_o

  attribute \src "../../verilog/spifsm.v:13"
  wire width 8 output 5 \Byte0_o

  attribute \src "../../verilog/spifsm.v:14"
  wire width 8 output 6 \Byte1_o

  attribute \src "../../verilog/spifsm.v:9"
  wire input 2 \Clk_i

  attribute \src "../../verilog/spifsm.v:12"
  wire output 4 \Done_o

  attribute \src "../../verilog/spifsm.v:26"
  wire width 32 input 15 \ParamCounterPreset_i

  attribute \src "../../verilog/spifsm.v:8"
  wire input 1 \Reset_n_i

  attribute \src "../../verilog/spifsm.v:20"
  wire width 8 input 11 \SPI_Data_i

  attribute \src "../../verilog/spifsm.v:19"
  wire width 8 output 10 \SPI_Data_o

  attribute \src "../../verilog/spifsm.v:22"
  wire input 13 \SPI_FIFOEmpty_i

  attribute \src "../../verilog/spifsm.v:21"
  wire input 12 \SPI_FIFOFull_i

  attribute \src "../../verilog/spifsm.v:215"
  wire width 32 \SPI_FSM_Timer

  attribute \src "../../verilog/spifsm.v:45"
  wire \SPI_FSM_TimerEnable

  attribute \src "../../verilog/spifsm.v:43"
  wire \SPI_FSM_TimerOvfl

  attribute \src "../../verilog/spifsm.v:44"
  wire \SPI_FSM_TimerPreset

  attribute \src "../../verilog/spifsm.v:47"
  wire \SPI_FSM_Wr0

  attribute \src "../../verilog/spifsm.v:46"
  wire \SPI_FSM_Wr1

  attribute \src "../../verilog/spifsm.v:18"
  wire output 9 \SPI_ReadNext_o

  attribute \src "../../verilog/spifsm.v:16"
  wire input 7 \SPI_Transmission_i

  attribute \src "../../verilog/spifsm.v:17"
  wire output 8 \SPI_Write_o

  attribute \src "../../verilog/spifsm.v:11"
  wire input 3 \Start_i

  cell $reduce_or $auto$opt_reduce.cc:130:opt_mux$2454
    parameter \A_SIGNED 0
    parameter \A_WIDTH 3
    parameter \Y_WIDTH 1
    connect \A { \SPI_FSM_Wr1 \SPI_FSM_Wr0 $procmux$298_CMP }
    connect \Y $auto$opt_reduce.cc:126:opt_mux$2453
  end

  cell $reduce_or $auto$opt_reduce.cc:130:opt_mux$2456
    parameter \A_SIGNED 0
    parameter \A_WIDTH 6
    parameter \Y_WIDTH 1
    connect \A { $procmux$336_CMP $procmux$335_CMP $procmux$334_CMP $procmux$302_CMP $procmux$301_CMP $procmux$298_CMP }
    connect \Y $auto$opt_reduce.cc:126:opt_mux$2455
  end

  cell $reduce_or $auto$opt_reduce.cc:130:opt_mux$2458
    parameter \A_SIGNED 0
    parameter \A_WIDTH 9
    parameter \Y_WIDTH 1
    connect \A { \SPI_FSM_Wr1 \SPI_FSM_Wr0 $procmux$336_CMP $procmux$335_CMP $procmux$334_CMP $procmux$302_CMP $procmux$301_CMP $procmux$298_CMP $procmux$297_CMP }
    connect \Y $auto$opt_reduce.cc:126:opt_mux$2457
  end

  cell $reduce_or $auto$opt_reduce.cc:130:opt_mux$2460
    parameter \A_SIGNED 0
    parameter \A_WIDTH 2
    parameter \Y_WIDTH 1
    connect \A { $procmux$336_CMP $procmux$335_CMP }
    connect \Y $auto$opt_reduce.cc:126:opt_mux$2459
  end

  cell $reduce_or $auto$opt_reduce.cc:130:opt_mux$2462
    parameter \A_SIGNED 0
    parameter \A_WIDTH 3
    parameter \Y_WIDTH 1
    connect \A { $procmux$336_CMP $procmux$335_CMP $procmux$302_CMP }
    connect \Y $auto$opt_reduce.cc:126:opt_mux$2461
  end

  cell $reduce_or $auto$opt_reduce.cc:130:opt_mux$2478
    parameter \A_SIGNED 0
    parameter \A_WIDTH 2
    parameter \Y_WIDTH 1
    connect \A { $procmux$334_CMP $procmux$301_CMP }
    connect \Y $auto$opt_reduce.cc:126:opt_mux$2477
  end

  attribute \src "../../verilog/spifsm.v:236"
  cell $eq $eq$../../verilog/spifsm.v:236$47
    parameter \A_SIGNED 0
    parameter \A_WIDTH 32
    parameter \B_SIGNED 0
    parameter \B_WIDTH 32
    parameter \Y_WIDTH 1
    connect \A \SPI_FSM_Timer
    connect \B 0
    connect \Y \SPI_FSM_TimerOvfl
  end

  attribute \fsm_encoding "auto"
  attribute \src "../../verilog/spifsm.v:41"
  cell $fsm $fsm$\SPI_FSM_State$2481
    parameter \ARST_POLARITY 1'0
    parameter \CLK_POLARITY 1'1
    parameter \CTRL_IN_WIDTH 3
    parameter \CTRL_OUT_WIDTH 10
    parameter \NAME "\\SPI_FSM_State"
    parameter \STATE_BITS 4
    parameter \STATE_NUM 11
    parameter \STATE_NUM_LOG2 4
    parameter \STATE_RST 0
    parameter \STATE_TABLE 44'01110011010110010001011010100010010010000000
    parameter \TRANS_NUM 15
    parameter \TRANS_TABLE 315'1010-1-101000001000001010-0-000100001000001001---001000000000101000---010100100000000111---010001000000000110---001100000010000101---101000010000000100---000000000000000011-0-100100000001000011-1-001100000001000010--1100000000000010010--0001000000000010001---0111100000000000001--0110000001000000000--00000000010000
    connect \ARST \Reset_n_i
    connect \CLK \Clk_i
    connect \CTRL_IN { \Start_i \SPI_Transmission_i \SPI_FSM_TimerOvfl }
    connect \CTRL_OUT { \SPI_FSM_Wr1 \SPI_FSM_Wr0 $procmux$336_CMP $procmux$335_CMP $procmux$334_CMP $procmux$305_CMP $procmux$302_CMP $procmux$301_CMP $procmux$298_CMP $procmux$297_CMP }
  end

  attribute \src "../../verilog/spifsm.v:187"
  cell $adff $procdff$2439
    parameter \ARST_POLARITY 1'0
    parameter \ARST_VALUE 8'00000000
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 8
    connect \ARST \Reset_n_i
    connect \CLK \Clk_i
    connect \D $0\Byte0_o[7:0]
    connect \Q \Byte0_o
  end

  attribute \src "../../verilog/spifsm.v:187"
  cell $adff $procdff$2440
    parameter \ARST_POLARITY 1'0
    parameter \ARST_VALUE 8'00000000
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 8
    connect \ARST \Reset_n_i
    connect \CLK \Clk_i
    connect \D $0\Byte1_o[7:0]
    connect \Q \Byte1_o
  end

  attribute \src "../../verilog/spifsm.v:217"
  cell $adff $procdff$2441
    parameter \ARST_POLARITY 1'0
    parameter \ARST_VALUE 0
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 32
    connect \ARST \Reset_n_i
    connect \CLK \Clk_i
    connect \D $0\SPI_FSM_Timer[31:0]
    connect \Q \SPI_FSM_Timer
  end

  cell $pmux $procmux$296
    parameter \S_WIDTH 2
    parameter \WIDTH 1
    connect \A 1'0
    connect \B { 1'1 $2\SPI_FSM_TimerEnable[0:0] }
    connect \S { $procmux$298_CMP $procmux$297_CMP }
    connect \Y \SPI_FSM_TimerEnable
  end

  cell $pmux $procmux$317
    parameter \S_WIDTH 2
    parameter \WIDTH 1
    connect \A 1'1
    connect \B { 1'0 \SPI_FSM_TimerOvfl }
    connect \S { $procmux$298_CMP $procmux$297_CMP }
    connect \Y \SPI_FSM_TimerPreset
  end

  cell $pmux $procmux$371
    parameter \S_WIDTH 2
    parameter \WIDTH 1
    connect \A 1'0
    connect \B { $2\SPI_ReadNext_o[0:0] 1'1 }
    connect \S { $auto$opt_reduce.cc:126:opt_mux$2477 $auto$opt_reduce.cc:126:opt_mux$2453 }
    connect \Y \SPI_ReadNext_o
  end

  cell $pmux $procmux$396
    parameter \S_WIDTH 3
    parameter \WIDTH 1
    connect \A 1'1
    connect \B { $2\ADT7310CS_n_o[0:0] $2\SPI_FSM_TimerEnable[0:0] 1'0 }
    connect \S { $procmux$305_CMP $procmux$297_CMP $auto$opt_reduce.cc:126:opt_mux$2455 }
    connect \Y \ADT7310CS_n_o
  end

  cell $pmux $procmux$413
    parameter \S_WIDTH 2
    parameter \WIDTH 1
    connect \A 1'1
    connect \B { $2\ADT7310CS_n_o[0:0] 1'0 }
    connect \S { $procmux$305_CMP $auto$opt_reduce.cc:126:opt_mux$2457 }
    connect \Y \Done_o
  end

  cell $pmux $procmux$439
    parameter \S_WIDTH 3
    parameter \WIDTH 8
    connect \A 8'00001000
    connect \B 24'001000000101000011111111
    connect \S { $procmux$302_CMP $procmux$297_CMP $auto$opt_reduce.cc:126:opt_mux$2459 }
    connect \Y \SPI_Data_o
  end

  cell $pmux $procmux$481
    parameter \S_WIDTH 3
    parameter \WIDTH 1
    connect \A 1'0
    connect \B { \Start_i \SPI_FSM_TimerOvfl 1'1 }
    connect \S { $procmux$305_CMP $procmux$297_CMP $auto$opt_reduce.cc:126:opt_mux$2461 }
    connect \Y \SPI_Write_o
  end

  cell $not $procmux$535
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \Start_i
    connect \Y $2\ADT7310CS_n_o[0:0]
  end

  cell $not $procmux$641
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \SPI_Transmission_i
    connect \Y $2\SPI_ReadNext_o[0:0]
  end

  cell $not $procmux$659
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \SPI_FSM_TimerOvfl
    connect \Y $2\SPI_FSM_TimerEnable[0:0]
  end

  cell $mux $procmux$70
    parameter \WIDTH 8
    connect \A \Byte0_o
    connect \B \SPI_Data_i
    connect \S \SPI_FSM_Wr0
    connect \Y $0\Byte0_o[7:0]
  end

  cell $mux $procmux$77
    parameter \WIDTH 8
    connect \A \Byte1_o
    connect \B \SPI_Data_i
    connect \S \SPI_FSM_Wr1
    connect \Y $0\Byte1_o[7:0]
  end

  cell $mux $procmux$80
    parameter \WIDTH 32
    connect \A \SPI_FSM_Timer
    connect \B $sub$../../verilog/spifsm.v:231$46_Y
    connect \S \SPI_FSM_TimerEnable
    connect \Y $procmux$80_Y
  end

  cell $mux $procmux$83
    parameter \WIDTH 32
    connect \A $procmux$80_Y
    connect \B \ParamCounterPreset_i
    connect \S \SPI_FSM_TimerPreset
    connect \Y $0\SPI_FSM_Timer[31:0]
  end

  attribute \src "../../verilog/spifsm.v:231"
  cell $sub $sub$../../verilog/spifsm.v:231$46
    parameter \A_SIGNED 0
    parameter \A_WIDTH 32
    parameter \B_SIGNED 0
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 32
    connect \A \SPI_FSM_Timer
    connect \B 1'1
    connect \Y $sub$../../verilog/spifsm.v:231$46_Y
  end
end

attribute \src "../../verilog/sensorfsm.v:3"
module $paramod\SensorFSM\DataWidth=8

  attribute \src "../../verilog/sensorfsm.v:130"
  wire width 16 $0\SensorFSM_Timer[15:0]

  attribute \src "../../verilog/sensorfsm.v:153"
  wire width 16 $0\Word0[15:0]

  attribute \src "../../verilog/sensorfsm.v:57"
  wire $2\MeasureFSM_Start_o[0:0]

  attribute \src "../../verilog/sensorfsm.v:57"
  wire $2\SensorFSM_StoreNewValue[0:0]

  attribute \src "../../verilog/sensorfsm.v:57"
  wire $2\SensorFSM_TimerPreset[0:0]

  attribute \src "../../verilog/sensorfsm.v:57"
  wire $3\SensorFSM_TimerPreset[0:0]

  attribute \src "../../verilog/sensorfsm.v:57"
  wire $4\SensorFSM_TimerPreset[0:0]

  wire $auto$opt_reduce.cc:126:opt_mux$2463

  wire $procmux$1004_CMP

  wire $procmux$1007_CMP

  wire $procmux$1129_CMP

  wire width 16 $procmux$826_Y

  attribute \src "../../verilog/sensorfsm.v:144"
  wire width 16 $sub$../../verilog/sensorfsm.v:144$59_Y

  attribute \src "../../verilog/sensorfsm.v:39"
  wire width 16 \AbsDiffResult

  attribute \src "../../verilog/sensorfsm.v:7"
  wire input 2 \Clk_i

  attribute \src "../../verilog/sensorfsm.v:10"
  wire output 4 \CpuIntr_o

  attribute \src "../../verilog/sensorfsm.v:168"
  wire width 17 \DiffAB

  attribute \src "../../verilog/sensorfsm.v:169"
  wire width 16 \DiffBA

  attribute \src "../../verilog/sensorfsm.v:9"
  wire input 3 \Enable_i

  attribute \src "../../verilog/sensorfsm.v:15"
  wire width 8 input 8 \MeasureFSM_Byte0_i

  attribute \src "../../verilog/sensorfsm.v:16"
  wire width 8 input 9 \MeasureFSM_Byte1_i

  attribute \src "../../verilog/sensorfsm.v:14"
  wire input 7 \MeasureFSM_Done_i

  attribute \src "../../verilog/sensorfsm.v:13"
  wire output 6 \MeasureFSM_Start_o

  attribute \src "../../verilog/sensorfsm.v:19"
  wire width 16 input 11 \ParamCounterPreset_i

  attribute \src "../../verilog/sensorfsm.v:18"
  wire width 16 input 10 \ParamThreshold_i

  attribute \src "../../verilog/sensorfsm.v:6"
  wire input 1 \Reset_n_i

  attribute \src "../../verilog/sensorfsm.v:32"
  wire \SensorFSM_DiffTooLarge

  attribute \src "../../verilog/sensorfsm.v:33"
  wire \SensorFSM_StoreNewValue

  attribute \src "../../verilog/sensorfsm.v:128"
  wire width 16 \SensorFSM_Timer

  attribute \src "../../verilog/sensorfsm.v:31"
  wire \SensorFSM_TimerEnable

  attribute \src "../../verilog/sensorfsm.v:29"
  wire \SensorFSM_TimerOvfl

  attribute \src "../../verilog/sensorfsm.v:30"
  wire \SensorFSM_TimerPreset

  attribute \src "../../verilog/sensorfsm.v:37"
  wire width 16 \SensorValue

  attribute \src "../../verilog/sensorfsm.v:11"
  wire width 16 output 5 \SensorValue_o

  attribute \src "../../verilog/sensorfsm.v:38"
  wire width 16 \Word0

  cell $reduce_or $auto$opt_reduce.cc:130:opt_mux$2464
    parameter \A_SIGNED 0
    parameter \A_WIDTH 3
    parameter \Y_WIDTH 1
    connect \A { $procmux$1129_CMP $procmux$1007_CMP $procmux$1004_CMP }
    connect \Y $auto$opt_reduce.cc:126:opt_mux$2463
  end

  attribute \src "../../verilog/sensorfsm.v:149"
  cell $eq $eq$../../verilog/sensorfsm.v:149$60
    parameter \A_SIGNED 0
    parameter \A_WIDTH 16
    parameter \B_SIGNED 0
    parameter \B_WIDTH 16
    parameter \Y_WIDTH 1
    connect \A \SensorFSM_Timer
    connect \B 16'0000000000000000
    connect \Y \SensorFSM_TimerOvfl
  end

  attribute \fsm_encoding "auto"
  attribute \src "../../verilog/sensorfsm.v:27"
  cell $fsm $fsm$\SensorFSM_State$2494
    parameter \ARST_POLARITY 1'0
    parameter \CLK_POLARITY 1'1
    parameter \CTRL_IN_WIDTH 4
    parameter \CTRL_OUT_WIDTH 3
    parameter \NAME "\\SensorFSM_State"
    parameter \STATE_BITS 2
    parameter \STATE_NUM 4
    parameter \STATE_NUM_LOG2 3
    parameter \STATE_RST 0
    parameter \STATE_TABLE 8'11011000
    parameter \TRANS_NUM 9
    parameter \TRANS_TABLE 117'011----0100000100--10100010101--1001001010---0000001001-11-011100001-01-010100001--0-001100000---1010010000---0000010
    connect \ARST \Reset_n_i
    connect \CLK \Clk_i
    connect \CTRL_IN { \SensorFSM_TimerOvfl \SensorFSM_DiffTooLarge \MeasureFSM_Done_i \Enable_i }
    connect \CTRL_OUT { $procmux$1129_CMP $procmux$1007_CMP $procmux$1004_CMP }
  end

  attribute \src "../../verilog/sensorfsm.v:174"
  cell $gt $gt$../../verilog/sensorfsm.v:174$67
    parameter \A_SIGNED 0
    parameter \A_WIDTH 16
    parameter \B_SIGNED 0
    parameter \B_WIDTH 16
    parameter \Y_WIDTH 1
    connect \A \AbsDiffResult
    connect \B \ParamThreshold_i
    connect \Y \SensorFSM_DiffTooLarge
  end

  attribute \src "../../verilog/sensorfsm.v:130"
  cell $adff $procdff$2443
    parameter \ARST_POLARITY 1'0
    parameter \ARST_VALUE 16'0000000000000000
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 16
    connect \ARST \Reset_n_i
    connect \CLK \Clk_i
    connect \D $0\SensorFSM_Timer[15:0]
    connect \Q \SensorFSM_Timer
  end

  attribute \src "../../verilog/sensorfsm.v:153"
  cell $adff $procdff$2444
    parameter \ARST_POLARITY 1'0
    parameter \ARST_VALUE 16'0000000000000000
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 16
    connect \ARST \Reset_n_i
    connect \CLK \Clk_i
    connect \D $0\Word0[15:0]
    connect \Q \Word0
  end

  cell $not $procmux$1036
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \Enable_i
    connect \Y $2\SensorFSM_TimerPreset[0:0]
  end

  cell $and $procmux$1065
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_SIGNED 0
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \Enable_i
    connect \B \SensorFSM_TimerOvfl
    connect \Y $2\MeasureFSM_Start_o[0:0]
  end

  cell $and $procmux$1142
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_SIGNED 0
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \MeasureFSM_Done_i
    connect \B \SensorFSM_DiffTooLarge
    connect \Y $2\SensorFSM_StoreNewValue[0:0]
  end

  cell $mux $procmux$1174
    parameter \WIDTH 1
    connect \A 1'1
    connect \B $4\SensorFSM_TimerPreset[0:0]
    connect \S \MeasureFSM_Done_i
    connect \Y $3\SensorFSM_TimerPreset[0:0]
  end

  cell $not $procmux$1206
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \SensorFSM_DiffTooLarge
    connect \Y $4\SensorFSM_TimerPreset[0:0]
  end

  cell $mux $procmux$826
    parameter \WIDTH 16
    connect \A \SensorFSM_Timer
    connect \B $sub$../../verilog/sensorfsm.v:144$59_Y
    connect \S \SensorFSM_TimerEnable
    connect \Y $procmux$826_Y
  end

  cell $mux $procmux$829
    parameter \WIDTH 16
    connect \A $procmux$826_Y
    connect \B \ParamCounterPreset_i
    connect \S \SensorFSM_TimerPreset
    connect \Y $0\SensorFSM_Timer[15:0]
  end

  cell $mux $procmux$832
    parameter \WIDTH 16
    connect \A \Word0
    connect \B { \MeasureFSM_Byte1_i \MeasureFSM_Byte0_i }
    connect \S \SensorFSM_StoreNewValue
    connect \Y $0\Word0[15:0]
  end

  cell $not $procmux$923
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A $auto$opt_reduce.cc:126:opt_mux$2463
    connect \Y \CpuIntr_o
  end

  cell $and $procmux$943
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_SIGNED 0
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A $procmux$1004_CMP
    connect \B $2\MeasureFSM_Start_o[0:0]
    connect \Y \MeasureFSM_Start_o
  end

  cell $and $procmux$953
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_SIGNED 0
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A $procmux$1129_CMP
    connect \B $2\SensorFSM_StoreNewValue[0:0]
    connect \Y \SensorFSM_StoreNewValue
  end

  cell $pmux $procmux$983
    parameter \S_WIDTH 3
    parameter \WIDTH 1
    connect \A 1'0
    connect \B { \Enable_i 1'1 $2\SensorFSM_StoreNewValue[0:0] }
    connect \S { $procmux$1007_CMP $procmux$1004_CMP $procmux$1129_CMP }
    connect \Y \SensorFSM_TimerEnable
  end

  cell $pmux $procmux$998
    parameter \S_WIDTH 3
    parameter \WIDTH 1
    connect \A 1'1
    connect \B { $2\SensorFSM_TimerPreset[0:0] 1'0 $3\SensorFSM_TimerPreset[0:0] }
    connect \S { $procmux$1007_CMP $procmux$1004_CMP $procmux$1129_CMP }
    connect \Y \SensorFSM_TimerPreset
  end

  attribute \src "../../verilog/sensorfsm.v:144"
  cell $sub $sub$../../verilog/sensorfsm.v:144$59
    parameter \A_SIGNED 0
    parameter \A_WIDTH 16
    parameter \B_SIGNED 0
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 16
    connect \A \SensorFSM_Timer
    connect \B 1'1
    connect \Y $sub$../../verilog/sensorfsm.v:144$59_Y
  end

  attribute \src "../../verilog/sensorfsm.v:170"
  cell $sub $sub$../../verilog/sensorfsm.v:170$64
    parameter \A_SIGNED 0
    parameter \A_WIDTH 17
    parameter \B_SIGNED 0
    parameter \B_WIDTH 17
    parameter \Y_WIDTH 17
    connect \A { 1'0 \MeasureFSM_Byte1_i \MeasureFSM_Byte0_i }
    connect \B { 1'0 \Word0 }
    connect \Y \DiffAB
  end

  attribute \src "../../verilog/sensorfsm.v:171"
  cell $sub $sub$../../verilog/sensorfsm.v:171$65
    parameter \A_SIGNED 0
    parameter \A_WIDTH 16
    parameter \B_SIGNED 0
    parameter \B_WIDTH 16
    parameter \Y_WIDTH 16
    connect \A \Word0
    connect \B { \MeasureFSM_Byte1_i \MeasureFSM_Byte0_i }
    connect \Y \DiffBA
  end

  attribute \src "../../verilog/sensorfsm.v:172"
  cell $mux $ternary$../../verilog/sensorfsm.v:172$66
    parameter \WIDTH 16
    connect \A \DiffAB [15:0]
    connect \B \DiffBA
    connect \S \DiffAB [16]
    connect \Y \AbsDiffResult
  end

  connect \SensorValue { \MeasureFSM_Byte1_i \MeasureFSM_Byte0_i }
  connect \SensorValue_o \Word0
end

attribute \src "../../verilog/adt7310.v:1"
module \ADT7310

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "Outputs_o"
  attribute \src "../../verilog/adt7310.v:11"
  wire output 5 \ADT7310CS_n_o

  attribute \intersynth_port "Clk_i"
  attribute \src "../../verilog/adt7310.v:5"
  wire input 2 \Clk_i

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "ReconfModuleIRQs_s"
  attribute \src "../../verilog/adt7310.v:9"
  wire output 4 \CpuIntr_o

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "ReconfModuleIn_s"
  attribute \src "../../verilog/adt7310.v:7"
  wire input 3 \Enable_i

  attribute \intersynth_conntype "Word"
  attribute \intersynth_param "PeriodCounterPreset_i"
  attribute \src "../../verilog/adt7310.v:33"
  wire width 16 input 16 \PeriodCounterPreset_i

  attribute \intersynth_port "Reset_n_i"
  attribute \src "../../verilog/adt7310.v:3"
  wire input 1 \Reset_n_i

  attribute \intersynth_conntype "Word"
  attribute \intersynth_param "SPICounterPresetH_i"
  attribute \src "../../verilog/adt7310.v:27"
  wire width 16 input 13 \SPICounterPresetH_i

  attribute \intersynth_conntype "Word"
  attribute \intersynth_param "SPICounterPresetL_i"
  attribute \src "../../verilog/adt7310.v:29"
  wire width 16 input 14 \SPICounterPresetL_i

  attribute \keep 1
  attribute \src "../../verilog/adt7310.v:56"
  wire width 8 \SPIFSM_Byte0_s

  attribute \keep 1
  attribute \src "../../verilog/adt7310.v:58"
  wire width 8 \SPIFSM_Byte1_s

  attribute \keep 1
  attribute \src "../../verilog/adt7310.v:54"
  wire \SPIFSM_Done_s

  attribute \keep 1
  attribute \src "../../verilog/adt7310.v:52"
  wire \SPIFSM_Start_s

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "SPI_CPHA"
  attribute \src "../../verilog/adt7310.v:39"
  wire output 19 \SPI_CPHA_o

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "SPI_CPOL"
  attribute \src "../../verilog/adt7310.v:37"
  wire output 18 \SPI_CPOL_o

  attribute \intersynth_conntype "Byte"
  attribute \intersynth_port "SPI_DataOut"
  attribute \src "../../verilog/adt7310.v:13"
  wire width 8 input 6 \SPI_Data_i

  attribute \intersynth_conntype "Byte"
  attribute \intersynth_port "SPI_DataIn"
  attribute \src "../../verilog/adt7310.v:19"
  wire width 8 output 9 \SPI_Data_o

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "SPI_FIFOEmpty"
  attribute \src "../../verilog/adt7310.v:23"
  wire input 11 \SPI_FIFOEmpty_i

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "SPI_FIFOFull"
  attribute \src "../../verilog/adt7310.v:21"
  wire input 10 \SPI_FIFOFull_i

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "SPI_LSBFE"
  attribute \src "../../verilog/adt7310.v:41"
  wire output 20 \SPI_LSBFE_o

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "SPI_ReadNext"
  attribute \src "../../verilog/adt7310.v:17"
  wire output 8 \SPI_ReadNext_o

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "SPI_Transmission"
  attribute \src "../../verilog/adt7310.v:25"
  wire input 12 \SPI_Transmission_i

  attribute \intersynth_conntype "Bit"
  attribute \intersynth_port "SPI_Write"
  attribute \src "../../verilog/adt7310.v:15"
  wire output 7 \SPI_Write_o

  attribute \intersynth_conntype "Word"
  attribute \intersynth_param "SensorValue_o"
  attribute \src "../../verilog/adt7310.v:35"
  wire width 16 output 17 \SensorValue_o

  attribute \intersynth_conntype "Word"
  attribute \intersynth_param "Threshold_i"
  attribute \src "../../verilog/adt7310.v:31"
  wire width 16 input 15 \Threshold_i

  attribute \src "../../verilog/adt7310.v:60"
  cell $paramod\SPIFSM\SPPRWidth=4\SPRWidth=4\DataWidth=8 \SPIFSM_1
    connect \ADT7310CS_n_o \ADT7310CS_n_o
    connect \Byte0_o \SPIFSM_Byte0_s
    connect \Byte1_o \SPIFSM_Byte1_s
    connect \Clk_i \Clk_i
    connect \Done_o \SPIFSM_Done_s
    connect \ParamCounterPreset_i { \SPICounterPresetH_i \SPICounterPresetL_i }
    connect \Reset_n_i \Reset_n_i
    connect \SPI_Data_i \SPI_Data_i
    connect \SPI_Data_o \SPI_Data_o
    connect \SPI_FIFOEmpty_i \SPI_FIFOEmpty_i
    connect \SPI_FIFOFull_i \SPI_FIFOFull_i
    connect \SPI_ReadNext_o \SPI_ReadNext_o
    connect \SPI_Transmission_i \SPI_Transmission_i
    connect \SPI_Write_o \SPI_Write_o
    connect \Start_i \SPIFSM_Start_s
  end

  attribute \src "../../verilog/adt7310.v:86"
  cell $paramod\SensorFSM\DataWidth=8 \SensorFSM_1
    connect \Clk_i \Clk_i
    connect \CpuIntr_o \CpuIntr_o
    connect \Enable_i \Enable_i
    connect \MeasureFSM_Byte0_i \SPIFSM_Byte0_s
    connect \MeasureFSM_Byte1_i \SPIFSM_Byte1_s
    connect \MeasureFSM_Done_i \SPIFSM_Done_s
    connect \MeasureFSM_Start_o \SPIFSM_Start_s
    connect \ParamCounterPreset_i \PeriodCounterPreset_i
    connect \ParamThreshold_i \Threshold_i
    connect \Reset_n_i \Reset_n_i
    connect \SensorValue_o \SensorValue_o
  end

  connect \SPI_CPHA_o 1'1
  connect \SPI_CPOL_o 1'1
  connect \SPI_LSBFE_o 1'0
end
