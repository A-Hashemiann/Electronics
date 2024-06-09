# Digital Logic: OR Gate
In digital logic, an OR gate is a fundamental logic gate that performs a logical OR operation. It takes two or more binary inputs and produces a single binary output. The output is true (logic high, typically represented by '1') if at least one of the inputs is true; otherwise, the output is false (logic low, typically represented by '0').

## Truth Table

The truth table for a two-input OR gate is as follows:

| Input A | Input B | Output F |
|---------|---------|----------|
|    0    |    0    |     0    |
|    0    |    1    |     1    |
|    1    |    0    |     1    |
|    1    |    1    |     1    |

In this truth table:
- If either input A or input B is 1, the output F is 1.
- The output F is 0 only when both input A and input B are 0.

## Symbol Representation

An OR gate is represented by the following symbol:

![OR Gate Symbol](https://upload.wikimedia.org/wikipedia/commons/4/4c/Or-gate-en.svg)


In this symbol:
- A and B are input terminals.
- F (out) is the output terminal.
- The OR symbol represents the logical OR operation performed by the gate.

```vhdl
-- or_gate.vhd
library ieee;
use ieee.std_logic_1164.all;

entity OR_ent is
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end OR_ent; 

```
This VHDL code defines an entity named OR_ent representing a 2-input OR gate. It has two input ports x and y, and one output port F.
- x and y are input ports of type std_logic, representing the inputs to the OR gate.
- F is an output port of type std_logic, representing the output of the OR gate.

```vhdl
architecture OR_arch of OR_ent is
begin
    process (x, y)
    begin
        if ((x = '0') and (y = '0')) then
            F <= '0';
        else
            F <= '1';
        end if;
    end process;
end OR_arch;

```