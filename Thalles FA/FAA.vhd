library ieee;
use ieee.std_logic_1164.all;

entity FAA is
	port(
			a,b,cin: in std_logic;
			cout,soma: out std_logic);
end FAA;

architecture nichous of FAA is


begin
	soma <= (b xor cin) xor a;
	cout <= (a and b) or (b and cin) or (a and cin);
end nichous;