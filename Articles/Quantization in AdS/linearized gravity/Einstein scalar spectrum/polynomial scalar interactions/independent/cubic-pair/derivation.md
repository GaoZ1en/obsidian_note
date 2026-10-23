# Independent cubic pair spectrum: massless scalar on fixed AdS3

## Result and status

For radius-one global AdS3, the action and oscillator convention are

\[
S_{\rm int}=-\frac{\lambda _3}{3!}\int\sqrt{-g}:\!\phi^3\!:,
\qquad u_{00}=\frac{e^{-2it}}{\sqrt{2\pi}(1+r^2)},
\qquad [a_I,a_J^\dagger]=\delta_{IJ}.
\]

Subtract the vacuum energy, fix the one-particle gap to \(\Delta=2\) by an invariant finite mass counterterm, and do not add a finite quartic interaction. The connected order-\(\lambda _3^2\) pair-primary shifts are

\[
\boxed{\displaystyle
\delta E_{P,Q}^{\rm conn}
=\frac{\lambda _3^2}{16\pi}
\left[-\frac{1}{(M+1)(M+2)}
+\frac{\delta_{PQ}}{2(P+1)(P+2)(2P+3)}\right],
\quad M=\max(P,Q),\quad P+Q\in2\mathbb Z .}
\]

Here the free energy and spin are \(E^{(0)}=4+P+Q\), \(J=P-Q\). Equivalently, with radial label \(n=\min(P,Q)\) and even spin magnitude \(\ell=|P-Q|\),

\[
\delta E_{n,\ell>0}^{\rm conn}
=-\frac{\lambda _3^2}{16\pi(n+\ell+1)(n+\ell+2)},
\qquad
\delta E_{n,0}^{\rm conn}
=-\frac{\lambda _3^2(4n+5)}{32\pi(n+1)(n+2)(2n+3)}.
\]

This note gives an **all-index tree-level proof**, not an extrapolation from a finite table. The independent finite calculation came first; the proof uses an exact exchange-to-contact reduction and elementary Legendre identities. The separate Hamiltonian calculation checks normalization, all time orderings, primary eigenvectors, and complete low-level mixing-block characteristic polynomials.

The initial spectrum and finite data were obtained without a supplied candidate or inspection of other agents' files. A later parent message reported separate agreement; that report is not used as evidence below. No higher-order, gravitational, or nonperturbative stability claim is made.

## 1. Boundary spectral resolution and normalization

The boundary extrapolate construction is used only as a spectral resolution of the same bulk theory. No dynamical gravity or assumed microscopic boundary dual is needed. Global AdS time translations become cylinder dilations, and an exchanged global conformal module labels bulk energy and angular momentum.

On Euclidean AdS3, write

\[
ds^2=\frac{d\zeta^2+d\mathbf x^2}{\zeta^2},\qquad
K_\delta(X,x_i)=\left(\frac{\zeta}{\zeta^2+|\mathbf x-x_i|^2}\right)^\delta.
\]

These \(K_\delta\) are **unnormalized** kernels. The massless Dirichlet propagator solves

