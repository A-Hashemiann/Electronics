library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Quantum State Encoder
-- Encodes quantum states (|0>, |1>, |+>, |->) into binary outputs
entity Quantum_State_Encoder is
    Port (
        input_state : in STD_LOGIC_VECTOR(1 downto 0); -- Quantum state selector
        output_real : out STD_LOGIC_VECTOR(7 downto 0); -- Real part of the encoded state
        output_imag : out STD_LOGIC_VECTOR(7 downto 0)  -- Imaginary part of the encoded state
    );
end Quantum_State_Encoder;

begin
    process(input_state)
    begin
        case input_state is
            when "00" => -- Encode |0>
                output_real <= STATE_ZERO(15 downto 8);
                 output_imag <= STATE_ZERO(7 downto 0);
            when "01" => -- Encode |1>
                 output_real <= STATE_ONE(15 downto 8);
                output_imag <= STATE_ONE(7 downto 0);
            when "10" => -- Encode |+>
                output_real <= STATE_PLUS(15 downto 8);
                output_imag <= STATE_PLUS(7 downto 0);
            when "11" => -- Encode |->
                output_real <= STATE_MINUS(15 downto 8);
                output_imag <= STATE_MINUS(7 downto 0);
            when others =>
                output_real <= (others => '0');
                output_imag <= (others => '0');
        end case;
    end process;
end Behavioral;