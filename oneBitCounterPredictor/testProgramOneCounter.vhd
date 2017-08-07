
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity OneCounterPredictorProgramTest is
end OneCounterPredictorProgramTest;

architecture behavior of OneCounterPredictorProgramTest is 

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
	signal TPREDICTION : std_logic;
	signal TMISSES : std_logic_vector (15 downto 0);
	signal TOUTCOME : std_logic;

	constant clk_period : time := 10 ns;

	file input : text;
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
	variable v_ILINE : line;
	variable v_ADDR : integer;
	variable v_OUTCOME : std_logic;
	variable v_SPACE : character;

	begin
	
		file_open(input, "vhdl_input.txt", read_mode);

		wait for 15 ns;

		TINIT <= '1';

		wait for 10 ns;

		TINIT <= '0';

		while not endfile(input) loop

			readline(input, v_ILINE);
			read(v_ILINE, v_ADDR);
			read(v_ILINE, v_SPACE);
			read(v_ILINE, v_OUTCOME);

			TADDR <= std_logic_vector(to_unsigned(v_ADDR,3));
			TOUTCOME <= v_OUTCOME;

			wait for 10 ns;

		end loop;
		file_close(input);

	wait;
	end process;
end behavior;