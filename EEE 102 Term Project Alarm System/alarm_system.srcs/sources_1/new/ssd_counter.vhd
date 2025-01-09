library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_counter is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           incorrect_count: in STD_LOGIC_VECTOR(1 downto 0);
           count_over: out STD_LOGIC;
           anode : out STD_LOGIC_VECTOR(3 downto 0);
           cathode : out STD_LOGIC_VECTOR(6 downto 0));
end ssd_counter;

architecture Behavioral of ssd_counter is

signal phase: STD_LOGIC_VECTOR(1 downto 0);
signal sec: STD_LOGIC;
signal num: STD_LOGIC_VECTOR(15 downto 0);

begin

clk: entity work.clock port map(clock => clock, reset => reset, phase => phase, sec => sec, second => num, count_over => count_over);
four_to_one_mux: entity work.mux port map(clock => clock, reset => reset, phase => phase, num => num, sec => sec, anode => anode, cathode => cathode, incorrect_count => incorrect_count);

end Behavioral;