# Independent calculation: minimal-particle contact spectrum on AdS3

## Result and scope

For the number-preserving part of a normal-ordered real-scalar interaction,

\[
V_k=\frac{\lambda_{2k}}{(k!)^2}\int_0^\infty r\,dr\int_0^{2\pi}d\theta\,
 (\phi^-)^k(\phi^+)^k,
\qquad k\geq2,\quad\Delta>1,
\]

restricted to **exactly k particles**, the complete nonzero first-order shifts are

\[
\boxed{\gamma_{k,n}
=\frac{\lambda_{2k}}{2k!(2\pi)^{k-1}}
 \frac{\binom{n+k-2}{k-2}}{k\Delta+2n-1},\qquad n=0,1,2,\ldots.}
\]

There is exactly one active scalar-primary direction of free dimension
\(\delta_n=k\Delta+2n\) for every n. Its whole global conformal module has the same shift. Thus its descendant with left/right levels \(p,q\geq0\) has

\[
E=k\Delta+2n+p+q+\gamma_{k,n}+O(\lambda_{2k}^2),
\qquad J=p-q.
\]

Every spinning primary has zero first-order shift. At a scalar-primary dimension with several copies, the primary contact matrix has rank one; all other copies have zero shift. These are statements about the **resonant first-order operator**, not the spectrum of the instantaneous interaction by itself.

The theorem is not an arbitrary-particle-number formula. Also, the N-preserving restriction need not be a closed physical energy block of the full real-scalar polynomial theory at exceptional rational Delta. Section 8 derives the minimal number-changing vertex needed to diagnose that issue.

The calculation below was started without a proposed spectrum and without reading other agents' conclusions or new project notes. After the formula was derived, the parent reported agreement with separate calculations and requested the number-changing extension. No downstream subagent was available at this delegation depth.

## 1. Action, boundary condition, and normalization

Set the AdS radius to one, use signature \((-++)\), and take

\[
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
\quad \theta\sim\theta+2\pi,
\quad m^2=\Delta(\Delta-2).
\]

The action convention is

\[
S=-\frac12\int d^3x\sqrt{-g}\bigl[(\nabla\phi)^2+m^2\phi^2\bigr]
 -\frac{\lambda_{2k}}{(2k)!}\int d^3x\sqrt{-g}\,\phi^{2k}
 +S_\partial.
\]

Use the standard reflecting branch \(\phi\sim r^{-\Delta}\), with the boundary action chosen for the corresponding variational principle and vanishing symplectic flux. There is no gauge quotient for this scalar. The CPS convention is the one in [formalism.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L82>): \(\omega=i\sum\delta a^\dagger\wedge\delta a\), \([a,a^\dagger]=1\).

The canonical momentum and Klein–Gordon product are

\[
\pi=\frac{r}{1+r^2}\dot\phi,
\qquad
(u,v)=i\int\frac{r\,dr\,d\theta}{1+r^2}
 \bigl(u^*\partial_t v-(\partial_tu^*)v\bigr).
\]

In particular,

\[
u_{00}=\frac{e^{-i\Delta t}}{\sqrt{2\pi}}(1+r^2)^{-\Delta/2},
\qquad
(u_{00},u_{00})=2\Delta\int_0^\infty r(1+r^2)^{-\Delta-1}dr=1.
\]

The potential contributes positively to the Hamiltonian. Normal ordering and selecting k creators and k annihilators gives
\(\binom{2k}{k}/(2k)!=1/(k!)^2\), exactly the vertex in the question. Tadpoles, lower-degree contractions, and counterterm vertices are not included in this pure-contact problem.

For explicit checks define \(z=r^2/(1+r^2)\), \(N=\min(p,q)\), \(\ell=|p-q|\). Modes of a scalar of dimension \(\delta>1\) may be chosen as

