# Independent finite-cutoff CS / metric comparison in AdS3

## Result and scope

For the prescribed chiral canonical CS action, the **outer-wall** difference from the metric Einstein–Hilbert + GHY + area-counterterm prescription is

\[
\boxed{\Delta\ell_\Gamma\equiv B|_\Gamma+\ell_\chi-\ell_D
=-\frac{4q}{R^2}L_+L_-\,\tau,
\qquad
\delta\Delta\ell_\Gamma=-\frac{4q}{R^2}\delta(L_+L_-)\,\tau,}
\]

where \(q=k/(4\pi)=\gamma\ell\) and \(\tau=-dt\wedge d\phi\). This is an exact finite-cutoff statement on the specified collar family. The local potential corner defect vanishes on its fixed-FG-gauge variations, but the two finite-wall boundary conditions are not the same variational problem. The displayed density does not by itself determine a global total action in a non-global spin frame.

The CPS convention is that of [formalism.md:7–24](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L24>): if \((\boldsymbol\theta+\delta\ell)|_\Gamma=\text{boundary equations}+dC\), then
\[
\Theta_\Sigma=\int_\Sigma\boldsymbol\theta-\int_{\partial\Sigma}C.
\]
No other reviewer output or parent calculation was read in deriving this result. No external paper was needed.

## 1. Conventions and reconstructed geometry

Use the matrices and trace normalization in the question, with \(\eta=(-,+,+)\), \(\epsilon_{012}=+1\), and
\[
[J_a,J_b]=\epsilon^c{}_{ab}J_c,
\qquad \operatorname{tr}(J_aJ_b)=\tfrac12\eta_{ab}.
\]
Let
\[
P=L_+(u),\quad Q=L_-(v),\quad p=PQ,
\quad S=P+Q,\quad D=P-Q,
\quad F=r^2-\frac p{r^2},\quad H=r^2+\frac p{r^2}.
\]
We work on the exterior collar with \(r>0\), \(F>0\), \(e^0_t<0\), and spacelike constant-\(t\) circle. These conditions hold at sufficiently large \(r\) for bounded \(P,Q\). Products such as \(du\,dv\) in the line element are symmetric products, so \(g_{uv}=\ell^2H/2\).

Reconstruction gives
\[
\begin{aligned}
e^0&=\frac\ell2\left[\left(\frac Sr-2r\right)dt+\frac Dr\,d\phi\right],\\
e^1&=\frac\ell2\left[\frac Dr\,dt+\left(\frac Sr+2r\right)d\phi\right],
& e^2&=\frac\ell r\,dr,\\
\omega^0&=\frac12\left[\frac Dr\,dt+\left(\frac Sr-2r\right)d\phi\right],\\
\omega^1&=\frac12\left[\left(\frac Sr+2r\right)dt+\frac Dr\,d\phi\right],
&\omega^2&=0.
\end{aligned}
\]
These obey \(de^a+\epsilon^a{}_{bc}\omega^b\wedge e^c=0\). In particular, the reconstructed connection is the metric spin connection; this is not an additional independent connection in the comparison below.

The metric and volume forms are
\[
\begin{aligned}
ds^2&=\ell^2\left[\frac{dr^2}{r^2}+Pdu^2+Qdv^2+Hdu\,dv\right],\\
h_{ij}&=\ell^2\begin{pmatrix}S-H&D\\D&S+H\end{pmatrix}_{(t,\phi)},
\qquad \det h=-\ell^4F^2,\\
\epsilon&=e^0\wedge e^1\wedge e^2
=-\frac{\ell^3F}{r}\,dt\wedge d\phi\wedge dr
=\frac{\ell^3F}{r}\,\tau\wedge dr,\\
n&=\frac r\ell\partial_r,
\qquad \epsilon_\Gamma=\iota_n\epsilon=\ell^2F\,\tau.
\end{aligned}
\]
Thus the positive bulk coordinate orientation can be written \(dt\wedge dr\wedge d\phi\), and the outward wall orientation is indeed \(\tau\), not \(dt\wedge d\phi\).

