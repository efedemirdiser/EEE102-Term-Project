library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux is
    Port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        phase : in STD_LOGIC_VECTOR(1 downto 0);
        num : in STD_LOGIC_VECTOR(15 downto 0);
        sec : in STD_LOGIC;
        incorrect_count: in STD_LOGIC_VECTOR(1 downto 0);
        anode : out STD_LOGIC_VECTOR(3 downto 0);
        cathode : out STD_LOGIC_VECTOR(6 downto 0)
    );
end mux;

architecture Behavioral of mux is
    signal leds: STD_LOGIC_VECTOR(3 downto 0);
    signal blank: STD_LOGIC;
begin
    process(phase)
    begin
        case phase is
            when "00" => 
                anode <= "0111"; -- 1st digit
                leds <= "00" & incorrect_count;
                blank <= '0';
            when "01" => 
                anode <= "1011"; -- 2nd digit
                leds <= num(11 downto 8);
                blank <= '1';
            when "10" => 
                anode <= "1101"; -- 3rd digit
                leds <= num(7 downto 4);
                blank <= '0';
            when "11" => 
                anode <= "1110"; -- 4th digit
                leds <= num(3 downto 0);
                blank <= '0';
            when others => 
                anode <= "1111";
        end case;
    end process;

led: entity work.cdecoder port map(leds => leds, cathode => cathode, blank=>blank);
        
end Behavioral;