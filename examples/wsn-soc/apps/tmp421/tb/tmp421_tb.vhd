library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library work;
use work.BusMasters.all;

entity TMP421_tb is
end TMP421_tb;

architecture behavior of TMP421_tb is

  component TMP421
    port (
      Reset_n_i : in std_logic;
      Clk_i : in std_logic;
      Enable_i : in std_logic;
      CpuIntr_o : out std_logic;
      I2C_ReceiveSend_n_o : out std_logic;
      I2C_ReadCount_o : out std_logic_vector(7 downto 0);
      I2C_StartProcess_o : out std_logic;
      I2C_Busy_i : in std_logic;
      I2C_FIFOReadNext_o : out std_logic;
      I2C_FIFOWrite_o : out std_logic;
      I2C_Data_o : out std_logic_vector(7 downto 0);
      I2C_Data_i : in std_logic_vector(7 downto 0);
      I2C_Error_i : in std_logic;
      PeriodCounterPresetH_i : in std_logic_vector(15 downto 0);
      PeriodCounterPresetL_i : in std_logic_vector(15 downto 0);
      SensorValueL_o : out std_logic_vector(15 downto 0);
      SensorValueR_o : out std_logic_vector(15 downto 0)
    );
  end component;

  component tmp421_model
    port (
      scl_i         : in    std_logic;
      sda_io        : inout std_logic;
      local_temp_i  : in    std_logic_vector(15 downto 0);
      remote_temp_i : in    std_logic_vector(15 downto 0));
  end component;

  component ExtNames
    port (
      I2CFSM_Done : out std_logic
    );
  end component;

  -- Reset
  signal Reset_n_i : std_logic := '0';
  -- Clock
  signal Clk_i : std_logic := '1';
  signal Enable_i : std_logic;
  signal CpuIntr_o : std_logic;
  signal I2C_ReceiveSend_n_o : std_logic;
  signal I2C_ReadCount_o : std_logic_vector(7 downto 0);
  signal I2C_StartProcess_o : std_logic;
  signal I2C_Busy_i : std_logic;
  signal I2C_FIFOReadNext_o : std_logic;
  signal I2C_FIFOWrite_o : std_logic;
  signal I2C_Data_o : std_logic_vector(7 downto 0);
  signal I2C_Data_i : std_logic_vector(7 downto 0);
  signal I2C_Error_i : std_logic;
  signal PeriodCounterPresetH_i : std_logic_vector(15 downto 0);
  signal PeriodCounterPresetL_i : std_logic_vector(15 downto 0);
  signal SensorValueL_o : std_logic_vector(15 downto 0);
  signal SensorValueR_o : std_logic_vector(15 downto 0);
  signal I2C_F100_400_n_o : std_logic;
  signal I2C_Divider800_o : std_logic_vector(15 downto 0);
  signal SensorValueL_real : real;
  signal SensorValueR_real : real;

  -- look into the ADT7310 app
  -- alias I2CFSM_Done_i is << signal .adt7310_tb.DUT.I2CFSM_Done_s : std_logic >>;
  -- ModelSim complains here, that the references signal is not a VHDL object.
  -- True, this is a Verilog object. As a workaround the module ExtNames is created
  -- which uses Verilog hierarchical names to reference the wire and assigns it to
  -- an output. This module is instantiated (and it seems ModelSim only adds
  -- Verilog<->VHDL signal converters on instance boundaries) and this output is
  -- connected with the I2CFSM_Done_i signal.
  signal I2CFSM_Done_i : std_logic;  -- directly from inside I2C_FSM
  -- Using the extracted Yosys FSM we get delta cycles and a glitch on
  -- I2CFSM_Done_i. Therefore we generate a slightly delayed version and wait
  -- on the ANDed value.
  signal I2CFSM_Done_d : std_logic;  -- sightly delayed
  signal I2CFSM_Done_a : std_logic;  -- I2CFSM_Done_i and I2CFSM_Done_d

  -- SlowADT7410 component ports
  signal I2C_SDA_i     : std_logic;
  signal I2C_SDA_o     : std_logic;
  signal I2C_SDA_s     : std_logic;
  signal I2C_SCL_o     : std_logic;
  signal LocalTemp_s     : real := 23.7;
  signal RemoteTemp_s    : real := 23.7;
  signal LocalTempBin_s  : std_logic_vector(15 downto 0);
  signal RemoteTempBin_s : std_logic_vector(15 downto 0);

  -- I2C Master generics
  constant I2C_FIFOAddressWidth_g : integer :=  4;
  constant I2C_ReadCountWidth_g   : integer :=  4;
  constant I2C_DividerWidth_g     : integer := 16;
  -- I2C Master component ports
  signal I2C_FIFOEmpty_s    : std_logic := '0';
  signal I2C_FIFOFull_s     : std_logic := '0';
  signal I2C_ErrBusColl_s       : std_logic;
  signal I2C_ErrCoreBusy_s      : std_logic;
  signal I2C_ErrCoreStopped_s   : std_logic;
  signal I2C_ErrDevNotPresent_s : std_logic;
  signal I2C_ErrFIFOEmpty_s     : std_logic;
  signal I2C_ErrFIFOFull_s      : std_logic;
  signal I2C_ErrGotNAck_s       : std_logic;
  signal I2C_ErrReadCountZero_s : std_logic;
  signal I2C_ScanEnable_s   : std_logic := '0';
  signal I2C_ScanClk_s      : std_logic := '0';
  signal I2C_ScanDataIn_s   : std_logic := '0';
  signal I2C_ScanDataOut_s  : std_logic := '0';

  -- 10MHz
  constant ClkPeriode : time := 100 ns;