## 2. Canonical versus covariant chiral CS action

Write \(a=A_rdr+A_\phi d\phi\), and use \(\operatorname{cs}(A)=\operatorname{tr}(A\wedge dA+\frac23A^3)\). Direct expansion gives
\[
\operatorname{cs}(A)=
\operatorname{tr}\!\left(A_\phi\dot A_r-A_r\dot A_\phi+2A_tF_{r\phi}\right)
 dt\wedge dr\wedge d\phi
+d\!\left[dt\wedge\operatorname{tr}(A_ta)\right].
\]
Since \(dt\wedge a|_\Gamma=-A_\phi\tau\), the **outer-wall contribution** to the decomposition is
\[
I_{\rm cov}^{CS}=I_{\rm can}^{\rm bulk}
-q\int_\Gamma\operatorname{tr}(A_tA_\phi-\bar A_t\bar A_\phi)\,\tau
+\text{other boundary contributions}.
\]
Starting with the specified canonical Hamiltonian boundary term
\[
-q\int_\Gamma\operatorname{tr}(A_\phi^2+\bar A_\phi^2)\,\tau
\]
therefore produces the following covariant wall Lagrangian:
\[
\boxed{\ell_\chi=q\operatorname{tr}
\left(A_tA_\phi-\bar A_t\bar A_\phi-A_\phi^2-\bar A_\phi^2\right)\tau.}
\]
The Hamiltonian boundary term alone is **not** the covariant wall term.

The bulk CS potential is
\[
\boxed{\boldsymbol\theta_{CS}=-q\operatorname{tr}
\left(A\wedge\delta A-\bar A\wedge\delta\bar A\right).}
\]
Its boundary variation satisfies the exact identity
\[
\boxed{(\boldsymbol\theta_{CS}+\delta\ell_\chi)|_\Gamma
=2q\operatorname{tr}\left[(A_t-A_\phi)\delta A_\phi
-(\bar A_t+\bar A_\phi)\delta\bar A_\phi\right]\tau.}
\]
Consequently \(A_t=A_\phi\), \(\bar A_t=-\bar A_\phi\) give the desired chiral variational principle, with the natural representative
\[
C_\chi=0,\qquad \Theta_\chi=\int_\Sigma\boldsymbol\theta_{CS}.
\]
On this boundary-condition subspace \(\ell_\chi=0\); its pullback field variation is also zero. In the supplied family \(\operatorname{tr}A_\phi^2=2P\) and \(\operatorname{tr}\bar A_\phi^2=2Q\): the canonical Hamiltonian term is \(-2qS\tau\), while the covariant conversion supplies \(+2qS\tau\).

## 3. Bulk transgression and the metric boundary action

The local algebraic expansion is
\[
q[\operatorname{cs}(A)-\operatorname{cs}(\bar A)]
=4\gamma\operatorname{tr}(e\wedge R[\omega])
+\frac{4\gamma}{3\ell^2}\operatorname{tr}(e^3)+dB,
\qquad B=-\gamma\omega_a\wedge e^a.
\]
After imposing the torsion-free relation \(\omega=\omega[e]\), the first two terms equal \(\gamma(R[g]+2/\ell^2)\epsilon\). This local bulk identity is not an equality of the two complete boundary prescriptions.

The independently evaluated wall quantities are
\[
\omega_a\wedge e^a=-2\ell H\tau,
\qquad \boxed{B|_\Gamma=2qH\tau,}
\]
\[
K_{ij}=\frac r{2\ell}\partial_rh_{ij},
\qquad K=\frac r\ell\partial_r\log F=\frac{2H}{\ell F}.
\]
Thus
\[
\boxed{\ell_D=2\gamma(K-1/\ell)\epsilon_\Gamma
=2q(2H-F)\tau=2q\left(r^2+\frac{3p}{r^2}\right)\tau.}
\]
One can also check the local adapted-normal identity \(B|_\Gamma=\gamma K\epsilon_\Gamma\) without using the Bañados equations. Indeed, for \(e^2|_\Gamma=0\) and internal normal \(n^a=(0,0,1)\),
\[
K=-\omega^1(E_0)-\omega^0(E_1),\qquad
\omega_a\wedge e^a=[\omega^0(E_1)+\omega^1(E_0)]\epsilon_\Gamma,
\]
where \(E_a\) is dual to \(e^a\). This uses the torsion-free connection and this local normal-frame gauge; it does not make \(B\) a globally Lorentz-invariant form.

