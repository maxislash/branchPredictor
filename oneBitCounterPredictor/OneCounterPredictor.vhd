library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity OneCounterPredictor is 
	Port(	CLOCK : in std_logic;
		INIT : in std_logic;
		ADDR : in std_logic_vector (2 downto 0);
		OUTCOME : in std_logic;
		PREDICTION : out std_logic;
		MISSES : out std_logic_vector (15 downto 0));
end OneCounterPredictor;

architecture Behavioral of OneCounterPredictor is

component counterOne is
	Port (CLOCK : in STD_LOGIC;
		INIT : in STD_LOGIC;
		OUTCOME : in STD_LOGIC;
		MISS : in STD_LOGIC;
		PREDICTION : out STD_LOGIC);
end component;

component Multiplexer is
	Port ( A : std_logic;
		B : std_logic;
		ADDR : in std_logic_vector (2 downto 0);
		OUTPUT : out std_logic);
end component;

component demultiplexer is
port (
      out0 : out std_logic;   --output bit
	miss0 : out std_logic;
      out1 : out std_logic;   --output bit
       miss1 : out std_logic;
	ADDR : in std_logic_vector(2 downto 0);
	OUTCOME : in STD_LOGIC;
       MISS : in std_logic   --input bit
     );
end component;

component comparator
	Port(	CLOCK : in std_logic;
		INIT : in std_logic;
		OUTCOME : in std_logic;
		ADDR : in std_logic_vector(2 downto 0);
		PREDICTION : in std_logic;
		ADDR_W : out std_logic_vector (2 downto 0);
		MISS : out std_logic);
end component;

component counter is 
	Port(	CLOCK : in std_logic;
		INIT : in std_logic;
		MISS : in std_logic;
		MISSES : out std_logic_vector(15 downto 0));
end component;

signal miss_in : std_logic;
signal prediction_out : std_logic;
signal addr_out : std_logic_vector (2 downto 0);
signal demout0 : std_logic;
signal demout1 : std_logic;
signal demmiss0 : std_logic;
signal demmiss1 : std_logic;
signal A : std_logic;
signal B : std_logic;

begin

demux : demultiplexer port map (demout0,
				demmiss0,
				demout1,
				demmiss1,
				ADDR,
				OUTCOME,
				miss_in);

firstCount : counterOne port map (CLOCK,
				INIT,
				demout0,
				demmiss0,
				A);

secondCount : counterOne port map (CLOCK,
				INIT,
				demout1,
				demmiss1,
				B);			


mux : Multiplexer port map (A,
				B,
				ADDR,
				prediction_out);

comp : comparator port map(	CLOCK,
			INIT,
			OUTCOME,
			ADDR,
			prediction_out,
			addr_out,
			miss_in);

countM : counter port map(CLOCK,
			INIT,
			miss_in,
			MISSES);

PREDICTION <= prediction_out;

end Behavioral;
