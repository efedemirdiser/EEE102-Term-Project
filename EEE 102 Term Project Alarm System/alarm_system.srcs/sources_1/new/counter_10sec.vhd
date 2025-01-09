library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock is
    Port (
        clock      : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        count_over : out STD_LOGIC;
        counter    : out STD_LOGIC_VECTOR(27 downto 0);
        phase      : out STD_LOGIC_VECTOR(1 downto 0);
        second     : out STD_LOGIC_VECTOR(15 downto 0);
        sec        : out STD_LOGIC
    );
end clock;

architecture Behavioral of clock is
    signal count: STD_LOGIC_VECTOR(27 downto 0) := (others => '0');
    signal scnd: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal enable_count: STD_LOGIC := '1'; 
    signal count_done: STD_LOGIC := '0';   
begin
    process(clock, reset)
    begin
        if reset = '1' then
            count <= (others => '0');       
            scnd <= (others => '0');       
            enable_count <= '1';           
            count_done <= '0';             
        elsif rising_edge(clock) then
            if enable_count = '1' then
                count <= count + 1;
                if count = x"5F5E0FF" then
                    count <= (others => '0');
                    scnd <= scnd + 1;
                    if scnd = "0000000000001001" then 
                        enable_count <= '0';         
                        count_done <= '1';           
                    end if;
                end if;
            end if;
        end if;
    end process;
 
    count_over <= '1' when reset = '1' else count_done;

    sec <= '1' when count = x"5F5E0FF" else '0';
    phase <= count(19 downto 18);
    counter <= count;
    second <= scnd;
end Behavioral;