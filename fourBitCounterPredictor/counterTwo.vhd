library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity counterTwo is
	Port (CLOCK : in STD_LOGIC;
		INIT : in STD_LOGIC;
		OUTCOME : in STD_LOGIC;
		ENABLE : in STD_LOGIC;
		PREDICTION : out STD_LOGIC);
end counterTwo;

architecture Behavioral of counterTwo is

	signal count : integer := 0;
	signal predic : std_logic_vector (0 downto 0) := "0";

begin
process(CLOCK) is
begin

	if(CLOCK ='1' and CLOCK'EVENT) then
		if(INIT ='1') then
			count <= 0;
		else 
			if(ENABLE = '1') then
				if(OUTCOME = '1') then
					if(count < 3) then
						count <= count+1;
					end if;
				elsif(OUTCOME = '0') then	
					if(count >0) then
						count <= count-1;
					end if;		
				end if;
			end if;
		end if;
	end if;
end process;

predic <= std_logic_vector(to_unsigned((count/2),1));
PREDICTION <= predic(0);

end Behavioral;