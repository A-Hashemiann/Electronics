library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- A-hashemiann

entity pauli_x_tb is
end pauli_x_tb;

architecture Behavioral of pauli_x_tb is
    -- Signals for connecting to the DUT
    signal clk       : STD_LOGIC := '0'; -- Clock signal for synchronization
    signal qubit_in  : STD_LOGIC_VECTOR(7 downto 0); -- Input qubit
    signal qubit_out : STD_LOGIC_VECTOR(7 downto 0); -- Output qubit
	 signal test_done : boolean := false; -- Flag to indicate when to finish the simulation

    -- Component declaration for DUT
    component PauliXGate
        Port (
            qubit_in  : in  STD_LOGIC_VECTOR(7 downto 0);
            qubit_out : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

begin
    -- Instantiate the DUT
    uut: PauliXGate
        Port map (
            qubit_in => qubit_in,
            qubit_out => qubit_out
        );

    -- Generate Clock
    clk_process: process
    begin
        -- Toggle the clock signal every 1 ns 
          clk <= '0';
    wait for 1 ns;
    clk <= '1';
    wait for 1 ns;
    end process;

    -- Test Process
    process
    begin
        -- Test case 1: Input |0⟩
        qubit_in <= "00000001"; -- Binary representation of |0⟩
        wait until rising_edge(clk); -- Wait for the next rising edge
        report "Pauli-X Gate: Input = " & integer'image(to_integer(unsigned(qubit_in))) &
               ", Output = " & integer'image(to_integer(unsigned(qubit_out)));

        -- Test case 2: Input |1⟩
        qubit_in <= "11111111"; -- Binary representation of |1⟩
        wait until falling_edge(clk); -- Wait for the next rising edge
        report "Pauli-X Gate: Input = " & integer'image(to_integer(unsigned(qubit_in))) &
               ", Output = " & integer'image(to_integer(unsigned(qubit_out)));

         -- Test case 3: Input 
        qubit_in <= "11111110"; -- Binary representation
        wait until rising_edge(clk); -- Wait for the next rising edge
        report "Pauli-X Gate: Input = " & integer'image(to_integer(unsigned(qubit_in))) &
               ", Output = " & integer'image(to_integer(unsigned(qubit_out)));

        -- End the simulation after all tests
        test_done <= true;
        
        -- Wait for one last clock edge to finish the simulation
        wait until rising_edge(clk);  -- One more clock edge before the simulation ends
        wait;  -- Pauses the process and ends the simulation
    end process;

end Behavioral;
