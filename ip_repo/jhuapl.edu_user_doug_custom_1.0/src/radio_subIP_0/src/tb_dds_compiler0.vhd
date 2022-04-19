

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_dds_compiler0 is
--  Port ( );
end tb_dds_compiler0;

architecture Behavioral of tb_dds_compiler0 is
    component design_2 is
      port (
        S_AXIS_PHASE_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
        S_AXIS_PHASE_0_tvalid : in STD_LOGIC;
        M_AXIS_DATA_0_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
        M_AXIS_DATA_0_tvalid : out STD_LOGIC;
        aclk_0 : in STD_LOGIC;
        aresetn_0 : in STD_LOGIC
      );
      end component design_2;
      
      constant clk_period : time := 8 ns;
      
      signal M_AXIS_DATA_0_tdata : std_logic_vector(15 downto 0);
      signal M_AXIS_DATA_0_tvalid : std_logic;
      signal S_AXIS_PHASE_0_tdata : std_logic_vector(31 downto 0);
      signal S_AXIS_PHASE_0_tvalid : std_logic;
      signal aclk_0, aresetn_0 : std_logic:= '0';
      
      file dds_compiler_file : TEXT open write_mode is "./simulated_dds_output.csv";
            
begin
    
    aclk_0 <= not aclk_0 after clk_period/2;
    aresetn_0 <= '0', '1' after 20 ns;
    S_AXIS_PHASE_0_tvalid <= '1';
    S_AXIS_PHASE_0_tdata <= "00000000000000001101000110110111";
    
    dds_compiler_component: component design_2
         port map (
          M_AXIS_DATA_0_tdata(15 downto 0) => M_AXIS_DATA_0_tdata(15 downto 0),
          M_AXIS_DATA_0_tvalid => M_AXIS_DATA_0_tvalid,
          S_AXIS_PHASE_0_tdata(31 downto 0) => S_AXIS_PHASE_0_tdata(31 downto 0),
          S_AXIS_PHASE_0_tvalid => S_AXIS_PHASE_0_tvalid,
          aclk_0 => aclk_0,
          aresetn_0 => aresetn_0
        );
        
    stimuli : process
        variable outline : line;
    begin
        wait until rising_edge(aclk_0);
        if M_AXIS_DATA_0_tvalid = '1' then
            write(outline, to_integer(signed(M_AXIS_DATA_0_tdata)));
            write(outline, ',');
            writeline(dds_compiler_file,outline);
            report "write_data_from_dds_compiler : wrote" severity NOTE;
        end if;
    end process;

end Behavioral;
