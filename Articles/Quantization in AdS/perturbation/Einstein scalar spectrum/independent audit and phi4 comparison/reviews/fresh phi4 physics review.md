# Fresh independent physics review: first-order real φ⁴ pairs in global AdS₃

## Verdict

**The two-particle coefficient is correct under the stated Wick prescription and boundary conditions:**

\[
\boxed{\delta E_{k\ell}=\lambda\,c_{k\ell},\qquad
c_{k\ell}=\frac{\delta_{k\ell}}{8\pi(2\Delta+k+\ell-1)},\qquad
k,\ell\geq0,\quad k+\ell\text{ even}.}
\]

The coefficient is constant on each full free pair module after first-order degenerate perturbation theory. The apparent number-changing resonances at integral \(\Delta\) vanish exactly. “Spin-zero support” refers to the **pair primary label** \(k-\ell\), not to the spin of every descendant: scalar-primary descendants can have nonzero angular momentum and nonzero shifts.

I derived these results before opening the existing [φ⁴ spectrum note](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md>). I did not read its scripts or cached results. Only after deriving the mode normalization, primary coincidence identity, energy coefficient, Ward promotion, and resonance selection rule did I inspect the note. This is a fresh physics derivation, not a comparison against a supplied candidate coefficient.

The inspected note has no substantive gap in this two-particle argument. **Both local transcription issues identified in the first snapshot are resolved in the current source, confirmed by a final direct reread:**

1. [Equation (5.6), lines 408–410](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L398-L411>) now has first \(-j\coth\rho\), then \(+j\coth\rho\), correctly matching the displayed \(\mathscr L_-\), then \(\bar{\mathscr L}_-\). The previous transposition never altered the simultaneous-equation conclusion or any spectrum coefficient.
2. [Line 334](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L330-L337>) now states \(k+\ell\in2\mathbb Z\) without the earlier broken parity command.

No unresolved issue remains from this two-particle review. The source corrections were made by the author/root agent, not this reviewer; this final status update required no new calculations.

## 1. Objects, normalization, and the sign of the perturbation

Take radius one, \(f=1+r^2\), \(\theta\sim\theta+2\pi\),

\[
ds^2=-fdt^2+f^{-1}dr^2+r^2d\theta^2,
\qquad m^2=\Delta(\Delta-2),\quad\Delta>1.
\]

The center is smooth and the source-free branch obeys \(\phi=O(r^{-\Delta})\), with the corresponding differentiated falloffs. Boundary time is fixed. No gravitational degrees of freedom or gauge quotient are involved.

The canonical momentum and interaction are

\[
\pi=\frac r f\dot\phi,\qquad
H=H_0+\lambda V,\qquad
V=\frac1{4!}\int_0^\infty r\,dr\int_0^{2\pi}d\theta\,:\!\phi^4\!:_\Delta.
\]

Thus positive \(\lambda\) has a **positive** Hamiltonian contact vertex. The interaction measure is \(r\,dr\,d\theta\), not the KG measure \(r/f\,dr\,d\theta\).

Write \(\phi=\phi_++\phi_-\), where \(\phi_+=\sum a_{pq}u_{pq}\), \(\phi_-=\phi_+^\dagger\), and \([a_{pq},a_{p'q'}^\dagger]=\delta_{pp'}\delta_{qq'}\). Free-vacuum Wick ordering gives

\[
:\!\phi^4\!:=\phi^4-6G\phi^2+3G^2,
\qquad G=\langle0|\phi^2|0\rangle_{\rm reg}.
\]

In a regulator preserving AdS isometry, \(G\) is an invariant constant. In counterterm language this is \(\delta m^2=-\lambda G/2\), with vacuum density counterterm \(+\lambda G^2/8\). It removes the first-order tadpole and vacuum energy. No arbitrary finite one-body term is left to shift \(\Delta\). The stated physical gap and vacuum normalization are therefore implemented, rather than restored by an after-the-fact energy subtraction.

For normalized two-particle states define the annihilation coincidence amplitude

\[
W_\psi(x)=\langle0|\phi_+^2(x)|\psi\rangle.
\]

The number-preserving vertex has the combinatorial coefficient \(\binom42/4!=1/4\), so

\[
\langle\psi|\lambda V|\psi\rangle
=\frac\lambda4\int r\,dr\,d\theta\,|W_\psi|^2.
\tag{1}
\]

