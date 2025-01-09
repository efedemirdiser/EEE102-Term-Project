library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity motion_sensor is
    Port ( 
        clk : in  STD_LOGIC;
        echo : in  STD_LOGIC;
        trigger : out  STD_LOGIC;
        sensor : in STD_LOGIC;
        reset  : in STD_LOGIC;
        Q_not  : out STD_LOGIC;
        Q      : out STD_LOGIC;
        an_d : OUT std_logic_vector(3 downto 0);
        cat_d : out  STD_LOGIC_VECTOR(6 downto 0);
        is_between_10_and_15 : out STD_LOGIC      
    );
end motion_sensor;

architecture Behavioral of motion_sensor is
    
    signal Q_internal : STD_LOGIC := '0'; 
    signal is_less : STD_LOGIC;
    signal current_state, next_state : STD_LOGIC; 
    
begin

distance_checker : entity work.sistema_maxsonar port map(
    clk => clk,
    echo => echo,
    trigger => trigger,
    an => an_d,
    cat => cat_d,
    is_less_than_10 => is_less,
    is_between_10_and_15 => is_between_10_and_15  
);


process (clk, reset)
begin
    if reset = '1' then
        current_state <= '0'; 
    elsif rising_edge(clk) then
        current_state <= next_state;
    end if;
end process;

process (current_state, sensor, is_less, reset)
begin
    
    next_state <= current_state; 
    Q_internal <= '0'; 

    case current_state is
        when '0' => 
            if sensor = '1' and is_less = '1' then
                next_state <= '1'; 
            end if;

        when '1' => 
            Q_internal <= '1'; 
            if reset = '1' then
                next_state <= '0'; 
            end if;
    end case;
end process;

Q <= Q_internal; 
Q_not <= not Q_internal; 

end Behavioral;