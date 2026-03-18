library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end MUX2;

architecture Behavioral of MUX2 is
begin
    Y <= A when S = '0' else B;
end Behavioral;
