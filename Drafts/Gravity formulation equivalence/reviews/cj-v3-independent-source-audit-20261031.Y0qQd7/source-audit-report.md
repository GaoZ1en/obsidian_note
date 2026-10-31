# Independent source audit: Cotler–Jensen, arXiv:1808.03263v3

**Result.** The displayed equations reproduce the **zeta-regularized one-loop vacuum character** with chiral vacuum energy \(E_0=-(C+13)/24\). The paper identifies the corresponding quantum Virasoro central charge as \(c=C+13\), and claims exactness by localization. That exactness argument is **formal and conditional**, not a regulator/contour-complete proof: in particular, its printed localizing bosonic term is not positive on the original real-loop contour. There is an independent stress-tensor two-point calculation, but it concerns **ordinary \(\mathrm{Diff}(S^1)/U(1)\) orbits**, giving \(c=C+1\), not the PSL vacuum orbit. The sphere anomaly calculation supports the vacuum identification at one loop but reuses the torus determinant and its regulator. The paper also contains a reversed conversion between two \(k\) conventions; the defining equations, not that footnote, fix the mapping.

## 1. Source identity and audit method

- Jordan Cotler and Kristan Jensen, *A theory of reparameterizations for AdS3 gravity*, **arXiv:1808.03263v3**, dated **20 September 2018** on the cover.
- Version-specific URLs: [abstract/version record](<https://arxiv.org/abs/1808.03263v3>), [PDF](<https://arxiv.org/pdf/1808.03263v3>).
- Audited [local PDF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/Cotler-Jensen-1808.03263v3.pdf>): **74 PDF pages**, SHA256 **`99e92ce1b256b6c2e7e1095a176e73e3167d084fd62cb2217517c22bb06a5a8f`**, matching the requested hash.
- Audit date: 31 October 2026, Asia/Shanghai. During the independent source-audit phase, no parent candidate conclusions, other reviewers, or existing reports were read. A subsequent parent-supplied repair of the localizer is explicitly separated into the [supplied-proof addendum](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/localizer-repair-addendum.md>); its geometric and quadratic checks do not constitute a source claim. No source or pre-existing report was modified.
- Text extraction was navigation only. **44 pages were rendered and opened with `read_image`.** Exact scope and links to every inspected render are in the [inspection manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/inspection-manifest.md>). All equation citations below refer to this v3, not an assumed publication version.
- For numbered pages, **PDF page = printed page + 1**. The cover is unnumbered. “PDF 42 / p.41” below means the actual PDF page and printed number respectively.
- Algebraic checks were performed in an actual Wolfram 14.3 kernel. Reproducible [input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/audit-checks.wl>) and actual [output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/audit-checks-output.txt>) are included. No additional reviewer was delegated because the imposed delegation depth had already been exhausted.

### Evidence map

| Subject | Visually checked v3 location | What the location establishes |
|---|---|---|
| Orbit and stabilizer | [PDF 11–12 / pp.10–11](<https://arxiv.org/pdf/1808.03263v3#page=11>), (2.13)–(2.18) | Vacuum \(b_0=-C/(48\pi)\), PSL quotient; ordinary U(1) quotient |
| Symplectic form and action | [PDF 13–17 / pp.12–16](<https://arxiv.org/pdf/1808.03263v3#page=13>), (2.23)–(2.41) | Kirillov–Kostant measure, Hamiltonian choice, stress normalization, counterterm claims |
| Gravity/CS normalization | [PDF 18–24 / pp.17–23](<https://arxiv.org/pdf/1808.03263v3#page=18>), (3.1)–(3.37), footnote 3 | Trace change, \(k=1/(4G)\), \(C=6k\), Haar reduction and residual PSL quotient |
| Vacuum torus determinant | [PDF 41–43 / pp.40–42](<https://arxiv.org/pdf/1808.03263v3#page=41>), (5.7)–(5.24) | Boundary conditions, removed modes, spectral determinant and zeta finite part |
| Gravity heat kernel | [PDF 44–45 / pp.43–44](<https://arxiv.org/pdf/1808.03263v3#page=44>), (5.27)–(5.34) | Explicit local finite term and renormalized volume |
| Localization | [PDF 45–48 / pp.44–47](<https://arxiv.org/pdf/1808.03263v3#page=45>), (5.36)–(5.49) | Pfaffian ghosts, Q, proposed localizer, conditional exactness claim |
| Actual stress two-point function | [PDF 48–49 / pp.47–48](<https://arxiv.org/pdf/1808.03263v3#page=48>), (5.50)–(5.58) | Ordinary-orbit free-field computation, \(c=C+1\) |
| Curved anomaly and sphere | [PDF 31–35 / pp.30–34](<https://arxiv.org/pdf/1808.03263v3#page=31>), (3.79)–(3.108) | Unknown anomaly counterterm; sphere uses the same determinant |
| Coupling integrality | [PDF 69 / p.68](<https://arxiv.org/pdf/1808.03263v3#page=69>), discussion | Returns to \(C=24k\) convention; explicitly leaves quantization unresolved |

## 2. Definitions, chirality, and the different coupling conventions

Take one chiral sector, \(C>0\), spatial circumference \(2\pi\), and
\[
\phi(\theta+2\pi,t)=\phi(\theta,t)+2\pi,\qquad \phi'>0.
\]
Primes mean \(\partial_\theta\), \(\partial_+=(\partial_\theta+\partial_t)/2\), and after \(t=-iy\), \(\bar\partial=(\partial_\theta+i\partial_y)/2\). The paper sets the bulk AdS radius to one in §3; below \(\ell\) denotes that radius when restored, to avoid confusion with the sphere radius also called \(L\) elsewhere in the source.

The constant-orbit representative is \((b_0,C)\), with
\[
b(\phi)=b_0\phi'^2-\frac{C}{24\pi}\{\phi,\theta\},\qquad
\{f,\theta\}=\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2.
\]
The first exceptional/vacuum orbit has \(b_0=-C/(48\pi)\) and stabilizer \(\mathrm{PSL}(2,\mathbb R)\); ordinary stable orbits have \(b_0>-C/(48\pi)\) and stabilizer \(U(1)\). Define
\[
B=\frac{48\pi b_0}{C}.
\]
This is the correct normalization in (5.50), PDF 48 / p.47. **Equation (2.31), PDF 15 / p.14, instead prints \(B=b_0/(48\pi C)\); that is inconsistent with (2.25), its own statement that the vacuum has \(B=-1\), and (5.50).** It is a source typo, not an alternative convention.

### Do not equate every printed \(k\)

Introduce distinct audit labels:

| Audit label | Source usage | Mapping |
|---|---|---|
| \(k_{\rm CS}\) | §3.1, trace in the two-dimensional fundamental of \(\mathfrak{sl}(2,\mathbb R)\) | \(k_{\rm CS}=\ell/(4G)\), \(C=6k_{\rm CS}\) |
| \(k_{\rm SO}\) | Bare-action convention in introduction, PDF 5 / p.4, and discussion PDF 69 / p.68 | \(C=24k_{\rm SO}\), hence \(k_{\rm CS}=4k_{\rm SO}\) |
| \(k_\chi\) | Character exponent in (1.1), PDF 3 / p.2 | \(k_\chi=c/24\); in the claimed vacuum result, \(k_\chi=k_{\rm SO}+13/24=k_{\rm CS}/4+13/24\) |

The bare and character parameters agree only at leading classical order if the loop shift is retained. Even the introduction's uses of \(k\) should therefore be distinguished by role once \(c\ne C\).

The trace conversion explains the factor four. Equation (3.4), PDF 18 / p.17, uses \(\mathrm{tr}_{\rm SO}(J_AJ_B)=2\eta_{AB}\); the two-dimensional convention has \(\mathrm{tr}'(J_AJ_B)=\eta_{AB}/2\). Thus \(\mathrm{tr}_{\rm SO}=4\mathrm{tr}'\), and (3.5)'s coefficient \(1/(64\pi G)\) becomes \(1/(16\pi G)=k_{\rm CS}/(4\pi)\) for \(\ell=1\). Equation (3.32), PDF 23 / p.22, explicitly gives
\[
C=6k_{\rm CS}=\frac{3}{2G}.
\]

**Footnote 3, PDF 20 / p.19, literally says \(k_{\rm there}=4k_{\rm here}\), with “there” the introduction and “here” §3.1. It is reversed relative to these defining equations.** The consistent relation is \(k_{\rm here}=4k_{\rm there}\) for the bare conventions. See the [footnote render](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/pdf-page-20.png>) and [defining boundary-action render](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/pdf-page-23.png>).

With this qualification the vacuum claim is
\[
c=6k_{\rm CS}+13=24k_{\rm SO}+13=\frac{3\ell}{2G}+13,
\]
where \(G\) and \(k\) are the parameters defining the source's action/regularization, not an independently specified renormalized physical Newton constant. If one *defines* \(G_R\) by \(c=3\ell/(2G_R)\), the algebraic reparameterization is \(G_R^{-1}=G^{-1}+26/(3\ell)\). This is not a derivation of a universal CS level shift or a unique bulk renormalization prescription.

## 3. Orbit action, symplectic measure, and three different kinds of “ghosts”

Equations (2.23)–(2.24), PDF 13–14 / pp.12–13, give the left-sector conventions
\[
\omega=-\int_0^{2\pi}d\theta\left[
\frac{C}{48\pi}\frac{d\phi'\wedge d\phi''}{\phi'^2}+b_0\,d\phi\wedge d\phi'\right],
\quad
\alpha=\int_0^{2\pi}d\theta\left[
\frac{C}{48\pi}\frac{\phi''d\phi'}{\phi'^2}+b_0\phi'd\phi\right],
\quad \omega=d\alpha.
\]
The phase-space convention is \(S=-\int dt(\dot x^i\alpha_i+H)\), with measure \([dx]\operatorname{Pf}\omega\), (2.3)–(2.5), PDF 9 / p.8. The gravity boundary term selects \(H=L_{0,\rm cylinder}\), not the original \(H=0\) AS model:
\[
H=\int_0^{2\pi}d\theta\left[-\frac{C}{24\pi}\{\phi,\theta\}+b_0\phi'^2\right],
\qquad
S_+=-\frac{C}{24\pi}\int d^2x\left[
\frac{(\partial_+\phi')\phi''}{\phi'^2}+B(\partial_+\phi)\phi'\right].
\]
These are (2.30)–(2.31), with the corrected definition of \(B\). For the vacuum, \(B=-1\), agreeing independently with (1.4), (3.32), and (5.7). The Euclidean action has the opposite overall sign and \(\partial_+\to\bar\partial\), (2.36)/(5.8).

The stress tensor used in §5 is the Hamiltonian-density normalization
\[
T=2\pi T_{--}=-\frac{C}{12}\{\phi,\theta\}+2\pi b_0\phi'^2.
\]
The classical modes in (2.41), PDF 16 / p.15, have the \(C n^3/12\) central term. Equation (2.8), PDF 10 / p.9, explicitly maps to the standard convention by \(L_{0,\rm usual}=L_{0,\rm cylinder}+c/24\). Section 5, footnote 6, PDF 40 / p.39, uses \(c(n^3-n)/12\) and \(Z=\mathrm{Tr}\,q^{L_{0,\rm usual}-c/24}\). This distinction is essential for interpreting a determinant as a physical central charge.

### Measure reconstructed from the displayed constraints

Equations (3.23), (3.25), (3.33)–(3.34), PDF 22–24 / pp.21–23, use
\[
[dg]=\prod_{\theta,t}\lambda\,d\lambda\,d\Psi\,dF,
\qquad \lambda^2F'=r,\qquad \Psi=-\frac{F''}{2rF'},\qquad F=\tan(\phi/2).
\]
For \(\lambda>0\), \(F'>0\) in a chart,
\[
\int_0^\infty\lambda\,d\lambda\,\delta(\lambda^2F'-r)=\frac1{2F'}.
\]
The \(\Psi\) delta function contributes one. Discarding a field-independent factor \(1/2\) at each point gives \(\prod dF/F'=\prod d\phi/\phi'\), because both \(dF\) and \(F'\) contain \(\tfrac12\sec^2(\phi/2)\). Under a time-dependent Möbius transformation, \(dF\) and \(F'\) receive the same factor \((cF+d)^{-2}\), proving the local quotient invariance.

This is a **formal functional Jacobian reduction**, not a construction of a regulated infinite-dimensional measure. At (5.48)–(5.49), PDF 47–48 / pp.46–47, the equivalence to \([d\phi]\operatorname{Pf}\omega\) is attributed to Stanford–Witten [45], rather than reproved in this source. That cited paper was not independently audited here. Gauss coordinates and \(F=\tan(\phi/2)\) require chart changes; the pointwise Jacobian is not by itself an all-bundles/global proof.

Keep three operations distinct:

1. **Bulk FP ghosts:** PDF 21 / p.20 argues that bulk gauge transformations vanish at the boundary and their gauge-fixing ghosts decouple from boundary physical fields. This is not the later Pfaffian ghost system.
2. **Residual PSL quotient:** \(\widetilde A=g^{-1}\widetilde dg\) is unchanged by \(g\mapsto h(t)g\). This produces the quasi-local boundary quotient, (3.20), (3.28)–(3.29). At the vacuum saddle it removes **all temporal modes** with spatial \(n=0,\pm1\), (5.17). It does not remove just three spacetime-constant modes. Ordinary orbits remove only \(n=0\).
3. **Localization/Pfaffian ghosts:** Grassmann variables \(\psi^i(y)\) in (5.37) exponentiate \(\operatorname{Pf}\omega\); they are periodic in Euclidean time and are tangent variables of the **reduced** phase space. They are not thermal antiperiodic fermions. Including the stabilizer directions would make the unreduced symplectic form degenerate. The paper does not supply a separate nonlinear residual-PSL FP determinant calculation in §5.1; it uses the linear mode gauge directly.

The \(+13\) is therefore not presented as an independently computed conventional \(bc\)-ghost central charge: its displayed derivation is the missing-first-oscillator Casimir contribution.

## 4. Minimal reconstruction of the torus determinant and regulator

### Boundary conditions, saddle, and quadratic operator

Write \(\tau=\tau_1+i\tau_2\), \(\tau_2>0\), \(q=e^{2\pi i\tau}\). Equations (5.8)–(5.10), PDF 41 / p.40, require
\[
(\theta,y)\sim(\theta+2\pi,y)\sim(\theta+2\pi\tau_1,y+2\pi\tau_2),
\]
with winding one in the first cycle and zero in the second. The saddle quoted in (5.14) is
\[
\phi_0=\theta-\frac{\tau_1}{\tau_2}y,
\qquad S_0=\frac{i\pi C\tau}{12},\qquad e^{-S_0}=q^{-C/24}.
\]
Indeed \(\phi'_0=1\), \(\bar\partial\phi_0=-i\tau/(2\tau_2)\), and the fundamental area is \(4\pi^2\tau_2\).

The quadratic action obtained directly from (5.8) is
\[
S_2=\frac{C}{24\pi}\int d\theta\,dy\,[\epsilon''\bar\partial\epsilon'-\epsilon'\bar\partial\epsilon].
\]
For the Fourier convention in (5.16),
\[
\epsilon=\frac1{(2\pi)^2}\sum_{m,n}\epsilon_{m,n}
\exp\!\left[in\theta+i(m-n\tau_1)y/\tau_2\right],
\qquad \bar\partial\longmapsto-\frac{m-n\tau}{2\tau_2}.
\]
Thus the spectral dependence is \(n(n^2-1)(m-n\tau)\), with \(n=0,\pm1\) excluded. Symplectic normalization, the reduced measure, and \(\tau\)-independent factors are absorbed into the normalization \(N\) in (5.19):
\[
Z_{1\ell}=Nq^{-C/24}\prod_{m\in\mathbb Z,\;|n|\ge2}(m-n\tau)^{-1/2}.
\]
The square root and the pair \((m,n)\leftrightarrow(-m,-n)\) account for a real field; one must not independently double the oscillator contribution.

**Normalization discrepancy, explicitly checked:** with the all-integer sums and normalization printed in (5.16), direct substitution gives the coefficient \(iC/(192\pi^3)\), whereas (5.18) prints \(iC/(96\pi^3)\). A particularly simple check is \(\tau=i\tau_2\), \(\phi=\theta+a\cos2\theta\): (5.8) gives \(S_2=C\pi\tau_2a^2/2\); the literal (5.18) gives \(C\pi\tau_2a^2\). Both values are in the actual CAS output. This overall factor does **not** change the \(\tau\)-dependent character derived from (5.19); it changes a field-normalization constant. The same all-mode versus positive-mode factor issue is visible in (2.34).

### Regulated Matsubara sum, not just the final character

Differentiating the logarithm removes \(N\). Using the symmetric/principal-value identity
\[
\sum_{m\in\mathbb Z}\frac1{m-z}=-\pi\cot(\pi z)
\]
and combining positive and negative spatial modes gives precisely (5.20):
\[
\partial_\tau\log Z_{1\ell}=-\frac{\pi iC}{12}-\pi\sum_{n=2}^{\infty}n\cot(\pi n\tau).
\]
For \(\tau_2>0\),
\[
\cot(\pi n\tau)=-i-\frac{2iq^n}{1-q^n}.
\]
The second term is absolutely convergent; the first requires a prescription. Equations (5.21)–(5.23), PDF 43 / p.42, explicitly select
\[
\left[\sum_{n=2}^{\infty}n\right]_{\zeta}=\zeta(-1)-1=-\frac{13}{12}.
\]
Therefore
\[
\partial_\tau\log Z_{1\ell}=-\frac{\pi i(C+13)}{12}
+2\pi i\sum_{n=2}^{\infty}\frac{nq^n}{1-q^n},
\]
which integrates, up to a constant, to
\[
\boxed{Z_{1\ell}=q^{-(C+13)/24}\prod_{n=2}^{\infty}(1-q^n)^{-1}}.
\]
Equivalently,
\[
E_{0,\rm chiral}=-\frac C{24}+\frac12\left[\sum_{n=2}^\infty n\right]_{\zeta}
=-\frac{C+13}{24}.
\]
The ordinary oscillator zero-point energy \(\tfrac12\sum_{n\ge1}n\) instead gives \(-1/24\). Deleting \(n=1\) changes \(E_0\) by \(-1/2\), which corresponds to \(+12\) in the identification \(E_0=-c/24\). The total \(+13\) is \(+1\) plus this effect.

An independent regulator check gives
\[
\sum_{n=2}^\infty ne^{-\varepsilon n}
=\frac{e^{-\varepsilon}}{(1-e^{-\varepsilon})^2}-e^{-\varepsilon}
=\varepsilon^{-2}-\frac{13}{12}+\varepsilon+O(\varepsilon^2).
\]
Subtracting the displayed leading divergence yields the same finite part; this expansion was machine-checked. It verifies the number under a matching finite-part prescription, **not** regulator independence without a renormalization condition.

### What the character does and does not determine

The oscillator product determines descendant multiplicities. The prefactor determines the cylinder ground energy. Concluding that its exponent is the *physical* Virasoro central charge additionally uses the standard \(L_0\) convention and the assertion that this is the true vacuum module, \(h=0\). A determinant by itself does not measure a local stress-tensor OPE coefficient.

For ordinary orbits the same reasoning gives
\[
Z_{U(1)}=q^{2\pi b_0-1/24}\prod_{n=1}^\infty(1-q^n)^{-1},
\qquad h-\frac{c-1}{24}=2\pi b_0,
\]
(5.24). Here the character **does not separate \(h\) from \(c\)**; the paper correctly computes an additional observable to do so.

## 5. Localization: exact claim versus what the printed proof establishes

In (5.36)–(5.43), PDF 45–46 / pp.44–45,
\[
S'_E=\int dy\left(i\dot x^i\alpha_i+H-\tfrac12\omega_{ij}\psi^i\psi^j\right),
\quad Qx^i=\psi^i,\quad Q\psi^i=v^i-i\dot x^i\equiv V^i,
\quad Q^2=\delta_v-i\partial_y.
\]
The orbit's invariant Kähler metric is invoked to supply a metric invariant under the \(L_0\) Hamiltonian flow. The source then proposes (5.44)
\[
\mathcal V=Q\int dy\,g_{ij}(Q\psi^i)\psi^j,
\qquad \mathcal V_{\rm bos}=\int dy\,g_{ij}V^iV^j,
\]
and calls its bosonic part positive-definite. The render was checked carefully: **there is no conjugation/bar on either \(V\)** in (5.44); (5.38) explicitly contains \(-i\dot x\). See the [definitions](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/pdf-page-46.png>) and [localizer](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/pdf-page-47.png>).

**Literal positivity test on the stated real-loop setup:** take a flat symplectic plane with its positive Euclidean metric, \(H=0\), and the real periodic loop \(x^1=a\cos(2\pi y/\beta)\), \(x^2=0\). This satisfies the invariant-metric condition. Yet
\[
\mathcal V_{\rm bos}=-\int_0^\beta dy\,\dot x^2
=-\frac{2\pi^2a^2}{\beta}<0\quad(a\ne0).
\]
This exact value was also obtained by CAS. More generally, with real \(v\), the real part contains \(g(v,v)-g(\dot x,\dot x)\), so high-frequency real loops are not suppressed by the printed positive-\(t\) deformation.

This is a **counterexample to the asserted positivity of the printed localizer**, not a counterexample to one-loop exactness of the orbit partition function. A modified gauge fermion involving \(v+i\dot x\) would have the bosonic product \(g(v+i\dot x,v-i\dot x)=g(v,v)+g(\dot x,\dot x)\), and an appropriate complex-contour prescription may also repair the argument. Neither repair is explicitly specified there. The subsequent [supplied-proof addendum](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/localizer-repair-addendum.md>) verifies the proposed gauge-fermion replacement, its quadratic cancellation, and compatibility with the real torus twist; it does not establish a complete infinite-dimensional measure/contour argument.

Additional qualifications stated or left implicit in the source:

- Independence of the deformation parameter is explicitly **“barring an anomaly in Q”** below (5.46).
- Preservation of the measure, treatment of the infinite-dimensional regulator, and absence of boundary contributions at infinity in field space are not established by an explicit regulated construction.
- The determinant cancellation leading to (5.47) is described as a standard calculation rather than displayed mode by mode.
- General complex \(\tau\) is asserted to follow by another version with twisted boundary conditions; that version is not written out.
- The finite-dimensional/infinite-dimensional orbit distinction and the integration cycle matter. One cannot upgrade a formal localization argument to a nonperturbative sum over all gravity/CS sectors.

**Evidence grade:** the one-loop result is directly reconstructible; exactness is the paper's claimed result under its phase-space measure and localization assumptions. The particular positivity step is incorrect if interpreted literally on real loops and needs clarification or repair.

## 6. The actual independent stress-tensor test

**Yes, there is a test beyond the character—but for the ordinary orbit.** Section 5.4, PDF 48–49 / pp.47–48, explicitly starts with ordinary orbits. It defines
\[
f=\log\left[(e^{\sqrt B\phi})'\right],\qquad
S_E=\frac{C}{24\pi}\int(\bar\partial f)f',\qquad
T=-\frac C{12}\left(f''-\frac12f'^2\right),
\]
(5.50)–(5.51), with \(f(\theta+2\pi)=f(\theta)+2\pi\sqrt B\). Ordinary-orbit redundancy is a linear time-dependent shift in \(f\). The paper says the action and measure are free in these variables. On the **same page** it stresses that the analogous PSL model is **not free**, because its quotient acts nonlinearly. Thus the ensuing exact Wick computation cannot be transferred to the vacuum orbit simply by setting \(B=-1\).

Expand \(f=\sqrt B\theta+\epsilon\). With \(w=\theta+iy\), take \(y>0\) for definiteness. Equation (5.56) is
\[
G(w)=\langle\epsilon(w)\epsilon(0)\rangle=-\frac{12}{C}\log(1-e^{iw}),
\quad
T=2\pi b_0-\frac C{12}\left(\epsilon''-\sqrt B\epsilon'-\frac12\epsilon'^2\right).
\]
At separated points the linear-linear and quadratic-quadratic connected contractions are
\[
\begin{aligned}
\langle TT\rangle_{\rm exchange}
&=\frac{C^2}{144}\,[G''''-BG'']
=\frac C{32\sin^4(w/2)}-\frac{C(B+1)}{48\sin^2(w/2)},\\
\langle TT\rangle_{\rm loop}
&=2\left(\frac C{24}\right)^2[G'']^2
=\frac1{32\sin^4(w/2)}.
\end{aligned}
\]
The mixed terms cancel or are odd Gaussian correlators. These two expressions and their sum were independently checked by CAS with zero residuals. Therefore
\[
\langle TT\rangle_c=\frac{C+1}{32\sin^4(w/2)}
-\frac{2\pi b_0+C/24}{2\sin^2(w/2)},
\]
which reproduces (5.57) and, using (5.5), gives
\[
\boxed{c=C+1,\qquad h=2\pi b_0+C/24.}
\]
In particular \(\lim_{w\to0}w^4\langle TT\rangle_c=(C+1)/2\), directly testing the central singularity rather than merely reading a character exponent. As a compatible point-splitting check, \(\langle\epsilon'(w)\epsilon'(0)\rangle=-G''\) has finite part \(-1/C\) after subtracting its flat short-distance pole. Hence \(\langle T\rangle=2\pi b_0-1/24=h-c/24\), matching the independently computed ordinary-orbit energy.

The paper's physical cylinder \(T\) has the normalization of the energy density; with \(z=e^{iw}\), it corresponds to \(z^2T_{\rm plane}(z)-c/24\), rather than the same-sign coordinate component \(T_{ww}\). The central \(w^{-4}\) coefficient is unambiguous, while signs of the subleading cylinder terms should be compared in this stated convention.

**Remaining scope caveat:** for \(B>0\) the displayed \(f\) redefinition can be taken real (up to an irrelevant constant); at \(B=0\) its literal expression is singular, and for \(-1<B<0\) it is complex on real \(\phi\). The separated-point algebra continues in \(B\), but §5.4 does not explicitly construct the global transformed integration cycle/limiting zero-mode treatment over that whole range. Its exact-free-theory statement assumes that transformation is legitimate. The local Wick result is verified; a global measure theorem for every such orbit is not independently proved here.

**No independent PSL \(TT\) Ward/OPE computation was found in the audited source material.** Section 6's inspected opening, PDF 51 / p.50, explicitly imports \(c=C+13\) before proposing the bilocal-block relation (6.10). PDF 54 / p.53 says that at fixed light dimensions the one-loop propagator renormalization enters the uncomputed next order. Those leading block checks are not an independent determination of the additive vacuum shift. The complete heavy-light calculation was not audited, so this statement is not a claim that every possible indirect block check was exhaustively ruled out.

## 7. Sphere anomaly and bulk heat kernel: useful corroboration, with different strengths

### Sphere: one-loop anomaly interpretation, but the same determinant

Equations (3.85)–(3.86), PDF 32 / p.31, use \(\log Z_{S^2}=\tfrac c3\log(\mu L)+\text{constant}\) for equal left/right central charges \(c_L=c_R=c\). Here \(c\) is the **per-chiral-sector** value, not \(c_L+c_R\).

The classical sphere actions (3.97)–(3.100), PDF 34 / p.33, yield \(-S_0=(C/3)\log\Lambda+\cdots\). The quadratic action (3.102) is the same as the flat-cylinder one; (3.104) again removes \(n=0,\pm1\). The beginning of PDF 35 / p.34 states the regulator prescription explicitly:

- cut off the cylindrical coordinate at \(y=\pm\log\Lambda\);
- sum both Dirichlet and Neumann spectra;
- identify this with periodicity \(4\log\Lambda\), i.e. \(\tau=(2i/\pi)\log\Lambda\).

Then \(q=\Lambda^{-4}\), and the **same** chiral one-loop factor \(q^{-13/24}\prod_{n\ge2}(1-q^n)^{-1}\) gives, including both chiralities,
\[
\log Z_{S^2,1\ell}=-S_0+\frac{13}{3}\log\Lambda+o(\log\Lambda),
\qquad
\lim_{\Lambda\to\infty}\Lambda\partial_\Lambda\log Z_{S^2,1\ell}=\frac{C+13}{3},
\]
(3.106)–(3.108).

This is a genuine one-loop **sphere-scale/anomaly interpretation** for the PSL model, beyond merely naming a torus character. It is **not statistically or technically independent of the torus determinant/finite-part prescription**: it reuses precisely that determinant. The proper treatment of the two pole-boundary spectra is prescribed, not independently justified in this audit. Moreover, immediately before §3.6 the paper admits that its noncovariant curved action differs from the conventional anomaly scheme by a **presently unknown noncovariant local counterterm** (PDF 32 / p.31, below (3.84)). Thus it is not a complete independently normalized local stress-tensor Ward-identity computation.

### Bulk heat kernel: reconstructing the finite local term

Section 5.2 quotes a gravity heat kernel from Giombi–Maloney–Yin [2]. This audit checks the displayed Cotler–Jensen equations; it does not claim to have re-audited that external paper or derived the tensor heat kernel from scratch.

Equation (5.29), PDF 44 / p.43, contains the integral per unit hyperbolic volume
\[
I=(4\pi)^{-3/2}\int_0^\infty dt\,t^{-5/2}
\left[e^{-t}(1+8t)-e^{-4t}(1+2t)\right].
\]
Its analytic-continuation finite part is
\[
\begin{aligned}
I_{\rm fin}&=(4\pi)^{-3/2}
\left[(1-4^{3/2})\Gamma(-3/2)+(8-2\sqrt4)\Gamma(-1/2)\right]\\
&=-\frac{13}{6\pi}.
\end{aligned}
\]
The actual cutoff integral has
\[
I(\varepsilon)=\frac{9}{4\pi^{3/2}\sqrt\varepsilon}-\frac{13}{6\pi}+O(\sqrt\varepsilon),
\]
also machine-checked. Thus the stated proper-time finite-part prescription reproduces (5.30), not merely its final number.

For the quotient geometry, (5.31) adds \(-\sum_{n\ge2}\log|1-q^n|^2\). With \(S^{(0)}=\ell\,\mathrm{vol}/(4\pi G)\), one obtains
\[
\log Z_{1\ell}^{\rm grav}=-\frac{3\ell/(2G)+13}{6\pi}\,\mathrm{vol}_{\rm ren}
-\sum_{n\ge2}\log|1-q^n|^2.
\]
Equation (5.33) selects \(\mathrm{vol}_{\rm ren}=-\pi^2\tau_2\). Its normalization can also be reconstructed on the unit-radius thermal-global-AdS metric: for \(\beta=2\pi\tau_2\), cutoff volume \(V_R=\pi\beta R^2\) and boundary area \(A_R=2\pi\beta R\sqrt{R^2+1}\) give
\[
\lim_{R\to\infty}(V_R-\tfrac12 A_R)=-\frac{\pi\beta}{2}=-\pi^2\tau_2.
\]
Consequently
\[
Z_{1\ell}^{\rm grav}=\left|q^{-[3\ell/(2G)+13]/24}
\prod_{n\ge2}(1-q^n)^{-1}\right|^2,
\]
matching (5.34). This is **one-loop bulk corroboration with explicit proper-time and holographic finite-part choices**, not an all-orders derivation in bulk metric variables. The source itself says inverse-\(\ell/G\) corrections are being ignored in this subsection.

## 8. Renormalization, global scope, and special-coupling caveats

1. **Physical \(c\) versus bare \(C\).** Once the theory and stress normalization are fixed, the Virasoro central charge/anomaly is physical. Its relation to a *bare* action coefficient or a parameter called Newton's constant requires specifying the quantum definition and subtraction conditions. The source's zeta/proper-time finite parts and measure are substantive ingredients. It is not justified to transplant \(+13\) into an unrelated CS/WZW/DS level convention.
2. **Allowed counterterms are not a subtraction theorem.** PDF 17 / p.16 argues that PSL and Lorentz symmetry allow only a renormalization of the Lagrangian coefficient \(C\), while ordinary orbits allow \(C,b_0\). This is a structural restriction, not an explicit regulator preserving all symmetries or a unique finite renormalization condition. PDF 6 / p.5 interprets the shift as boundary excitations, not a bulk cosmological-constant divergence. PDF 32 / p.31 leaves the curved anomaly scheme partly unknown.
3. **Global group choice is conditional.** PDF 20 / p.19 argues that global AdS has \(-I\) holonomy in the SL double cover, trivial in PSL, and chooses \(\mathrm{PSL}(2,\mathbb R)\times\mathrm{PSL}(2,\mathbb R)\) by requiring its global-AdS configuration be nonsingular. The paper calls this \(SO(2,1)\); the connected group is intended. This is not a proof that all spin structures, covers, bundles, large transformations, or noninvertible-frame CS sectors are equivalent to metric gravity. PDF 18 / p.17 itself distinguishes perturbative fixed-topology quantization from the unresolved nonperturbative gravity problem.
4. **Fixed filling, not a modular completion.** The winding and contractible-cycle choice select the thermal-global-AdS/vacuum sector, with other fillings obtained by appropriate modular relabeling. The character is not a modular-invariant full gravity/CFT partition function. The introduction's exceptional small-central-charge modular sums and extremal theories do not establish generic equivalence.
5. **Vacuum orbit is not the limit of a fixed ordinary-orbit theory.** As \(B\to-1\), the stabilizer changes and additional modes become gauge. Ordinary \(c=C+1\) cannot simply be continued to obtain the PSL vacuum answer; this is a singular change in reduced phase space. Higher exceptional and nonconstant orbits are not covered by the stable-orbit argument.
6. **No general quantization theorem for \(C\).** PDF 18 / p.17 says the measure may be anomalous and no quantization condition on \(C\) appears. PDF 69 / p.68 explicitly calls this an unresolved puzzle: the \(SO(2,1)\)-normalized bare level would suggest \(C=24k_{\rm SO}\) with integral \(k_{\rm SO}\), while \(c=C+13\) is then not a multiple of 24. Do not turn that discussion into an established all-coupling integrality result.
7. **Generic versus rational/special representations.** The stated stable range \(C>0\) gives \(c>13\) for the vacuum and \(c>1,h>0\) for ordinary orbits. The simple products are generic Virasoro characters in this setting, not a derivation of minimal-model/rational null-state subtractions or a modular-invariant rational CFT. Nothing in the audited derivation licenses extrapolation to exceptional low-c rational cases by merely substituting parameters.

## 9. Additional source-normalization warnings

These do not invalidate the reconstructed finite-part character, but matter when transcribing formulas literally:

- **(2.29), PDF 14 / p.13:** its Schwarzian coefficient is printed \(C/24\), whereas the Hamiltonian it is said to equal in (2.30) is \(C/(24\pi)\). Use (2.30)/(2.38)/(2.40) for the consistent normalization.
- **Below (5.11), PDF 42 / p.41:** the prose bound is printed \(H\ge-C/(24\pi)\). Substitution of \(\phi=\theta\) into (5.11) gives \(H=-C/24\), and that value is what correctly produces (5.12). This is another printed \(\pi\) mismatch.
- **(5.54), PDF 48 / p.47:** it prints \(+C/(48\pi)\int df\wedge df'\). With the same left-sector \(\omega=d\alpha\) convention as (2.23), direct use of \(df=\sqrt B\,d\phi+d\phi'/\phi'\), and periodic variations gives \(\omega=-C/(48\pi)\int df\wedge df'\). The cross terms integrate to zero. This is an orientation/sign mismatch relative to the earlier convention, not a new physical central-charge shift; the free-field Pfaffian is still field-independent. The Wick check above uses the action and propagator actually displayed in §5.4, not an unannounced change of this sign.
- The reversed \(k\) footnote, the \(B\) typo, and the factor-two all-mode Hessian discrepancy are documented in §§2 and 4 above. They should be explicitly repaired in any independent transcription rather than silently equating incompatible expressions.

## 10. Verification record and final assessment

Actual CAS results, with no kernel messages:

| Check | Output |
|---|---|
| \(\zeta(-1)-1\) | \(-13/12\) |
| Smooth oscillator cutoff finite part | \(-13/12\) |
| Heat-kernel gamma finite part | \(-13/(6\pi)\) |
| Heat-kernel cutoff finite part | \(-13/(6\pi)\) |
| Ordinary-orbit exchange / loop / total TT residuals | \(0,0,0\) |
| Leading TT singularity | \((C+1)/2\) |
| Cylinder point-split current finite part | \(-1/C\) |
| Printed-localizer real-loop test | \(-2\pi^2a^2/\beta\) |
| Static \(n=2\) quadratic coefficient: action / printed (5.18) | \(C\pi\tau_2/2\) / \(C\pi\tau_2\) |

**Established in this audit:** exact source identity and locations; the local constrained-measure Jacobian; the vacuum spectral dependence and zeta/finite-part calculation; the ordinary-orbit Wick contraction and short-distance central coefficient; the displayed bulk heat-kernel finite part; the defining \(k\)-conversion; and the literal localizer-positivity failure.

**Not established here:** a globally regulated PSL path integral with an anomaly-free localization deformation; a repaired all-orders localization proof; an independent vacuum-orbit \(TT\) OPE computation; equivalence of all metric-gravity and CS global sectors; a unique relation to an independently renormalized Newton constant; or special rational-coupling modular completions. The referenced measure theorem and original tensor heat-kernel paper remain external inputs, not silently counted as independently verified.

**Safe citation of the paper:** “Cotler–Jensen v3 derive the boundary PSL orbit action and its formal symplectic measure from fixed-sector AdS3 CS gravity. Their zeta-regularized one-loop determinant gives the vacuum character with \(c=C+13\), corroborated at one loop by a sphere-scale calculation and a retained bulk heat-kernel finite term. They claim this partition function is exact by a formal localization argument. Their explicit independent stress-tensor calculation instead concerns ordinary U(1) orbits and yields \(c=C+1\).”
