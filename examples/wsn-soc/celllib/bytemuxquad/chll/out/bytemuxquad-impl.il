
attribute \src "../../verilog/bytemuxquad.v:1"
module \ByteMuxQuad

  attribute \src "../../verilog/bytemuxquad.v:20"
  wire width 8 \AB

  attribute \src "../../verilog/bytemuxquad.v:21"
  wire width 8 \ABC

  attribute \intersynth_conntype "Byte"
  attribute \src "../../verilog/bytemuxquad.v:3"
  wire width 8 input 1 \A_i

  attribute \intersynth_conntype "Byte"
  attribute \src "../../verilog/bytemuxquad.v:5"
  wire width 8 input 2 \B_i

  attribute \intersynth_conntype "Byte"
  attribute \src "../../verilog/bytemuxquad.v:7"
  wire width 8 input 3 \C_i

  attribute \intersynth_conntype "Byte"
  attribute \src "../../verilog/bytemuxquad.v:9"
  wire width 8 input 4 \D_i

  attribute \intersynth_conntype "Bit"
  attribute \src "../../verilog/bytemuxquad.v:11"
  wire input 5 \SAB_i

  attribute \intersynth_conntype "Bit"
  attribute \src "../../verilog/bytemuxquad.v:13"
  wire input 6 \SC_i

  attribute \intersynth_conntype "Bit"
  attribute \src "../../verilog/bytemuxquad.v:15"
  wire input 7 \SD_i

  attribute \intersynth_conntype "Byte"
  attribute \src "../../verilog/bytemuxquad.v:17"
  wire width 8 output 8 \Y_o

  attribute \src "../../verilog/bytemuxquad.v:20"
  cell $mux $ternary$../../verilog/bytemuxquad.v:20$1
    parameter \WIDTH 8
    connect \A \A_i
    connect \B \B_i
    connect \S \SAB_i
    connect \Y \AB
  end

  attribute \src "../../verilog/bytemuxquad.v:21"
  cell $mux $ternary$../../verilog/bytemuxquad.v:21$2
    parameter \WIDTH 8
    connect \A \AB
    connect \B \C_i
    connect \S \SC_i
    connect \Y \ABC
  end

  attribute \src "../../verilog/bytemuxquad.v:22"
  cell $mux $ternary$../../verilog/bytemuxquad.v:22$3
    parameter \WIDTH 8
    connect \A \ABC
    connect \B \D_i
    connect \S \SD_i
    connect \Y \Y_o
  end
end