At the outer wall,
\[
\boxed{\Delta\ell_\Gamma=B|_\Gamma+\ell_\chi-\ell_D
=-\gamma(K-2/\ell)\epsilon_\Gamma
=-\frac{4q}{R^2}p\tau
=-\frac{k}{\pi R^2}L_+L_-\tau.}
\]
Equivalently, relative to \(dt\wedge d\phi\), the coefficient is positive: \(+4qp/R^2\).

## 4. Metric potential, corner representative, and finite-wall variation

For \(s_{\mu\nu}=\delta g_{\mu\nu}\), a standard EH representative is
\[
\boldsymbol\theta_g=\gamma\iota_v\epsilon,
\qquad v^\mu=\nabla_\nu s^{\mu\nu}-\nabla^\mu(g^{\rho\sigma}s_{\rho\sigma}).
\]
For a fixed timelike wall, define the tangential vector
\[
b^i=h^{ij}n^\mu\delta g_{\mu j}=-\delta n_\parallel^i.
\]
A compatible metric corner representative is
\[
C_g=-\gamma\iota_b\epsilon_\Gamma,
\]
with
\[
(\boldsymbol\theta_g+\delta\ell_D)|_\Gamma
=\gamma\big[(K-1/\ell)h^{ij}-K^{ij}\big]\delta h_{ij}\epsilon_\Gamma+dC_g.
\]
For completeness, its sign follows in Gaussian normal coordinates from
\[
n_\mu v^\mu=D_ib^i-K^{ij}c_{ij}+Ka-\partial_\rho c,
\qquad
\delta K=\tfrac12\partial_\rho c-D_ib^i-\tfrac12Ka,
\]
where \(a=\delta g_{\rho\rho}\), \(b_i=\delta g_{\rho i}\), \(c_{ij}=\delta h_{ij}\), \(c=h^{ij}c_{ij}\). Adding the GHY variation leaves \(-\gamma D_ib^i\epsilon_\Gamma=dC_g\). The counterterm supplies the displayed \(-h^{ij}/\ell\) contribution.

For the variations in the question, \(\delta g_{rr}=\delta g_{ri}=0\), so \(b=0\), \(\delta n=0\), and \(C_g=0\).

The required tetrad pullback can be computed directly:
\[
e_a\wedge\delta e^a
=\frac{\ell^2}{r^2}(P\delta Q-Q\delta P)dt\wedge d\phi
=-\frac{P\delta Q-Q\delta P}{r^2F}e^0\wedge e^1.
\]
With \(*(e^0\wedge e^1)=-e^2\), this yields
\[
\boxed{\alpha=\gamma*(e_a\wedge\delta e^a)
=\frac{q(P\delta Q-Q\delta P)}{r(r^4-PQ)}dr.}
\]
It is generally nonzero as a spacetime one-form, but
\[
\alpha|_\Gamma=0,\qquad \alpha|_{\partial\Sigma}=0,
\qquad B|_{t=\mathrm{const}}=0.
\]
The CS potential itself vanishes on the supplied family: its tangential terms wedge a chiral one-form with itself, while radial terms trace a diagonal matrix against an off-diagonal variation. Therefore the supplied local identity gives
\[
\boldsymbol\theta_g=-\delta B+d\alpha,
\qquad \boxed{\boldsymbol\theta_g|_\Gamma=-\frac{2q}{R^2}\delta p\,\tau.}
\]
It follows that
\[
\boxed{(\boldsymbol\theta_g+\delta\ell_D)|_\Gamma
=+\frac{4q}{R^2}\delta p\,\tau,}
\qquad
\boxed{\delta\Delta\ell_\Gamma=-\frac{4q}{R^2}\delta p\,\tau.}
\]
The metric nonstationarity on these finite-wall variations is precisely cancelled by adding the relative wall density. This matches an independent direct contraction of the Brown–York expression above.