For example \(|2_0\rangle=(a_{00}^\dagger)^2|0\rangle/\sqrt2\) gives \(W=\sqrt2\,u_{00}^2\), not \(u_{00}^2\). Equation (1) includes the Wick factor 6 and the identical-particle factor 2 exactly once each.

## 2. Independently normalized free modes

Set \(z=r^2/(1+r^2)\), \(n=\min(p,q)\), \(j=p-q\), \(L=|j|\). A ladder-consistent phase convention is

\[
u_{pq}=\frac{(-1)^n}{\sqrt{2\pi}}
\sqrt{\frac{n!\,\Gamma(n+L+\Delta)}{(n+L)!\,\Gamma(n+\Delta)}}
e^{-i(\Delta+p+q)t+ij\theta}
 z^{L/2}(1-z)^{\Delta/2}P_n^{(L,\Delta-1)}(1-2z).
\tag{2}
\]

The KG norm is

\[
(u,v)=i\int\frac r f\,dr\,d\theta
(u^*\partial_t v-v\partial_tu^*).
\]

Using

\[
\int_0^1 z^L(1-z)^{\Delta-1}
[P_n^{(L,\Delta-1)}(1-2z)]^2dz
=\frac{\Gamma(n+L+1)\Gamma(n+\Delta)}
{(2n+L+\Delta)n!\Gamma(n+L+\Delta)}
\]

shows that (2) has unit norm. In particular

\[
u_{00}=\frac{e^{-i\Delta t}}{\sqrt{2\pi}}f^{-\Delta/2},
\qquad u_{aa}(t=0,r=0)=\frac{(-1)^a}{\sqrt{2\pi}}.
\]

The ground-state check is already decisive for the absolute normalization:

\[
\int r\,dr\,d\theta\,|u_{00}|^4=\frac1{4\pi(2\Delta-1)},
\quad
\delta E_{00}=\frac\lambda2\int r\,dr\,d\theta\,|u_{00}|^4
=\frac\lambda{8\pi(2\Delta-1)}.
\]

## 3. All pair primaries: a normalized coincidence identity

Each chiral factor is \(D^+_{\Delta/2}\). With

\[
L_-|p\rangle=\sqrt{p(p+\Delta-1)}\,|p-1\rangle,
\]

the normalized two-body lowest vector of chiral relative degree \(k\) has coefficients

\[
c_a^{(k)}=(-1)^a
\sqrt{\frac{\binom ka(\Delta)_k^2}
{(\Delta)_a(\Delta)_{k-a}(2\Delta+k-1)_k}},
\qquad \sum_a(c_a^{(k)})^2=1.
\]

The formula follows from the lowering recurrence; its norm is a terminating Vandermonde identity. The normalized bosonic pair primary is

\[
|P_{k\ell}\rangle=\frac1{\sqrt2}
\sum_{a=0}^k\sum_{b=0}^{\ell}c_a^{(k)}c_b^{(\ell)}
a_{ab}^\dagger a_{k-a,\ell-b}^\dagger|0\rangle.
\tag{3}
\]

Exchange has parity \((-1)^{k+\ell}\); (3) has norm one exactly when that parity is even, and vanishes otherwise. Its primary energy and spin are \(2\Delta+k+\ell\) and \(k-\ell\).

Coincidence restriction intertwines the sum of the two scalar isometry actions with the scalar action on one spacetime point. Consequently \(W_{k\ell}\) obeys both scalar lowering equations. At \(r=\sinh\rho\), use

\[
\mathscr L_- =\frac i2e^{i(t-\theta)}
(\tanh\rho\,\partial_t-\coth\rho\,\partial_\theta-i\partial_\rho),
\]

\[
\bar{\mathscr L}_- =\frac i2e^{i(t+\theta)}
(\tanh\rho\,\partial_t+\coth\rho\,\partial_\theta-i\partial_\rho).
\]

For \(e^{-iEt+ij\theta}F(\rho)\), their respective vanishing conditions are

\[
F'=-E\tanh\rho\,F-j\coth\rho\,F,
\qquad
F'=-E\tanh\rho\,F+j\coth\rho\,F.
\tag{4}
\]

Thus a nonzero coincident primary must have \(j=0\), hence \(k=\ell=n\), and then \(F\propto f^{-E/2}\). At the center only \(a=b\) contributes in (3), and all surviving mode products have the same phase \((-1)^n\). Normalization of the CG vector therefore gives

\[
\boxed{W_{k\ell}(x)=\delta_{k\ell}\,
\frac{(-1)^k}{\sqrt2\,\pi}
e^{-i(2\Delta+2k)t}f^{-\Delta-k}.}
\tag{5}
\]

