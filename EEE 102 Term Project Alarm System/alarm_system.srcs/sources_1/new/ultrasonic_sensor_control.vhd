library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity control_maxsonar is
    Port (
        clk : in  STD_LOGIC;
        echo : in  STD_LOGIC;
        trigger : out  STD_LOGIC;
        distance : inout  STD_LOGIC_VECTOR (10 downto 0);
        is_less_than_10 : out STD_LOGIC;
        is_between_10_and_15: out STD_LOGIC
    );
end control_maxsonar;

architecture Behavioral of control_maxsonar is

    signal count : unsigned(10 downto 0) := (others => '0');
    signal clk_2 : std_logic;
    signal echo_2 : unsigned(10 downto 0) := (others => '0');
    signal measuring : std_logic := '0';

begin

    
    p_clk: process(clk)
    begin
        if rising_edge(clk) then
            if count < 1450 then
                count <= count + 1;
            else
                count <= (others => '0');
            end if;
        end if;
    end process;
    clk_2 <= count(10);

    
    process(clk_2)
    begin
        if rising_edge(clk_2) then
            
            if measuring = '0' then
                trigger <= '1';
                echo_2 <= (others => '0');
                measuring <= '1';
            else
                trigger <= '0';

                
                if echo = '1' then
                    if echo_2 < 1600 then
                        echo_2 <= echo_2 + 1;
                    end if;
                else
                    if echo_2 > 0 then
                        distance <= std_logic_vector(echo_2 / 4);
                    end if;
                    measuring <= '0';
                end if;
            end if;
        end if;
    end process;
   process(clk)
   begin
       if rising_edge(clk) then
           if unsigned(distance) < 10 or unsigned(distance) = 10 then
               is_less_than_10 <= '1';
           else
               is_less_than_10 <= '0';
           end if;
       end if;
   end process;
  
     process(clk)
   begin
       if rising_edge(clk) then
           if unsigned(distance) > 10 and unsigned(distance) <= 15 then
               is_between_10_and_15 <= '1';
           else
               is_between_10_and_15 <= '0';
           end if;
       end if;
   end process;
end Behavioral;