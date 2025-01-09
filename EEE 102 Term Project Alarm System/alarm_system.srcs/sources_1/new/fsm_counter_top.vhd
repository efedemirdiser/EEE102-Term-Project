library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fsm_top is
 Port (    clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           enter : in STD_LOGIC;
           count_over: out STD_LOGIC;
           reset_alarm     : out STD_LOGIC;
           anode : out STD_LOGIC_VECTOR(3 downto 0);
           cathode : out STD_LOGIC_VECTOR(6 downto 0)
            );
end fsm_top;

architecture Behavioral of fsm_top is
signal incorrect: STD_LOGIC_VECTOR(1 downto 0);
signal resett: STD_LOGIC;
signal fsm_rreset: STD_LOGIC;

begin
count_over <= resett;

fsm : entity work.FSM port map (clk =>clock,
                                reset_keypad=>reset,    
                                reset_count=>resett , 
                                reset_alarm => reset_alarm,  
                                incorrect_count=> incorrect,
                                fsm_reset => fsm_rreset,  
                                enter => enter
                                );

ssd_count : entity work.ssd_counter port map (clock => clock,
                                       reset => fsm_rreset,
                                       incorrect_count => incorrect,
                                       count_over => resett,
                                       anode => anode,
                                       cathode => cathode
                                       );
end Behavioral;