The amplitude is independent of \(n\) apart from its phase and radial power. This is the substantive all-channel identity; it is not an extrapolation from low radial modes.

Inserting (5) into (1), with
\(\int_0^\infty r f^{-2\Delta-2n}dr=1/[2(2\Delta+2n-1)]\), gives the boxed verdict.

## 4. Direct nontrivial checks, including radial and spinning primaries

For compactness suppress the common mode factor \((1-z)^{\Delta/2}/\sqrt{2\pi}\) and the time/angular phases. The first reduced modes are

\[
m_{00}=1,\quad m_{10}=m_{01}=\sqrt\Delta\,z^{1/2},
\quad m_{11}=(\Delta+1)z-1,
\quad m_{20}=\sqrt{\Delta(\Delta+1)/2}\,z.
\]

### Radial scalar primary \((k,\ell)=(1,1)\)

Let \(A=a_{00}^\dagger a_{11}^\dagger|0\rangle\), \(B=a_{10}^\dagger a_{01}^\dagger|0\rangle\). Then \(|P_{11}\rangle=(A-B)/\sqrt2\), and

\[
m_{00}m_{11}-m_{10}m_{01}=z-1.
\]

This directly yields \(W_{11}=-(1-z)^{\Delta+1}/(\sqrt2\pi)\) and \(\delta E_{11}=\lambda/[8\pi(2\Delta+1)]\). Direct beta integrals in the full normalized \((A,B)\) basis give

\[
\frac{\delta H}{\lambda}=
\frac1{8\pi(4\Delta^2-1)}
\begin{pmatrix}2\Delta&1\\1&2\Delta\end{pmatrix}.
\]

The two eigenvalues are \(c_{00}\) and \(c_{11}\); the first belongs to a ground-primary descendant.

### Spin-two primary \((k,\ell)=(2,0)\)

Let \(A=a_{00}^\dagger a_{20}^\dagger|0\rangle\), \(B=(a_{10}^\dagger)^2|0\rangle/\sqrt2\). The normalized primary is

\[
|P_{20}\rangle=\frac{\sqrt\Delta\,A-\sqrt{\Delta+1}\,B}{\sqrt{2\Delta+1}}.
\]

Its coincidence amplitude cancels directly. The full spin-two shell is nevertheless not zero:

\[
\frac{\delta H}{\lambda}=
\frac{c_{00}}{2\Delta+1}
\begin{pmatrix}\Delta+1&\sqrt{\Delta(\Delta+1)}\\
\sqrt{\Delta(\Delta+1)}&\Delta\end{pmatrix},
\]

with eigenvalues \(c_{00}\) and zero.

### Simultaneously \(n=1\) and spin two: \((k,\ell)=(3,1)\)

This avoids any ambiguity about checking radial and spinning behavior separately. Set

\[
A=|00,31\rangle,\ B=|01,30\rangle,\ C=|10,21\rangle,\ D=|11,20\rangle,
\]

where each unordered pair contains distinct modes and is unit normalized. Then

\[
|P_{31}\rangle=a(A-B)+b(C-D),\quad
 a=\frac{\sqrt\Delta}{2\sqrt{2\Delta+3}},\quad
 b=-\frac{\sqrt{3(\Delta+2)}}{2\sqrt{2\Delta+3}},
\quad 2a^2+2b^2=1.
\]

Writing \(\alpha=\sqrt{(\Delta+1)(\Delta+2)/6}\) and \(\beta=\sqrt{\Delta(\Delta+1)/2}\), the explicit Jacobi modes give

\[
m_{00}m_{31}-m_{01}m_{30}=3\alpha z(z-1),
\quad
m_{10}m_{21}-m_{11}m_{20}=\beta z(z-1).
\]

Since \(3a\alpha+b\beta=0\), the entire coincidence amplitude and the first-order primary shift vanish. The general symbolic \((3,1)\) cancellation is included in the fresh executable checks.

## 5. Why the primary expectation is the full module eigenvalue

Let \(D=\sum_E P_EVP_E\) be the free-energy resonant part, defined first on finite external-state matrix elements. The full interacting theory retains the global AdS isometries under the invariant Wick prescription and the source-free boundary condition. Expand

\[
H=H_0+\lambda V+\cdots,\qquad
L_\pm=L_\pm^{(0)}+\lambda L_\pm^{(1)}+\cdots.
\]

The first-order part of \([H,L_\pm]=\pm L_\pm\) is

