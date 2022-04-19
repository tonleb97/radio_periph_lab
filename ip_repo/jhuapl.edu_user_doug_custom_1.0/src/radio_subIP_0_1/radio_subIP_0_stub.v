// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Apr 15 10:48:20 2022
// Host        : MagusReborn running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/School/sysFPGAlab/radio_periph_lab/ip_repo/jhuapl.edu_user_doug_custom_1.0/src/radio_subIP_0_1/radio_subIP_0_stub.v
// Design      : radio_subIP_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "radio_subIP,Vivado 2021.2" *)
module radio_subIP_0(sysclk, dds_reset, tuner_phase, dds_phase, 
  s_axis_phase_tvalid_0, data_valid_out, data_out)
/* synthesis syn_black_box black_box_pad_pin="sysclk,dds_reset,tuner_phase[31:0],dds_phase[31:0],s_axis_phase_tvalid_0,data_valid_out,data_out[31:0]" */;
  input sysclk;
  input dds_reset;
  input [31:0]tuner_phase;
  input [31:0]dds_phase;
  input s_axis_phase_tvalid_0;
  output data_valid_out;
  output [31:0]data_out;
endmodule
