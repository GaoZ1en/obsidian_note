# Multiparticle conformal primaries and descendants in global AdS3

Date: 2026-07-22

We have constructed the one-particle Hilbert space $\mathcal H_{1}$ of a free scalar on global $\mathrm{AdS}_{3}$. It is spanned by a conformal primary with weights $(h_{\phi},\bar h_{\phi})=(\Delta/2,\Delta/2)$ and its global descendants:

$$\begin{align}
\mathcal H_{1} &=\mathcal V_{\Delta/2}\otimes\overline{\mathcal V}_{\Delta/2} =\operatorname{span}\left\{a_{m,\bar m}^{\dagger}|0\rangle:
m,\bar m\in\mathbb Z_{\geq0}\right\}.
\end{align}$$

The multiparticle states are constructed by the usual bosonic Fock-space construction:

$$\begin{align}
\mathcal F_{\mathrm{bos}} &=\bigoplus_{N=0}^{\infty}\mathcal F_{N}, & \mathcal F_{N} &=\operatorname{Sym}^{N}\mathcal H_{1},\\
|\mathbf N\rangle &:=\prod_{m,\bar m\geq0} \frac{(a_{m,\bar m}^{\dagger})^{N_{m,\bar m}}} {\sqrt{N_{m,\bar m}!}}|0\rangle, & \sum_{m,\bar m}N_{m,\bar m}&=N.
\end{align}$$

For calculation convenience, at each level we should organize these states into $N$-particle conformal primaries and their descendants. The explicit two-particle formula is derived in [Global AdS3 two-particle primary states](<global AdS3 two-particle primary states.md>). This note gives the general $N$-particle construction.

## 1. The general decomposition

For one identical real scalar in standard quantization, with $\Delta>1$ and $N\geq1$, the exact free global-conformal decomposition has the form

$$\begin{align}
\boxed{ \operatorname{Sym}^{N}\mathcal H_{1} =\bigoplus_{p,q\geq0} M_{N}(p,q)\, \mathcal V_{\frac{N\Delta}{2}+p,\frac{N\Delta}{2}+q}
}.
\end{align}$$

Here $\mathcal V_{h,\bar h}$ denotes the irreducible lowest-weight global $SL(2,\mathbb R)\times SL(2,\mathbb R)$ module generated from weights $(h,\bar h)$, and $M_{N}(p,q)\in\mathbb Z_{\geq0}$ is the number of independent $N$-particle primaries with global weights

$$\begin{align}
h_{N;p,q}&=\frac{N\Delta}{2}+p, & \bar h_{N;p,q}&=\frac{N\Delta}{2}+q.
\end{align}$$

Their free energy and signed angular momentum are therefore

$$\begin{align}
E_{N;p,q}&=N\Delta+p+q, & \ell_{N;p,q}&=q-p.
\end{align}$$

Unlike the two-particle sector, the general multiplicity is not always zero or one. For example, $M_{3}(2,2)=2$ and $M_{4}(2,2)=3$.

## 2. Character formula for every multiplicity

The one-particle character is

$$\begin{align}
\chi_{1}(x,y) &=\frac{x^{\Delta/2}y^{\Delta/2}}{(1-x)(1-y)}.
\end{align}$$

The bosonic plethystic exponential separates all particle-number sectors at once:

$$\begin{align}
\mathscr Z(\nu;x,y) &:=\sum_{N=0}^{\infty}\nu^{N}\chi_{N}(x,y)\\
&=\exp\left[ \sum_{k=1}^{\infty}\frac{\nu^{k}}{k}\chi_{1}(x^{k},y^{k}) \right]\\
&=\prod_{m,\bar m\geq0} \frac{1}{1-\nu x^{\Delta/2+m}y^{\Delta/2+\bar m}},
\end{align}$$

where $\chi_{N}=\chi_{\operatorname{Sym}^{N}\mathcal H_{1}}$. Removing the universal ground weight and one copy of each descendant tower gives the primary generating function

$$\begin{align}
P_{N}(x,y) &:=(1-x)(1-y)(xy)^{-N\Delta/2}\chi_{N}(x,y)\\
&=\sum_{p,q\geq0}M_{N}(p,q)x^{p}y^{q}.
\end{align}$$

Equivalently, using the cycle index of $S_{N}$,

$$\begin{align}
P_{N}(x,y) &=(1-x)(1-y)
\sum_{\substack{\lambda=1^{m_{1}}2^{m_{2}}\cdots\vdash N}} \frac{1}{z_{\lambda}} \prod_{j\geq1} \frac{1}{(1-x^{j})^{m_{j}}(1-y^{j})^{m_{j}}},\\
z_{\lambda} &:=\prod_{j\geq1}j^{m_{j}}m_{j}!.
\end{align}$$

