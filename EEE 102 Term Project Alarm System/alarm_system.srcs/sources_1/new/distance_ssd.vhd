library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity visu7seg is
    Port ( clk : in  STD_LOGIC;
           dec_1 : in  STD_LOGIC_VECTOR (3 downto 0);
           dec_10 : in  STD_LOGIC_VECTOR (3 downto 0);
           dec_100 : in  STD_LOGIC_VECTOR (3 downto 0);
           dec_1000 : in  STD_LOGIC_VECTOR (3 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           cat : out  STD_LOGIC_VECTOR(6 downto 0))
          ;
end visu7seg;

architecture Behavioral of visu7seg is
   signal count : unsigned (18 downto 0);
   signal seg_disp : std_logic_vector (6 downto 0);
   signal selector : std_logic_vector (3 downto 0);

begin

   P1_count:process(clk)
   begin
      if rising_edge(clk) then
         count <= count + 1;
      end if;
   end process;
   
   with count(18 downto 17) select
    an <= "1110" when "00",  -- 0
          "1101" when "01",  -- 1
          "1011" when "10",  -- 2
          "0111" when "11",  -- 3
          "1111" when others;  -- turned off 
   
   with count(18 downto 17) select
    selector <=  dec_1 when "00",
           dec_10 when "01",
           dec_100 when "10",
           dec_1000 when others;--
           
    with selector select
    seg_disp <= "1000000" when "0000",  -- 0
                "1111001" when "0001",  -- 1
                "0100100" when "0010",  -- 2
                "0110000" when "0011",  -- 3
                "0011001" when "0100",  -- 4
                "0010010" when "0101",  -- 5
                "0000010" when "0110",  -- 6
                "1111000" when "0111",  -- 7
                "0000000" when "1000",  -- 8
                "0010000" when "1001",  -- 9
                "1111111" when others;  -- turned off

            
  cat <= seg_disp;

end Behavioral;