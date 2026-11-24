# Three-replica matrix sewing / odd-sector checks

Exact principal SO(3) lift signs for all 16 sectors:
- r=(0, 0, 0), s=(0, 0, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True
- r=(0, 0, 0), s=(0, 1, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True
- r=(0, 0, 0), s=(1, 0, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True
- r=(0, 0, 0), s=(1, 1, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True
- r=(0, 1, 1), s=(0, 0, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True
- r=(0, 1, 1), s=(0, 1, 0): lift=(Fraction(-1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=-1, PASS=True
- r=(0, 1, 1), s=(1, 0, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True
- r=(0, 1, 1), s=(1, 1, 0): lift=(Fraction(-1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=-1, PASS=True
- r=(1, 0, 1), s=(0, 0, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True
- r=(1, 0, 1), s=(0, 1, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True
- r=(1, 0, 1), s=(1, 0, 0): lift=(Fraction(-1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=-1, PASS=True
- r=(1, 0, 1), s=(1, 1, 0): lift=(Fraction(-1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=-1, PASS=True
- r=(1, 1, 0), s=(0, 0, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True
- r=(1, 1, 0), s=(0, 1, 0): lift=(Fraction(-1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=-1, PASS=True
- r=(1, 1, 0), s=(1, 0, 0): lift=(Fraction(-1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=-1, PASS=True
- r=(1, 1, 0), s=(1, 1, 0): lift=(Fraction(1, 1), Fraction(0, 1), Fraction(0, 1), Fraction(0, 1)), Arf=1, PASS=True

Finite-Ising gauge: H Q H* = Fourier P_N (N=8)
- max residual = 1.0547e-15

Numerical singular values / determinant ratios (double precision):
| interval fraction | N | |e|/a | d/a | s1(e) | s2(e) | s3(e) | spectral trace distance | (|e|/a)/s1 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| 0.125 | 16 | 0.4215529653 | 0.548670667 | 0.28332492 | 0.28332492 | 0.66397383 | 1.6270185 | 1.4878782 |
| 0.125 | 32 | 0.3486857382 | 0.5300119259 | 0.2176486 | 0.2176486 | 0.63977066 | 1.6338892 | 1.6020583 |
| 0.125 | 64 | 0.284308954 | 0.5174601022 | 0.16848803 | 0.16848803 | 0.62081283 | 1.6350855 | 1.6874134 |
| 0.125 | 128 | 0.2295787296 | 0.5091182358 | 0.13130036 | 0.13130036 | 0.60564859 | 1.6434398 | 1.7485004 |
| 0.125 | 256 | 0.184222052 | 0.5036628029 | 0.10284646 | 0.10284646 | 0.5933124 | 1.6676917 | 1.7912337 |
| 0.25 | 16 | 0.4567833338 | 0.6327661235 | 0.26647258 | 0.26647258 | 0.69077463 | 1.3863632 | 1.7141851 |
| 0.25 | 32 | 0.3749709109 | 0.6138052561 | 0.2048318 | 0.2048318 | 0.66283979 | 1.4293065 | 1.8306284 |
| 0.25 | 64 | 0.304114912 | 0.600994689 | 0.15876341 | 0.15876341 | 0.64073231 | 1.4480057 | 1.9155227 |
| 0.25 | 128 | 0.2447168369 | 0.5925311787 | 0.12386435 | 0.12386435 | 0.62297668 | 1.4560793 | 1.9756841 |
| 0.25 | 256 | 0.1959312002 | 0.5870311308 | 0.097110335 | 0.097110335 | 0.60850293 | 1.4573522 | 2.0176143 |

PASS: exact lift signs, finite gauge, reference gap, paired low singular values.
Not proved by this program: Hardy kernel existence, asymptotic powers, or d/a convergence.
