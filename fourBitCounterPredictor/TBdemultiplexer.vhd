
  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;

  ENTITY tbdemultiplexer IS
  END tbdemultiplexer;

  ARCHITECTURE behavior OF tbdemultiplexer IS 
          SIGNAL en0,en1 : std_logic:='0';
          SIGNAL ADDR :  std_logic_vector(2 downto 0):="000";

  COMPONENT demultiplexer
	Port(
         enable0: out  std_logic;
         enable1: out  std_logic;
         ADDR : IN  std_logic_vector(2 downto 0)
        );
    END COMPONENT;

  BEGIN
    UUT : demultiplexer port map(en0,en1,ADDR);

     tb : PROCESS
     BEGIN
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