\[
\begin{split}
u_{\delta,pq}
={}&\frac{(-1)^N}{\sqrt{2\pi}}
 \sqrt{\frac{N!\,\Gamma(\delta+N+\ell)}{(N+\ell)!\,\Gamma(\delta+N)}}
 e^{-i(\delta+p+q)t+i(p-q)\theta}\,
 z^{\ell/2}(1-z)^{\delta/2}
 P_N^{(\ell,\delta-1)}(1-2z).
\end{split}
\]

The phase convention makes both abstract \(sl(2)\) raising coefficients positive. It has no effect on the eigenvalues. Jacobi orthogonality gives unit KG norm. The \((-1)^N\) factor is relevant when using the displayed modes together with the standard positive ladder matrices.

## 2. Coincidence map and its normalization

Let \(\mathcal H^{(k)}=\operatorname{Sym}^k\mathcal H_\Delta\), and define

\[
(C_k\psi)(x)=\frac1{\sqrt{k!}}
 \langle0|(\phi^+(x))^k|\psi\rangle.
\]

If a normalized Fock state has occupation numbers \(n_{pq}\), \(\sum n_{pq}=k\), then

\[
C_k|\{n\}\rangle
=\sqrt{\frac{k!}{\prod n_{pq}!}}\prod u_{pq}^{n_{pq}}.
\]

Consequently,

\[
\langle\psi|V_k|\chi\rangle
=\frac{\lambda_{2k}}{k!}\int r\,dr\,d\theta\,
 (C_k\psi)^*(C_k\chi),
\]

and Wick contraction gives the positive kernel

\[
(C_kC_k^\dagger)(x,y)
=\frac1{k!}\langle0|(\phi^+(x))^k(\phi^-(y))^k|0\rangle
=W_\Delta(x,y)^k.
\]

The k! in this definition is essential: using the unnormalized coincidence amplitude while retaining the displayed prefactor would give the wrong answer.

## 3. Exact scalar-module decomposition of the kernel

For Euclidean geodesic separation \(\sigma>0\), the action-normalized scalar kernel on hyperbolic three-space is

\[
W_\delta(\sigma)
=\frac1{4\pi}\frac{e^{-(\delta-1)\sigma}}{\sinh\sigma}
=\frac1{2\pi}\frac{w^\delta}{1-w^2},\qquad w=e^{-\sigma}.
\]

Indeed, away from coincidence it solves

\[
(\partial_\sigma^2+2\coth\sigma\,\partial_\sigma-\delta(\delta-2))W_\delta=0,
\]

its short-distance singularity is \(1/(4\pi\sigma)\), fixed by the kinetic term, and the decaying branch is the standard boundary condition. Independently, the large Euclidean-time behavior at the center is \(e^{-\delta\tau}/(2\pi)\), agreeing with the canonically normalized ground mode. The Lorentzian Wightman function is the corresponding positive-energy analytic continuation on the global-time cover.

Therefore

\[
\begin{split}
W_\Delta^k
&=(2\pi)^{-k}\frac{w^{k\Delta}}{(1-w^2)^k}\\
&=\sum_{n=0}^\infty \mathcal A_{k,n}W_{k\Delta+2n},
\qquad
\boxed{\mathcal A_{k,n}=(2\pi)^{1-k}\binom{n+k-2}{k-2}.}
\end{split}
\]

This is the binomial expansion of \((1-w^2)^{-(k-1)}\), not an assumption about contact eigenvalues. Each coefficient is strictly positive for k at least two.

The coincidence map intertwines the free AdS isometry representation. Each \(W_{k\Delta+2n}\) is the reproducing kernel of one scalar module. Hence there is a normalized active copy \(\mathcal H_{k,n}\) such that, after its phase is fixed,

\[
C_k|k,n;p,q\rangle=\sqrt{\mathcal A_{k,n}}\,u_{k\Delta+2n,pq}.
\]

There is one active linear combination, not necessarily only one scalar primary, at each n. All other multiplicity directions, and every spinning-primary module, belong to \(\ker C_k\). The positive kernel identity supplies the complete image and fixes its singular-value normalization.

