library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity password_checker is
    Port (
        clk    : in STD_LOGIC; 
        enable     : in STD_LOGIC; 
        echo : in  STD_LOGIC;
        ssd_select : in STD_LOGIC_VECTOR(1 downto 0);
        trigger : out  STD_LOGIC;
        enter : in STD_LOGIC; 
        shift  : in std_logic;
        resett  : in std_logic; 
        sensor : in STD_LOGIC;
        Q : out STD_LOGIC;
        Q_not : out STD_LOGIC;
        is_locked : out STD_LOGIC;
        summm : out STD_LOGIC_VECTOR(15 downto 0); 
        JA     : inout STD_LOGIC_VECTOR (7 downto 0); 
        an     : out STD_LOGIC_VECTOR (3 downto 0);  
        seg    : out STD_LOGIC_VECTOR (6 downto 0);
        is_between_10_and_15 : out STD_LOGIC;
        is_k_reset: out STD_LOGIC    
    );
end password_checker;

architecture Behavioral of password_checker is

signal sum : std_logic_vector (32 downto 0);
signal reset: std_logic;
signal reset_keypad: std_logic;
signal reset_count: std_logic;
signal count_competed: std_logic;
signal an_dis: STD_LOGIC_VECTOR (3 downto 0);
signal cat_dis: STD_LOGIC_VECTOR (6 downto 0);
signal an_kp: STD_LOGIC_VECTOR (3 downto 0);
signal cat_kp: STD_LOGIC_VECTOR (6 downto 0);
signal an_count: STD_LOGIC_VECTOR (3 downto 0);
signal cat_count: STD_LOGIC_VECTOR (6 downto 0);
signal an_mux: STD_LOGIC_VECTOR (3 downto 0);
signal seg_mux: STD_LOGIC_VECTOR (6 downto 0);

begin
is_k_reset <= reset_keypad;

process(ssd_select, an_kp, cat_kp, an_dis, cat_dis, an_count, cat_count)
begin
    if ssd_select = "01" then
        an_mux <= an_kp; 
        seg_mux <= cat_kp;
    elsif ssd_select = "10" then
        an_mux <= an_dis; 
        seg_mux <= cat_dis;
    elsif ssd_select = "11" then
        an_mux <= an_count; 
        seg_mux <= cat_count;
    else
        an_mux <= "1111"; 
        seg_mux <= "0000000";
    end if;
end process;

an <= an_mux;
seg <= seg_mux;

keypad_2 : entity work.PmodKYPD port map(
              clk     => clk,   
              shift   => shift,
              sum     => sum(32 downto 1),
              reset   => resett,
              JA      => JA,
              an      => an_kp,
              seg     => cat_kp); 

sum(0) <= enter; 


summm <= sum(31 downto 16);
process(clk)
begin
    if rising_edge(clk) then
        if enable = '0' then 
            reset_keypad <= '1'; 
        elsif enable = '1' then 
            if sum = "100000010010100000100001001000101" then --A7C9,enter
                reset_keypad <= '1'; 
            else
                reset_keypad <= '0'; 
            end if;
    end if;
    end if; 
end process;

incorrect_password : entity work.fsm_top port map(clock => clk,
                                                  reset =>reset_keypad,
                                                  enter =>enter,
                                                  count_over => count_competed, 
                                                  anode => an_count,
                                                  cathode => cat_count,
                                                  reset_alarm => reset 
                                                          );


sensor_module: entity work.motion_sensor port map(
                    clk => clk,
                    echo => echo,
                    trigger => trigger,
                    sensor => sensor,
                    reset  => reset,
                    Q      => Q,
                    Q_not  =>   Q_not,
                    an_d =>an_dis,
                    cat_d =>cat_dis,
                    is_between_10_and_15 => is_between_10_and_15);
is_locked <= not count_competed; 
end Behavioral;