This is the requested decomposition principle: expand $P_{N}$, and every coefficient is the number of primary modules with the corresponding $(p,q)$.

There is also a direct counting version. Let

$$\begin{align}
A_{N}(p,q) &:=\dim\mathcal F_{N;p,q}\\
&=[\nu^{N}x^{p}y^{q}] \prod_{m,\bar m\geq0}\frac{1}{1-\nu x^{m}y^{\bar m}}.
\end{align}$$

Since one global module contributes exactly one descendant at each higher left and right level,

$$\begin{align}
\boxed{ M_{N}(p,q) =A_{N}(p,q)-A_{N}(p-1,q)-A_{N}(p,q-1)+A_{N}(p-1,q-1)
},
\end{align}$$

where $A_{N}(p,q)=0$ if either index is negative.

For $N=2$ this reduces to

$$\begin{align}
P_{2}(x,y) &=\frac{1+xy}{(1-x^{2})(1-y^{2})} =\sum_{\substack{p,q\geq0\\
p+q\ \mathrm{even}}}x^{p}y^{q},\\
\operatorname{Sym}^{2}\mathcal H_{1} &=\bigoplus_{\substack{p,q\geq0\\
p+q\ \mathrm{even}}} \mathcal V_{\Delta+p,\Delta+q},
\end{align}$$

recovering the multiplicity-free even-spin result.

## 3. Constructing every primary as a finite common kernel

On the normalized oscillator basis, the second-quantized global generators are

$$\begin{align}
L_{+1} &=\sum_{m\geq1,\bar m\geq0} \sqrt{m(\Delta+m-1)}\, a_{m-1,\bar m}^{\dagger}a_{m,\bar m},\\
L_{-1} &=\sum_{m,\bar m\geq0} \sqrt{(m+1)(\Delta+m)}\, a_{m+1,\bar m}^{\dagger}a_{m,\bar m},\\
L_{0} &=\sum_{m,\bar m\geq0} \left(\frac{\Delta}{2}+m\right) a_{m,\bar m}^{\dagger}a_{m,\bar m},
\end{align}$$

with barred formulas obtained by acting on $\bar m$. A normalized occupation state obeys

$$\begin{align}
L_{+1}|\mathbf N\rangle &=\sum_{m\geq1,\bar m\geq0} \sqrt{m(\Delta+m-1)} \sqrt{N_{m,\bar m}\bigl(N_{m-1,\bar m}+1\bigr)}\\
&\qquad\times |\mathbf N-\mathbf e_{m,\bar m}+\mathbf e_{m-1,\bar m}\rangle,
\end{align}$$

and similarly for $\bar L_{+1}$. At fixed $(N,p,q)$, use the finite basis

$$\begin{align}
\mathcal F_{N;p,q} &=\operatorname{span}\left\{ |\mathbf N\rangle:
\sum_{m,\bar m}N_{m,\bar m}=N, \ \sum_{m,\bar m}mN_{m,\bar m}=p, \ \sum_{m,\bar m}\bar mN_{m,\bar m}=q \right\}.
\end{align}$$

The full primary space is exactly

$$\begin{align}
\boxed{ \mathcal P_{N;p,q} =\ker\left(L_{+1}:\mathcal F_{N;p,q}\to\mathcal F_{N;p-1,q}\right) \cap
\ker\left(\bar L_{+1}:\mathcal F_{N;p,q}\to\mathcal F_{N;p,q-1}\right)
},\\
\dim\mathcal P_{N;p,q}&=M_{N}(p,q).
\end{align}$$

Thus every primary can be found by enumerating the occupation states, building the two finite primary-annihilation matrices from the displayed square-root coefficients, stacking the matrices, and taking their null space. This remains practical at any prescribed finite $(N,p,q)$ even when no compact closed coefficient formula is available.

## 4. All descendants of every primary

Choose an orthonormal basis $|P_{N;p,q}^{\alpha}\rangle$, with $\alpha=1,\ldots,M_{N}(p,q)$, for the common kernel. Write

$$\begin{align}
h&=\frac{N\Delta}{2}+p, & \bar h&=\frac{N\Delta}{2}+q.
\end{align}$$

All normalized global descendants are

$$\begin{align}
\boxed{ |P_{N;p,q}^{\alpha};r,s\rangle =\frac{L_{-1}^{r}\bar L_{-1}^{s}} {\sqrt{r!(2h)_{r}\,s!(2\bar h)_{s}}}
|P_{N;p,q}^{\alpha}\rangle
}, & r,s&\in\mathbb Z_{\geq0}.
\end{align}$$

