library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alarm_main is
    Port (
        enable     : in STD_LOGIC;          
        sensor     : in STD_LOGIC;         
        clk        : in STD_LOGIC;         
        resett      : in STD_LOGIC;
        ssd_select : in STD_LOGIC_VECTOR(1 downto 0);
        shift      : in STD_LOGIC;     
        enter      : in STD_LOGIC;   --
        JA         : inout STD_LOGIC_VECTOR (7 downto 0); 
        echo : in  STD_LOGIC;
        trigger : out  STD_LOGIC;
        an         : out STD_LOGIC_VECTOR (3 downto 0);   
        seg        : out STD_LOGIC_VECTOR (6 downto 0);   
        Q          : out STD_LOGIC;       
        Q_not      : out STD_LOGIC;  
        is_locked : out STD_LOGIC;     
        is_enabled : out STD_LOGIC      
    );
end alarm_main;

architecture Behavioral of alarm_main is


signal Q_internal       : STD_LOGIC;
signal Q_not_internal   : STD_LOGIC;
signal summm_internal   : STD_LOGIC_VECTOR (15 downto 0);
signal a: STD_LOGIC;
signal b: STD_LOGIC;
signal c: STD_LOGIC;
signal d: STD_LOGIC;


begin

password_checker_inst : entity work.password_checker
    port map (
        clk    => clk,
        enter => enter, 
        echo => echo,
        trigger => trigger,
        shift  => shift,
        ssd_select => ssd_select,
        sensor => sensor,
        Q      => Q_internal,
        Q_not  => Q_not_internal,
        summm  => summm_internal,
        JA     => JA,
        is_locked => is_locked, 
        an     => an,
        seg    => seg,
        enable => enable,
        resett => resett,
        is_between_10_and_15 => c,
        is_k_reset => d
    );

Q      <= Q_internal when enable = '1' else '0'; 
Q_not  <= Q_not_internal when enable = '1' else '0'; 

is_enabled <= enable; 

end Behavioral;