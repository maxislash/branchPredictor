
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demultiplexer is
port (
      out0 : out std_logic;   --output bit
	miss0 : out std_logic;
      out1 : out std_logic;   --output bit
       miss1 : out std_logic;
	ADDR : in std_logic_vector(2 downto 0);
	OUTCOME : in STD_LOGIC;
       MISS : in std_logic   --input bit
     );
end demultiplexer;

architecture Behavioral of demultiplexer is

begin
process(ADDR,OUTCOME,MISS)
begin
case ADDR is
  when "001" => out0 <= OUTCOME; miss0 <= MISS; out1 <= '0'; miss1 <= '0';
  when "010" => out1 <= OUTCOME; miss1 <= MISS; out0 <= '0'; miss0 <= '0'; 
  when others => out0 <= '0'; miss0 <= '0'; out1 <= '0'; miss1 <='0'; 
end case; 
end process;

end Behavioral;