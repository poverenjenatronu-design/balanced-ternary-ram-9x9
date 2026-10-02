library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vga_ternary_9x9 is
    Port ( clk_100mhz : in  STD_LOGIC;
           reset      : in  STD_LOGIC;
           ram_data   : in  STD_LOGIC_VECTOR(17 downto 0);
           ram_addr   : out STD_LOGIC_VECTOR(3 downto 0);
           vga_hs     : out STD_LOGIC;
           vga_vs     : out STD_LOGIC;
           vga_rgb    : out STD_LOGIC_VECTOR(11 downto 0));
end vga_ternary_9x9;

architecture Behavioral of vga_ternary_9x9 is
    signal clk_25mhz : STD_LOGIC := '0';
    signal clk_div : integer := 0;
    signal h_count : integer range 0 to 799 := 0;
    signal v_count : integer range 0 to 524 := 0;
    -- 640x480 @ 60Hz, each trit = 40x40 pixels
begin
    -- 100MHz -> 25MHz
    process(clk_100mhz)
    begin
        if rising_edge(clk_100mhz) then
            if clk_div = 1 then
                clk_div <= 0;
                clk_25mhz <= not clk_25mhz;
            else
                clk_div <= clk_div + 1;
            end if;
        end if;
    end process;

    process(clk_25mhz)
        variable trit_idx : integer;
        variable trit_val : STD_LOGIC_VECTOR(1 downto 0);
    begin
        if rising_edge(clk_25mhz) then
            -- VGA timing
            if h_count = 799 then
                h_count <= 0;
                if v_count = 524 then
                    v_count <= 0;
                else
                    v_count <= v_count + 1;
                end if;
            else
                h_count <= h_count + 1;
            end if;
            
            -- Sync signals
            if h_count < 96 then
                vga_hs <= '0';
            else
                vga_hs <= '1';
            end if;
            
            if v_count < 2 then
                vga_vs <= '0';
            else
                vga_vs <= '1';
            end if;
            
            -- Display logic 9x9 grid
            if h_count >= 144 and h_count < 504 and v_count >= 35 and v_count < 395 then
                trit_idx := ((h_count-144)/40) * 2; -- simplified index calc
                -- 00=black(-1), 01=gray(0), 10=white(1)
                if ram_data(trit_idx+1 downto trit_idx) = "00" then
                    vga_rgb <= x"000"; -- black -1
                elsif ram_data(trit_idx+1 downto trit_idx) = "01" then
                    vga_rgb <= x"888"; -- gray 0
                else
                    vga_rgb <= x"FFF"; -- white +1
                end if;
            else
                vga_rgb <= x"000";
            end if;
        end if;
    end process;
    
    ram_addr <= std_logic_vector(to_unsigned(v_count / 40, 4)) when v_count >= 35 and v_count < 395 else "0000";
end Behavioral;
