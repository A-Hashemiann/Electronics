library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Inverter is
    port (
        A : in  std_logic;  -- Input signal
        Y : out std_logic   -- Output signal
    );
end entity Inverter;

architecture Behavioral of Inverter is
begin
    -- Process that describes the inversion behavior
    process(A)
    begin
        Y <= not A;  -- Invert the input signal
    end process;
end architecture Behavioral;