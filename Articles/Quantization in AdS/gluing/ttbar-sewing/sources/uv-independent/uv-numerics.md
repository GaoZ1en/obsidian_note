# Finite numerical checks

Exact character coefficients: c=1/2, diagonal bosonic Ising Hilbert space.

| n | a_0/asymptotic | a_epsilon/asymptotic | a_sigma/asymptotic |
|---:|---:|---:|---:|
| 100 | 0.97739289 | 1.01883701 | 0.98235327 |
| 400 | 0.98867525 | 1.01040002 | 0.99136578 |
| 1000 | 0.99284794 | 1.00680977 | 0.99458271 |
| 2000 | 0.99494628 | 1.00489739 | 0.99618483 |
| 4000 | 0.99642822 | 1.00350388 | 0.99730996 |

Set lambda=1, L=2; beta_H=1.0233267079; predicted shell constant D=0.3546234087.

W_N = sum over all three sectors and n+m=N of a_i(n)a_i(m) exp(-beta_H E_lambda).

| N | N^(5/4) W_N | ratio to D | N^(3/4) energy-weighted shell |
|---:|---:|---:|---:|
| 100 | 0.3305114620 | 0.93200689 | 0.8184013091 |
| 400 | 0.3428679093 | 0.96685075 | 0.8536674567 |
| 1000 | 0.3472691773 | 0.97926186 | 0.8666403346 |
| 2000 | 0.3494528477 | 0.98541957 | 0.8731712270 |
| 4000 | 0.3509823685 | 0.98973266 | 0.8777854003 |

Negative coupling real chiral vacuum descendants, lambda=-1, L=2:

| left level n | principal energy / P | discriminant |
|---:|---:|---:|
| 2 | -0.6856242385 | 28.17384638 |
| 20 | -0.9682027043 | 3823.43985368 |
| 200 | -0.9968172332 | 393528.80078153 |
| 2000 | -0.9996816934 | 39465852.49554246 |

All calculations above are finite checks. They do not establish convergence by themselves.
