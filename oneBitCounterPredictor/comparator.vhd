
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comparator is 
	Port(	CLOCK : in std_logic;
		INIT : in std_logic;
		OUTCOME : in std_logic;
		ADDR : in std_logic_vector (2 downto 0);
		PREDICTION : in std_logic;
		ADDR_W : out std_logic_vector(2 downto 0);
		MISS : out std_logic);
end comparator;

architecture Behavioral of comparator is

begin

process(OUTCOME, PREDICTION)
begin

	MISS <= OUTCOME xor PREDICTION;

end process;

ADDR_W <= ADDR;

end Behavioral;