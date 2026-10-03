# The separated Kerr source Green integral

## Result and scope

**The regular direct--direct source constructed in [the rotating calculation](kerr-quadratic.md) admits a convergent separated radial Green formula on the stated complex contour, at a nonresonant daughter frequency.** The potentially growing incoming branch in the Green kernel produces an integrable $r^{-3}$ tail. The outgoing waveform amplitude is a sourced radial-current projection.

This establishes more than a local differential-product bound: it controls the two integrals of the separated inhomogeneous curvature equation. The subsequent [Hertz inversion](hertz-metric-reconstruction.md) constructs a metric and checks its Einstein residual; the chiral source permits a zero corrector. The present Green formula alone does not establish the full metric-CPS observable or certify nonresonance by an interval bound.

## 1. Equation, branches and source class

For the spin $-2$ daughter let
$$
L_\Omega Y=\Delta Y''-\Delta'Y'+V_{-2}(r;\Omega,m_Q,A)Y=Q(r),
\qquad M=1,\quad |a|<1.
$$
The potential and separation constant use the spin-two note's conventions. Fix an angular daughter and a branch of the complex radial covering. Put
$$
z_h=r-r_+,\qquad
\sigma_Q=\frac{2r_+\Omega-am_Q}{r_+-r_-}.
$$
In this note $z_h$ is the radial horizon coordinate; it is distinct from the angular variable $\cos\theta$ used in the source calculation.

Assume $\Omega\ne0$, $\operatorname{Re}\Omega>0$, and choose the outgoing Stokes sector containing the vertical endpoint $r=r_0+iY$, $Y\to+\infty$. Let $u$ be the horizon-ingoing homogeneous solution and $v$ the infinity-outgoing solution, normalized by
$$
u=z_h^{2-i\sigma_Q}(u_0+O(z_h)),\qquad u_0\ne0,
$$
$$
v=e^{i\Omega r}r^{3+2i\Omega}(1+O(r^{-1})).
$$
The other infinity branch is
$$
v_{\rm in}=e^{-i\Omega r}r^{-1-2i\Omega}(1+O(r^{-1})).
$$
These asymptotic statements are sectorial ODE boundary conditions, not convergent power-series assertions at infinity. At a nonexceptional Frobenius frequency, the other horizon branch is $z_h^{i\sigma_Q}$ times an analytic factor. The argument below is stated away from logarithmic Frobenius degeneracies; a finite logarithmic factor would require retaining the corresponding endpoint estimates.

For the DD source with $\Omega=2\omega$, $m_Q=2m$, the exact prefactor calculation gives
$$
Q=z_h^{2-i\sigma_Q}(q_H+O(z_h))
\quad\text{at the horizon}.
$$
At infinity,
$$
Q=e^{i\Omega r}r^{2+2i\Omega}(q_\infty+O(r^{-1})).
$$
If $q_\infty=0$, the improved decay only helps. To see the second statement, $R_+\sim e^{i\omega r}r^{-5+2i\omega}F(1)$ and $h_j\sim(2i\omega)^jR_+$. The four source coefficients have leading values
$$
(A_1,A_2,A_3,A_4)
\sim R_+^2(64\omega^6,-64\omega^6,0,0),
$$
where the last two are lower order. Multiplying by $\Delta^6$ gives precisely the displayed source power. The leading coefficient can depend on the angular projection.

The horizon asymptotic follows without using a cancellation among numerical coefficients: $\mathcal D_2^\dagger$ conjugated by the parent QNM prefactor is regular at $r_+$, and
$\Delta^6p_+^2/p_Q=(r-r_-)^{-1}$.

## 2. Weighted Wronskian and Green solution

