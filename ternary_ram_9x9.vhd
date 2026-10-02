library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ternary_ram_9x9 is
    Port ( clk  : in  STD_LOGIC;
           we   : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR(3 downto 0);
           din  : in  STD_LOGIC_VECTOR(17 downto 0);
           dout : out STD_LOGIC_VECTOR(17 downto 0));
end ternary_ram_9x9;

architecture Behavioral of ternary_ram_9x9 is
    type ram_type is array (0 to 8) of STD_LOGIC_VECTOR(17 downto 0);
    signal RAM : ram_type := (others => (others => '0'));
    -- Encoding: 00=-1, 01=0, 10=1
    -- 9 trits = 18 bits per address, 9 addresses = 81 trits total
    -- ~18 LUTs on Artix-7 xc7a35t (<0.02%)
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if we='1' then
                RAM(to_integer(unsigned(addr))) <= din;
            end if;
            dout <= RAM(to_integer(unsigned(addr)));
        end if;
    end process;
end Behavioral;
