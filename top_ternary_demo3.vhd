library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_ternary_demo3 is
    Port ( clk_100mhz : in  STD_LOGIC;
           btn_reset  : in  STD_LOGIC;
           sw_we      : in  STD_LOGIC;
           sw_addr    : in  STD_LOGIC_VECTOR(3 downto 0);
           sw_data    : in  STD_LOGIC_VECTOR(17 downto 0);
           vga_hs     : out STD_LOGIC;
           vga_vs     : out STD_LOGIC;
           vga_rgb    : out STD_LOGIC_VECTOR(11 downto 0));
end top_ternary_demo3;

architecture Behavioral of top_ternary_demo3 is
    signal ram_dout : STD_LOGIC_VECTOR(17 downto 0);
    signal ram_addr_vga : STD_LOGIC_VECTOR(3 downto 0);
    signal ram_addr_mux : STD_LOGIC_VECTOR(3 downto 0);
begin
    -- Mux between CPU write and VGA read
    ram_addr_mux <= sw_addr when sw_we='1' else ram_addr_vga;

    U_RAM: entity work.ternary_ram_9x9
        port map ( clk=>clk_100mhz, we=>sw_we, addr=>ram_addr_mux, din=>sw_data, dout=>ram_dout);

    U_VGA: entity work.vga_ternary_9x9
        port map ( clk_100mhz=>clk_100mhz, reset=>btn_reset, ram_data=>ram_dout,
                   ram_addr=>ram_addr_vga, vga_hs=>vga_hs, vga_vs=>vga_vs, vga_rgb=>vga_rgb);
end Behavioral;
