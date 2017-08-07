library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity OneCounterPredictorTest is
end OneCounterPredictorTest;

architecture behavior of OneCounterPredictorTest is 

	component OneCounterPredictor
	Port(	CLOCK : in std_logic;
		INIT : in std_logic;
		ADDR : in std_logic_vector (2 downto 0);
		OUTCOME : in std_logic;
		PREDICTION : out std_logic;
		MISSES : out std_logic_vector (15 downto 0));
	end component;


	signal TCLOCK : std_logic;
	signal TINIT : std_logic;
	signal TADDR : std_logic_vector (2 downto 0);
	signal TMISS : std_logic;
	signal TPREDICTION : std_logic;
	signal TMISSES : std_logic_vector (15 downto 0);
	signal TOUTCOME : std_logic;

	constant clk_period : time := 10 ns;


begin

	uut: OneCounterPredictor port map(TCLOCK, TINIT, TADDR, TOUTCOME, TPREDICTION, TMISSES);

	clock_process :process
	begin
		TCLOCK <= '0';
		wait for clk_period/2;
		TCLOCK <= '1';
		wait for clk_period/2;
	end process;

	process
	begin
	
		wait for 15 ns;

		TINIT <= '1';

		wait for 10 ns;

		TINIT <= '0';

		TADDR <= "001";
		TOUTCOME <= '1';

		wait for 10 ns;

		TADDR <= "010";
		TOUTCOME <= '1';

		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';

		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';

		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';

		wait for 10 ns;

		TADDR <= "010";
		TOUTCOME <= '0';
		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '1';
		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '1';
		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';
		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';
		wait for 10 ns;

		TADDR <= "010";
		TOUTCOME <= '1';
		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';
		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';
		wait for 10 ns;

		TADDR <= "010";
		TOUTCOME <= '1';
		wait for 10 ns;

		TADDR <= "010";
		TOUTCOME <= '0';
		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';
		wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '1';

wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';

wait for 10 ns;

		TADDR <= "001";
		TOUTCOME <= '0';


	wait;
	end process;
end behavior;