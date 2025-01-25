library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PauliXGate is
    Port (
        qubit_in  : in  STD_LOGIC_VECTOR(7 downto 0); -- Input qubit
        qubit_out : out STD_LOGIC_VECTOR(7 downto 0) -- Output qubit
    );
end PauliXGate;

architecture Behavioral of PauliXGate is
begin
    process(qubit_in)
    begin
        qubit_out <= NOT qubit_in; -- Flip all bits of the input qubit
    end process;
end Behavioral;