\[
[H_0,L_\pm^{(1)}]+[V,L_\pm^{(0)}]=\pm L_\pm^{(1)}.
\]

Projecting onto free energy grade \(\pm1\) cancels the two terms containing \(L_\pm^{(1)}\), and leaves

\[
[D,L_\pm^{(0)}]=0,
\qquad [D,\bar L_\pm^{(0)}]=0.
\]

Together with free energy and rotation conservation this makes \(D\) an intertwiner. The free bosonic pair decomposition

\[
\operatorname{Sym}^2\mathcal H_1=
\bigoplus_{\substack{k,\ell\geq0\\k+\ell\text{ even}}}
D^+_{\Delta+k}\otimes D^+_{\Delta+\ell}
\]

is multiplicity-free. Once number-changing resonances are excluded below, Schur's lemma applies within the pair sector. Thus the primary expectation is the eigenvalue on the whole module, including degenerate shells shared with descendants of other primaries.

The proof needs the first-order global Ward algebra and vanishing boundary terms; merely knowing that the original spacetime interaction is covariant is not, by itself, a substitute for the grade-projection step. No assertion about common self-adjoint domains of the full unbounded interacting charges is needed for these finite first-order blocks.

## 6. Integral-Δ exception: exact absence of resonant 1↔3

For an annihilated mode \(A\) and three created modes \(i=1,2,3\), simultaneous energy and angular-momentum conservation require

\[
p_A=\Delta+\sum_i p_i,\qquad
q_A=\Delta+\sum_i q_i.
\]

Thus a possible resonance requires **integral** \(\Delta\). Half-integral values from an energy-only comparison fail the spin condition.

Set \(j_i=p_i-q_i\), \(n_i=\min(p_i,q_i)\), and

\[
M=\frac{\sum_i|j_i|-|j_A|}{2}\in\mathbb Z_{\geq0}.
\]

The resonance condition gives \(n_A=\Delta+\sum_i n_i+M\). Apart from nonzero normalization constants, the radial integral is

\[
\int_0^1 dz\,z^{|j_A|}(1-z)^{\Delta-1}
P_{n_A}^{(|j_A|,\Delta-1)}(1-2z)
\left[z^M(1-z)^{\Delta-1}
\prod_iP_{n_i}^{(|j_i|,\Delta-1)}(1-2z)\right].
\]

At integral \(\Delta>1\), the bracket is a polynomial of degree at most
\(M+\Delta-1+\sum_i n_i=n_A-1\). Jacobi orthogonality proves that the integral vanishes for **all** indices. No extrapolation from numerical checks is involved.

For example at \(\Delta=2\), three ground modes would resonate with \(A=(2,2)\), but

\[
\int_0^1(1-z)^2(10z^2-8z+1)dz=0.
\]

The reverse process is its conjugate. A two-to-four transition from the quartic vertex is precisely such a one-to-three conversion with a spectator, so the pair sector is closed under the first-order resonant operator. Zero-to-four cannot resonate because all frequencies are positive. This is not all-orders particle-number conservation.

## 7. Fresh exact checks and reproducibility

Reproducible independent implementation: [review_phi4_exact.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/review_phi4_exact.py>). Complete results: [review_phi4_exact.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/review_phi4_exact.json>).

The final standalone execution used the user-pinned ordinary Python and completed with **574 exact checks passed, exit code 0**:

- Six general-\(\Delta\) primary coincidence identities: \((0,0),(1,1),(2,0),(0,2),(2,2),(3,1)\).
- One general-\(\Delta\) absolute \(n=1\) radial integral, including \(1/(8\pi)\).
- 48 KG norms: \(p,q=0,1,2,3\), \(\Delta=3/2,2,7/3\).
- 18 complete direct-integral normalized pair blocks: those three \(\Delta\)'s and \((P,Q)=(0,0),(1,1),(2,0),(2,2),(3,1),(3,3)\). No pair-projector implementation was used to construct these matrices. Their full characteristic polynomials agree with the module prediction, including every zero eigenvalue.
- 495 resonant one-to-three integrals: \(\Delta=2,3,4\), all unordered triples of child modes with each \((p,q)\in\{0,1,2\}^2\). These use an explicit finite-binomial Jacobi expansion, not the Jacobi library call used for pair matrices.
- One nonresonant, nonzero spatial-overlap negative control.
- Five symbolic identities in the conditional affine-defect application below.