begin

  DUT: TMP421
    port map (
      Reset_n_i => Reset_n_i,
      Clk_i => Clk_i,
      Enable_i => Enable_i,
      CpuIntr_o => CpuIntr_o,
      I2C_ReceiveSend_n_o => I2C_ReceiveSend_n_o,
      I2C_ReadCount_o => I2C_ReadCount_o,
      I2C_StartProcess_o => I2C_StartProcess_o,
      I2C_Busy_i => I2C_Busy_i,
      I2C_FIFOReadNext_o => I2C_FIFOReadNext_o,
      I2C_FIFOWrite_o => I2C_FIFOWrite_o,
      I2C_Data_o => I2C_Data_o,
      I2C_Data_i => I2C_Data_i,
      I2C_Error_i => I2C_Error_i,
      PeriodCounterPresetH_i => PeriodCounterPresetH_i,
      PeriodCounterPresetL_i => PeriodCounterPresetL_i,
      SensorValueL_o => SensorValueL_o,
      SensorValueR_o => SensorValueR_o
    );

  LocalTempBin_s  <= std_logic_vector(to_unsigned(integer(LocalTemp_s *256.0),16)) and x"FFF0";
  RemoteTempBin_s <= std_logic_vector(to_unsigned(integer(RemoteTemp_s*256.0),16)) and x"FFF0";
  SensorValueL_real <= real(to_integer(unsigned(SensorValueL_o and x"FFF0")))/256.0;
  SensorValueR_real <= real(to_integer(unsigned(SensorValueR_o and x"FFF0")))/256.0;

  ExtNames_1: ExtNames
    port map (
      I2CFSM_Done => I2CFSM_Done_i
    );
  I2CFSM_Done_d <= I2CFSM_Done_i after 1.0 ns;
  I2CFSM_Done_a <= I2CFSM_Done_i and I2CFSM_Done_d;

  i2c_master_1: i2c_master
    generic map (
      ReadCountWidth_g   => I2C_ReadCountWidth_g,
      FIFOAddressWidth_g => I2C_FIFOAddressWidth_g,
      DividerWidth_g     => I2C_DividerWidth_g)
    port map (
      Reset_i            => "not"(Reset_n_i),
      Clk_i              => Clk_i,
      Divider800_i       => I2C_Divider800_o,
      F100_400_n_i       => I2C_F100_400_n_o,
      StartProcess_i     => I2C_StartProcess_o,
      ReceiveSend_n_i    => I2C_ReceiveSend_n_o,
      Busy_o             => I2C_Busy_i,
      ReadCount_i        => I2C_ReadCount_o(I2C_ReadCountWidth_g-1 downto 0),
      FIFOReadNext_i     => I2C_FIFOReadNext_o,
      FIFOWrite_i        => I2C_FIFOWrite_o,
      FIFOEmpty_o        => I2C_FIFOEmpty_s,
      FIFOFull_o         => I2C_FIFOFull_s,
      Data_i             => I2C_Data_o,
      Data_o             => I2C_Data_i,
      ErrAck_i           => '0',
      ErrBusColl_o       => I2C_ErrBusColl_s,
      ErrFIFOFull_o      => I2C_ErrFIFOFull_s,
      ErrGotNAck_o       => I2C_ErrGotNAck_s,
      ErrCoreBusy_o      => I2C_ErrCoreBusy_s,
      ErrFIFOEmpty_o     => I2C_ErrFIFOEmpty_s,
      ErrCoreStopped_o   => I2C_ErrCoreStopped_s,
      ErrDevNotPresent_o => I2C_ErrDevNotPresent_s,
      ErrReadCountZero_o => I2C_ErrReadCountZero_s,
      SDA_i              => I2C_SDA_i,
      SDA_o              => I2C_SDA_o,
      SCL_o              => I2C_SCL_o,
      ScanEnable_i       => I2C_ScanEnable_s,
      ScanClk_i          => I2C_ScanClk_s,
      ScanDataIn_i       => I2C_ScanDataIn_s,
      ScanDataOut_o      => I2C_ScanDataOut_s
    );

  I2C_Error_i <= I2C_ErrBusColl_s or I2C_ErrCoreBusy_s or I2C_ErrCoreStopped_s or I2C_ErrDevNotPresent_s or I2C_ErrFIFOEmpty_s or I2C_ErrFIFOFull_s or I2C_ErrGotNAck_s or I2C_ErrReadCountZero_s;

  I2C_SDA_s <= 'H';      -- weak 1 -> simulate pull-up

  I2C_SDA_s <= '0' when I2C_SDA_o = '0' else 'Z';

  I2C_SDA_i <= to_X01(I2C_SDA_s) after 0.2 us;

  tmp421_1: tmp421_model
    port map (
      scl_i         => I2C_SCL_o,
      sda_io        => I2C_SDA_s,
      local_temp_i  => LocalTempBin_s,
      remote_temp_i => RemoteTempBin_s);


  -- constant value for reconfig signal
  I2C_F100_400_n_o <= '0';
  -- constant value for reconfig signal
  I2C_Divider800_o <= "0000000000001100";
  -- Generate clock signal
  Clk_i <= not Clk_i after ClkPeriode*0.5;

  StimulusProc: process
  begin
    Enable_i <= '0';
    PeriodCounterPresetH_i <= "0000000000000000";
    PeriodCounterPresetL_i <= "0000011111010000";

    -- Check constant values of dynamic signals coming out of the application modules
    wait for 0.1*ClkPeriode;

    wait for 2.2*ClkPeriode;
    -- deassert Reset
    Reset_n_i <= '1';

    LocalTemp_s  <= 23.7;                     -- degree C
    RemoteTemp_s <= 21.3;                     -- degree C

    -- three cycles with disabled SensorFSM
    wait for 3*ClkPeriode;

    -- enable SensorFSM
    Enable_i <= '1';
    for i in 1 to 5 loop
      -- query local temperature
      assert CpuIntr_o = '0' report "CpuIntr should be '0' during querying the local temperature" severity error;
      wait until I2CFSM_Done_d = '1';
      assert CpuIntr_o = '0' report "CpuIntr should be '0' directly after the first I2CFSM is done" severity error;
      wait until rising_edge(Clk_i); wait for 0.1*ClkPeriode;      -- 1 cycle
      assert I2CFSM_Done_d = '0' report "I2CFSM_done should be '0' directly after I2CFSM is done" severity error;
      -- check SensorValueL_o
      assert SensorValueL_o = LocalTempBin_s report "SensorValueL_o doesn't match LocalTempBin_s" severity error;
      wait for 3*ClkPeriode;
      -- query remote temperature
      wait until I2CFSM_Done_d = '1';
      assert CpuIntr_o = '0' report "CpuIntr should be '0' directly after I2CFSM is done" severity error;
      wait until rising_edge(Clk_i); wait for 0.1*ClkPeriode;      -- 1 cycle
      assert CpuIntr_o = '1' report "CpuIntr should be '1' one cycle after I2CFSM is done" severity error;
      -- check SensorValueR_o
      assert SensorValueR_o = RemoteTempBin_s report "SensorValueR_o doesn't match RemoteTempBin_s" severity error;
      wait for 3*ClkPeriode;

      -- new temperature
      LocalTemp_s  <= LocalTemp_s  + 1.23;
      RemoteTemp_s <= RemoteTemp_s + 1.23;
    end loop;

    wait for 1 ms;

    -- End of simulation
    report "### Simulation Finished ###" severity failure;
    wait;
  end process StimulusProc;

end behavior;
