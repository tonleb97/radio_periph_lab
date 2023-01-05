library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity radio_subIP is
    Port (
    sysclk : in std_logic;
    dds_reset : in STD_LOGIC;
    tuner_phase : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dds_phase : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_phase_tvalid_0 : in STD_LOGIC;
    data_valid_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR(31 downto 0)
        );
end radio_subIP;

architecture Behavioral of radio_subIP is
     component design_1 is
      port (
        s_axis_phase_tvalid_0 : in STD_LOGIC;
        fir_left_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
        fir_valid_out : out STD_LOGIC;
        dds_valid_out : out STD_LOGIC;
        fir_right_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
        sysclk : in STD_LOGIC;
        dds_reset : in STD_LOGIC;
        tuner_phase : in STD_LOGIC_VECTOR ( 31 downto 0 );
        dds_phase : in STD_LOGIC_VECTOR ( 31 downto 0 )
      );
      end component design_1;
      
      signal singleChannel : std_logic_vector(15 downto 0);
      signal dualChannel : std_logic_vector(31 downto 0);
      signal fir_valid_out : std_logic;
      signal fir_left_data_out : std_logic_vector(15 downto 0);
      signal fir_right_data_out : std_logic_vector(15 downto 0);
      signal dds_valid_out : std_logic;
begin

    dualChannel(15 downto 0) <= fir_right_data_out(15 downto 1) & '0'; --multiply by 2
    dualChannel(31 downto 16) <= fir_left_data_out(15 downto 1) & '0'; --multiply by 2
    data_out <= dualChannel(31 downto 0);
    data_valid_out <= fir_valid_out;
    
design_1_i: component design_1
     port map (
      dds_phase(31 downto 0) => dds_phase(31 downto 0),
      dds_reset => dds_reset,
      dds_valid_out => dds_valid_out,
      fir_left_data_out(15 downto 0) => fir_left_data_out(15 downto 0),
      fir_right_data_out(15 downto 0) => fir_right_data_out(15 downto 0),
      fir_valid_out => fir_valid_out,
      s_axis_phase_tvalid_0 => s_axis_phase_tvalid_0,
      sysclk => sysclk,
      tuner_phase(31 downto 0) => tuner_phase(31 downto 0)
    );
        
end Behavioral;
