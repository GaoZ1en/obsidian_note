# The second-order gravitational response and the missing CPS term

## Result

**The raw quantity $\Omega_\Sigma(h_a,h_{bc})$ is not a conserved coupling when $h_{bc}$ solves an inhomogeneous second-order Einstein equation.** Its slice change contains a bulk source integral, in addition to boundary flux. This obstruction survives before any endpoint regularization is needed.

A fixed nonlinear waveform has a different, gauge-covariant definition: its second-order response includes both the second-order metric and the quadratic variation of the extraction map. The gauge cancellation below is exact. Applying it to continued Kerr QNMs still requires a controlled source domain and a compatible reconstruction; those analytic steps are not proved here.

## 1. Action and mixed-order convention

Take the Einstein--Hilbert four-form
$$
L[g]=\frac{1}{16\pi G}R[g]\,\epsilon_g,\qquad
\delta L=\mathcal E^{ab}\delta g_{ab}+d\theta(g;\delta g),
\qquad
\mathcal E^{ab}=-\frac{1}{16\pi G}G^{ab}\epsilon_g.
$$
The signature is $(-+++)$ and the background $g_0$ is vacuum Kerr. Boundary counterterms, if needed, must be varied consistently in $\theta$ and in the source pairing. They do not remove an interior inhomogeneous equation.

Use independent parameters:
$$
g(s,t)=g_0+s h_b+t h_c+st h_{bc}+O(s^2,t^2).
$$
Write $E_1=D G|_{g_0}$ and $E_2=D^2G|_{g_0}$ for the covariant Einstein tensor. Then
$$
E_1h_b=E_1h_c=0,\qquad
E_1h_{bc}=-E_2(h_b,h_c).
$$
There is no factor $1/2$ in this mixed equation. For a single expansion
$g=g_0+\varepsilon h+\varepsilon^2 k+\cdots$, instead
$$
E_1k=-\frac12E_2(h,h).
$$
This distinction matters when two parent labels coincide.

## 2. The exact slice balance law

Set
$$
\omega(g;h,k)=\delta_h\theta(g;k)-\delta_k\theta(g;h)
$$
for commuting variations. Applying their commutator to $L$ gives
$$
d\omega(g;h,k)
=h_{ab}\,D\mathcal E^{ab}[k]
-k_{ab}\,D\mathcal E^{ab}[h].
$$
At the vacuum background, take $E_1h_a=0$ and set
$$
\mathcal T_{bc}^{ab}=-D^2\mathcal E^{ab}[h_b,h_c],
\qquad
D\mathcal E^{ab}[h_{bc}]=\mathcal T_{bc}^{ab}.
$$
The conversion from $G_{ab}$ to $\mathcal E^{ab}$ introduces no additional mixed source on linear on-shell parents: the derivatives of the inverse metric and volume multiply $G$ or $E_1h_b,E_1h_c$.

Thus
$$
\boxed{d\omega(g_0;h_a,h_{bc})=h_{a\,ab}\mathcal T_{bc}^{ab}.}
$$
For a finite slab with oriented boundary
$\partial V=\Sigma_2-\Sigma_1+B$,
$$
\boxed{
\Omega_{\Sigma_2}(h_a,h_{bc})
-\Omega_{\Sigma_1}(h_a,h_{bc})
+\int_B\omega(g_0;h_a,h_{bc})
=\int_Vh_{a\,ab}\mathcal T_{bc}^{ab}.
}
$$
The same statement holds with a reflected homogeneous test mode where that reflection is an Einstein symmetry. A prescription that removes the side flux must still retain the volume integral.

One can define an anchored conserved expression,
$$
I_\Sigma=\Omega_\Sigma(h_a,h_{bc})
-\int_{V(\Sigma_0,\Sigma)}h_{a\,ab}\mathcal T_{bc}^{ab}
+\int_{B(\Sigma_0,\Sigma)}\omega,
$$
which equals $\Omega_{\Sigma_0}(h_a,h_{bc})$. This depends on initial data and the source history. It is not an instantaneous, intrinsic three-mode coefficient.

