--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Wed Apr  6 07:13:20 2022
--Host        : MagusReborn running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    dds_phase : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dds_reset : in STD_LOGIC;
    dds_valid_out : out STD_LOGIC;
    fir_left_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fir_right_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fir_valid_out : out STD_LOGIC;
    s_axis_phase_tvalid_0 : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    tuner_phase : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=15,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=4,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_dds_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_dds_compiler_0_0;
  component design_1_fir_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_fir_compiler_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_fir_compiler_1_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_fir_compiler_1_0;
  component design_1_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlslice_1_0;
  component design_1_dds_compiler_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_dds_compiler_1;
  component design_1_cmpy_0_0 is
  port (
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_cmpy_0_0;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlslice_2_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlslice_2_2;
  component design_1_slicecomplex_imag_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_slicecomplex_imag_0;
  component design_1_fir_compiler_0_1 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_fir_compiler_0_1;
  component design_1_fir_compiler_1_1 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_fir_compiler_1_1;
  component design_1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlslice_0_1;
  component design_1_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlslice_1_1;
  signal Net : STD_LOGIC;
  signal cmpy_0_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmpy_0_m_axis_dout_tvalid : STD_LOGIC;
  signal dds_compiler1_m_axis_data_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dds_compiler1_m_axis_data_tvalid : STD_LOGIC;
  signal dds_compiler_m_axis_data_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dds_compiler_m_axis_data_tvalid : STD_LOGIC;
  signal dds_phase_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fir_compiler1_right_m_axis_data_tvalid : STD_LOGIC;
  signal fir_compiler_0_m_axis_data_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fir_compiler_0_m_axis_data_tdata1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fir_compiler_0_m_axis_data_tvalid : STD_LOGIC;
  signal fir_compiler_1_m_axis_data_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fir_compiler_1_m_axis_data_tdata1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fir_compiler_1_m_axis_data_tvalid : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal s_axis_phase_tvalid_0_1 : STD_LOGIC;
  signal slicecomplex_imag_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal slicecomplex_real_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tuner_phase_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_0_Dout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_fir_compiler1_left_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler1_right_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler2_left_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler2_right_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler2_right_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
begin
  Net <= dds_reset;
  dds_phase_1(31 downto 0) <= dds_phase(31 downto 0);
  dds_valid_out <= dds_compiler_m_axis_data_tvalid;
  fir_left_data_out(15 downto 0) <= xlslice_1_Dout(15 downto 0);
  fir_right_data_out(15 downto 0) <= xlslice_3_Dout(15 downto 0);
  fir_valid_out <= fir_compiler_1_m_axis_data_tvalid;
  processing_system7_0_FCLK_CLK0 <= sysclk;
  s_axis_phase_tvalid_0_1 <= s_axis_phase_tvalid_0;
  tuner_phase_1(31 downto 0) <= tuner_phase(31 downto 0);
cmpy_0: component design_1_cmpy_0_0
     port map (
      m_axis_dout_tdata(31 downto 0) => cmpy_0_m_axis_dout_tdata(31 downto 0),
      m_axis_dout_tvalid => cmpy_0_m_axis_dout_tvalid,
      s_axis_a_tdata(31 downto 0) => dds_compiler1_m_axis_data_tdata(31 downto 0),
      s_axis_a_tvalid => dds_compiler1_m_axis_data_tvalid,
      s_axis_b_tdata(31 downto 0) => xlconcat_0_dout(31 downto 0),
      s_axis_b_tvalid => dds_compiler_m_axis_data_tvalid
    );
dds_compiler: component design_1_dds_compiler_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => Net,
      m_axis_data_tdata(15 downto 0) => dds_compiler_m_axis_data_tdata(15 downto 0),
      m_axis_data_tvalid => dds_compiler_m_axis_data_tvalid,
      s_axis_phase_tdata(31 downto 0) => dds_phase_1(31 downto 0),
      s_axis_phase_tvalid => s_axis_phase_tvalid_0_1
    );
