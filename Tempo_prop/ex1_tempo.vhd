library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ex1_tempo is

	generic (n : natural := 16);
	port(a,b: in unsigned (n-1 downto 0);
		y: out unsigned (n-1 downto 0)
	);
end entity;

architecture vs1 of ex1_tempo is
	begin
	y <= a + b;
end architecture;

architecture vs2 of ex1_tempo is
	begin
	y <= a + "0000000000000001";
end architecture;

architecture vs3 of ex1_tempo is
	begin
	y <= a + "0000000010000000";
end architecture;

architecture vs4 of ex1_tempo is
	begin
	y <= a + "1000000000000000";
end architecture;

architecture vs5 of ex1_tempo is
	begin
	y <= a + "1010101010101010";
end architecture;
configuration config of ex1_tempo is
	for vs5
	end for;
end configuration;