Multiplying the equation by $\Delta^{-2}$ gives
$$
(\Delta^{-1}Y')'+\Delta^{-2}V_{-2}Y=\Delta^{-2}Q.
$$
Define
$$
W=\Delta^{-1}(uv'-vu').
$$
It is independent of $r$. Require $W\ne0$, i.e. the two endpoint solutions are linearly independent. This is the precise nonresonance condition. A nonzero finite continued-fraction value is numerical evidence for it, not an exact lower bound on $|W|$.

On a contour $\mathcal C$ running from the horizon spiral to the outgoing infinity sector, variation of parameters gives
$$
\boxed{
Y(r)=\frac{v(r)}W\int_{r_+}^{r}u(\rho)\Delta(\rho)^{-2}Q(\rho)\,d\rho
+\frac{u(r)}W\int_r^{\infty_{\mathcal C}}
v(\rho)\Delta(\rho)^{-2}Q(\rho)\,d\rho.
}
$$
The source normalization includes no omitted power of $\Delta$. The derivative jump of the kernel is $1/\Delta^{-1}$, as required by the weighted equation.

The saved symbolic check shows both $W'=0$ and $L_\Omega Y-Q=0$, using independent integral functions with derivatives
$A'=u\Delta^{-2}Q$ and $B'=-v\Delta^{-2}Q$. This verifies the normalization and sign, rather than merely the form of a Green ansatz.

## 3. Endpoint convergence and boundary conditions

Near the horizon, decompose $v$ into its two local homogeneous branches. The two source products have powers
$$
u\Delta^{-2}Q=O(z_h^{2-2i\sigma_Q}),
$$
$$
v\Delta^{-2}Q
=O(z_h^{2-2i\sigma_Q})+O(1).
$$
Choose the spiral
$$
z_h=\rho_0e^{(1+i\kappa)s},\qquad s\to-\infty.
$$
Both integrals converge absolutely if
$$
\boxed{3+2\operatorname{Im}\sigma_Q
+2\kappa\operatorname{Re}\sigma_Q>0.}
$$
The $O(1)$ term is integrable because $|dz_h|\sim e^s ds$. For the selected corotating branch $\operatorname{Re}\sigma_Q>0$, a finite sufficiently large $\kappa$ exists.

The first integral vanishes as $z_h^{3-2i\sigma_Q}$ at its lower endpoint. Multiplication by the possible outgoing horizon part of $v$ gives $z_h^{3-i\sigma_Q}$, one power smaller than the prescribed ingoing branch. The second term has the leading ingoing form. Thus the solution satisfies the horizon condition, rather than retaining an arbitrary outgoing homogeneous admixture.

At infinity write $u=C_{\rm out}v+C_{\rm in}v_{\rm in}$. Then
$$
u\Delta^{-2}Q
=C_{\rm out}\,O(e^{2i\Omega r}r^{1+4i\Omega})
+C_{\rm in}\,O(r^{-3}),
$$
$$
v\Delta^{-2}Q=O(e^{2i\Omega r}r^{1+4i\Omega}).
$$
The exponential term decays along the vertical end because $\operatorname{Re}\Omega>0$. The algebraic term is absolutely integrable. This is the term that a finite-product exponential estimate alone does not control.

The tail of the algebraic integral is $O(r^{-2})$. Consequently the first Green term has an outgoing leading coefficient and a relative $O(r^{-2})$ correction. The second term also has the outgoing exponential, with lower polynomial order; it supplies no independent incoming radiation. More explicitly, multiplying its decaying integral by the incoming part of $u$ gives $O(e^{i\Omega r}r^{2i\Omega})$, which is three powers below $v$.

It follows that
$$
Y(r)=E\,v(r)+O(v(r)r^{-2})
$$
in the outgoing sector, with subleading terms understood relative to the same homogeneous $v$, and
$$
\boxed{
E=\frac1W\int_{\mathcal C}u\,\Delta^{-2}Q\,dr.
}
$$
Uniqueness follows because the difference of two such solutions would be homogeneous with both endpoint conditions, contradicting $W\ne0$.

If the contour is deformed in the same analytic covering, without crossing singularities or Stokes boundaries, the integral is unchanged. At infinity the connector integral of the algebraic tail tends to zero as $O(r^{-2})$; the outgoing term decays. The horizon connector vanishes by the strict displayed inequality. This is a specific contour-independence statement for the separated source amplitude.

## 4. The sourced radial current and the hyperboloidal form

For a homogeneous test solution $u$, define
$$
J[u,Y]=\Delta^{-1}(uY'-Yu').
$$
Then
$$
\boxed{J'[u,Y]=u\,\Delta^{-2}Q.}
$$
The horizon current vanishes for the Green solution under the same spiral condition. At the outgoing end it tends to $EW$. Therefore the Green formula is exactly the integrated sourced current balance.

It is not a conservation law for a homogeneous pairing with an inhomogeneous second argument. The source term is essential.

For the regularized variable $Y=p_QD(x)$, $u=p_QU(x)$, the current becomes
$$
J=\Delta^{-1}p_Q^2\frac{dx}{dr}
\left(U\partial_xD-D\partial_xU\right).
$$
Writing $Q=p_Qf$ gives
$$
\partial_xJ
=p_Q^2\Delta^{-2}\frac{dr}{dx}\,Uf.
$$
Thus the source pairing in the regularized equation uses the transformed left density, not a freely chosen Hilbert norm. This is the fixed-frequency source counterpart of the frequency-dependent norm comparison in the spin-two note. The frequency derivative of $p_Q$ still matters when taking a spectral residue; it is not needed for this same-frequency Green identity.

The numerical spectral solve in the rotating-source note solves this same separated boundary problem. Subject to its convergence to the stated endpoint solution and $W\ne0$, uniqueness identifies its $D(1)$ with $E$. No independent numerical integration of the Green integral has been performed in this note.

## 5. Remaining metric step

The separated Green identity is a curvature-level result. The metric/Teukolsky operator identity in [the gravitational response note](gravitational-response.md) contains the source correction $j_S(u,Eh)$ and a superpotential. Establishing their endpoint behavior for the complete sourced metric, and including the quadratic waveform extraction, is still necessary to obtain the original metric-CPS coupling statement.

The finite angular calculation also does not supply a uniform estimate for the sum over every daughter multipole. Neither an infinite angular completion nor the full hyperboloidal Hilbert domain is proved here.

**Verified:** the source endpoint powers follow from the exact regularized source; the Green integrals and boundary limits obey the displayed power estimates; Mathematica checks the weighted Wronskian, Green-equation residual and leading source coefficients.

**Assumptions:** subextremal Kerr, the chosen outgoing analytic sector, nonexceptional Frobenius exponents, $W\ne0$, the stated sectorial homogeneous asymptotics, and a single separated angular daughter.

**Not verified:** a certified nonzero Wronskian at the computed parent frequency; an independent numerical evaluation of this second-order radial Green integral; uniform infinite-angular estimates; the completed metric-CPS map. The separate fourth-order Hertz inversion has been numerically evaluated in the linked follow-up.
