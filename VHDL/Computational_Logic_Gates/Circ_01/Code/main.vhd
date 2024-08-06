
library ieee;				-- top level circuit
use ieee.std_logic_1164.all;
use work.all;

entity comb_ckt is
port(	input1: in std_logic;
	input2: in std_logic;
	input3: in std_logic;
	output: out std_logic
);
end comb_ckt;

architecture struct of comb_ckt is

  component AND_GATE is		-- entity of AND_GATE
    port(   A:	in std_logic;
    	    B:	in std_logic;
            F1:	out std_logic
    );
    end component;

	component OR_GATE is		-- entity of OR_GATE
    port(   X:	in std_logic;
    	    Y:	in std_logic;
    	    F2: out std_logic
    );
    end component;

end struct;
