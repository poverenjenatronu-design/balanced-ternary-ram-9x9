# COMMERCIAL LICENSE - C-CORE / 3D Bojan / Ternary RAM 9x9

Copyright (c) 2026 Bojan Govedarica (aka Goran Bojanic / lekabojan - poverenjenatronu-design)
Location: Banja Luka, Republika Srpska, BA
Contact: poverenjenatronu@gmail.com

## 1. Owner Rights Statement

I am the sole copyright holder of:
- 3D Bojan architecture (729 elements, DOI 10.5281/zenodo.23045369, main.py, Pout=3*Pin^2-2*Pin^3)
- Balanced Ternary RAM 9x9 (81 trits, 18 LUTs, 0 BRAM, 934B VHDL RAM32M)
- C-CORE bitstream c_core_top.bit 2.08/2.1 MB Vivado 2022.2 xc7a35tcpg236-1

Zenodo DOI is CC BY-NC 4.0 FOR OTHERS. As owner, I retain right to offer commercial licenses.
GitHub source code (.vhd, .py, .html) is MIT - free for all including commercial with attribution.
This file covers ONLY paid bitstream and commercial use rights.

## 2. Single Sales Channel - No Conflict

Official store: https://poverenjenatronu-design.gumroad.com/l/c-core-basys3-research
Old domains (90.gumroad.com / 6318682165690.gumroad.com) are unpublished / redirected.
No LemonSqueezy, no other store - single source of truth to avoid conflict of interest.

## 3. Product Editions

### A) Research Edition - $29+ Trial
- File: c_core_top.bit 2.1 MB + basys3_fixed.xdc + README TXT 1.0KB + INSTALL_GUIDE_C- PDF 3.0KB
- Board: Digilent Basys 3 (Artix-7 xc7a35tcpg236-1)
- Limitation: 5x Trial - 7-seg counter 5->4->3->2->1->L (LOCKED), Each OFF/ON = 1 run consumed
- Timeout: 10 min / session (10.2 min max)
- What you can test: Ternary ALU (-1,0,+1), TRYTE 9 trits = 14.2 bits, BTNU/BTND test modes, SW0-SW15 input, LED verify, VGA 640x480
- License: Single board, research/education only, No redistribution, No source .v files in Trial, No commercial deployment

### B) Lab Edition - €299
- Unlimited runs, 5 boards, no timeout
- Source included for NEW version (v2.0 Error-Corrected)
- Commercial prototype allowed, no resale of bitstream
- Upgrade from Research: pay difference

### C) Enterprise Edition - €2500
- Commercial rights, full source, unlimited boards
- Redistribution allowed in your product with attribution
- Priority support, custom builds

### D) Future: Radiation-Tolerant RAM - $99
- Architecture: 3x RAM 9x9 (243 trits) -> majority voter maj(a,b,c)=(a&b)|(a&c)|(b&c) -> 81 trits
- Function: ternary_median(a,b,c) - if a=b or a=c return a; elsif b=c return b; else return 0
- Resilience: 40% noise -> 99.7% fidelity via Pout = 3*Pin^2 - 2*Pin^3
- Use: Space, avionics, IoT
- Includes both DOIs as proof + commercial license

## 4. Restrictions

- Trial .bit may not be copied, shared, resold, or uploaded to other sites
- No reverse engineering of .bit to recover .v source (Lab/Enterprise get source legally)
- CC BY-NC paper text from Zenodo may not be included in commercial bundle (only link to DOI)

## 5. Support & Refund

Support: poverenjenatronu@gmail.com - reply within 24h
Refund: 30-day refund if .bit fails on working Basys 3. Video proof required showing board works with factory demo but not with C-CORE.
Tags: FPGA, Basys 3, ternary logic, Artix-7, Vivado, balanced ternary, processor, research

## 6. Identity - No Conflict of Interest

Bojan Govedarica = Goran Bojanic (Gumroad brand) = lekabojan (Digilent) = poverenjenatronu-design (GitHub) = same person.
Banja Luka, Republika Srpska, BA.
