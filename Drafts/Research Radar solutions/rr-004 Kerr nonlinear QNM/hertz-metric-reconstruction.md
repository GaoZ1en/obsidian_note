# Hertz inversion and a full second-order metric check

## Result

**An outgoing Hertz potential and second-order metric have been constructed for the rotating DD response, and the full coordinate Einstein equation has been checked independently at two exterior points.** With daughter angular cutoff $\ell_{\max}=18$, the relative residuals are $7.26\times10^{-19}$ and $3.34\times10^{-17}$. They decrease strongly as the angular cutoff is increased.

The [null-plane identity](chiral-source-identity.md) proves that this source admits a zero GHZ corrector and that the quadratic extreme-curvature extraction vanishes in the chosen chiral tetrad. The inversion below also controls the Hertz potential at both radial ends. These results remove specific earlier obstructions. A subsequent [outgoing residual-kernel proof](chiral-reconstruction-proof.md) establishes the untruncated Einstein implication within its analytic class. The numerical check itself is not that proof. Existence/angular estimates and the metric-CPS source-current map remain separate requirements.

## 1. Fix the metric and curvature conventions

The component computation in this note follows Ma--Yang's signature $(+---)$, their Kinnersley tetrad, and
$$
\Psi_4=-C_{abcd}n^a\bar m^bn^c\bar m^d.
$$
The Einstein tensor is the covariant $G_{ab}$. The curvature sign used in the component implementation is
$$
R^a{}_{bcd}
=\partial_c\Gamma^a{}_{db}-\partial_d\Gamma^a{}_{cb}
+\Gamma^a{}_{ce}\Gamma^e{}_{db}
-\Gamma^a{}_{de}\Gamma^e{}_{cb}.
$$
The scalar variable in the separated second-order equation is
$$
\boxed{\psi^{(2)}=\bar\Gamma^4\Psi_4^{(2)}.}
$$
It is not $2\bar\Gamma^4\Psi_4^{(2)}$. The factor $2\bar\Gamma^4\Sigma$ multiplies the equation before separation; it is not the definition of $\psi^{(2)}$. This distinction is visible in the text immediately before equation (61) on PDF page 8.

The general gravitational-response note uses $(-+++)$ instead. To translate a complete metric family between these conventions, negate the background and every perturbation order together. Keeping the background in one signature while importing the perturbation coefficients from the other gives an incorrect second-order sign.

The initial component check exposed both of these mistakes in its harness: it used the wrong factor in the Hertz inversion and mixed the two signatures. After correcting the input definitions directly from PDF pages 2 and 8, the Einstein residual converges as reported below. The failed run, the scaling diagnostic and the corrected run are saved separately. No fitted rescaling is part of the final construction.

## 2. The radial inversion is a fourth-order transport problem

Write $\Omega=2\omega$, $m_Q=4$ and
$$
\sigma_Q=\frac{2r_+\Omega-am_Q}{d},\qquad d=r_+-r_-.
$$
For a separated angular daughter, let $Y(r)$ be the spin $-2$ radial solution from the quadratic source calculation. The linear Hertz reconstruction identity is
$$
\Psi_4=\frac{\Delta^4}{32\bar\Gamma^4}
(\mathcal D_2^\dagger)^4U(r)\,S_Q(\theta)
e^{-i\Omega t+im_Q\phi},
$$
so the required radial equation is
$$
\boxed{(\mathcal D_2^\dagger)^4U=32\Delta^{-4}Y.}
$$
The radial operator now uses the daughter frequency and azimuthal number:
$$
\mathcal D_2^\dagger
=\partial_r+\frac{iK_Q+4(r-1)}{\Delta},
\qquad K_Q=(r^2+a^2)\Omega-am_Q.
$$