Before the standalone run, fresh Sage kernels independently returned the same 18 block characteristic polynomials; a pure Sage rational-polynomial implementation checked all 495 resonances, and Sage rational-function checks verified the five affine identities. These are finite validations, not replacements for the all-index proofs above. SymPy inside Sage was run in an unpreparsed Python string after an exploratory Sage/SymPy coercion issue was identified; the final standalone script avoids that mixed-symbol issue entirely.

For example, at \(\Delta=2\), \((P,Q)=(2,2)\), the dimension-five matrix has eigenvalues

\[
\frac{\delta E}{\lambda}\in
\left\{\frac1{24\pi},\frac1{40\pi},\frac1{56\pi},0,0\right\}.
\]

At \((P,Q)=(3,3)\), the dimension-eight matrix adds \(1/(72\pi)\) and has four zero eigenvalues.

## 8. Conditional application of UN-03 and UN-04

This subsection was requested after the independent pair derivation. It applies the stated source theorem, rather than claiming a fresh proof of its stable-many-particle construction. The definitions and hypotheses are in [chapter 10, lines 104–172](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter10.md#L104-L172>), with \(C_k=(d+k)(d+k-1)\).

Use \(d=\Delta\) and **coefficients of \(\lambda\)** throughout. Let

\[
a=c_{00}=\frac1{8\pi(2d-1)}.
\]

On a chiral pair, the right label is zero, so

\[
\gamma_0=a,\qquad \gamma_k=0\quad(k\geq2\text{ even}).
\]

The affine interpolation through channels zero and two is

\[
s=-\frac{a}{2(2d+1)},\qquad L(C)=a+s(C-C_0).
\]

Consequently

\[
r_0=r_2=0,\qquad
r_k=\frac{a(k-2)(k+2d+1)}{2(2d+1)}\quad(k\geq2\text{ even}),
\]

\[
v=r_4=\frac{a(2d+5)}{2d+1}>0,
\qquad w=r_6=\frac{2a(2d+7)}{2d+1}>0.
\]

Every higher even defect is positive for \(d>1\); the first positive defect is \(k_*=4\). The source's positivity assumptions therefore apply to the unit-\(\lambda\) operator, and to physical minima for \(\lambda>0\). For negative \(\lambda\), those physical-minimum positivity hypotheses reverse sign and cannot be invoked unchanged.

Substitution into UN-04 gives

\[
D_* = \frac{a(2d+7)(2d+9)(17d+43)}{2d+1},
\]

\[
\boxed{\varepsilon_{\phi^4}(d)
=\frac{27a(d+3)(d+4)}{(2d+1)(17d+43)}
=\frac{27(d+3)(d+4)}
{8\pi(2d-1)(2d+1)(17d+43)}>0.}
\]

**Conditional on UN-03/UN-04**, pure φ⁴ therefore also has the two-generator leading low algebra \(\mathbb C[c_2,c_3]\) and the first low operator form

\[
B_{\rm low}=s\,\mathcal E(\mathcal E-1)
+\frac{\varepsilon_{\phi^4}}2J\partial_y^2,
\qquad J=y^2+4x^3.
\]

The operator form and Gegenbauer mechanism can agree with Einstein's while the pair sequence and numerical coefficient differ. This conclusion is a conditional mathematical application, not a many-body integrability claim or a re-audit of the theorem's entire analytic framework.

## 9. Scope and exact proof dependencies

The absolute coefficient depends on the specified \(-\lambda\phi^4/4!\) action, KG normalization, Bose normalization, and contact measure. The all-channel result additionally uses the normalized discrete-series CG decomposition and the scalar coincidence intertwiner. Promotion to modules uses the first-order global Ward algebra with invariant renormalization and vanishing boundary terms. The integral-\(\Delta\) closure uses the all-index Jacobi orthogonality proof.

For \(\lambda>0\), all pair shifts are nonnegative. At fixed \(\Delta\), \(c_{nn}\sim1/(16\pi n)\); at fixed \(n\), \(c_{nn}\sim1/(16\pi\Delta)\) as \(\Delta\to\infty\). The finite limit \(c_{nn}\to1/[8\pi(2n+1)]\) as \(\Delta\to1^+\) does not prove the same result for an unspecified BF/log boundary domain.

The review proves and checks fixed-label first-order coefficients. It does not construct the full interacting continuum Hamiltonian, establish uniform perturbative remainders, prove all-order gap protection, or infer integrability. The source note's broader finite-many-body construction, source-PDF page claims, and exact mixed-sector kernels were not independently audited here.