They have

$$\begin{align}
E&=N\Delta+p+q+r+s, & \ell&=q-p+s-r.
\end{align}$$

The normalization follows from

$$\begin{align}
L_{+1}L_{-1}^{r}|h\rangle &=r(2h+r-1)L_{-1}^{r-1}|h\rangle, & \|L_{-1}^{r}|h\rangle\|^{2} &=r!(2h)_{r}.
\end{align}$$

## 5. Low-level multiplicities

For three particles, the primary generating function is already not multiplicity-free:

$$\begin{align}
P_{3}(x,y) &=\frac{1}{6}\left[ \frac{1}{(1-x)^{2}(1-y)^{2}} +\frac{3}{(1-x^{2})(1-y^{2})} +\frac{2(1-x)(1-y)}{(1-x^{3})(1-y^{3})} \right].
\end{align}$$

The first coefficients $M_{3}(p,q)$ are

| $p\backslash q$ | $0$ | $1$ | $2$ | $3$ | $4$ |
| ---: | ---: | ---: | ---: | ---: | ---: |
| $0$ | 1 | 0 | 1 | 1 | 1 |
| $1$ | 0 | 1 | 1 | 1 | 2 |
| $2$ | 1 | 1 | 2 | 2 | 3 |
| $3$ | 1 | 1 | 2 | 3 | 3 |
| $4$ | 1 | 2 | 3 | 3 | 5 |

For four particles, the cycle-index expression begins with

$$\begin{align}
\chi_{4} &=\frac{1}{24}\left[ \chi_{1}^{4} +6\chi_{1}^{2}\chi_{1}^{[2]} +3\left(\chi_{1}^{[2]}\right)^{2} +8\chi_{1}\chi_{1}^{[3]} +6\chi_{1}^{[4]} \right],\\
\chi_{1}^{[k]}&:=\chi_{1}(x^{k},y^{k}).
\end{align}$$

The corresponding first coefficients $M_{4}(p,q)$ are

| $p\backslash q$ | $0$ | $1$ | $2$ | $3$ | $4$ |
| ---: | ---: | ---: | ---: | ---: | ---: |
| $0$ | 1 | 0 | 1 | 1 | 2 |
| $1$ | 0 | 1 | 1 | 2 | 2 |
| $2$ | 1 | 1 | 3 | 3 | 6 |
| $3$ | 1 | 2 | 3 | 6 | 7 |
| $4$ | 2 | 2 | 6 | 7 | 13 |

The tables are symmetric under $p\leftrightarrow q$, as required by exchanging the left and right sectors. An entry larger than one means that several orthogonal primaries have identical global weights; the common-kernel construction keeps the multiplicity label $\alpha$ explicit.

## 6. Explicit normalized low-level primaries

### 6.1 Ground primary for every particle number

For every $N\geq1$,

$$\begin{align}
|P_{N;0,0}\rangle &=\frac{1}{\sqrt{N!}} \left(a_{0,0}^{\dagger}\right)^{N}|0\rangle.
\end{align}$$

### 6.2 The $(p,q)=(1,1)$ primary for every $N\geq2$

Define the orthonormal occupation states

$$\begin{align}
|A_{N}\rangle &:=\frac{a_{1,1}^{\dagger}(a_{0,0}^{\dagger})^{N-1}} {\sqrt{(N-1)!}}|0\rangle,\\
|B_{N}\rangle &:=\frac{a_{1,0}^{\dagger}a_{0,1}^{\dagger}(a_{0,0}^{\dagger})^{N-2}} {\sqrt{(N-2)!}}|0\rangle.
\end{align}$$

Then

$$\begin{align}
\boxed{ |P_{N;1,1}\rangle =\frac{\sqrt{N-1}|A_{N}\rangle-|B_{N}\rangle}{\sqrt N}
}
\end{align}$$

is killed by both $L_{+1}$ and $\bar L_{+1}$. For $N=4$ this is

$$\begin{align}
|P_{4;1,1}\rangle &=\frac{\sqrt3|A_{4}\rangle-|B_{4}\rangle}{2}.
\end{align}$$

### 6.3 The spin $-2$ primary for every $N\geq2$

Define

$$\begin{align}
|C_{N}\rangle &:=\frac{a_{2,0}^{\dagger}(a_{0,0}^{\dagger})^{N-1}} {\sqrt{(N-1)!}}|0\rangle,\\
|D_{N}\rangle &:=\frac{(a_{1,0}^{\dagger})^{2}(a_{0,0}^{\dagger})^{N-2}} {\sqrt{2(N-2)!}}|0\rangle.
\end{align}$$