The kernel is understood at separated points, or coefficientwise at finite excitation. No coincident propagator or loop integral is used.

## 4. Why descendants have the same shift, and different active modules do not mix

At fixed total left/right excitation \((P,Q)\), the active modules are

\[
n=0,\ldots,\min(P,Q),\qquad
\delta_n=k\Delta+2n,\quad p=P-n,\quad q=Q-n.
\]

They have equal energy \(E_0=k\Delta+P+Q\) and spin \(J=P-Q\), but different scalar masses \(m_n^2=\delta_n(\delta_n-2)\).

For a radial mode \(f(r)\),

\[
\left[\frac1r\partial_r\bigl(r(1+r^2)\partial_r\bigr)
 +\frac{\omega^2}{1+r^2}-\frac{J^2}{r^2}-m^2\right]f=0.
\]

The Wronskian identity for two modes at the same \((\omega,J)\) gives

\[
(m_b^2-m_a^2)\int_0^\infty r f_a^*f_b\,dr
=\left[r(1+r^2)(f_a^*f_b'-f_a'^*f_b)\right]_0^\infty=0.
\]

The origin is regular, and the boundary term decays as \(r^{2-\delta_a-\delta_b}\). Since \(\delta>1\), different scalar dimensions mean different masses. Thus the slice integral vanishes between distinct active modules in a resonant block.

For the diagonal integral, differentiate the radial eigenvalue problem with respect to \(m^2\), holding the radial/angular mode integers fixed. KG normalization gives the Feynman–Hellmann identity

\[
\int r\,dr\,d\theta\,|u_{\delta,pq}|^2
=\frac{\partial\omega}{\partial m^2}
=\frac{1}{2(\delta-1)}.
\]

This is independent of p and q. Combining it with Section 3 proves the spectrum stated at the beginning.

For clarity, first-order perturbation theory uses \(P_{E_0}V_kP_{E_0}\), equivalently the free-time-averaged operator in this fixed-N sector. The instantaneous \(V_k(0)\) also has matrix elements between distinct free energies and is not the operator being diagonalized here.

## 5. Complete multiplicities

Let \(D_k(P,Q)\) be the dimension of the exactly-k-particle weight space, and \(d_k(P,Q)\) the number of global primaries with weights

\[
(h,\bar h)=(k\Delta/2+P,k\Delta/2+Q).
\]

Their exact generating functions are

\[
\sum_{P,Q\geq0}D_k(P,Q)x^Py^Q
=[t^k]\prod_{p,q\geq0}\frac1{1-tx^py^q},
\]

\[
\boxed{\sum_{P,Q\geq0}d_k(P,Q)x^Py^Q
=(1-x)(1-y)[t^k]\prod_{p,q\geq0}\frac1{1-tx^py^q}.}
\]

Equivalently, with \(\mu\vdash k\), \(m_j(\mu)\) its cycle multiplicities and \(z_\mu=\prod_j j^{m_j}m_j!\),

\[
\sum d_k(P,Q)x^Py^Q
=(1-x)(1-y)\sum_{\mu\vdash k}\frac1{z_\mu}
 \prod_{j\geq1}\frac1{[(1-x^j)(1-y^j)]^{m_j(\mu)}}.
\]

These are finite coefficient formulas at every specified weight, not an unspecified branching prescription. All modules have positive weights, so there are no global null descendants to subtract beyond the factors displayed.

The primary matrix at \((P,Q)\) has

- rank one and eigenvalue \(\gamma_{k,P}\) if \(P=Q\), with zero multiplicity \(d_k(P,P)-1\);
- rank zero and zero multiplicity \(d_k(P,Q)\) if \(P\ne Q\).

At fixed \((E_0,J)\), equivalently fixed \((P,Q)\), its full descendant-containing contact matrix has