Endpoint renormalization may make each term finite. It cannot turn the displayed sourced Green identity into the homogeneous one without an additional, specified subtraction of the source history.

## 3. What a first-order gauge change does at mixed order

For a smooth vector field $\xi$, naturality of the Einstein tensor says
$$
G[\Phi_\xi^*g]=\Phi_\xi^*G[g].
$$
Differentiate once along $h$ and once along the diffeomorphism parameter:
$$
\boxed{
E_2(h,\mathcal L_\xi g_0)+E_1(\mathcal L_\xi h)
=\mathcal L_\xi(E_1h).
}
$$
On a linear solution the right side is zero. Consequently,
$$
h_c\mapsto h_c+\mathcal L_\xi g_0,\qquad
h_{bc}\mapsto h_{bc}+\mathcal L_\xi h_b
$$
preserves the mixed Einstein equation. A further pure gauge
$\mathcal L_\zeta g_0$ can be added at mixed order.

The term $\mathcal L_\xi h_b$ is not generally a pure gauge perturbation of $g_0$. Dropping it while changing the first-order reconstruction compares different second-order solutions. Likewise, the change of the raw CPS projection contains
$\Omega_\Sigma(h_a,\mathcal L_\xi h_b)$, which is not removed by degeneracy along $\mathcal L_\zeta g_0$.

The identity is a consequence of naturality, not of a numerical example. As a separate sign and combinatorial check, the saved Mathematica/xAct computation expands the covariant Einstein tensor about four-dimensional Minkowski space for a nontrivial polynomial $h$ and $\xi$. It retains an off-shell parent with $E_1h\ne0$: all 16 components of
$$
E_2(h,\mathcal L_\xi\eta)
+E_1(\mathcal L_\xi h)-\mathcal L_\xi E_1h
$$
vanish, the pure-gauge linear Einstein tensor vanishes, and the mixed source itself is nonzero. This is a component check of the convention, not a separate proof of a Kerr reconstruction theorem.

## 4. The observable response contains a quadratic extraction term

Fix an asymptotic frame, polarization dyad, time origin, and angular basis. Let $\mathcal O[g]$ denote a specified waveform observable in that frame. For example, it can be the coefficient of a fixed spin-weighted spherical harmonic in the asymptotic strain, with its integration constants fixed. Proper diffeomorphisms must preserve this physical frame and the initial/boundary data.

Write
$$
\mathcal O_1=D\mathcal O|_{g_0},\qquad
\mathcal O_2=D^2\mathcal O|_{g_0}.
$$
Its mixed response is
$$
\boxed{
\mathcal A_{bc}
=\mathcal O_1[h_{bc}]
+\mathcal O_2[h_b,h_c].
}
$$
For a diffeomorphism-invariant extraction map,
$\mathcal O[\Phi_\xi^*g]=\mathcal O[g]$. Differentiation gives
$$
\mathcal O_1[\mathcal L_\xi g_0]=0,\qquad
\mathcal O_2[h,\mathcal L_\xi g_0]
+\mathcal O_1[\mathcal L_\xi h]=0.
$$
This cancels the two changes in $\mathcal A_{bc}$ exactly. It also explains why a curvature variable linear in $h_{bc}$ alone cannot be declared invariant at second order. A special gauge may make the quadratic extraction term vanish, but that vanishing must be established for that extraction and gauge.