\[
-\Box_XG(X,Y)=\frac{\delta(X-Y)}{\sqrt g},\qquad
\lim_{\zeta'\to0}\zeta'^{-2}G(X;(\zeta',x'))=\frac{K_2(X,x')}{2\pi}.
\]

Thus the unit-normalized boundary field is

\[
\mathcal O(x)=\sqrt{2\pi}\lim_{\zeta\to0}\zeta^{-2}\phi(\zeta,x),
\quad \langle\mathcal O(x)\mathcal O(0)\rangle=|x|^{-4},
\quad \langle\phi(X)\mathcal O(x)\rangle=\frac{K_2(X,x)}{\sqrt{2\pi}}.
\]

This agrees with the specified global ground mode: the cylinder vacuum-to-ground-state matrix element is one. The chosen one-particle renormalization keeps the external dimension exactly two at this order.

### Why the logarithm gives individual pair energies

There is no hidden order-\(\lambda _3^2\) mixing with higher particle number. The vanishing cubic resonant vertex, proved in Section 5, permits a perturbative unitary normal form
\(H'=H_0+\lambda _3^2 W_2+\cdots\), with \([H_0,W_2]=0\). For either free chiral raising/lowering charge \(L_\pm^{(0)}\), project the order-\(\lambda _3^2\) identity

\[
[H_0,L_\pm^{(2)}]+[W_2,L_\pm^{(0)}]=\pm L_\pm^{(2)}
\]

onto free energy transfer \(\pm1\). The first and last terms cancel, while the middle term lies wholly in that transfer sector. Thus \([W_2,L_\pm^{(0)}]=0\), for both chiral algebras.

The commutator of two normal-ordered cubic operators has at most quartic, quadratic, and constant terms. Its number-changing quartic part \(a^{\dagger3}a\), if present at resonance, would intertwine the one-particle lowest-weight module \((h,\bar h)=(1,1)\) with three-particle modules whose lowest weights obey \(h,\bar h\ge3\). No such intertwiner exists. Its action on every one-particle state is therefore zero, which forces all of its normal-ordered coefficients to vanish. Pure-creation resonances are impossible because all frequencies are positive. Consequently the resonant quartic interaction preserves particle number. The vacuum and one-body pieces are removed by the stated physical convention.

The two-particle tensor product contains each allowed \((P,Q)\) primary once. The invariant connected operator is therefore scalar on each corresponding free global module. The four-point logarithm measures its actual eigenvalue, not a weighted average over unresolved higher-particle degeneracies.

## 2. Exact reduction of every exchange diagram

The decisive bulk identity is

\[
\boxed{\displaystyle
\Box_X\big[K_1(X,x_i)K_1(X,x_j)\big]
=-4x_{ij}^{\,2}K_2(X,x_i)K_2(X,x_j).}
\]

It follows directly from \(\Box K_1=-K_1\) and
\(\nabla\log K_1(X,x_i)\cdot\nabla\log K_1(X,x_j)
=1-2x_{ij}^{\,2}K_1(X,x_i)K_1(X,x_j)\).
Consequently,

\[
\int dY\sqrt g\,G(X,Y)K_2(Y,x_i)K_2(Y,x_j)
=\frac{K_1(X,x_i)K_1(X,x_j)}{4x_{ij}^{\,2}}.
\]

The right-hand side has the required fast \(\zeta^2\) falloff away from the boundary insertions and no boundary-source distribution. This can also be checked directly in Green's identity: near \(x_i\), the product behaves as \(\zeta^2/[x_{ij}^2(\zeta^2+|x-x_i|^2)]\). Its boundary integral against a fixed-interior-point propagator and normal derivative is \(O(\epsilon^2\log\epsilon)\), and hence vanishes as the cutoff \(\zeta=\epsilon\) is removed. The rest of the boundary flux vanishes by the ordinary fast falloff. Thus no homogeneous boundary term is missing. The \(K_1\)'s here are auxiliary functions, not additional propagating fields or a change of quantization.

For one channel the connected four-point function is therefore

\[
\frac{\lambda _3^2}{16\pi^2x_{12}^{\,2}}
D_{1122}(x_1,x_2,x_3,x_4),\qquad
D_{\delta_1\delta_2\delta_3\delta_4}
=\int dX\sqrt g\prod_iK_{\delta_i}(X,x_i),
\]

plus the other two pairings. The factor is fixed: four external legs give \((2\pi)^{-2}\), the bulk inverse gives \(1/4\), and the two cubic vertices give precisely \(\lambda _3^2\) per exchange channel. The sign is positive in the Euclidean four-point function. There is no quartic contact addition.

An independent normalization check is the cubic boundary coefficient. The elementary three-kernel integral is
\(D_{222}=\pi/[2x_{12}^2x_{23}^2x_{31}^2]\), so
\(C_{\mathcal O\mathcal O\mathcal O}=-\lambda _3/(4\sqrt{2\pi})\) and
\(C_{\mathcal O\mathcal O\mathcal O}^2=\lambda _3^2/(32\pi)\).
The direct exchange below indeed starts with precisely this coefficient times the single-particle block \(u+\cdots\).

## 3. Extract the logarithm without evaluating any dilogarithms

Fix the boundary positions to \(x_1=0\), \(x_2=(z,\bar z)\), \(x_3=1\), \(x_4=\infty\), and set

\[
u=z\bar z,\qquad v=(1-z)(1-\bar z).
\]

The reduced correlator has the external prefactor \(x_{12}^{-4}x_{34}^{-4}\). Define the triangle integrals

\[
D(\alpha)=u\alpha_1\alpha_2+\alpha_1\alpha_3+v\alpha_2\alpha_3,
\quad I_0=\int_{\alpha_i\ge0}\frac{d^3\alpha\,\delta(1-\sum\alpha_i)}{D(\alpha)},
\quad I_i=\int_{\alpha_i\ge0}\frac{\alpha_i\,d^3\alpha\,\delta(1-\sum\alpha_i)}{D(\alpha)}.
\]

Schwinger parameterization of the three shifted contact integrals gives

\[
\boxed{\displaystyle
\mathcal G_{\rm conn}^{(2)}(u,v)
=\frac{\lambda _3^2}{32\pi}
\big[u I_3+u^2 I_2-u^2\partial_v I_0\big].}
\]

The terms are the \((12),(13),(14)\) channels. In particular,
\(D_{1122}|_{x_4=\infty}=\frac\pi2I_3\),
\(D_{1212}|_{x_4=\infty}=\frac\pi2I_2\), and
\(D_{1221}|_{x_4=\infty}=-\frac\pi2\partial_vI_0\), with the appropriate conformal limit for the last leg.

To isolate \(\log u\), set

\[
\alpha_1=s\xi,\quad\alpha_2=s(1-\xi),\quad\alpha_3=1-s,
\quad A=u\xi(1-\xi),\quad B=\xi+v(1-\xi),\quad C=A-B.
\]

The elementary \(s\)-integral gives \(\log(A/B)=\log u+\log[\xi(1-\xi)/B]\). The second logarithm and all remaining terms are analytic in the OPE neighborhood \(u=0,v=1\). Therefore

\[
[I_0]_{\log u}=\int_0^1\frac{d\xi}{C},\qquad
[I_3]_{\log u}=\int_0^1\frac{A\,d\xi}{C^2},\qquad
[I_2]_{\log u}=-\int_0^1\frac{(1-\xi)B\,d\xi}{C^2}.
\]

At fixed \(u\), \(\partial_vC=-(1-\xi)\), so

\[
[-\partial_vI_0]_{\log u}=-\int_0^1\frac{(1-\xi)\,d\xi}{C^2}.
\]

The crossed-channel simplification is just integration by parts:

\[
\frac{d}{d\xi}\frac{\xi(1-\xi)}{C}
=\frac{\xi^2-v(1-\xi)^2}{C^2},
\qquad
(1-\xi)(B+1)-1=v(1-\xi)^2-\xi^2.
\]

The boundary term is zero. Hence

\[
[u^2I_2-u^2\partial_vI_0]_{\log u}
=-u^2\int_0^1\frac{d\xi}{C^2}.
\]

Now define

\[
X=\frac2z-1,\qquad Y=\frac2{\bar z}-1,\qquad t=1-2\xi.
\]

Since
\(C=-(1-z+z\xi)(1-\bar z+\bar z\xi)\), the two channel structures become

\[
[uI_3]_{\log u}
=2\int_{-1}^{1}\frac{1-t^2}{(X-t)^2(Y-t)^2}\,dt,
\]

\[
[u^2I_2-u^2\partial_vI_0]_{\log u}
=-8\int_{-1}^{1}\frac{dt}{(X-t)^2(Y-t)^2}.
\]

Thus the complete logarithmic coefficient is

\[
\boxed{\displaystyle
[\mathcal G_{\rm conn}^{(2)}]_{\log u}
=\frac{\lambda _3^2}{16\pi}
\int_{-1}^{1}\frac{(1-t^2)-4}{(X-t)^2(Y-t)^2}\,dt.}
\]

This expression contains all exchange time orderings through the Euclidean Dirichlet propagator.

## 4. All-index global-block decomposition

For integers \(l\ge0\), let \(P_l,Q_l\) be the Legendre functions, with \(Q_l(X)\) real for \(X>1\). The Neumann expansion and its derivative are

\[
\frac1{X-t}=\sum_{l=0}^\infty(2l+1)Q_l(X)P_l(t),
\qquad
\frac1{(X-t)^2}=\sum_{l=1}^\infty(2l+1)Q_l(X)P_l'(t).
\]

For \(X,Y>1\), these converge sufficiently uniformly on \([-1,1]\) to differentiate and integrate term by term. The required identities are

\[
\int_{-1}^1P_l'(t)P_m'(t)\,dt
=\begin{cases}
\min(l,m)[\min(l,m)+1],&l+m\text{ even},\\
0,&l+m\text{ odd},
\end{cases}
\]

\[
\int_{-1}^1(1-t^2)P_l'(t)P_m'(t)\,dt
=\frac{2l(l+1)}{2l+1}\delta_{lm}.
\]

The first follows by expanding
\(P_l'=\sum_{k<l,\,l-k\,\mathrm{odd}}(2k+1)P_k\)
and using Legendre orthogonality; the second is the Legendre Sturm-Liouville equation. They hold at every integer index, not merely at the tested values.

Write the one-dimensional block and its free coefficient as

\[
k_{2h}(z)=z^h\,{}_2F_1(h,h;2h;z),\qquad
 a_P=\frac{(2)_P^2}{P!(P+3)_P}.
\]

At \(l=P+1\),

\[
\boxed{a_P k_{2P+4}(z)=2(2l+1)l(l+1)Q_l(X).}
\]

The free correlator is

\[
\mathcal G^{(0)}=1+u^2+(u/v)^2
=1+\sum_{P,Q\ge0}[1+(-1)^{P+Q}]a_Pa_Q
 k_{2P+4}(z)k_{2Q+4}(\bar z).
\]

For completeness, the two one-variable expansions needed here follow immediately by evaluating the differentiated Neumann expansion at \(t=\pm1\):
\(z^2/(1-z)^2=\sum_Pa_Pk_{2P+4}(z)\) and
\(z^2=\sum_P(-1)^Pa_Pk_{2P+4}(z)\).

A pair energy shift \(\gamma_{P,Q}=\delta E_{P,Q}\) changes both weights by \(\gamma_{P,Q}/2\). Its logarithmic coefficient is therefore

\[
[\mathcal G^{(2)}]_{\log u}
=\sum_{P+Q\,\mathrm{even}}\gamma_{P,Q}a_Pa_Q
 k_{2P+4}(z)k_{2Q+4}(\bar z).
\]

Corrections to OPE coefficients are not logarithmic. The single-particle exchanged module is not logarithmic at this order because its dimension has been fixed to two.

Using the unweighted Legendre identity, the crossed contribution divided by
\(a_Pa_Qk_{2P+4}k_{2Q+4}\) is

\[
-\frac{\lambda _3^2}{16\pi}
\frac{\min(l,m)[\min(l,m)+1]}{l(l+1)m(m+1)}
=-\frac{\lambda _3^2}{16\pi(M+1)(M+2)}.
\]

Using the weighted identity, the direct contribution is

\[
\frac{\lambda _3^2}{16\pi}
\frac{\delta_{lm}}{2l(l+1)(2l+1)}.
\]

These establish the boxed spectrum for every allowed \(P,Q\). The direct channel has only scalar primaries; crossed exchange supplies the entire nonzero-spin result.

## 5. Independent global-mode calculation

Set \(y=r^2/(1+r^2)\), \(n=\min(p,q)\), \(l=|p-q|\), and \(w_{pq}=(p+1)(q+1)\). A mode phase convention in which the two lowering operators have positive matrix elements is

\[
u_{pq}=\sqrt{\frac{w_{pq}}{2\pi}}\,
e^{-i(2+p+q)t+i(p-q)\theta}
(1-y)y^{l/2}R_{pq}(y),
\qquad
R_{pq}(y)=\frac{(-1)^n}{n+1}P_n^{(l,1)}(1-2y).
\]

The Klein-Gordon integral gives unit norm. In particular this reproduces the supplied \(u_{00}\). The lowering coefficients are \(\sqrt{p(p+1)}\), \(\sqrt{q(q+1)}\).

Define

\[
d_p^{(P)}=\frac{(-1)^p}{\sqrt{\operatorname{Cat}_{P+1}}}
\sqrt{\frac{\binom Pp\binom{P+1}p}{p+1}}.
\]

Then the normalized two-particle primary is

\[
|P,Q\rangle=\frac1{\sqrt2}\sum_{p=0}^P\sum_{q=0}^Q
 d_p^{(P)}d_q^{(Q)}a_{pq}^\dagger a_{P-p,Q-q}^\dagger|0\rangle.
\]

It vanishes for odd \(P+Q\), and has unit norm for even \(P+Q\). The Catalan normalization follows from Vandermonde's identity.

### Finite radial support is derived, not assumed

At a cubic vertex, angular conservation fixes the internal magnitude to
\(l_k=|j_i\pm j_j|\). Apart from normalization constants, its radial integral is

\[
\int_0^1(1-y)y^{l_k}P_{n_k}^{(l_k,1)}(1-2y)
\underbrace{y^{(l_i+l_j-l_k)/2}P_{n_i}^{(l_i,1)}(1-2y)
 P_{n_j}^{(l_j,1)}(1-2y)}_{\text{polynomial of degree }N_{ij;k}}dy,
\]

\[
N_{ij;k}=n_i+n_j+\frac{l_i+l_j-l_k}{2}.
\]

The exponent is a nonnegative integer. Jacobi orthogonality proves exact vanishing for \(n_k>N_{ij;k}\). A resonant relation \(\omega_k=\omega_i+\omega_j\) requires \(n_k=N_{ij;k}+1\), proving that the cubic resonant vertex is zero.

More generally, at even \(\Delta=2s\), the polynomial acquires a factor
\((1-y)^{s-1}\), giving the bound \(N_{ij;k}+s-1\), while resonance sits at \(N_{ij;k}+s\). This explains the finite-support simplification without assuming an energy spectrum.

### Complete connected OFPT kernel

For four on-shell external modes, the ordered matrix element is the sum of three channel products of spatial cubic overlaps, multiplied by

\[
D(\Omega,\omega_k)
=\frac1{\Omega-\omega_k}-\frac1{\Omega+\omega_k}
=\frac{2\omega_k}{\Omega^2-\omega_k^2}.
\]

Use \(\Omega=\omega_c+\omega_d\) in the direct channel and
\(\Omega=\omega_c-\omega_a\), \(\omega_d-\omega_a\) in the crossed channels.
The second direct denominator is the connected backward ordering passing through the five-particle sector. The crossed denominators are both three-particle orderings. Omitting them does not compute tree exchange.

With a normalized symmetric ordered pair tensor \(\psi_{ab}\), the expectation value has the extra factor \(1/2\):
\(\delta E=(\lambda _3^2/2)\sum\psi_{ab}^*\psi_{cd}(K_s+K_t+K_u)_{ab;cd}\).
Only connected four-leg contractions are retained. Vacuum terms and one-body self-energies are absent; the chosen mass counterterm removes the remaining one-body gap shift.

For the ground primary, Jacobi support leaves only the ground internal mode:

\[
\mathcal I_{000}=\int r\,dr\,d\theta\,u_{00}(0,r)^3
=\frac1{4\sqrt{2\pi}},
\quad
\delta E_{0,0}=\frac{\lambda _3^2\mathcal I_{000}^2}{2}
\left[\frac13-1-1\right]
=-\frac{5\lambda _3^2}{192\pi}.
\]

### Exact finite data

Entries below are coefficients of \(\lambda _3^2/(16\pi)\):

| \((P,Q)\) | direct \(s\) | one crossed channel \(t=u\) | total |
|---|---:|---:|---:|
| \((0,0)\) | \(1/12\) | \(-1/4\) | \(-5/12\) |
| \((1,1)\) | \(1/60\) | \(-1/12\) | \(-3/20\) |
| \((2,0)\) | \(0\) | \(-1/24\) | \(-1/12\) |
| \((2,2)\) | \(1/168\) | \(-1/24\) | \(-13/168\) |
| \((3,1)\) | \(0\) | \(-1/40\) | \(-1/20\) |
| \((3,3)\) | \(1/360\) | \(-1/40\) | \(-17/360\) |
| \((4,0)\), \((4,2)\) | \(0\) | \(-1/60\) | \(-1/30\) |
| \((4,4)\) | \(1/660\) | \(-1/60\) | \(-7/220\) |

### Two explicit normalized mixing matrices

At total excitation labels \((P,Q)=(2,0)\), use the normalized Fock basis
\(a_{00}^\dagger a_{20}^\dagger|0\rangle\),
\((a_{10}^\dagger)^2|0\rangle/\sqrt2\). The connected matrix is

\[
H_{2,0}^{\rm conn}=\frac{\lambda _3^2}{16\pi}
\begin{pmatrix}
-17/60&-\sqrt6/15\\
-\sqrt6/15&-13/60
\end{pmatrix}.
\]

The primary eigenvector is \((\sqrt{2/5},-\sqrt{3/5})\), with eigenvalue
\(-\lambda _3^2/(192\pi)\); the other eigenvalue is the ground-primary descendant shift \(-5\lambda _3^2/(192\pi)\).

At \((P,Q)=(1,1)\), use
\(a_{00}^\dagger a_{11}^\dagger|0\rangle\),
\(a_{01}^\dagger a_{10}^\dagger|0\rangle\). Then

\[
H_{1,1}^{\rm conn}=\frac{\lambda _3^2}{16\pi}
\begin{pmatrix}
-17/60&-2/15\\
-2/15&-17/60
\end{pmatrix}.
\]

The scalar primary is \((1,-1)/\sqrt2\), with eigenvalue
\(-3\lambda _3^2/(320\pi)\); the symmetric vector again carries the ground-primary descendant shift.

## 6. Reproducibility, checks, and scope

The self-contained [Wolfram code](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-pair/cubic_pair_exact.wl>) computes overlap integrals as exact polynomial integrals, constructs the complete on-shell connected kernel, and checks primary eigenvectors and block characteristic polynomials. It does not insert the proposed spectrum into the kernel. The formula appears only in the independent comparisons.

The [exact report](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-pair/exact-checks.txt>) records:

- 23 exact primary expectations, all parity-allowed \(0\le Q\le\min(P,6)\), \(0\le P\le8\).
- Exact primary eigenvector checks for every allowed \(0\le Q\le P\le6\).
- 20 complete mixing-block characteristic-polynomial checks, including odd-total descendant blocks. Their spectra are the primary shifts for every allowed \(p\le P,q\le Q\), counted with the global-module descendant multiplicity one.
- 36 mode Klein-Gordon normalizations and 512 radial-support/resonance tests with both angular-sign choices.
- The bulk Laplacian collapse, crossed integration-by-parts identity, and both logarithmic-kernel identities, with exact zero residuals.
- Both Legendre integral identities for \(0\le l,m\le12\), 169 index pairs.

The [supplemental report](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-pair/supplemental-checks.txt>) additionally verifies the block–\(Q_l\) identity exactly for \(0\le P\le8\), the two displayed normalized primary eigenvectors exactly, and full-correlator crossing
\(\mathcal G(u,v)=(u/v)^2\mathcal G(v,u)\) numerically at \((u,v)=(3/50,14/25)\), with more than 35-digit agreement. This is reproduced by `runSupplementalChecks[]` in the same implementation.

All shifts are negative. At large \(M\), the leading shift is \(-\lambda _3^2/(16\pi M^2)\), while the positive scalar direct-channel correction is subleading, of order \(M^{-3}\).

**Verified:** the analytic proof, the specified finite exact checks, and the coupling/mode normalization. The complete all-index conclusion relies on the analytic Legendre argument, not on extending the finite table by pattern matching. A separate fresh-agent proof review was not available at this delegation depth; the Hamiltonian computation and exchange/block derivation are independent constructions within this calculation.

**Assumptions:** standard fast boundary condition; invariant vacuum and one-particle renormalization; global AdS radius one; formal perturbation theory around the free vacuum; no finite \(\phi^4\) deformation; connected tree exchange only. At this order, a connected two-to-four mixing vertex would require six external legs and is absent; the normal-form/module argument in Section 1 excludes resonant one-to-three terms with a spectator as well.

**Not claimed:** a stable nonperturbative theory for the unbounded real cubic potential; loop corrections to the connected four-point function; other \(\Delta\), dimensions, boundary conditions, or gravitational effects. The finite-support lemma extends to even \(\Delta\), but the closed spectrum proof above is specific to \(d=2,\Delta=2\).
