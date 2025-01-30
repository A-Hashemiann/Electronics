library ieee;
use ieee.std_logic_1164.all;

entity Serialiser_tb is
generic
(
    DATA_WIDTH      : integer := 8;
    DEFAULT_STATE   : std_logic := '1'
);
end entity;

architecture rtl of Serialiser_tb is

component Serialiser is
generic
(
    DATA_WIDTH      : integer;
    DEFAULT_STATE   : std_logic
);
port
(
    Clk     : in std_logic;
    Rst     : in std_logic;
    
    ShiftEn : in std_logic;
    Load    : in std_logic;
    Din     : in std_logic_vector(DATA_WIDTH-1 downto 0);
    Dout    : out std_logic
);
end component;


    
begin
    
    Clk <= not Clk after 10ns;
    
    UUT1 : Serialiser
    generic map
    (
       
    )
    port map
    (
       t
    );
    
    
    TestProcess:process
    begin
        
        
     
        
        wait;
    end process;

    
end rtl;