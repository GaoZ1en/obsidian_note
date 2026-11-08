# Independent theorem check: positivity and the first resonant block

## Result

**The complete first-order secular family is positive semidefinite on every finite free `(E,J)` block if and only if either `Delta` is irrational, or `Delta=a/b>1` in lowest terms has `b>=k-1`.** Here the interaction is one normal-ordered even vertex of degree `2k`, `k>=2`, and its coupling is positive.

When `b<=k-2`, the first block with a negative eigenvalue is exactly

\[
\boxed{E_*=(k+b)\Delta,\qquad J_*=0.}
\]

Its negative eigenvalue has multiplicity **one**, and its complete nonzero spectrum is given below. The parity of the reduced numerator `a` changes the positive spectrum, not the first energy or the negative multiplicity.

These are analytic conclusions, conditional only on the three first-stage facts explicitly allowed in the question. Exact complete-Fock-block calculations independently verify six examples, including both numerator parities and denominators 1, 2, and 3. There is no remaining gap in the stated first-order theorem under those inputs.

## Conventions and the exact spectrum

Take fixed universal-cover global AdS3 with radius 1,

\[
 ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
 \qquad \theta\sim\theta+2\pi.
\]

The real scalar has mass squared `Delta(Delta-2)`, `Delta>1`, standard source-free falloff, center regularity, unit KG modes of frequencies `Delta+p+q`, and free-global-vacuum normal ordering. The interaction and Hamiltonian conventions are

\[
 S_{\rm int}=-\frac{\lambda_{2k}}{(2k)!}\int\sqrt{-g}:\!\phi^{2k}\!:,
 \qquad
 V=+\frac{\lambda_{2k}}{(2k)!}\int r\,dr\,d\theta:\!\phi^{2k}\!:.
\]

In particular the vertex measure is not the KG measure. Define the coupling-stripped finite operator

\[
 K_{E,J}=P_{E,J}(V/\lambda_{2k})P_{E,J}.
\]

All eigenvalues below are eigenvalues of `K`; multiply them by `lambda_(2k)` to obtain the first-order energy shifts and the eigenvalues of `P V P`.

For a resonant rational `Delta=a/b`, with positive coprime `a,b` and `b<=k-2`, set

\[
 r=k-b\ge2,\qquad s=k+b,\qquad E_*=s\Delta.
\]

The two entries of the unique indefinite active block are

\[
\begin{split}
 D&=\binom{s}{k}\kappa_{k,0}
   =\frac{(2\pi)^{1-k}\binom{s}{k}}
          {2k!(k\Delta-1)},\\
 C&=\frac{(2\pi)^{1-k}}
           {2\sqrt{r!s!}(s\Delta-1)}
       \sqrt{\binom{a+r-2}{r-2}}>0.
\end{split}
\]

Thus

\[
 \boxed{\mu_\pm=\frac{D\pm\sqrt{D^2+4C^2}}2,\qquad
        \mu_-<0<\mu_+.}
\]

The complete nonzero spectrum, as a multiset, is

\[
\boxed{
\operatorname{spec}_{\ne0}K_{E_*,0}
=
\begin{cases}
 \{\mu_-,\mu_+\},&a\text{ odd},\\[2mm]
 \{\mu_-,\mu_+\}\ \uplus\
 \left\{\displaystyle
  \frac{\binom{c+k-2}{k-2}}
       {2k!(2\pi)^{k-1}(k\Delta+2c-1)}:
       0\le c\le a/2\right\},&a\text{ even}.
\end{cases}}
\]

Each entry in this multiset occurs once; if values happen to coincide, their multiplicities are added. Every other eigenvalue is zero. In particular

\[
 \operatorname{rank}K_{E_*,0}=
 \begin{cases}2,&a\text{ odd},\\ a/2+3,&a\text{ even},\end{cases}
 \qquad n_-(K_{E_*,0})=1.
\]

If `d_*` denotes the complete free-block dimension, its inertia `(positive,negative,zero)` is `(1,1,d_*-2)` for odd `a` and `(a/2+2,1,d_*-a/2-3)` for even `a`.

The normalized active basis is the contact-active scalar primary `|r,a>` at mass `r Delta+2a=E_*` and the normalized condensate `|s,0>=(a_00^dagger)^s|0>/sqrt(s!)`. Their relative phase is chosen to make `C>0`. On this basis

\[
 K_{E_*,0}\big|_{\mathrm{span}\{|r,a\rangle,|s,0\rangle\}}
 =\begin{pmatrix}0&C\\ C&D\end{pmatrix},
\]

and its two normalized eigenvectors can be taken to be

\[
 |\psi_\pm\rangle
 =\frac{C|r,a\rangle+\mu_\pm|s,0\rangle}
        {\sqrt{C^2+\mu_\pm^2}}.
\]

