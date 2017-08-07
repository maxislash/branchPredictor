
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity comparatorTest is
end comparatorTest;

architecture behavior of comparatorTest is 

	component comparator
	Port(	
		OUTCOME : in std_logic;
		PREDICTION : in std_logic;
		MISS : out std_logic
	);
	end component;

	signal TOUTCOME : std_logic;
	signal TMISS : std_logic;
	signal TPREDICTION : std_logic;


begin

	uut: comparator port map(TOUTCOME, TPREDICTION, TMISS);

	process
	begin
	
		wait for 15 ns;


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