library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PmodKYPD is
    Port (
        clk    : in STD_LOGIC;
        shift  : in std_logic;
        reset  :in std_logic;
        sum    : out std_logic_vector (31 downto 0);
        JA     : inout STD_LOGIC_VECTOR (7 downto 0); 
        an     : out STD_LOGIC_VECTOR (3 downto 0);  
        seg    : out STD_LOGIC_VECTOR (6 downto 0)   
    );
end PmodKYPD;

architecture Behavioral of PmodKYPD is
    signal Decode, dispVal, dispVal0, dispVal1, dispVal2 : STD_LOGIC_VECTOR (7 downto 0);
    signal summ : std_logic_vector (31 downto 0);
    
begin
    C0: entity work.Decoder port map (
        clk       => clk, 
        Row       => JA(7 downto 4), 
        Col       => JA(3 downto 0), 
        DecodeOut => Decode
    );

    C1: entity work.DisplayController port map (
        clk       => clk, 
        shift     => shift, 
        summ      => sum, 
        reset     => reset,
        DispVal   => Decode,
        anode     => an, 
        segOut    => seg
    );

end Behavioral;