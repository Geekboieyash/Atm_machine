library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.MATH_REAL.ALL;

entity ATM is
    Port (
        key : in integer; -- User's choice
        O   : out integer
    );
end ATM;

architecture Behavioral of ATM is
    signal AB   : integer := 40000; -- Account Balance
    signal X    : integer := 4000;  -- Amount to be deducted/withdrawn
    signal PIN1 : integer := 1234;  -- ATM PIN

begin
    process (key)
    begin
        if (key = 1) then
            O <= AB + X; -- To deposit money
        elsif (key = 2) then
            if (X > AB) then
                O <= AB; -- If amount to be withdrawn is greater than Account balance
            else
                AB <= AB - X; -- Updated account balance
                O <= X; -- Output is Amount to be withdrawn
            end if;
        elsif (key = 3) then
            O <= AB; -- To check Account Balance
        elsif (key = 4) then
            O <= PIN1; -- To change PIN
        end if;
    end process;

end Behavioral;
