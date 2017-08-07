library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counterOne is
	Port (CLOCK : in STD_LOGIC;
		INIT : in STD_LOGIC;
		OUTCOME : in STD_LOGIC;
		MISS : in STD_LOGIC;
		PREDICTION : out STD_LOGIC);
end counterOne;

architecture Behavioral of counterOne is

	signal count : STD_LOGIC := '0';

begin
process(CLOCK) is
begin

	if(CLOCK ='1' and CLOCK'EVENT) then
		if(INIT ='1') then
			count <= '0';
		else 
			if (MISS = '1') then
			count <= not count;			
			end if;
		end if;
	end if;
end process;

PREDICTION <= count;

end Behavioral;