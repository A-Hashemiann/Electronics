# Signal Drivers
A signal driver in VHDL is an element that sets a signal's value. In particular, it is a procedure, a concurrent statement, or a specific instance of a component that gives a signal a value. Since signal drivers specify how signals change over time based on the logic outlined in the VHDL code, they are crucial for simulating hardware behavior.
## Blocks of Signal Drivers in VHDL
### 1.Processes:
Sequential statements like if, case, and loops can be used by a process block to drive signals by determining the signal values.
```vhdl
process (clk)
begin
    if rising_edge(clk) then
        signal_a <= '1';
    else
        signal_a <= '0';
    end if;
end process;
```
### 2.Concurrent Signal Assignments:
Concurrent statements directly assign values to signals and are evaluated continuously.

```vhdl
signal_b <= not signal_a;
```

### 3.Component Instantiations:
The signals in the architecture where a component (or other VHDL object) is created are driven by its output signals.
```vhdl
U1: entity work.SomeComponent
    port map (
        input_signal => signal_a,
        output_signal => signal_c
    );
```
## Understanding Signal Drivers
### Resolution Functions:

A resolution function establishes the signal's final value when numerous drivers operate the same signal. One built-in resolution function of the std_logic type, for instance, resolves conflicts between '1' and '0' on the same signal line, producing the result 'X' (unknown).