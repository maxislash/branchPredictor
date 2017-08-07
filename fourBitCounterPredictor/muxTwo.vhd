library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MuxTwo is
	Port ( A : in std_logic;
		B :  in std_logic;
		C :  in std_logic;
		D :  in std_logic;
		E :  in std_logic;
		F :  in std_logic;
		G :  in std_logic;
		H :  in std_logic;
		I :  in std_logic;
		J :  in std_logic;
		K :  in std_logic;
		L :  in std_logic;
		M :  in std_logic;
		N :  in std_logic;
		O :  in std_logic;
		P :  in std_logic;
		column : in std_logic_vector (3 downto 0);
		OUTPUT : out std_logic);
end entity MuxTwo;

architecture Behavioral of MuxTwo is
begin
	process(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,column) is
	begin
		case column is
			when "0000" => OUTPUT <= A;
			when "0001" => OUTPUT <= B;
			when "0010" => OUTPUT <= C;
			when "0011" => OUTPUT <= D;
			when "0100" => OUTPUT <= E;
			when "0101" => OUTPUT <= F;
			when "0110" => OUTPUT <= G;
			when "0111" => OUTPUT <= H;
			when "1000" => OUTPUT <= I;
			when "1001" => OUTPUT <= J;
			when "1010" => OUTPUT <= K;
			when "1011" => OUTPUT <= L;
			when "1100" => OUTPUT <= M;
			when "1101" => OUTPUT <= N;
			when "1110" => OUTPUT <= O;
			when "1111" => OUTPUT <= P;
			when others => OUTPUT <= '0';
		end case;
	end process;
end architecture Behavioral;