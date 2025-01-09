library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder is
    Port (
        clk       : in STD_LOGIC;
        Row       : in STD_LOGIC_VECTOR(3 downto 0);
        Col       : out STD_LOGIC_VECTOR(3 downto 0);
        DecodeOut : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Decoder;

architecture Behavioral of Decoder is
    signal sclk : STD_LOGIC_VECTOR(19 downto 0);
begin
    process(clk)
    begin
        if clk'event and clk = '1' then
            -- 1ms
            if sclk = "00011000011010100000" then
                -- C1
                Col <= "0111";
                sclk <= sclk + 1;

            
            elsif sclk = "00011000011010101000" then
                -- R1
                if Row = "0111" then
                    DecodeOut <= "10001000"; -- 1
                -- R2
                elsif Row = "1011" then
                    DecodeOut <= "01001000"; -- 4
                -- R3
                elsif Row = "1101" then
                    DecodeOut <= "00101000"; -- 7
                -- R4
                elsif Row = "1110" then
                    DecodeOut <= "00011000"; -- *
                end if;
                sclk <= sclk + 1;

            -- 2ms
            elsif sclk = "00110000110101000000" then
                -- C2
                Col <= "1011";
                sclk <= sclk + 1;

            
            elsif sclk = "00110000110101001000" then
                -- R1
                if Row = "0111" then
                    DecodeOut <= "10000100"; -- 2
                -- R2
                elsif Row = "1011" then
                    DecodeOut <= "01000100"; -- 5
                -- R3
                elsif Row = "1101" then
                    DecodeOut <= "00100100"; -- 8
                -- R4
                elsif Row = "1110" then
                    DecodeOut <= "00010100"; -- 0
                end if;
                sclk <= sclk + 1;

            -- 3ms
            elsif sclk = "01001001001111100000" then
                -- C3
                Col <= "1101";
                sclk <= sclk + 1;

            
            elsif sclk = "01001001001111101000" then
                -- R1
                if Row = "0111" then
                    DecodeOut <= "10000010"; -- 3
                -- R2
                elsif Row = "1011" then
                    DecodeOut <= "01000010"; -- 6
                -- R3
                elsif Row = "1101" then
                    DecodeOut <= "00100010"; -- 9
                -- R4
                elsif Row = "1110" then
                    DecodeOut <= "00010010"; -- #
                end if;
                sclk <= sclk + 1;

            -- 4ms
            elsif sclk = "01100001101010000000" then
                -- C4
                Col <= "1110";
                sclk <= sclk + 1;

            
            elsif sclk = "01100001101010001000" then
                -- R1
                if Row = "0111" then
                    DecodeOut <= "10000001"; -- A
                -- R2
                elsif Row = "1011" then
                    DecodeOut <= "01000001"; -- B
                -- R3
                elsif Row = "1101" then
                    DecodeOut <= "00100001"; -- C
                -- R4
                elsif Row = "1110" then
                    DecodeOut <= "00010001"; -- D
                end if;
                sclk <= "00000000000000000000";

            else
                sclk <= sclk + 1;
            end if;
        end if;
    end process;
end Behavioral;