Define the integrating factor, on the fixed logarithmic branches,
$$
q(r)=e^{i\Omega r}
(r-r_+)^{2+i\sigma_Q}
(r-r_-)^{2+i(2\Omega-\sigma_Q)}.
$$
Then
$$
q'/q=\frac{iK_Q+4(r-1)}{\Delta},
\qquad
(\mathcal D_2^\dagger)^4U=q^{-1}(qU)''''.
$$
The outgoing daughter and Hertz prefactors are
$$
p_-=e^{i\Omega r}
(r-r_-)^{1+2i\Omega+i\sigma_Q}
(r-r_+)^{2-i\sigma_Q},
$$
$$
p_+=e^{i\Omega r}
(r-r_-)^{-3+2i\Omega+i\sigma_Q}
(r-r_+)^{-2-i\sigma_Q}.
$$
Put $Y=p_-D(x)$ and set
$$
Z(r)=e^{2i\Omega r}(r-r_-)^{-1+4i\Omega}.
$$
Two exact identities simplify the inversion:
$$
\boxed{qp_+=q\Delta^{-4}p_-=Z.}
$$
Thus
$$
(qU)''''=32Z(r)D(x(r)).
$$
Both the operator and prefactor identities were checked symbolically.

Choose the outgoing end in the same sector as the curvature solution. The inverse with no incoming homogeneous polynomial is
$$
\boxed{
U(r)=\frac{32}{6q(r)}
\int_r^{\infty_{\mathcal C}}
(\rho-r)^3Z(\rho)D(x(\rho))\,d\rho.
}
$$
Differentiating the integral four times gives the stated right side with a positive sign. Its homogeneous ambiguity is
$$
U_{\rm ker}=q^{-1}(c_0+c_1r+c_2r^2+c_3r^3).
$$
These terms carry the incoming infinity exponential $e^{-i\Omega r}$. The selected outgoing sector excludes them, so this radial curvature inversion is unique within that sector. This is a statement about the Hertz inversion; it is not a classification of every metric perturbation invisible to $\Psi_4$.

## 3. Endpoint behavior of the reconstructed potential

At infinity, $D(x)\to E$ and $\operatorname{Re}\Omega>0$. Along the vertical end, $Z$ decays exponentially. Repeated integration therefore gives
$$
U(r)=p_+(r)\left(\frac{2E}{\Omega^4}+O(r^{-1})\right).
$$
The amplitude factor is $32/(2i\Omega)^4=2/\Omega^4$. It is fixed by the curvature definition above.

