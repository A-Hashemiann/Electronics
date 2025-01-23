library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Quantum State Encoder
-- Encodes quantum states (|0>, |1>, |+>, |->) into binary outputs
entity encoder is
    Port (
        input_state : in STD_LOGIC_VECTOR(1 downto 0); -- Quantum state selector
        output_real : out STD_LOGIC_VECTOR(7 downto 0); -- Real part of the encoded state
        output_imag : out STD_LOGIC_VECTOR(7 downto 0)  -- Imaginary part of the encoded state
    );
end encoder;