## Proof

### 1. Positivity in the absence of cross-number resonance

The number-preserving term is

\[
 V_{k\to k}/\lambda_{2k}
 =\frac1{(k!)^2}\int r\,dr\,d\theta\,
       (\phi^-)^k(\phi^+)^k.
\]

For every finite Fock vector its quadratic form is an integral of
`||(phi^+)^k psi||^2/(k!)^2`, hence is nonnegative. Any orthogonal compression remains positive semidefinite. When no cross-number resonance survives, every complete `(E,J)` secular block is just a direct sum of such positive compressions. This remains true even if accidental free degeneracies join different particle numbers.

By the allowed arithmetic/selection-rule input, a genuine number-changing secular vertex exists exactly for rational `Delta=a/b` with `b<=k-2`. Therefore the irrational and `b>=k-1` cases are positive on every block. In particular the quartic interaction (`k=2`) always has this positivity property.

### 2. A lower bound on every number-changing matrix element

Orient a nonzero number-changing matrix element so that its active legs have numbers

\[
 k-j\longleftrightarrow k+j,\qquad j\ge1.
\]

The one-leg channel vanishes, so `j<=k-2`. Energy and angular-momentum conservation require `j Delta` to be an integer. For reduced `Delta=a/b`, this means `j=mb`, with `m>=1`.

If there are `t>=0` spectators, the higher total particle number is

\[
 N_{\rm high}=k+j+t\ge k+b.
\]

Since every particle has free energy at least `Delta`, the common external energy obeys

\[
 E\ge N_{\rm high}\Delta\ge(k+b)\Delta=E_*.
\]

Consequently no number-changing secular entry occurs below `E_*`; all earlier blocks are positive semidefinite by step 1. Equality forces

\[
 j=b,\qquad t=0,\qquad N_{\rm high}=s,
\]

and forces every higher-side particle into its ground mode. Thus `J=0`, the upper state is the unique `s`-particle condensate, and the lower total number is exactly `r`. At energy `E_*`, all blocks with `J!=0` still have no number-changing entries and are positive semidefinite.

### 3. Complete particle-number accounting at the threshold

At `E=E_*` and `J=0`, a particle-number sector exists only when

\[
 P_N=Q_N=\frac{(s-N)\Delta}{2}\in\mathbb Z_{\ge0},
 \qquad 0\le N\le s.
\]

For positive `N`, the possibilities are:

* If `a` is odd, then `s-N=2bm` and `P_N=Q_N=am`. The highest sector is `N=s`; the next is `N=s-2b=r<k`; all subsequent ones are below `k`. There is no `N=k` sector.
* If `a` is even, coprimality forces `b` odd. Then `s-N=bm` and `P_N=Q_N=am/2`. The first three sectors are `N=s`, `N=k`, and `N=r`; all subsequent ones are below `k`. The middle sector has `P_k=Q_k=a/2`. It has particle-number parity opposite to the `r,s` pair, so the even vertex cannot mix it with that pair.

The vacuum does not give a state at positive `E_*`. All sectors with `N<k` have zero number-preserving action. Step 2 proves that the only threshold cross-number entry is the spectator-free `r`–`s` entry. This accounts for the entire block, not merely a selected principal submatrix.

### 4. The two-dimensional indefinite component

The unique `s`-particle ground state is a scalar primary at mass `M=s Delta=E_*`. In the `r`-particle shell, only the scalar-primary contact-active direction at `r Delta+2a=M` couples to it. Different scalar masses have zero contact overlap; all other multiplicity directions are in the coincidence-map kernel. The allowed spectator-free coefficient gives precisely the positive entry `C` displayed above.

The `r`-sector has no diagonal `k`-body action because `r<k`. For the `s`-particle condensate, its number-preserving expectation is

\[
 \frac{s!}{(s-k)!(k!)^2}\int r\,dr\,d\theta\,|u_{00}|^{2k}.
\]

Using `u_00=(2pi)^(-1/2)(1+r^2)^(-Delta/2)` gives

\[
 \int r\,dr\,d\theta\,|u_{00}|^{2k}
 =\frac{(2\pi)^{1-k}}{2(k\Delta-1)},
\]

so the expectation is `D=binom(s,k) kappa_(k,0)`. The determinant of the resulting `2x2` matrix is `-C^2<0`; it has exactly one negative and one positive eigenvalue. This proves failure of global first-order positivity in every allowed resonant rational case and proves that the lower energy bound is attained.

### 5. The numerator-even positive component

Only when `a` is even is the `N=k` shell present. Its total excitations are `(a/2,a/2)`. The allowed first-stage `k`-body contact spectrum gives one active scalar-module descendant for each

\[
 c=0,1,\ldots,a/2,
\]