At the horizon, $Z(r)$ and $D(x(r))$ are analytic functions of $r-r_+$ on the chosen local branch. The source for $(qU)''''$ is therefore regular. The integral defines an analytic $qU$ there, and
$$
U=(r-r_+)^{-2-i\sigma_Q}\times
\text{a holomorphic factor}.
$$
The homogeneous polynomial excluded at infinity would also be regular in $qU$ at the horizon; horizon regularity alone would not fix the inversion.

The metric reconstructed by the local CCK differential operator consequently has finite pole orders multiplying the same outgoing phase. It belongs to the finite-derivative contour class used in the domain note, for each retained angular daughter. Its bilinear products with a specified outgoing test mode can therefore be assigned a common decaying contour when the corresponding real phase sums are positive.

This controls the transport inverse that was absent from the earlier local-product lemma. It does not establish an estimate uniform in an infinite angular sum.

## 4. Constructing and checking the metric

For every daughter, the radial inversion supplies $U,U',\ldots,U^{(4)}$ at the chosen point. The angular function is the independently diagonalized spin-weighted spheroidal harmonic, with the bilinear normalization used in the rotating-source calculation. The local metric follows from the same three CCK components used for the parent:
$$
k_{ab}
=k_{ll}n_an_b
-k_{l\bar m}(n_am_b+m_an_b)
+k_{\bar m\bar m}m_am_b.
$$
The scalar coefficient functions here are complex; no conjugate channel is silently added.

The inverse integral is evaluated independently of the radial linear solve. Composite Gauss quadrature uses the vertical path from $r$ to $r+100i$, with subdivisions at imaginary heights $0,1,2,4,8,16,32,64,100$. Increasing each subinterval's quadrature order from 64 to 96 changes the computed integral jets by less than $5\times10^{-68}$ at $r=3$ and $7\times10^{-64}$ at $r=2.5$. These are refinement differences; the entire boundary-value problem is not certified to that many digits.

For a single-parameter expansion,
$$
g_\epsilon=g_0+\epsilon h+\epsilon^2 k,
$$
the equation to check is
$$
\boxed{E_1k+Q[h,h]=0,\qquad Q=\tfrac12D^2G.}
$$
The calculation differentiates the full coordinate metric, constructs its inverse and Christoffel symbols, and evaluates all 16 covariant Einstein components. It does not use the reduced Teukolsky equation to set this residual to zero. Parent radial/angular equations are used to generate consistent linear jets; daughter radial jets come from the independent integral above.

The metric source is nonzero. The largest coordinate component of $Q$ is about $0.02953$ at the first point and $0.04917$ at the second. The relative residual in the table is
$$
\frac{\max_{a,b}|(E_1k+Q)_{ab}|}
{\max_{a,b}|Q_{ab}|}.
$$

| Daughter cutoff | $(r,\cos\theta)=(3,1/3)$ | $(r,\cos\theta)=(2.5,-1/5)$ |
|---|---|---|
| $\ell_{\max}=6$ | $1.88\times10^{-4}$ | $1.16\times10^{-3}$ |
| $\ell_{\max}=10$ | $3.20\times10^{-9}$ | $4.55\times10^{-8}$ |
| $\ell_{\max}=14$ | $5.53\times10^{-14}$ | $8.48\times10^{-13}$ |
| $\ell_{\max}=18$ | $7.26\times10^{-19}$ | $3.34\times10^{-17}$ |

The parent linear Einstein residual vanishes to the 70-digit working precision. The source's $n$ projection vanishes as predicted by the exact chiral identity. Radial cutoff is 800; the angular eigenvectors use cutoff 20. Thus the displayed refinement isolates the number of reconstructed daughter multipoles, with other settings fixed.

This is an independent tensor-level check of the source and reconstructed response at the sampled points. It is stronger than checking only the separated radial equation. It remains a finite check, not a proof that the exact untruncated metric satisfies every Einstein component everywhere.

## 5. Relation to the waveform and remaining CPS work

The reconstructed curvature has the same outgoing coefficient $E_\ell$ as the source solve. Summing daughter angular mixing and using the fixed strain convention therefore gives the previously computed spherical DD ratio
$$
\mathcal R_{\rm DD}^{22\to44}
=0.13411911684264305335-0.00708489139678474978i.
$$
The zero quadratic extraction result explains why the linear curvature of $k$ is sufficient in this particular chiral tetrad. In a different gauge the quadratic completion must be restored according to the naturality identity.

The metric/Teukolsky Green-current relation still contains the source-current term $j_S(u,F)$ even though the GHZ corrector is zero. These are different objects. The local relation is
$$
j_E(S^\dagger u,k)
=j_O(u,Tk)-j_S(u,F)+dH
$$
for the stated on-shell adjoint test field, with signs fixed in the gravitational-response note. The endpoint bounds above control finite differential boundary terms for a specified admissible test mode. One must still establish the full sourced reconstruction identity and match the consistently normalized current and observable maps, rather than treating the present pointwise Einstein checks as that theorem.

Evidence is saved in [the symbolic inverse check](verification/hertz-inverse-identities.wl), [the outgoing inversion](verification/kerr-hertz-inversion-l18.wl), [the first metric refinement](verification/kerr-metric-residual-convergence.wl), and [the second metric refinement](verification/kerr-metric-residual-second-point.wl), with adjacent JSON outputs. The generated `kerr-dd-response-data-l18.wl` stores the independent curvature coefficients; `kerr-dd-hertz-jets-l18*.wl` stores the inversion results at the two points.

The initial inversion files preserve the incorrect factor 16, and the initial metric residual preserves the signature mismatch. Only the files labelled corrected, l18, convergence, or second-point implement the final conventions. The corrected first inversion's tool text still names the old output in its final metadata line; its actual `Put` target is `kerr-dd-hertz-jets-corrected.wl`. The later l18 runs have matching output labels and file targets.

**Verified:** the exact fourth-order inverse, prefactor identities, outgoing uniqueness within its radial kernel, and endpoint behavior; independent tensor evaluation of all second-order Einstein components with angular refinement at two points; agreement with the previously fixed waveform coefficient.

**Assumptions:** the single chiral DD sector; the stated source-derived CCK operator; fixed branches and outgoing sector; nonzero daughter frequency; the finite angular and radial approximations specified above.

**Not verified here:** existence and an infinite-angular norm estimate for the full sourced response, or the completed normalized metric-CPS source/residue-to-observable map. The linked residual-kernel supplement proves the full Einstein implication once an outgoing curvature response in its analytic class exists. The [selected-coefficient construction](invariant-selected-coupling.md) and [normalization proof](metric-cps-normalization.md) now answer the narrower original criterion without assuming that full angular metric sum.

