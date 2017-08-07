
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demuxTwo is
port (	enable0 : out std_logic;
	out0 : out std_logic;
	enable1 : out std_logic;
	out1 : out std_logic;
	enable2 : out std_logic;
	out2 : out std_logic;
	enable3 : out std_logic;
	out3 : out std_logic;
	enable4 : out std_logic;
	out4 : out std_logic;
	enable5 : out std_logic;
	out5 : out std_logic;
	enable6 : out std_logic;
	out6 : out std_logic;
	enable7 : out std_logic;
	out7 : out std_logic;
	enable8 : out std_logic;
	out8 : out std_logic;
	enable9 : out std_logic;
	out9 : out std_logic;
	enable10 : out std_logic;
	out10 : out std_logic;
	enable11 : out std_logic;
	out11 : out std_logic;
	enable12 : out std_logic;
	out12 : out std_logic;
	enable13 : out std_logic;
	out13 : out std_logic;
	enable14 : out std_logic;
	out14 : out std_logic;
	enable15 : out std_logic;
	out15 : out std_logic;
	column : in std_logic_vector(3 downto 0);
	OUTCOME : in std_logic;
	ENABLE : in std_logic
     );
end demuxTwo;

architecture Behavioral of demuxTwo is

begin
process(ENABLE,column)
begin
	if(ENABLE = '1') then

		if(column = "0000") then
			out0 <=OUTCOME;
			enable0<='1';
			enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "0001") then
			out1 <=OUTCOME;
			enable1<='1';
			enable0 <= '0'; out0 <= '0'; enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "0010") then
			out2 <=OUTCOME;
			enable2<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "0011") then
			out3 <=OUTCOME;
			enable3<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "0100") then
			out4 <=OUTCOME;
			enable4<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "0101") then
			out5 <=OUTCOME;
			enable5<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "0110") then
			out6 <=OUTCOME;
			enable6<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "0111") then
			out7 <=OUTCOME;
			enable7<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "1000") then
			out8 <=OUTCOME;
			enable8<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "1001") then
			out9 <=OUTCOME;
			enable9<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "1010") then
			out10 <=OUTCOME;
			enable10<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "1011") then
			out11 <=OUTCOME;
			enable11<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "1100") then
			out12 <=OUTCOME;
			enable12<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "1101") then
			out13 <=OUTCOME;
			enable13<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "1110") then
			out14 <=OUTCOME;
			enable14<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable15 <='0'; out15 <='0';

		elsif(column = "1111") then
			out15 <=OUTCOME;
			enable15<='1';
			enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';

		end if;	
		else
		enable0 <= '0'; out0 <= '0'; enable1 <='0'; out1 <='0';enable2 <='0'; out2 <='0';enable3 <='0'; out3 <='0';enable4 <='0'; out4 <='0';enable5 <='0'; out5 <='0';enable6 <='0'; out6 <='0';enable7 <='0'; out7 <='0';enable8 <='0'; out8 <='0';enable9 <='0'; out9 <='0';enable10 <='0'; out10 <='0';enable11 <='0'; out11 <='0';enable12 <='0'; out12 <='0';enable13 <='0'; out13 <='0';enable14 <='0'; out14 <='0';enable15 <='0'; out15 <='0';
	end if;
end process;

end Behavioral;