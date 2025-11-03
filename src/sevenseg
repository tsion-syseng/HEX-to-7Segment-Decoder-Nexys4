library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 

entity sevenseg is
  port (
    bcd: in std_logic_vector (3 downto 0);
    sevseg: out std_logic_vector (6 downto 0);
    EN: out std_logic_vector(7 downto 0)
  );
end sevenseg;

 

architecture structure of sevenseg is
  signal leds: std_logic_vector (6 downto 0); -- segment signals
begin

 

  -- | a | b | c | d | e | f | g |
  -- |leds6|leds5|leds4|leds3|leds2|leds1|leds0|

 

  with bcd select
    leds <= "1111110" when "0000",  -- 0
            "0110000" when "0001",  -- 1
            "1101101" when "0010",  -- 2
            "1111001" when "0011",  -- 3
            "0110011" when "0100",  -- 4
            "1011011" when "0101",  -- 5
            "1011111" when "0110",  -- 6
            "1110000" when "0111",  -- 7
            "1111111" when "1000",  -- 8
            "1111011" when "1001",  -- 9
            "1110111" when "1010",  -- A
            "0011111" when "1011",  -- b
            "1001110" when "1100",  -- C
            "0111101" when "1101",  -- d
            "1001111" when "1110",  -- E
            "1000111" when "1111",  -- F
            (others => '0') when others; -- default off

 

  -- Enable only the last 7-seg display (active low)
 EN <= "11111110" when bcd = "0000" or bcd = "0010" or bcd = "0100" or bcd = "0110" or bcd = "1000" or bcd = "1010" or bcd = "1100" or bcd = "1110" else "11111101";
 
  -- Invert segments if your 7-seg is common anode or cathode accordingly
  sevseg <= not leds;

end structure;