with eigenvalue `kappa_(k,c)`. These are all strictly positive. All other directions in that shell have zero eigenvalue. Since this shell decouples and all remaining sectors are inactive, adjoining this family to the indefinite pair completes the full nonzero spectrum and establishes the negative multiplicity one.

## Exact checks and normalization audit

The independently written checker is [check_first_threshold.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/first-resonant-threshold/check_first_threshold.py>). Its retained exact results are [exact_checks.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/first-resonant-threshold/exact_checks.json>).

It builds the entire free `(E,J)` Bose basis without fixing `N`, constructs every normal-ordered matrix entry, checks exact Gram self-adjointness, and checks the whole characteristic polynomial against the theorem. Negative multiplicities are additionally computed by exact rational congruence elimination, including `2x2` indefinite pivots when necessary; no floating-point eigenvalue signs are used.

The independent implementation uses `y=sin^2(rho)`, the terminating hypergeometric representation of `P_n^(|ell|,Delta-1)(1-2y)`, and exact beta integrals. Its algebraic Fock basis is

\[
 |\mathbf m\rangle_D=\prod_I(a_{y,I}^\dagger/d_I)^{m_I}|0\rangle,
 \qquad d_I^2=\frac{(\Delta+\min(p,q))_{|p-q|}}
                    {(\min(p,q)+1)_{|p-q|}},
\]

rather than the first-stage rational basis. After the independent matrix is constructed, the permitted [first-stage comparison module](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/contact_blocks.py>) is imported only for comparison. The exact basis/phase conversion is

\[
 |\mathbf m\rangle_D=S_{\mathbf m}|\mathbf m\rangle_B,
 \qquad S_{\mathbf m}=\prod_{p,q}
  [(-1)^{\min(p,q)}w_{\min(p,q)}]^{m_{pq}},
 \qquad A_D=S^{-1}A_BS.
\]

Both implementations agree exactly in all six cases. The numerical-looking table below contains only exact integer dimensions and exact inertias:

| `k` | `Delta` | `E_*` | Complete dimension | Inertia `(+,−,0)` |
|---:|---:|---:|---:|---:|
| 3 | 2 | 8 | 9 | (3,1,5) |
| 3 | 3 | 12 | 9 | (1,1,7) |
| 4 | 3/2 | 9 | 9 | (1,1,7) |
| 5 | 4/3 | 32/3 | 23 | (4,1,18) |
| 4 | 2 | 10 | 20 | (3,1,16) |
| 5 | 5/3 | 40/3 | 19 | (1,1,17) |

Every retained matrix uses the stripped scale

\[
 \sigma_k=\frac{(2\pi)^{1-k}}2,\qquad
 A=K/\sigma_k.
\]

Thus the `2x2` factor in its characteristic polynomial is

\[
 z^2-\frac{\binom{s}{k}}{k!(k\Delta-1)}z
 -\frac{\binom{a+r-2}{r-2}}{r!s!(s\Delta-1)^2}.
\]

When `a` is even, the further linear factors are

\[
 z-\frac{\binom{c+k-2}{k-2}}{k!(k\Delta+2c-1)},
 \qquad c=0,\ldots,a/2.
\]

The first example therefore has physical coupling-stripped nonzero eigenvalues

\[
 \frac{28\pm\sqrt{859}}{3360\pi^2},\qquad
 \frac1{240\pi^2},\qquad\frac1{168\pi^2}.
\]

For the odd-numerator fractional example `(k,Delta)=(4,3/2)`, they are just

\[
 \frac{60\pm19\sqrt{10}}{15360\pi^3}.
\]

The checker also exhausts every nonempty complete `(E,J)` block strictly below `E_*` for `(k,Delta)=(3,2)` and `(4,3/2)`: respectively 21 and 78 blocks, all exactly positive semidefinite. The vacuum block is trivially zero and omitted from that scan count.

## Scope and audit boundary

* **Established:** the necessary-and-sufficient first-order block-positivity criterion, the exact earliest negative free energy and angular momentum, the complete nonzero threshold spectrum, and its exact negative multiplicity.
* **Inputs:** the three permitted first-stage facts (actual cross-number resonance classification, the minimal-number contact spectrum, and spectator-free scalar-channel overlaps). Their conventions agree with the allowed [first-stage note](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Polynomial scalar spectrum.md>) and the authoritative [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>).
* **Checked independently:** the finite-block matrices, the complete characteristic polynomials and exact inertias in the six examples, and the two exhaustive prethreshold scans. Finite tests supplement rather than replace the proof.
* **Not claimed:** positivity or stability of a nonperturbatively defined full Hamiltonian, uniform perturbative control at high energy, or a classification of higher-energy resonant spectra.
* **Source boundary:** no later cluster/large-particle-number integration note, research README, or prior even-positivity/threshold implementation or results were consulted. Only this independent branch contains intentional output; no project source was edited.
