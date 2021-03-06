/* Generated by Yosys 0.3.0+ (git sha1 3b52121) */

(* src = "../../verilog/absdiff.v:1" *)
module AbsDiff(A_i, B_i, D_o);
  (* intersynth_conntype = "Word" *)
  (* src = "../../verilog/absdiff.v:3" *)
  input [15:0] A_i;
  (* intersynth_conntype = "Word" *)
  (* src = "../../verilog/absdiff.v:5" *)
  input [15:0] B_i;
  (* intersynth_conntype = "Word" *)
  (* src = "../../verilog/absdiff.v:7" *)
  output [15:0] D_o;
  (* src = "../../verilog/absdiff.v:10" *)
  wire [16:0] DiffAB;
  (* src = "../../verilog/absdiff.v:11" *)
  wire [15:0] DiffBA;
  (* src = "../../verilog/absdiff.v:12" *)
  \$sub  #(
    .A_SIGNED(32'b00000000000000000000000000000000),
    .A_WIDTH(32'b00000000000000000000000000010001),
    .B_SIGNED(32'b00000000000000000000000000000000),
    .B_WIDTH(32'b00000000000000000000000000010001),
    .Y_WIDTH(32'b00000000000000000000000000010001)
  ) \$sub$../../verilog/absdiff.v:12$1  (
    .A({ 1'b0, A_i }),
    .B({ 1'b0, B_i }),
    .Y(DiffAB)
  );
  (* src = "../../verilog/absdiff.v:13" *)
  \$sub  #(
    .A_SIGNED(32'b00000000000000000000000000000000),
    .A_WIDTH(32'b00000000000000000000000000010000),
    .B_SIGNED(32'b00000000000000000000000000000000),
    .B_WIDTH(32'b00000000000000000000000000010000),
    .Y_WIDTH(32'b00000000000000000000000000010000)
  ) \$sub$../../verilog/absdiff.v:13$2  (
    .A(B_i),
    .B(A_i),
    .Y(DiffBA)
  );
  (* src = "../../verilog/absdiff.v:14" *)
  \$mux  #(
    .WIDTH(32'b00000000000000000000000000010000)
  ) \$ternary$../../verilog/absdiff.v:14$3  (
    .A(DiffAB[15:0]),
    .B(DiffBA),
    .S(DiffAB[16]),
    .Y(D_o)
  );
endmodule
