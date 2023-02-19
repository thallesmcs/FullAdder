library ieee;
use ieee.std_logic_1164.all;

entity FAA8 is
port(
	cin,a0,a1,a2,a3,a4,a5,a6,a7,b0,b1,b2,b3,b4,b5,b6,b7: in std_logic;
	cout,soma0,soma1,soma2,soma3,soma4,soma5,soma6,soma7: out std_logic);
end FAA8;

architecture nichous of FAA8 is

component FAA is
port(
		a,b,cin: in std_logic;
		cout,soma: out std_logic);
end component;

signal ricardo, fabio, fabricio, leonardo, leonarda, ingrid, flavia: std_logic;

begin

F0 : FAA port map (
	a => a0,
	b => b0,
	cin => cin,
	cout => ricardo,
	soma => soma0);

F1 : FAA port map (
	a => a1,
	b => b1,
	cin => ricardo,
	cout => fabio,
	soma => soma1);

F2 : FAA port map (
	a => a2,
	b => b2,
	cin => fabio,
	cout => fabricio,
	soma => soma2);
F3 : FAA port map (
	a => a3,
	b => b3,
	cin => fabricio,
	cout => leonardo,
	soma => soma3);
	
F4 : FAA port map (
	a => a4,
	b => b4,
	cin => leonardo,
	cout => leonarda,
	soma => soma4);

F5 : FAA port map (
	a => a5,
	b => b5,
	cin => leonarda,
	cout => ingrid,
	soma => soma5);

F6 : FAA port map (
	a => a6,
	b => b6,
	cin => ingrid,
	cout => flavia,
	soma => soma6);

F7 : FAA port map (
	a => a7,
	b => b7,
	cin => flavia,
	cout => cout,
	soma => soma7);

	
end nichous;