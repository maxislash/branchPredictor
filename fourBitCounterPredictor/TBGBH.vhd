library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity GBHTest is
end GBHTest;

architecture behavior of GBHTest is 

	component GBH
	Port(	CLOCK : in std_logic;
		INIT : in std_logic;
		OUTCOME : in std_logic;
		column : out std_logic_vector (3 downto 0)
	);
	end component;


	signal TCLOCK : std_logic;
	signal TINIT : std_logic;
	signal TOUTCOME : std_logic;
	signal Tcolumn : std_logic_vector (3 downto 0);

	constant clk_period : time := 10 ns;


begin

	uut: GBH port map(TCLOCK, TINIT, TOUTCOME, Tcolumn);

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

		TOUTCOME<= '0';

		wait for 10 ns;

		TOUTCOME <= '0';
		wait for 10 ns;

		TOUTCOME <= '1';
		wait for 10 ns;

		TOUTCOME<= '0';

		wait for 10 ns;

		TOUTCOME <= '1';

		wait for 10 ns;

		TOUTCOME <= '1';

		wait for 10 ns;

		TOUTCOME <= '0';

	wait;
	end process;
end behavior;