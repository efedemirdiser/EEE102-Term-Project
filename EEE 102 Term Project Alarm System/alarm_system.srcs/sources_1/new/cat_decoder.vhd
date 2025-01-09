library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cdecoder is
    Port (
        leds : in STD_LOGIC_VECTOR(3 downto 0);
        blank : in STD_LOGIC;
        cathode : out STD_LOGIC_VECTOR(6 downto 0)
    );
end cdecoder;

architecture Behavioral of cdecoder is
begin
    process(leds)
    begin
        case leds & blank is
            when "00000" => cathode <= "1000000"; -- 0
            when "00010" => cathode <= "1111001"; -- 1
            when "00100" => cathode <= "0100100"; -- 2
            when "00110" => cathode <= "0110000"; -- 3
            when "01000" => cathode <= "0011001"; -- 4
            when "01010" => cathode <= "0010010"; -- 5
            when "01100" => cathode <= "0000010"; -- 6
            when "01110" => cathode <= "1111000"; -- 7
            when "10000" => cathode <= "0000000"; -- 8
            when "10010" => cathode <= "0010000"; -- 9
            when "10100" => cathode <= "0001000"; -- A
            when "10110" => cathode <= "0000011"; -- b
            when "11000" => cathode <= "1000110"; -- C
            when "11010" => cathode <= "0100001"; -- d
            when "11100" => cathode <= "0000110"; -- E
            when "11110" => cathode <= "0001110"; -- F
            when others => cathode <= "1111111"; -- Blank
        end case;
    end process;
end Behavioral;