\[
\operatorname{rank}=\min(P,Q)+1,
\qquad
\operatorname{nullity}=D_k(P,Q)-\min(P,Q)-1.
\]

Each nonzero eigenvalue occurs once in this joint energy/spin block. For nonzero coupling they are distinct: the positive coefficients \(\gamma_{k,n}/\lambda_{2k}\) decrease strictly with n for k=2 and increase strictly for every k at least three when \(\Delta>1\). All rank statements assume nonzero coupling; at zero coupling the interaction vanishes.

At a fixed energy excitation \(L=P+Q\) without fixing J, \(\gamma_{k,n}\) occurs with multiplicity

\[
L-2n+1,\qquad 0\leq n\leq\lfloor L/2\rfloor.
\]

The total rank is

\[
(\lfloor L/2\rfloor+1)(\lceil L/2\rceil+1),
\]

and the zero multiplicity is the total Fock dimension at level L minus this rank. If one disregards energy altogether, each nonzero shift has infinitely many descendants; that is not an additional primary multiplicity.

For example, k=2 has \(d_2(P,Q)=1\) when \(P+Q\) is even and zero otherwise. At \((P,Q)=(2,2)\), the scalar-primary multiplicities for k=2,3,4 are respectively 1,2,3, but the contact-primary rank is one in all three cases.

## 6. Exact low-mode normalization checks

The normalized k-particle ground state gives directly

\[
\langle k_0|V_k|k_0\rangle
=\frac{\lambda_{2k}}{k!}\int|u_{00}|^{2k}r\,dr\,d\theta
=\frac{\lambda_{2k}}{2k!(2\pi)^{k-1}(k\Delta-1)}.
\]

This fixes the overall normalization independently of the invariant-kernel decomposition.

At \((P,Q)=(1,1)\), use the orthonormal states

\[
|A\rangle=\frac{a_{11}^\dagger(a_{00}^\dagger)^{k-1}}{\sqrt{(k-1)!}}|0\rangle,
\qquad
|B\rangle=\frac{a_{10}^\dagger a_{01}^\dagger(a_{00}^\dagger)^{k-2}}{\sqrt{(k-2)!}}|0\rangle.
\]

The normalized ground-module descendant and the new scalar primary are

\[
|D\rangle=\frac{|A\rangle+\sqrt{k-1}|B\rangle}{\sqrt{k}},
\qquad
|S\rangle=\frac{\sqrt{k-1}|A\rangle-|B\rangle}{\sqrt{k}}.
\]

The displayed mode phases give

\[
C_kD=(2\pi)^{(1-k)/2}u_{k\Delta,11},
\qquad
C_kS=-\sqrt{k-1}(2\pi)^{(1-k)/2}u_{k\Delta+2,00}.
\]

Thus direct beta-function integration yields

\[
V_{(1,1)}=\frac1k
\begin{pmatrix}
\gamma_{k,0}+(k-1)\gamma_{k,1}&\sqrt{k-1}(\gamma_{k,0}-\gamma_{k,1})\\
\sqrt{k-1}(\gamma_{k,0}-\gamma_{k,1})&(k-1)\gamma_{k,0}+\gamma_{k,1}
\end{pmatrix}.
\]

This checks the first new primary separately from the lower primary's descendant. At \((P,Q)=(2,0)\), a two-dimensional Fock block instead has only the ground-module eigenvalue and one zero spinning-primary eigenvalue.

Special cases of the all-level formula are

\[
\gamma_{2,n}=\frac{\lambda_4}{8\pi(2\Delta+2n-1)},
\qquad
\gamma_{3,n}=\frac{\lambda_6(n+1)}{48\pi^2(3\Delta+2n-1)}.
\]

For large n,

\[
\gamma_{k,n}\sim\frac{\lambda_{2k}}{4k!(k-2)!(2\pi)^{k-1}}n^{k-3}.
\]

The exact first-order formula holds at each finite excitation, but a fixed small coupling need not give uniform perturbative control at arbitrarily high excitation.

