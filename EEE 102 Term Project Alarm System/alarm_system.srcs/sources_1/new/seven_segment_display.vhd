library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DisplayController is
    Port (
        clk       : in std_logic;
        shift     : in std_logic;
        reset     : in std_logic;
        summ      : out std_logic_vector(31 downto 0);
        DispVal   : inout STD_LOGIC_VECTOR(7 downto 0); 
        anode     : out std_logic_vector(3 downto 0);   
        segOut    : out STD_LOGIC_VECTOR(6 downto 0)   
    );
end DisplayController;

architecture Behavioral of DisplayController is
    signal digit_BCD        : std_logic_vector(7 downto 0);
    signal digit_counter    : std_logic_vector(1 downto 0);
    signal refresh_counter  : std_logic_vector(27 downto 0);
    signal dispVal0, dispVal1, dispVal2, dispVal3 : std_logic_vector(7 downto 0);
    signal clk190           : std_logic;
    
begin
 process(clk)
begin
    if reset = '1' then
        refresh_counter <= (others => '0');
    elsif (rising_edge(clk)) then
        refresh_counter <= refresh_counter + 1;
    end if;
end process;

digit_counter <= refresh_counter(19 downto 18);

clkdiv: entity work.clkdiv port map (clk, '0', clk190);

process
begin
    if reset = '1' then
        dispVal0 <= "11111111"; -- Dash
        dispVal1 <= "11111111"; -- Dash
        dispVal2 <= "11111111"; -- Dash
    elsif rising_edge(clk190) and shift = '1' then
        dispVal0 <= DispVal;
        dispVal1 <= dispVal0;
        dispVal2 <= dispVal1;
    end if;
end process;

process(digit_counter, reset)
begin
    if reset = '1' then
        anode <= "1111"; -- Disable all digits
        digit_BCD <= "11111111"; -- Dash
    else
        case digit_counter is
            when "00" =>
                anode <= "1110"; 
                digit_BCD <= DispVal;
            when "01" =>
                anode <= "1101"; 
                digit_BCD <= dispVal0;
            when "10" =>
                anode <= "1011"; 
                digit_BCD <= dispVal1;
            when "11" =>
                anode <= "0111"; 
                digit_BCD <= dispVal2;              
        end case;
    end if;
end process;

summ <= dispVal2 & dispVal1 & dispVal0 & DispVal;

with digit_BCD select
    segOut <= "1111111" when "11111111", -- Dash
              "1000000" when "00010100", -- 0
              "1111001" when "10001000", -- 1
              "0100100" when "10000100", -- 2
              "0110000" when "10000010", -- 3
              "0011001" when "01001000", -- 4
              "0010010" when "01000100", -- 5
              "0000010" when "01000010", -- 6
              "1111000" when "00101000", -- 7
              "0000000" when "00100100", -- 8
              "0010000" when "00100010", -- 9
              "0001000" when "10000001", -- A
              "0000011" when "01000001", -- B
              "1000110" when "00100001", -- C
              "0100001" when "00010001", -- D
              "0111111" when others;
end Behavioral;