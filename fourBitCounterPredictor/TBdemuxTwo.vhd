 LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;

  ENTITY tbdemuxTwo IS
  END tbdemuxTwo;

  ARCHITECTURE behavior OF tbdemuxTwo IS 
          SIGNAL en0,en1,en2,en3,en4,en5,en6,en7,en8,en9,en10,en11,en12,en13,en14,en15 : std_logic:='0';
		SIGNAL o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15 : std_logic:='0';
          SIGNAL column :  std_logic_vector(3 downto 0):="0000";
		SIGNAL OUTCOME : std_logic :='0';
		SIGNAL ENABLE : std_logic := '0';

  COMPONENT demuxTwo
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
    END COMPONENT;

  BEGIN
    UUT : demuxTwo port map(en0,o0,en1,o1,en2,o2,en3,o3,en4,o4,en5,o5,en6,o6,en7,o7,en8,o8,en9,o9,en10,o10,en11,o11,en12,o12,en13,o13,en14,o14,en15,o15,column,OUTCOME,ENABLE);

     tb : PROCESS
     BEGIN
		ENABLE <='1';
		column <="0010";
		OUTCOME <='1';
             wait for 10 ns;
          column <= "1000";
             wait for 10 ns;
             ENABLE <= '0';
             wait for 10 ns;
             ENABLE <= '1';
		column <= "0100";
             wait for 10 ns;
		column <="0010";
		OUTCOME <= '0';
		wait for 10 ns;
		ENABLE <= '0';
             --more input combinations can be given here.
     END PROCESS tb;

  END;