The normalized primary is

$$\begin{align}
\boxed{ |P_{N;2,0}\rangle =\frac{\sqrt{(N-1)\Delta}|C_{N}\rangle -\sqrt{\Delta+1}|D_{N}\rangle} {\sqrt{N\Delta+1}}
}.
\end{align}$$

It has signed spin $\ell=-2$. Interchanging $m\leftrightarrow\bar m$ gives $|P_{N;0,2}\rangle$ with $\ell=+2$. In particular,

$$\begin{align}
|P_{4;2,0}\rangle &=\frac{\sqrt{3\Delta}|C_{4}\rangle -\sqrt{\Delta+1}|D_{4}\rangle} {\sqrt{4\Delta+1}}.
\end{align}$$

### 6.4 A genuinely three-particle odd-spin primary

The two-particle even-spin restriction does not survive at higher particle number. For $N=3$ and $(p,q)=(0,3)$, define

$$\begin{align}
|X\rangle &:=\frac{a_{0,3}^{\dagger}(a_{0,0}^{\dagger})^{2}}{\sqrt2}|0\rangle,\\
|Y\rangle &:=a_{0,2}^{\dagger}a_{0,1}^{\dagger}a_{0,0}^{\dagger}|0\rangle,\\
|Z\rangle &:=\frac{(a_{0,1}^{\dagger})^{3}}{\sqrt6}|0\rangle.
\end{align}$$

Then

$$\begin{align}
\boxed{ |P_{3;0,3}\rangle =\frac{ \sqrt2\,\Delta|X\rangle -\sqrt{3\Delta(\Delta+2)}|Y\rangle +2\sqrt{(\Delta+1)(\Delta+2)}|Z\rangle} {\sqrt{(3\Delta+2)(3\Delta+4)}}
}
\end{align}$$

is normalized, is annihilated by both raising generators, and has $\ell=+3$. Its left--right image $|P_{3;3,0}\rangle$ has $\ell=-3$.

## 7. Interpretation and scope

The construction gives the exact free basis needed before old-fashioned perturbation theory:

$$\begin{align}
\mathcal H_{1} \longrightarrow \operatorname{Sym}^{N}\mathcal H_{1} \longrightarrow \mathcal P_{N;p,q} \longrightarrow \mathcal V_{\frac{N\Delta}{2}+p,\frac{N\Delta}{2}+q} \longrightarrow
\text{interaction matrix elements}.
\end{align}$$

These are global $SL(2,\mathbb R)\times SL(2,\mathbb R)$ primaries and descendants, not full Virasoro primaries. In an interacting theory, free particle number need not be conserved, so equal-energy modules from different $N$ sectors may have to be treated together in degenerate perturbation theory.

## 8. Verification status

### Verified

1. Sage expanded the bosonic Fock product independently of the cycle-index formulas and reproduced all displayed $M_{3}(p,q)$ and $M_{4}(p,q)$ entries.
2. Sage checked the closed $P_{3}$ formula and the $S_{4}$ cycle-index formula against the Fock-space count for every $0\leq p,q\leq10$, with zero residual.
3. Sage built the two finite primary-annihilation matrices directly at $\Delta=2$ and found that their common-kernel dimension equals the character multiplicity in all 75 sectors with $N=2,3,4$ and $0\leq p,q\leq4$.
4. Mathematica returned zero for the normalization and primary-annihilation residuals of $|P_{N;1,1}\rangle$, $|P_{N;2,0}\rangle$, and $|P_{3;0,3}\rangle$ under $\Delta>1$ and integer $N\geq2$.
5. Mathematica returned zero for the general descendant-normalization recurrence.

### Assumptions

1. One identical real scalar, standard quantization, $\Delta>1$, AdS radius one, and the normalized one-particle oscillator convention of the two-particle note.
2. The global lowest-weight modules have no extra null states. Under this condition, multiplying by $(1-x)(1-y)$ removes exactly one descendant tower per primary.
3. The decomposition organizes the free Fock space; interactions are applied only after this basis has been constructed.

### Not verified here

1. A closed analytic oscillator coefficient formula for every $N,p,q$ and multiplicity label $\alpha$; the finite common-kernel algorithm is the general construction.
2. Interaction-induced mixing between different primaries or different free-particle-number sectors.
3. Alternative quantization, distinguishable species, gauge constraints, or full Virasoro modules.
