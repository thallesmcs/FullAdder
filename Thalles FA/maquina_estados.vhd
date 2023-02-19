library ieee;
use ieee.std_logic_1164.all;

entity maquina_estados is
	port(
			entrada: in std_logic;
			clk, reset: in std_logic;
			saida: out std_logic);
end maquina_estados;

architecture comportamento of maquina_estados is

type estado is (A,B,C,D);
signal estado_atual, proximo_estado: estado;

begin

	sincrono: process(clk,entrada,reset,proximo_estado)
	begin
		if(reset = '1')then
			estado_atual <= A;
		elsif (rising_edge(clk))then
			estado_atual <= proximo_estado;
		end if;	
	end process; 

	combinacional: process(estado_atual, entrada)
	begin
	
		saida <= '0';
		
		case(estado_atual) is
		when A =>
			saida <='0';
			if(entrada = '1')then
				proximo_estado <= B;
			else
			
				proximo_estado <= A;
			end if;
		when B =>
			saida <= '0';
			if(entrada = '1')then
				proximo_estado <= C;
			else
			
				proximo_estado <= A;
			end if;
		when C =>
			saida <= '0';
			if(entrada = '1')then
				proximo_estado <= D;
			else
			
				proximo_estado <= A;
			end if;
		when D =>
			saida <= '1';
			if(entrada = '1')then
				proximo_estado <= D;
			else
		
				proximo_estado <= A;
			end if;
		end case;
	end process;
	
end comportamento;	
	