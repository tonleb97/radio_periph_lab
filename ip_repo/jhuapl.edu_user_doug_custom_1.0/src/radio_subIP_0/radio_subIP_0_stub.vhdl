-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Apr 13 07:32:55 2022
-- Host        : MagusReborn running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/School/sysFPGAlab/radio_periph_lab/ip_repo/jhuapl.edu_user_doug_custom_1.0/src/radio_subIP_0/radio_subIP_0_stub.vhdl
-- Design      : radio_subIP_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity radio_subIP_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    dds_reset : in STD_LOGIC;
    tuner_phase : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dds_phase : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_phase_tvalid_0 : in STD_LOGIC;
    data_valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end radio_subIP_0;

architecture stub of radio_subIP_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sysclk,dds_reset,tuner_phase[31:0],dds_phase[31:0],s_axis_phase_tvalid_0,data_valid_out,data_out[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "radio_subIP,Vivado 2021.2";
begin
end;
