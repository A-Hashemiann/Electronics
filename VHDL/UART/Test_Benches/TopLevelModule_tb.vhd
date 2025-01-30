library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TopLevelModule_tb is
generic 
(
    RS232_DATA_BITS : integer := 8
);
end entity;


architecture rtl of TopLevelModule_tb is

    component TopLevelModule is
    generic 
    (
        RS232_DATA_BITS : integer := 8;
        SYS_CLK_FREQ    : integer := 50000000;
        BAUD_RATE       : integer := 115200
    );
    port
    (
        Clk             : in std_logic;
        Rst             : in std_logic;
        
        -- RS232 ports which connect to the PC's COMM port
        rs232_rx_pin    : in std_logic;
        rs232_tx_pin    : out std_logic
    );
    end component;
    
signal Clk                  : std_logic := '0';
signal Rst                  : std_logic;
signal rs232_rx_pin         : std_logic;
signal rs232_tx_pin         : std_logic;
signal TransmittedData      : std_logic_vector(RS232_DATA_BITS - 1 downto 0);
signal DataTransmittedToPC  : std_logic_vector(RS232_DATA_BITS - 1 downto 0);
        
begin
    
    Clk <= not Clk after 10ns;
    
    UUT : TopLevelModule
    generic map
    (
        RS232_DATA_BITS => RS232_DATA_BITS,
        SYS_CLK_FREQ    => 50000000,
        BAUD_RATE       => 115200
    )
    port map
    (
        Clk             => Clk,
        Rst             => Rst,
        
        -- RS232 ports which connect to the PC's COMM port
        rs232_rx_pin    => rs232_rx_pin,
        rs232_tx_pin    => rs232_tx_pin
    );

    
    SerialToParallel:process
    begin
        
    end process;
    
    TestProcess:process
    
        
        end procedure;
    
    begin
        
        
        wait;
    end process;
    
end rtl;