library ieee;
use ieee.std_logic_1164.all;

entity eq3 is
	port
	(
		-- Input ports
		a: in std_logic;
		b: in std_logic;
		e: in std_logic;

		-- Output port
		q : out std_logic_vector(3 downto 0)
	);
end eq3;

architecture sop_arch of eq3 is
begin
	q(3) <= (not a) and (not b) and e;
	q(2) <= (not a) and b and e;
	q(1) <= a and (not b) and e;
	q(0) <= a and b and e;
end sop_arch;
