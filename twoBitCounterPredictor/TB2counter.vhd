library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter2Test is
end Counter2Test;

architecture behavior of Counter2Test is 

	component counterTwo                  
	Port(	CLOCK : in std_logic;
		INIT : in std_logic;
		OUTCOME : in STD_LOGIC;
		MISS : in std_logic;
		PREDICTION : out std_logic
	);
	end component;


	signal TCLOCK : std_logic;
	signal TINIT : std_logic;
	signal TOUTCOME : std_logic;
	signal TMISS : std_logic;
	signal TPREDICTION : std_logic;

	constant clk_period : time := 10 ns;


begin

	uut: counterTwo port map(TCLOCK, TINIT, TOUTCOME, TMISS, TPREDICTION);

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

		TMISS <= '0';
		TOUTCOME <= '0';

		wait for 10 ns;

		TOUTCOME <= '1';
		TMISS <= '1';

		wait for 10 ns;

		TOUTCOME <= '1';
		TMISS <= '1';

		wait for 10 ns;

		TOUTCOME <= '0';
		TMISS <= '1';

		wait for 10 ns;

		TOUTCOME <= '0';
		TMISS <= '1';

		wait for 10 ns;

		TOUTCOME <= '0';
		TMISS <= '0';

		wait for 10 ns;

		TOUTCOME <= '1';
		TMISS <= '1';

		wait for 10 ns;

	wait;
	end process;
end behavior;