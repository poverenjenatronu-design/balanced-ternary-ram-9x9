C-CORE - Private Logic Module for Basys 3 [Research Edition] - UPDATE 2.0
======================================================================
Link: 6318682165690.gumroad.com/l/c-core-basys3-research

UPDATE 2.0 - Native Ternary RAM 9x9
- 81 trits = 9x9 matrix
- Only 18 LUTs on Artix-7 xc7a35t (<0.02%)
- Encoding: 00 = -1 (BLACK), 01 = 0 (GRAY), 10 = 1 (WHITE)
- No binary emulation, native 3 states

FILES:
1. ternary_ram_9x9.vhd - 9 address x 18 bits (9 trits per row)
2. vga_ternary_9x9.vhd - VGA 640x480, 40px per trit
3. top_ternary_demo3.vhd - Top that connects RAM + VGA
4. WEB_DEMO.html - Interactive demo, works without Basys 3 board

HOW TO USE WITHOUT VIVADO:
Open WEB_DEMO.html in browser -> click squares to change -1/0/1 -> click Export VHDL

HOW TO USE WITH VIVADO:
Add all 3 .vhd files to Vivado project for Basys 3, set top_ternary_demo3 as top

BOARD: Basys 3 xc7a35tcpg236-1

GitHub (free RAM): github.com/your-username/balanced-ternary-ram-9x9
Full CPU+RAM integration is in this paid package.

License: Research / Non-commercial
