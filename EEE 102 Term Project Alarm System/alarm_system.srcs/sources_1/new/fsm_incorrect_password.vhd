library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM is
    Port (
        clk           : in  STD_LOGIC;
        reset_keypad  : in  STD_LOGIC; 
        reset_count   : in  STD_LOGIC; 
        enter         : in  STD_LOGIC; 
        reset_alarm     : out STD_LOGIC;
        incorrect_count : out STD_LOGIC_VECTOR(1 downto 0); 
        fsm_reset     : out STD_LOGIC  
    );
end FSM;

architecture Behavioral of FSM is
    type state_type is (state_0, state_1, state_2, state_2_hold, wait_lock);
    signal current_state, next_state : state_type;
    signal enter_prev : STD_LOGIC := '0'; 
begin
    
    process(clk)
    begin
        if rising_edge(clk) then
            current_state <= next_state;
            enter_prev <= enter; 
        end if;
    end process;

    
    process(current_state, reset_keypad, reset_count, enter, enter_prev)
    begin
        -- default
        fsm_reset <= '1';
        incorrect_count <= "00";

        case current_state is
            when state_0 =>
                if enter = '1' and enter_prev = '0' and reset_keypad = '0' then
                    next_state <= state_1; 
                    reset_alarm <= '0';
                else
                    next_state <= state_0; 
                    reset_alarm <= '0';
                end if;

            when state_1 =>
                incorrect_count <= "01";
                if enter = '1' and enter_prev = '0' and reset_keypad = '0' then
                    next_state <= state_2; 
                    reset_alarm <= '0';
                elsif reset_keypad = '1' then
                    next_state <= state_0; 
                    reset_alarm <= '1';
                else
                    next_state <= state_1; 
                    reset_alarm <= '0';
                end if;

            when state_2 =>
                incorrect_count <= "10";
                if enter = '1' and enter_prev = '0' and reset_keypad = '0' then
                    next_state <= state_2_hold; 
                    reset_alarm <= '0';
                elsif reset_keypad = '1' then
                    next_state <= state_0; 
                    reset_alarm <= '1';
                else
                    next_state <= state_2; 
                    reset_alarm <= '0';
                end if;
                
            when state_2_hold =>
                incorrect_count <= "10";
                if reset_keypad = '1' then
                    next_state <= state_0; 
                    reset_alarm <= '1';
                else
                    next_state <= wait_lock;
                    reset_alarm <= '0'; 
                end if;
                
            when wait_lock =>
                incorrect_count <= "11";
                fsm_reset <= '0'; 
                if reset_count = '1' then
                    next_state <= state_0; 
                    reset_alarm <= '0';
                else
                    next_state <= wait_lock; 
                    reset_alarm <= '0';
                end if;

            when others =>
                next_state <= state_0; 
               -- reset_alarm <= '1';
        end case;
    end process;
end Behavioral;