library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sistema_maxsonar is
    Port ( clk : in  STD_LOGIC;
           echo : in  STD_LOGIC;        
           trigger : out std_logic;
           an : out std_logic_vector(3 downto 0);
           cat : out  STD_LOGIC_VECTOR(6 downto 0);
           is_less_than_10 : out std_logic;
           is_between_10_and_15: out std_logic
           );
end sistema_maxsonar;


architecture Behavioral of sistema_maxsonar is

   COMPONENT control_maxsonar
    PORT(
        clk : IN std_logic;
        echo : IN std_logic;          
        trigger : OUT std_logic;
        distance : INOUT std_logic_vector(10 downto 0);
        is_less_than_10 : out STD_LOGIC;
        is_between_10_and_15: out STD_LOGIC
        );
    END COMPONENT;
   
   COMPONENT bin2bcd
    PORT(
        clk : IN std_logic;
        b_in : IN std_logic_vector(12 downto 0);          
        dec_1 : OUT std_logic_vector(3 downto 0);
        dec_10 : OUT std_logic_vector(3 downto 0);
        dec_100 : OUT std_logic_vector(3 downto 0);
        dec_1000 : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
   
   COMPONENT visu7seg
    PORT(
        clk : IN std_logic;
        dec_1 : IN std_logic_vector(3 downto 0);
        dec_10 : IN std_logic_vector(3 downto 0);
        dec_100 : IN std_logic_vector(3 downto 0);
        dec_1000 : IN std_logic_vector(3 downto 0);          
        an : OUT std_logic_vector(3 downto 0);
        cat : out  STD_LOGIC_VECTOR(6 downto 0)
        );
    END COMPONENT;
   
   signal dec_1, dec_10, dec_100, dec_1000 : std_logic_vector(3 downto 0);
   signal distance : std_logic_vector(10 downto 0);
   signal distance_2 : std_logic_vector(12 downto 0);
   signal prev_distance : std_logic_vector(10 downto 0) := (others => '0');

begin

   Inst_control_maxsonar: control_maxsonar PORT MAP(
        clk => clk,
        echo => echo,
        trigger => trigger,
        distance => distance,
        is_less_than_10 => is_less_than_10,
        is_between_10_and_15 => is_between_10_and_15
    );
   
   Inst_bin2bcd: bin2bcd PORT MAP(
        clk => clk,
        b_in => distance_2,
        dec_1 => dec_1,
        dec_10 => dec_10,
        dec_100 => dec_100,
        dec_1000 => dec_1000
    );
   
   Inst_visu7seg: visu7seg PORT MAP(
        clk => clk,
        dec_1 => dec_1,
        dec_10 => dec_10,
        dec_100 => dec_100,
        dec_1000 => dec_1000,
        an => an,
        cat => cat
    );

   process(clk)
   begin
       if rising_edge(clk) then
           if distance /= prev_distance then
               distance_2 <= "00" & distance;
               prev_distance <= distance;
           end if;
       end if;
   end process; 
end Behavioral;