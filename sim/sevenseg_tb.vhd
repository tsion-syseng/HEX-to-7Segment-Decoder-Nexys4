library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity sevenseg_tb is
-- Testbench has no ports
end sevenseg_tb;
 
architecture Behavioral of sevenseg_tb is
 
    -- Inputs to the UUT (Unit Under Test)
    signal bcd    : std_logic_vector(3 downto 0) := (others => '0');
 
    -- Outputs from the UUT
    signal sevseg : std_logic_vector(6 downto 0);
    signal EN     : std_logic_vector(7 downto 0);
 
begin
 
    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.sevenseg
        port map (
            bcd    => bcd,
            sevseg => sevseg,
            EN     => EN
        );
 
    -- Stimulus process
    stim_proc: process
    begin
        -- Hold reset state for 100 ns (if applicable)
        wait for 100 ns;
 
        -- Apply test vectors with 20 ns delay between each
        bcd <= "0000"; wait for 20 ns;
        bcd <= "0001"; wait for 20 ns;
        bcd <= "0010"; wait for 20 ns;
        bcd <= "0011"; wait for 20 ns;
        bcd <= "0100"; wait for 20 ns;
        bcd <= "0101"; wait for 20 ns;
        bcd <= "0110"; wait for 20 ns;
        bcd <= "0111"; wait for 20 ns;
        bcd <= "1000"; wait for 20 ns;
        bcd <= "1001"; wait for 20 ns;
 
        -- Optionally repeat or stop simulation
        wait;  -- wait forever to stop simulation
    end process;
 
end Behavioral;
