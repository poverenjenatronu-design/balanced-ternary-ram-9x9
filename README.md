# 3D Bojan: Recursive Majority Cascade Architecture

Monte Carlo simulation for the 3D Bojan 729-element architecture.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23045369.svg)](https://doi.org/10.5281/zenodo.23045369)

**Author:** Bojan Govedarica  
**Brand / Gumroad:** Goran Bojanic (same person)  
**Contact:** poverenjenatronu@gmail.com  
**Location:** Banja Luka, Republika Srpska, BA  
**Used in C-CORE:** https://6318682165690.gumroad.com/l/c-core-basys3-research

## ⚠️ LICENSING - FIXED v2.7

**Research License v2.7 NON-COMMERCIAL**

* **Research / Personal use:** FREE
* **GitHub:** Research Non-Commercial v2.7 - see `LICENSE` file
* **Zenodo:** CC BY-NC 4.0 International (v2+) - `10.5281/zenodo.23045369`
* **Note:** Zenodo v1 was MIT License (1 download before change), v2+ is CC BY-NC 4.0
* **Commercial use:** REQUIRES separate Commercial License

**Buy Commercial License:** https://poverenje-na-tronu.lemonsqueezy.com
See `COMMERCIAL_LICENSE.md` for details.

**GitHub License Detection:** Other (NOASSERTION) is intentional - custom non-commercial license, not standard MIT.

## 💰 Buy $99 Research Dual-DOI Edition

**Gumroad:** https://6318682165690.gumroad.com/l/ebwjxl - LICENSE FIXED v2.7 - OpenAIRE Indexed!
Dual-DOI: 23045369 + 23324784 | Includes triple_ram.py v2.7

## Binary vs Ternary - Clarification FINAL v2.7

This repo is **BINARY ONLY (0 and 1)** - not ternary.

* **Domain:** Binary 0/1 for error correction
* **Structure:** 729 = 3^6 binary bits, cascade 729->243->81->27->9->3->1 (6 levels)
* **Majority:** M(b1,b2,b3)=1 if b1+b2+b3>=2 else 0 = (a&b)|(a&c)|(b&c)
* **Formula:** Pout = 3*Pin^2 - 2*Pin^3
* **Fidelity:** 10-30% noise -> 100%, 40% -> 99.7%, 45% -> 85-93% (critical), 50% -> 50%
* **Purpose:** voting layer that protects ternary storage

**Companion Repo:** https://github.com/poverenjenatronu-design/balanced-ternary-ram-9x9 - DOI: 10.5281/zenodo.23324784 - TERNARY 81 trits, 18 LUTs, 0 BRAM

**CORRECT ARCHITECTURE v2.7:**
* STORAGE (TERNARY): -1,0,+1 encoded as 00=-1 BLACK 01=0 GRAY 10=1 WHITE - 81 trits 9x9
* PROTECTION (BINARY): 729 binary elements - majority_binary = (a&b)|(a&c)|(b&c)
* TERNARY VOTER: majority_ternary(a,b,c)=a if a==b or a==c else b - NOT (a&b)|(a&c)|(b&c)
* C-CORE v2.7: 3x RAM 9x9 (243 trits) -> ENCODE 00/01/10 -> 486 BINARY bits -> 2x binary majority -> DECODE -> 81 trits

### Anti-Hallucination Anchor

* 729 elements, reduction 729->243->81->27->9->3->1, 6 nivoa
* Formula: `majority(a,b,c) = (a & b) | (a & c) | (b & c)` and `Pout = 3*Pin^2 - 2*Pin^3`
* Fidelity: 10-30% šuma -> 100%, 40% -> ~99.7-99.9%, 45% -> ~85-93% (critical), 50% -> ~50%
* File: main.py, DOI: 10.5281/zenodo.23045369
* Part of C-CORE + Balanced Ternary RAM 9x9 (81 trits, 18 LUTs, 0 BRAM)

## Code

```python
def majority(a, b, c):
    return (a & b) | (a & c) | (b & c)

def bojan_3d_729(signal_729):
    assert len(signal_729) == 729
    # 6 nivoa: 729 -> 243 -> 81 -> 27 -> 9 -> 3 -> 1