## 7. CAS evidence and reproducibility

[verify_minimal_sector.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/minimal-sector/verify_minimal_sector.py>) is a self-contained Sage script using exact rational functions of Delta. It constructs unordered Fock bases directly, integrates products of explicit Jacobi modes using beta moments, includes the exact nonorthonormal Gram matrix, and compares characteristic polynomials. Primary spaces are computed independently as the simultaneous kernels of the two lowering matrices, not inferred from the candidate contact eigenvectors.

The full output and the additional Wolfram checks are in [verification_report.txt](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/minimal-sector/verification_report.txt>). Generic-Delta tests include k=2,3,4; exact rational higher blocks include dimensions up to 30 and k=5. All passed. Wolfram independently checked 16 scalar modes for unit KG norm and the descendant-independent slice norm, plus the invariant Green-function differential equation and ground norm.

These finite tests verify normalization, rank, low primary multiplicities, and descendant separation. The arbitrary-excitation result is proved by Sections 2–5, not by extrapolating the finite matrices.

## 8. Extension: minimal r-to-s vertices of a degree-d interaction

For

\[
S_{\mathrm{int},d}=-\frac{\lambda_d}{d!}\int\sqrt{-g}\,\phi^d,
\qquad r+s=d,
\]

the normally ordered vertex from exactly r particles to exactly s particles is, writing the radial integration coordinate as \(\varrho\) to avoid confusing it with the particle count r,

\[
V_{s\leftarrow r}=\frac{\lambda_d}{r!s!}\int \varrho\,d\varrho\,d\theta\,
 (\phi^-)^s(\phi^+)^r.
\]

Here “minimal” means no spectator particles: the vertex annihilates every incoming particle and creates every outgoing particle. Using the separately normalized coincidence maps gives, without an assumed cross coefficient,

\[
\langle\psi_s|V_{s\leftarrow r}|\chi_r\rangle
=\frac{\lambda_d}{\sqrt{r!s!}}\int \varrho\,d\varrho\,d\theta\,
 (C_s\psi_s)^*(C_r\chi_r).
\]

Let \(r,s\geq2\) and suppose the active scalar-primary dimensions coincide:

\[
M=r\Delta+2a=s\Delta+2b.
\]

Choose the phase of each active primary so its coincidence image is the positive square root of its kernel weight times \(u_{M,00}\). Then the exact resonant cross matrix element, for primaries and every pair of matching descendants, is

\[
\boxed{
\eta_{s,b;r,a}
=\frac{\lambda_{r+s}}{2\sqrt{r!s!}(2\pi)^{(r+s)/2-1}(M-1)}
 \sqrt{\binom{a+r-2}{r-2}\binom{b+s-2}{s-2}}.
}
\]

This is rank one between the two primary multiplicity spaces. Distinct scalar masses are orthogonal under the same slice integral even when their descendants have equal E and J. Spinning-primary kernels remain zero. For r=s=k and a=b=n, this reduces to \(\gamma_{k,n}\).

There is **no extra factor two** when r differs from s. The reversed ordered term supplies the Hermitian-conjugate matrix entry; it is not a second contribution to the same ordered entry.

For a one-particle leg, \(C_1\) is the identity, with only the scalar module \(M=\Delta\) and kernel weight one. Since all s-particle scalar modules for \(s>1\) have mass label \(s\Delta+2b>\Delta\), no minimal resonant \(1\leftrightarrow s\) matrix element survives for the range here. A vacuum leg has no positive-energy resonance.

The necessary matching condition for unequal r and s is

\[
(s-r)\Delta=2(a-b),
\]

which displays the exceptional rational dimensions. Examples checked by direct Fock integration are:

