
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity comparatorTest is
end comparatorTest;

architecture behavior of comparatorTest is 

	component comparator
	Port(	CLOCK : in std_logic;
		INIT : in std_logic;
		OUTCOME : in std_logic;
		ADDR : in std_logic_vector (2 downto 0);
		PREDICTION : in std_logic;
		ADDR_W : out std_logic_vector (2 downto 0);
		MISS : out std_logic
	);
	end component;


	signal TCLOCK : std_logic;
	signal TINIT : std_logic;
	signal TOUTCOME : std_logic;
	signal TMISS : std_logic;
	signal TPREDICTION : std_logic;
	signal TADDR : std_logic_vector (2 downto 0);
	signal TADDRW : std_logic_vector (2 downto 0);
	constant clk_period : time := 10 ns;


begin

	uut: comparator port map(TCLOCK, TINIT, TOUTCOME, TADDR, TPREDICTION, TADDRW, TMISS);

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

		TOUTCOME <= '0';
		TPREDICTION <= '0';

		wait for 10 ns;

		TOUTCOME <= '0';
		TPREDICTION <= '0';

		wait for 10 ns;

		TOUTCOME <= '0';
		TPREDICTION <= '0';

		wait for 10 ns;

		TOUTCOME <= '1';
		TPREDICTION <= '0';

		wait for 10 ns;

		TOUTCOME <= '0';
		TPREDICTION <= '1';

		wait for 10 ns;

		TOUTCOME <= '0';
		TPREDICTION <= '0';

		wait for 10 ns;

		TOUTCOME <= '1';
		TPREDICTION <= '0';

		wait for 10 ns;

		TOUTCOME <= '1';
		TPREDICTION <= '1';

		wait for 10 ns;

		TOUTCOME <= '0';
		TPREDICTION <= '1';

		wait for 10 ns;

		TOUTCOME <= '0';
		TPREDICTION <= '0';

	wait;
	end process;
end behavior;