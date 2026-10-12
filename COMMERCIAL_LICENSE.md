# COMMERCIAL LICENSE - C-CORE + 3D Bojan

## Copyright
Copyright (c) 2026 Bojan Govedarica / Goran Bojanic (Gumroad)
Banja Luka, Republika Srpska, BA
Contact: poverenjenatronu@gmail.com

## Dual-DOI Protection
- DOI 1 (729 trits): 10.5281/zenodo.23045369 - 3D Bojan Error-Corrected Architecture
  Formula: Pout = 3*Pin^2 - 2*Pin^3, 40% -> 99.7% fidelity
  Link: https://doi.org/10.5281/zenodo.23045369
  OpenAIRE: https://explore.openaire.eu/search/publication?pid=10.5281/zenodo.23045369

- DOI 2 (81 trits): 10.5281/zenodo.23324784 - Balanced Ternary RAM 9x9
  Spec: 81 trits, 18 LUTs, 0 BRAM, 934B VHDL, RAM32M, VGA 640x480, Basys 3
  Link: https://doi.org/10.5281/zenodo.23324784

Both archived under CC BY-NC 4.0 on Zenodo - Open Access, Indexed in EU.

## GitHub Source (Research Free)
- https://github.com/poverenjenatronu-design/3d-bojan-architecture
- https://github.com/poverenjenatronu-design/balanced-ternary-ram-9x9
- License: MIT for Research/Personal only (see LICENSE file)

## Commercial License Required

### What is Commercial Use?
Any use for commercial advantage or monetary compensation, including:
- Products containing this IP
- Services using this IP
- Space, avionics, medical, IoT devices
- Selling bitstreams, boards, or systems with this core
- Using in commercial FPGA designs

### Pricing

#### 1. Research Dual-DOI Edition - $99 / €99
- For: Researchers, students, personal evaluation
- Includes:
    - Dual-DOI PDF documentation with citations
    - Python simulation: triple_ram_sim.py (no Basys needed)
    - WEB_DEMO_TRIPLE.html (browser demo, no Vivado/Board needed)
    - VHDL source: ternary_ram_9x9.vhd (934B CORE) + vga + top
    - Bitstream 2.1 MB for Basys 3 (xc7a35tcpg236-1)
    - License: Single user, research/education, citable with DOIs
- Buy: https://6318682165690.gumroad.com/l/c-core-basys3-research
- Citable as: Govedarica (2026) Zenodo 23045369 + 23324784

#### 2. Lab Edition - €299
- For: University labs, 5 boards, unlimited runs
- Includes everything from $99 plus:
    - Unlimited power cycles (no 5->L lock)
    - No 10 min timeout
    - VHDL source for triple voter: 3x RAM + majority voter (54 LUTs)
    - Right to use on up to 5 Basys 3 boards in one lab
    - Lab documentation
- Buy: https://poverenje-na-tronu.lemonsqueezy.com or email

#### 3. Enterprise Edition - €2500
- For: Commercial products, space, avionics, medical, IoT
- Includes everything from Lab plus:
    - Full commercial rights to integrate into products
    - Full source code for C-CORE + 3D Bojan + RAM 9x9
    - Commercial redistribution rights
    - 1 hour Zoom support + 30 days email support
    - Customization for your board (not only Basys 3)
    - Priority bug fixes
- Contact: poverenjenatronu@gmail.com for invoice
- Price is starting price, final depends on application

## How to Buy

1. Gumroad (Research $99): https://6318682165690.gumroad.com/l/c-core-basys3-research
2. LemonSqueezy (Lab/Enterprise): https://poverenje-na-tronu.lemonsqueezy.com
3. Direct: poverenjenatronu@gmail.com - reply within 24h, 30-day refund if .bit doesn't work on correct Basys 3 with video proof

## Anti-Hallucination Anchor (Verified 2026-10-12)

- 3D Bojan = 729 elements, 6 levels 729->243->81->27->9->3->1, majority(a,b,c)=(a&b)|(a&c)|(b&c)
- Ternary RAM = 81 trits 9x9, 18 LUTs, 0 BRAM, 0 DSP, 934B VHDL, RAM32M, VGA 640x480
- Bitstream = 2.08 MB / 2.1 MB, Vivado 2022.2, xc7a35tcpg236-1, 5x trial 5->4->3->2->1->L, 10 min timeout
- Gumroad Author = Goran Bojanic (G) = Bojan Govedarica same person, €299 Lab, €2500 Enterprise
- GitHub = poverenjenatronu-design, 2 repos, MIT for research + CC BY-NC 4.0 on Zenodo
- Zenodo = 23045369 + 23324784 = Dual-DOI, Indexed in OpenAIRE EU
- Board: Digilent Basys 3, Ternary ALU (-1,0,+1), TRYTE 9 trits=14.2 bits

## License Compatibility Statement

- GitHub MIT (research/personal) + Zenodo CC BY-NC 4.0 are COMPATIBLE for non-commercial use
- Both allow free research, education, personal use with attribution
- Both PROHIBIT commercial use without paid license
- No conflict: CC BY-NC 4.0 on Zenodo covers the archived report/documentation
- MIT on GitHub covers code for research/personal
- Commercial use always requires COMMERCIAL_LICENSE.md

For questions: poverenjenatronu@gmail.com
Location: Banja Luka, Republika Srpska, BA
