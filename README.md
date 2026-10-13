[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23324784.svg)](https://doi.org/10.5281/zenodo.23324784)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23045369.svg)](https://doi.org/10.5281/zenodo.23045369)

# C-CORE + 3D Bojan - Balanced Ternary RAM 9x9

Radiation-tolerant 81-trit balanced ternary RAM (9x9) - 18 LUTs, 0 BRAM on Basys 3. Dual-DOI protected.

Used in C-CORE product: https://6318682165690.gumroad.com/l/c-core-basys3-research

**Board:** Digilent Basys 3
**FPGA:** Artix-7 xc7a35tcpg236-1
**License:** 【entity-MIT¦canonical_name=MIT】 (Research/Personal) + CC BY-NC 4.0 (Zenodo) - Commercial requires license - see COMMERCIAL_LICENSE.md
**Language:** VHDL / Verilog

### Dual-DOI Protection
- **DOI 1 (729 trits):** 10.5281/zenodo.23045369 - 3D Bojan Error-Corrected Architecture Pout=3*Pin^2-2*Pin^3
- **DOI 2 (81 trits):** 10.5281/zenodo.23324784 - Balanced Ternary RAM 9x9
## Binary vs Ternary - How C-CORE Works

**Storage (Ternary):** -1,0,+1 encoded as 00=-1 BLACK 01=0 GRAY 10=1 WHITE (11 unused)
- 81 trits 9x9 = 162 bits, 18 LUTs 0 BRAM, RAM32M, Basys 3 xc7a35tcpg236-1
- Files: ternary_ram_9x9.vhd 934B CORE + vga 2.7KB + top 1.16KB

**Protection (Binary):** from 3D Bojan repo
- Binary voter: (a&b)|(a&c)|(b&c)
- Ternary voter: majority_ternary(a,b,c) = a if a==b or a==c else b

**C-CORE v2.7 Architecture:**
3x RAM 9x9 (243 trits) -> ENCODE to 486 bits -> 2x binary majority per bit -> DECODE -> 81 trits
40% noise -> 99.7% via Pout=3Pin^2-2Pin^3

Dual-DOI: 23045369 + 23324784 - OpenAIRE Indexed
### Features
- 81 trits storage (9x9 matrix)
- 18 LUTs only, 0 BRAM, 0 DSP
- 3x81 majority voter
- 40% -> 99.7% fidelity (3D Bojan formula)
- Radiation-tolerant, suitable for space / medical

## 💰 Buy $99 Research Dual-DOI Edition
**Gumroad:** https://6318682165690.gumroad.com/l/ebwjxl - LICENSE FIXED v2.3 - OpenAIRE Indexed!

### Author
**Author:** Bojan Govedarica
**Brand / Gumroad:** Goran Bojanic (same person)
**GitHub:** poverenjenatronu-design
**Digilent Forum:** lekabojan
**Contact:** poverenjenatronu@gmail.com - reply within 24h
**Location:** Banja Luka, Republika Srpska, BA

### Files
- `src/` - VHDL source
- `bitstream/` - 2.1 MB bitstream for Basys 3
- `doc/` - 10-page documentation with both DOIs
