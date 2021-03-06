// Access internal signals from testbench
// Auto-generated by ../scripts/reconf-module-postproc.tcl

module ExtNames (
  output CpuIntr,
  output[15:0] SensorValue,
  output Enable,
  output SPIFSM_Done
);
  assign CpuIntr = core_tb.DUT.MyReconfigLogic_0.MyInterSynthModule_0.cell_80.Out4_o;
  assign SensorValue = core_tb.DUT.MyReconfigLogic_0.MyInterSynthModule_0.cell_66.Q_o;
  assign Enable = core_tb.DUT.MyReconfigLogic_0.MyInterSynthModule_0.cell_80.In0_i;
  assign SPIFSM_Done = core_tb.DUT.MyReconfigLogic_0.MyInterSynthModule_0.cell_81.Out1_o;
endmodule
