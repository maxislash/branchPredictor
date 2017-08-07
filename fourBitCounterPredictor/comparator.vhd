
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comparator is 
	Port(	OUTCOME : in std_logic;
		PREDICTION : in std_logic;
		MISS : out std_logic);
end comparator;

architecture Behavioral of comparator is

begin

process(OUTCOME, PREDICTION)
begin

	MISS <= OUTCOME xor PREDICTION;

end process;

end Behavioral;