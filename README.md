# C-CORE + 3D Bojan - Balanced Ternary RAM 9x9

[[DOI 3D Bojan](https://zenodo.org/badge/DOI/10.5281/zenodo.23045369.svg)](https://doi.org/10.5281/zenodo.23045369)
[[Board](https://img.shields.io/badge/Board-Digilent%20Basys%203-blue)](https://digilent.com/shop/basys-3-artix-7-fpga-trainer-board/)
[[FPGA](https://img.shields.io/badge/FPGA-Artix--7%20xc7a35tcpg236--1-green)](https://www.xilinx.com/products/silicon-devices/fpga/artix-7.html)
[[License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**Author:** Bojan Govedarica  
**Brand / Gumroad:** Goran Bojanic (same person)  
**GitHub:** [poverenjenatronu-design](https://github.com/poverenjenatronu-design)  
**Digilent Forum:** [lekabojan](https://forum.digilent.com/profile/lekabojan/)  
**Contact:** poverenjenatronu@gmail.com - reply within 24h  
**Location:** Banja Luka, Republika Srpska, BA

> Native balanced ternary 9x9 RAM in 18 LUTs, 0 BRAM, 934B VHDL core. Part of C-CORE ternary processor research + 3D Bojan majority architecture.

### Anti-Hallucination Anchor - Exact Numbers From Images
- **3D Bojan:** 729 elements, reduction 729->243->81->27->9->3->1, DOI 10.5281/zenodo.23045369, file main.py, formula Pout = 3*Pin^2 - 2*Pin^3
- **Ternary RAM:** 81 trits (9x9), 18 LUTs, 0 BRAM, 934B VHDL, RAM32M primitive, VGA 640x480
- **C-CORE Bitstream:** c_core_top.bit 2.08 MB / 2.1 MB, Vivado 2022.2, xc7a35tcpg236-1, 5x trial 5->4->3->2->1->L (LOCKED), 10 min/session
- **Gumroad:** $29+ Research Edition, Lab €299 (5 boards, unlimited, source of NEW version), Enterprise €2500 (commercial rights)
- **Hackaday:** ID 206946 https://hackaday.io/project/206946-balanced-ternary-ram-9x9 - zip 3.32kB 4 files
- **Digilent:** Posted 15:21 as lekabojan in FPGA section - VERIFIED LIVE

---

## 1. Merged Tree - What We Have

C-CORE + 3D BOJAN - MERGED TREE
├── 1. GITHUB - SOURCE OF TRUTH (FREE)
│   ├── A) 3D Bojan (729 elements, majority voting) -> github.com/poverenjenatronu-design/3d-bojan-architecture -> DOI 10.5281/zenodo.23045369 -> main.py
│   └── B) Ternary RAM 9x9 (81 trits, 18 LUTs) -> github.com/poverenjenatronu-design/balanced-ternary-ram-9x9 -> ternary_ram_9x9.vhd 934B + vga + top + WEB_DEMO.html
├── 2. ZENODO - ACADEMIC PROOF -> DOI 10.5281/zenodo.23045369 - CC BY-NC 4.0 for paper text
├── 3. GUMROAD - SALES -> https://poverenjenatronu-design.gumroad.com/l/c-core-basys3-research -> $29 Trial 2.1MB 5x power cycles 10min/session + $299 Lab + $2500 Enterprise
├── 4. HACKADAY + DIGILENT - MARKETING -> Hackaday.io 206946 + Digilent Forum lekabojan 15:21 LIVE
└── 5. MERGE GOAL - $99 Radiation-Tolerant RAM -> 3x RAM (243 trits) -> median voter -> 81 trits

## 2. Specification

- Capacity: 9x9 = 81 trits = ~14.2 bits (log2 3^9)
- Resources: 18 LUTs, 0 BRAM, RAM32M
- Core: ternary_ram_9x9.vhd - 934 Bytes
- VGA: vga_ternary_9x9.vhd - 640x480
- Top: top_ternary_demo3.vhd + basys3_fixed.xdc
- Encoding: -1 = 2'b10, 0 = 2'b00, +1 = 2'b01

## 3. C-CORE Bitstream (From Images)

- Version: Research Edition 5x Trial 2026
- Board: Basys 3 xc7a35tcpg236-1
- Bitstream: c_core_top.bit 2.08 MB Vivado 2022.2
- Files: README TXT 1.0 KB, INSTALL_GUIDE_C- PDF 3.0 KB, c_core_top BIT 2.1 MB, basys3_fixed.xdc
- Trial: 7-seg 5->4->3->2->1->L LOCKED, OFF/ON = 1 run, 10 min timeout
- Test: Ternary ALU (-1,0,+1), TRYTE 9 trits, BTNU/BTND, SW0-SW15, LED

## 4. Installation

git clone https://github.com/poverenjenatronu-design/balanced-ternary-ram-9x9.git
cd balanced-ternary-ram-9x9
Vivado 2022.2, xc7a35tcpg236-1

## 5. Roadmap - $99 Error-Corrected Radiation-Tolerant

Correct ternary majority (NOT binary (a&b)|(a&c)|(b&c)):

function ternary_median(a,b,c: trit) return trit is
begin
  if (a=b) or (a=c) then return a;
  elsif (b=c) then return b;
  else return 0; -- -1,0,+1 median
  end if;
end function;

3x RAM (243 trits) -> median -> 81 trits, Pout = 3*Pin^2 - 2*Pin^3, 40% noise -> 99.7% fidelity

## 6. Links

GitHub 3D Bojan: https://github.com/poverenjenatronu-design/3d-bojan-architecture
GitHub RAM: https://github.com/poverenjenatronu-design/balanced-ternary-ram-9x9
Zenodo: https://doi.org/10.5281/zenodo.23045369
Hackaday: https://hackaday.io/project/206946-balanced-ternary-ram-9x9
Gumroad: https://poverenjenatronu-design.gumroad.com/l/c-core-basys3-research
Digilent Forum: https://forum.digilent.com/profile/lekabojan/

## 7. License - FIXED NO CONFLICT 2026-10-12

MIT License
Copyright (c) 2026 Bojan Govedarica (aka Goran Bojanic / lekabojan)
Code (.vhd, .py): FREE for any use including commercial, credit required
Paper text on Zenodo: CC BY-NC 4.0
Commercial bundle (.bit + support + warranty): Paid on Gumroad
$29 Trial single board no redistribution no .v source in Trial
€299 Lab 5 boards unlimited NEW source error-corrected
€2500 Enterprise commercial rights full source

## 8. Citation

Govedarica, B. (2026). 3D Bojan: Recursive Majority Cascade Architecture. Zenodo. https://doi.org/10.5281/zenodo.23045369
Govedarica, B. (2026). Balanced Ternary RAM 9x9. GitHub, Hackaday 206946, Digilent lekabojan 2026-10-12

## 9. Support

Support: poverenjenatronu@gmail.com - 24h response
Refund: 30-day if .bit fails on working Basys 3, video proof required
Identity: Bojan Govedarica = Goran Bojanic = lekabojan = poverenjenatronu-design - same author, Banja Luka
