library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity clkdiv is
    Port (
        clk     : in std_logic;
        clr     : in std_logic;
        clk190  : out std_logic
        
    );
end clkdiv;

architecture clkdiv of clkdiv is
    signal q : std_logic_vector(23 downto 0);
begin
    process(clk, clr)
    begin
        if clr = '1' then
            q <= x"000000";
        elsif clk'event and clk = '1' then
            q <= q + 1;
        end if;
    end process;

    clk190 <= q(23);
    
end clkdiv;