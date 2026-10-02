# Ternary RAM 9x9 - Balanced Ternary (81 trits, 18 LUTs) - V2.0

UPDATE 2.0 - Added WEB_DEMO that works WITHOUT board.

The most LUT-efficient balanced ternary RAM on FPGA. Real ternary logic (-1, 0, +1) = 81 trits per 9x9 block, only 18 LUTs on Artix-7.

1 TRYTE = 9 trits ≈ 14.2 bits. No binary simulation.

## FILES (FREE)
- `ternary_ram_9x9.vhd` - core RAM (934 bytes)
- `vga_ternary_9x9.vhd` - VGA driver for ternary display
- `top_ternary_demo3.vhd` - top wrapper for Basys 3
- `WEB_DEMO.html` - try it in browser, NO BOARD NEEDED
- `README.md`

## WEB DEMO
Open `WEB_DEMO.html` in any browser. No Vivado, no Basys 3 required.

## HOW TO USE ON BASYS 3
1. Vivado 2022.2 -> Create Project -> Basys 3 (xc7a35tcpg236-1)
2. Add all .vhd + basys3_fixed.xdc (from release)
3. Synthesize -> Implement -> Generate Bitstream -> Program

## SPECS
81 trits, 18 LUTs, 0 BRAM. Tested on Digilent Basys 3.

## FULL PROCESSOR
Want full C-CORE ternary CPU? Research Trial $29 on Gumroad:
https://6318682165690.gumroad.com/l/c-core-basys3-research


Contact: poverenjenatronu@gmail.com