dds_compiler1: component design_1_dds_compiler_1
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => Net,
      m_axis_data_tdata(31 downto 0) => dds_compiler1_m_axis_data_tdata(31 downto 0),
      m_axis_data_tvalid => dds_compiler1_m_axis_data_tvalid,
      s_axis_phase_tdata(31 downto 0) => tuner_phase_1(31 downto 0),
      s_axis_phase_tvalid => s_axis_phase_tvalid_0_1
    );
fir_compiler1_left: component design_1_fir_compiler_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      m_axis_data_tdata(31 downto 0) => fir_compiler_0_m_axis_data_tdata(31 downto 0),
      m_axis_data_tvalid => fir_compiler_0_m_axis_data_tvalid,
      s_axis_data_tdata(15 downto 0) => slicecomplex_imag_Dout(15 downto 0),
      s_axis_data_tready => NLW_fir_compiler1_left_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => cmpy_0_m_axis_dout_tvalid
    );
fir_compiler1_right: component design_1_fir_compiler_0_1
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      m_axis_data_tdata(31 downto 0) => fir_compiler_0_m_axis_data_tdata1(31 downto 0),
      m_axis_data_tvalid => fir_compiler1_right_m_axis_data_tvalid,
      s_axis_data_tdata(15 downto 0) => slicecomplex_real_Dout(15 downto 0),
      s_axis_data_tready => NLW_fir_compiler1_right_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => cmpy_0_m_axis_dout_tvalid
    );
fir_compiler2_left: component design_1_fir_compiler_1_0
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      m_axis_data_tdata(31 downto 0) => fir_compiler_1_m_axis_data_tdata(31 downto 0),
      m_axis_data_tvalid => fir_compiler_1_m_axis_data_tvalid,
      s_axis_data_tdata(15 downto 0) => xlslice_0_Dout(15 downto 0),
      s_axis_data_tready => NLW_fir_compiler2_left_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fir_compiler_0_m_axis_data_tvalid
    );
fir_compiler2_right: component design_1_fir_compiler_1_1
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      m_axis_data_tdata(31 downto 0) => fir_compiler_1_m_axis_data_tdata1(31 downto 0),
      m_axis_data_tvalid => NLW_fir_compiler2_right_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => xlslice_0_Dout1(15 downto 0),
      s_axis_data_tready => NLW_fir_compiler2_right_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fir_compiler1_right_m_axis_data_tvalid
    );
slicecomplex_imag: component design_1_xlslice_2_2
     port map (
      Din(31 downto 0) => cmpy_0_m_axis_dout_tdata(31 downto 0),
      Dout(15 downto 0) => slicecomplex_imag_Dout(15 downto 0)
    );
slicecomplex_real: component design_1_slicecomplex_imag_0
     port map (
      Din(31 downto 0) => cmpy_0_m_axis_dout_tdata(31 downto 0),
      Dout(15 downto 0) => slicecomplex_real_Dout(15 downto 0)
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(15 downto 0) => dds_compiler_m_axis_data_tdata(15 downto 0),
      In1(15 downto 0) => xlconstant_0_dout(15 downto 0),
      dout(31 downto 0) => xlconcat_0_dout(31 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(15 downto 0) => xlconstant_0_dout(15 downto 0)
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(31 downto 0) => fir_compiler_0_m_axis_data_tdata(31 downto 0),
      Dout(15 downto 0) => xlslice_0_Dout(15 downto 0)
    );
xlslice_1: component design_1_xlslice_1_0
     port map (
      Din(31 downto 0) => fir_compiler_1_m_axis_data_tdata(31 downto 0),
      Dout(15 downto 0) => xlslice_1_Dout(15 downto 0)
    );
xlslice_2: component design_1_xlslice_0_1
     port map (
      Din(31 downto 0) => fir_compiler_0_m_axis_data_tdata1(31 downto 0),
      Dout(15 downto 0) => xlslice_0_Dout1(15 downto 0)
    );
xlslice_3: component design_1_xlslice_1_1
     port map (
      Din(31 downto 0) => fir_compiler_1_m_axis_data_tdata1(31 downto 0),
      Dout(15 downto 0) => xlslice_3_Dout(15 downto 0)
    );
end STRUCTURE;