An explicit second-order Kerr waveform completion was already constructed by [Campanelli--Lousto](https://arxiv.org/abs/gr-qc/9811019v2). Its abstract confirms coordinate and tetrad completion of the curvature waveform; no formula from that paper is treated as machine-verified here.

If a retarded inverse $G_{\rm ret}$ is defined on the conserved source, with the required initial constraints and homogeneous data fixed, then
$$
\mathcal A_{bc}
=-\mathcal O_1G_{\rm ret}E_2(h_b,h_c)
+\mathcal O_2(h_b,h_c).
$$
Gauge independence follows by the preceding identities when the inverse, proper gauge transformation, and initial data are compatible. The operator formula does not establish those domain hypotheses for exponentially divergent QNM parents.

The same argument proves reconstruction independence **if** two reconstructions describe the same physical parents, source, completion and data, and their difference is proper gauge. A homogeneous radiative solution, a Kerr parameter variation, or a changed asymptotic frame is additional physical input, not a gauge ambiguity that the proof removes.

For sourced Kerr perturbations, [Green--Hollands--Zimmerman](https://arxiv.org/html/1908.09095v3) explicitly includes a source-dependent corrector tensor alongside the Hertz contribution, gauge part and Kerr zero mode. Pure vacuum Hertz reconstruction therefore cannot be assumed to reconstruct an arbitrary second-order sourced metric.

## 5. The metric/Teukolsky current relation also has a source correction

Use the following Green-current convention for any linear differential operator $X$:
$$
\nabla_a j_X^a(u,v)=u\cdot Xv-(X^\dagger u)\cdot v.
$$
Here adjoints are formal spacetime adjoints in the appropriate dual bundles; the dot includes their natural pairing and volume density.

Let the operator identity be
$$
SE=OT,\qquad E^\dagger=E,\qquad ES^\dagger=T^\dagger O^\dagger.
$$
For Kerr, this is the Teukolsky--Wald relation: $T$ extracts a linearized curvature component and $S$ projects an Einstein source. [Green et al., equations (15)--(18)](https://arxiv.org/html/2210.15935v3) give the homogeneous metric/Teukolsky current relation, including its local superpotential. Their displayed conventions differ in signature/current orientation from those chosen here; the following algebra fixes its own signs.

For arbitrary $u,h$, direct substitution into the two Green identities gives
$$
\begin{aligned}
\nabla_a\{j_O^a(u,Th)-j_E^a(S^\dagger u,h)\}
&=u\cdot S(Eh)-(S^\dagger u)\cdot Eh\\
&\quad -(O^\dagger u)\cdot Th
+(T^\dagger O^\dagger u)\cdot h\\
&=\nabla_a\{j_S^a(u,Eh)-j_T^a(O^\dagger u,h)\}.
\end{aligned}
$$
Therefore
$$
j_O(u,Th)-j_E(S^\dagger u,h)-j_S(u,Eh)
+j_T(O^\dagger u,h)
$$
is identically divergence-free, even off shell. Locally, the variationally trivial part can be represented by an antisymmetric superpotential; its actual boundary integral must still be checked in a global comparison.

When $O^\dagger u=0$ and $Eh=F$, the integrated relation has the form
$$
\boxed{
\int_\Sigma j_E(S^\dagger u,h)
=\int_\Sigma j_O(u,Th)-\int_\Sigma j_S(u,F)
+\int_{\partial\Sigma}H.
}
$$
The orientation of $H$ is defined by this equation. It is the second integral on the right that is absent for homogeneous perturbations. It is a source current on the slice, not just a possible radial endpoint term.

A one-dimensional example makes the issue explicit without Kerr complications. Take
$E=O=\partial_x^2+\omega^2$ and $S=T=\partial_x$, so $S^\dagger=-\partial_x$.
Then
$$
j_E(-u',h)=-u'h'+u''h,\qquad
j_O(u,h')=uh''-u'h',\qquad
j_S(u,F)=uF.
$$
For $Eu=0$,
$$
j_E(-u',h)-j_O(u,h')=-u(h''+\omega^2h)=-uF.
$$
The correction is generally nonzero. Mathematica checked this exact identity, the off-shell composition identity, and the formal-adjoint current for a variable-coefficient second-order scalar operator.

For the gravitational problem, this supplies the local source term that must accompany the metric-to-Teukolsky pairing map. It does not evaluate the Kerr superpotential at the complex contour ends, nor prove that the reconstructed QNM source lies in the required global domain.

## 6. Frequency-domain coefficient and the role of the pairing

For parent dependence $e^{-i\omega_b t+im_b\varphi}$ and
$e^{-i\omega_c t+im_c\varphi}$, the quadratic source has
$$
\Omega=\omega_b+\omega_c,\qquad m=m_b+m_c.
$$
In a fixed observable and analytic outgoing-domain convention, a candidate mixed coefficient is
$$
\mathcal R_{bc}(\Omega)
=-\mathcal O_1(\Omega)P(\Omega)^{-1}S_{bc}
+\mathcal O_2(h_b,h_c),
$$
where $S_{bc}$ is the correctly projected quadratic source. The sign here uses $P h_{bc}=-S_{bc}$.

For a simple daughter pole $\omega_a$,
$$
P(\Omega)^{-1}
=\frac{u_a\otimes v_a}{(\Omega-\omega_a)N_a}
+H_a(\Omega),\qquad
N_a=v_aP'(\omega_a)u_a.
$$
The pole contribution is
$$
-\frac{\mathcal O_1(\Omega)u_a\,v_aS_{bc}}
{(\Omega-\omega_a)N_a}.
$$
The regular part $-\mathcal O_1H_aS_{bc}$ and the quadratic extraction term are still present. In particular, a response at $\Omega=2\omega_{220}$ is not generally the excitation of one linear daughter QNM. No complete discrete QNM expansion is needed or assumed.

Under exact resonance, the pole generates secular time dependence after inversion; a finite constant obtained by simply dividing by $\Omega-\omega_a=0$ is undefined. Off resonance, a change of nonlinear amplitude coordinates can alter an equation's quadratic coefficient, as derived in [solution.md](solution.md). Fixing the observable response is the relevant repair.

A renormalized CPS pairing can represent $v_aS_{bc}$ and $N_a$ once their domains and boundary prescriptions are matched. It is one part of this response construction. The pairing alone supplies neither the quadratic observable nor the regular resolvent part.

## 7. Selection rules and the remaining Kerr gate

Axial covariance of the Einstein equation and the fixed extraction gives $m=m_b+m_c$ for the displayed complex channel. Conjugate channels carry the corresponding signed frequencies and azimuthal numbers. For reflection eigenstates, covariance likewise requires the daughter's physical reflection parity to equal the product of the two parental parities. Spin-weighted strain is exchanged with its conjugate under the geometric reflection, so the scalar rule involving just $\ell_b+\ell_c+\ell_a$ cannot be reused without specifying the polarizations.

For generic rotating Kerr, axial symmetry and equatorial reflection do not imply a spherical $\ell$ triangle rule.

**Verified:** the sourced variational identity and mixed gauge cancellation are derived above; the saved four-dimensional Einstein component check tests the mixed-order factors with a nonzero source. The independently computed scalar benchmark is in [scalar-benchmark.md](scalar-benchmark.md).

**Assumptions:** proper diffeomorphisms; fixed extraction frame and data; consistent source completion; simple pole only where explicitly used; compatible inverses and analytic continuation for any QNM coefficient.

The [analytic-domain supplement](analytic-source-domain.md) proves a common contour bound for finite local differential products. The [rotating source calculation](kerr-quadratic.md) independently solves the DD waveform after auditing the analytic source. The [chiral null-plane identity](chiral-source-identity.md) proves that this particular source permits a zero GHZ corrector and zero quadratic extreme-curvature extraction in its compatible tetrad. An [outgoing Hertz inverse and metric](hertz-metric-reconstruction.md) have now been constructed, with all Einstein components checked under angular refinement at two points. The local source-current term in section 5 is still required; it is not the GHZ corrector.

The [outgoing residual-kernel proof](chiral-reconstruction-proof.md) now establishes the untruncated all-component implication within its analytic class.

The [normalization proof](metric-cps-normalization.md) now controls the selected-channel source-current endpoints and EH factors. The [completed observable construction](invariant-selected-coupling.md) proves its invariances directly.

**Not verified:** existence/angular completion of the full daughter metric and extensions beyond the stated analytic domains. The selected response functional does not assume these stronger results.