For an ordinary common local trivialization,
\[
\Theta_\chi-\Theta_D
=\delta\int_\Sigma B
-\int_{\partial\Sigma}(\alpha+C_\chi-C_g).
\]
The **local collar corner defect** \((\alpha+C_\chi-C_g)|_{\partial\Sigma}\) is zero. For a constant-\(t\) slice segment entirely in this collar, \(B|_\Sigma=0\) as well. This does not prove that the global phase-space symplectic form is zero. The full interior extension, constraints, topology, and transition functions have not been specified by the collar ansatz.

## 5. Checks, limits, and what is not established

1. **Exact component check.** A rational-function-field Sage computation independently reconstructed the metric, computed its Christoffel-symbol EH potential, checked torsion, evaluated \(K\), and contracted the Brown–York variation. The three components of \(\boldsymbol\theta_g+\delta B-d\alpha\), all nine torsion components, and the Brown–York variation residual were exactly zero. See the [successful concise CAS record](</Users/koishi/.dsh/research-results/session-725d131a9339/413155f2c3ca-research-result-readable.txt>). The calculation includes arbitrary symbols for \(P_u,Q_v,\delta P_u,\delta Q_v\), not only constant profiles.
2. **Finite-wall counterexample.** Global AdS in this collar has \(P=Q=-1/4\), yielding \(\Delta\ell_\Gamma=-q\tau/(4R^2)\ne0\). For a one-sector subfamily with \(PQ\equiv0\), the density vanishes, but variations leaving that subfamily need not have \(\delta(PQ)=0\).
3. **Boundary conditions differ.** On a fixed wall, \(\delta h_{uu}=\ell^2\delta P\) and \(\delta h_{vv}=\ell^2\delta Q\). Thus exact finite-wall Dirichlet data force \(\delta P=\delta Q=0\) within this family. Fixed Brown–Henneaux leading source, \(r^{-2}h\to\ell^2du\,dv\), permits arbitrary bounded profile variations. The nonzero metric boundary variation above is evaluated on the latter, not on finite-wall Dirichlet variations.
4. **Asymptotic limit.** For uniformly bounded \(P,Q,\delta P,\delta Q\), and a fixed finite coordinate-time interval, both \(\Delta\ell_\Gamma\) and its variation are \(O(R^{-2})\) and tend to zero. The conclusion does not cover cutoff-dependent variations that grow with \(R\), moving cutoff embeddings, or the degenerate surface \(F=0\).
5. **Not off-shell equivalence.** The result establishes a finite-wall mismatch and its asymptotic disappearance on this family. Equal asymptotic values, vanishing corner pullbacks, or coincident restricted symplectic currents do not identify the full off-shell theories or their boundary ensembles.
6. **Global action qualification.** In a single global trivialization the transgression must be integrated over every component of \(\partial M\), including inner walls and caps. In annular/polar spin frames not extending as a single disk \(SL(2)\) trivialization, overlap terms and possible global action phases require separate bookkeeping. In particular, the fact that both local covariant CS three-forms vanish on the chiral collar must not be combined with the canonical formula while silently dropping its inner-wall conversion term.
7. **Currents versus action phases.** Under field-independent Lorentz transition functions, \(e_a\wedge\delta e^a\), hence \(\alpha\) and \(\delta\alpha\), glue globally even if \(B\) does not. Consequently the local current identity \(\boldsymbol\omega_{CS}=\boldsymbol\omega_g-d\delta\alpha\) can still provide a valid fixed-bundle global current comparison. It does not supply missing cap, overlap, or global action data.