| r to s | Delta | a,b | M | squared reduced matrix element |
|---|---:|---:|---:|---:|
| 2 to 3 | 2 | 1,0 | 6 | 1/300 |
| 2 to 4 | 2 | 2,0 | 8 | 1/2352 |
| 3 to 5 | 2 | 2,0 | 10 | 1/19440 |
| 2 to 6 | 3/2 | 3,0 | 9 | 1/92160 |

“Reduced” means that the common degree-d factor \(\lambda_d/[2(2\pi)^{d/2-1}]\) is stripped from the matrix element. The 3-to-5 check has two source scalar primaries and verifies rank-one coupling directly, without supplying its active primary vector.

For 2-to-4 at \(\Delta=2,E=10,J=0\), the two squared reduced singular values are \(1/2352\) and \(1/1296\): one comes from a descendant of the shared M=8 module and the other from the shared M=10 primary. This explicitly checks the distinction between a primary vertex and a descendant at the same total energy.

### Explicit failure of fixed-N closure in the full theory

The warning about exceptional dimensions is realized already by the full degree-six potential at \(\Delta=2\). Consider the normalized Fock states

\[
|\mathrm{in}\rangle=\frac{(a_{11}^\dagger)^2a_{00}^\dagger}{\sqrt2}|0\rangle,
\qquad
|\mathrm{out}\rangle=\frac{(a_{00}^\dagger)^5}{\sqrt{5!}}|0\rangle.
\]

Both have \(E_0=10,J=0\), but their particle numbers are three and five. Only the ordered two-annihilation/four-creation term can connect them. Directly,

\[
\begin{split}
\langle\mathrm{out}|V|\mathrm{in}\rangle
&=\frac{\lambda_6\sqrt{5!\,2!}}{4!2!}
 \int r\,dr\,d\theta\,(u_{00}^*)^4u_{11}^2\\
&=\frac{\lambda_6\sqrt{15}}{12}\frac1{8\pi^2}
 \int_0^1(1-z)^4(1-3z)^2dz\\
&=\boxed{\frac{\lambda_6\sqrt{15}}{1120\pi^2}\ne0.}
\end{split}
\]

The beta integral is \(3/35\). This finite spectator-containing example is checked separately in both Sage and Wolfram. It proves that the exactly-three-particle number-preserving spectrum is not by itself the full \(E_0=10,J=0\) spectrum of this real-scalar theory. No arbitrary-N spectator formula is needed for this counterexample.

## 9. What this does not prove

- This is the first-order N-preserving spectrum at N=k. It is not an arbitrary-N diagonalization, nor a nonperturbative spectrum of the contact Hamiltonian.
- In a full polynomial theory, rational-Delta resonances can connect different particle numbers. The minimal coefficient in Section 8 is exact, but spectator-containing vertices and all other degenerate states must still be included to diagonalize a full physical energy block. One must not promote the isolated k-sector shifts to full-theory anomalous dimensions at such a resonance without that check.
- The explicit degree-six, Delta=2 spectator example above establishes failure of fixed-N closure, but it is not a diagonalization of that larger physical block or a general formula for spectator-containing vertices.
- Normal ordering, fixed background, standard reflecting quantization, unit AdS radius, and Delta>1 are part of the statement. Other boundary conditions, tadpole/counterterm prescriptions, gravitational exchange, and loop corrections require separate calculations.
- The separated-point kernel identity and finite-energy matrices suffice for the result. No claim about an everywhere-bounded coincidence operator or a uniform high-energy perturbation expansion is needed.

Verified: analytic all-level kernel decomposition; action and Fock normalization; radial orthogonality and slice norm; exact primary multiplicity formulas; exact Sage checks; separate Wolfram mode/ODE checks; minimal r-to-s normalization and resonant descendant check; one explicit spectator-containing cross-N resonance counterexample.

Assumptions: fixed global AdS3, standard reflecting branch, Delta>1, normally ordered pure contact, first order, exactly the specified minimal particle sectors.

Not verified here: arbitrary-N spectator combinatorics; full cross-N degenerate diagonalization; higher perturbative orders; other boundary quantizations.
