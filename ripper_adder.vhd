library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Adder is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end Ripple_Adder;

architecture Structural of Ripple_Adder is

    component Full_Adder
        Port ( A, B, Cin : in STD_LOGIC;
               Sum, Cout : out STD_LOGIC);
    end component;

    signal C1, C2, C3 : STD_LOGIC;

begin
    FA0: Full_Adder port map(A(0), B(0), Cin, Sum(0), C1);
    FA1: Full_Adder port map(A(1), B(1), C1, Sum(1), C2);
    FA2: Full_Adder port map(A(2), B(2), C2, Sum(2), C3);
    FA3: Full_Adder port map(A(3), B(3), C3, Sum(3), Cout);

end Structural;
