
  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;

  ENTITY tbdemultiplexer IS
  END tbdemultiplexer;

  ARCHITECTURE behavior OF tbdemultiplexer IS 
          SIGNAL out0,out1,miss0,miss1,OUTCOME,MISS : std_logic:='0';
          SIGNAL ADDR :  std_logic_vector(2 downto 0):="000";

  COMPONENT demultiplexer
	Port(
         out0: out  std_logic;
         miss0 : out  std_logic;
         out1: out  std_logic;
         miss1 : out  std_logic;
         ADDR : IN  std_logic_vector(2 downto 0);
         OUTCOME : in  std_logic;
	MISS : in std_logic
        );
    END COMPONENT;

  BEGIN
    UUT : demultiplexer port map(out0,miss0,out1,miss1,ADDR,OUTCOME,MISS);

     tb : PROCESS
     BEGIN
            OUTCOME <= '1';
		 MISS <= '1';
            ADDR <="001";
             wait for 10 ns;
             ADDR <="010";
             wait for 10 ns;
             ADDR <="001";
             wait for 10 ns;
             ADDR <="010";
             wait for 10 ns;
             --more input combinations can be given here.
     END PROCESS tb;

  END;