# Projected Spectral Edge Completion

## 1. Purpose and claim

This note constructs the exact spectral domain and a selected auxiliary
finite-rank symplectic completion for the projected AdS--Rindler
Brown--Henneaux sector. It uses the finite-action CPS formalism of
`../article/`. The auxiliary pair cancels the finite-wall obstruction H47 on
each regulated coefficient space, but it has not yet been derived by varying
the complete gravitational moving-boundary action. It does not try to repair
a nonzero wall flux by a
scalar transgression, which is impossible because

$$
\delta(\mathcal B+\delta w)=\delta\mathcal B.
\tag{1.1}
$$

The projected transition statement below is now unconditional: its complete
two-symbolic-frequency density has a mode-uniform $L^1$ bound and a zero
transition remainder. The complete far-wall and raw far-joint endpoint
kernels also have uniform analytic bounds. H59b proves the integrated complete
finite-wall compensated bound $C(1+m+n)^7L^{-2}$ on
$\tanh(\epsilon/2)=1/(2L)$, including the finite phase and $r\sim L$ layer;
the former separate anchor-shift entry is removed as a double count. Both raw
and compensated finite-cylinder outer Brown--York source curvatures vanish
exactly. The compensated Cauchy-corner and outer-joint mismatches obey
$C(1+m+n)^6(L^2/R^2+L^4/R^2)$ and
$C(1+m+n)^6L^2/R^2$. H60 reduces the complete HW collar pullback to the fixed
section. Hence the full projected finite-action continuum theorem and its
slice covariance are proved on the declared linked regulator class.
The auxiliary cotangent cancellation is an optional enlargement, not an
assumption of the action-derived projected theorem. The spectral domain
construction and finite-rank curvature realization are exact.  This H51-stage
spectral argument by itself infers no positivity or quantum algebra.  H61
later identifies the endpoint-zero global-Killing representative for the full
linear metric quotient, and H62 independently proves positivity of the
combined classical Bañados form and its $H^2$ closure.

## 2. Spectral domains and regulator maps

Let $\Pi_C$ be the $H^s$ coefficient projection onto

$$
C=\operatorname{span}\{\sin2\phi,\cos4\phi\},
$$

and let $W=(1-\Pi_C)H^s$.  Write $R_M:W\to W$ for the ordinary coordinate
projection onto the cosine/sine frequencies $2\leq m\leq M$ after deleting
the two vectors in $C$.  The restriction

$$
T=P_A|_W:W\longrightarrow\mathcal H_A^s
$$

is a bounded isomorphism.  Indeed, for $f\in\mathcal H_A^s$,

$$
T^{-1}f=(1-\Pi_C)f,
$$

because $P_A(1-\Pi_C)f=f$. Define the adapted coordinate projection

$$
\boxed{
Q_M:=TR_MT^{-1}
=P_AR_M|_{\mathcal H_A^s}.
}
\tag{2.1}
$$

Then

$$
V_M=Q_M\mathcal H_A^s,
\qquad
V_M\subset V_{M+1},
\qquad
\overline{\bigcup_MV_M}=\mathcal H_A^s.
\tag{2.1a}
$$

Moreover,

$$
Q_MQ_N=Q_{\min(M,N)},
\qquad
\sup_M\|Q_M\|\leq\|T\|\,\|T^{-1}\|,
\qquad
Q_Mf\longrightarrow f\quad\text{in }H^s.
\tag{2.1b}
$$

Thus the vectors $P_Ae_j$ obtained from the complement-free normalized
Fourier basis form a Riesz basis of $\mathcal H_A^s$. Ordinary Fourier
truncation is not used: it fails already for
$f=P_A\cos5\phi$, whose frequency-four truncation has nonzero endpoints.

For $f\in\mathcal H_A^s$, write $f_M=Q_Mf$ and lift every basis vector
to its corrected unit-boundary bulk Brown--Henneaux generator $\zeta_I$. At
regulator $\lambda=(\epsilon,L,R)$ use

$$
h_I=\mathcal L_{\zeta_I}G,
\qquad
\chi_I=-p_L\zeta_I,
\qquad
p_L(r)=\frac{L^2}{L^2+r^2}.
\tag{2.2}
$$

The pulled-back inner tangent is

$$
\Delta_XG_I
=h_I+\mathcal L_{\chi_I}G
=\mathcal L_{(1-p_L)\zeta_I}G.
\tag{2.3}
$$

It vanishes on every fixed wall core as $L\to\infty$ and leaves the outer
Brown--Henneaux data unchanged because $p_L|_{r=R}\to0$ when $L/R\to0$.

## 3. Projected two-frequency transition theorem

Let $e_I,e_J$ be two fixed adapted trigonometric basis vectors. Let
$B_{IJ}^{(L)}$ be the direct symmetric bilinear non-Killing potential

$$
\frac12\Big(
-k_{[\xi,v_I]}[h_J+\mathcal L_{v_J}G]
-k_{[\xi,v_J]}[h_I+\mathcal L_{v_I}G]
+k_{v_I}[\mathcal L_\xi h_J]
+k_{v_J}[\mathcal L_\xi h_I]
\Big),
\tag{3.1}
$$

with $v_I=-p_L\zeta_I$. The universal fixed-pair statement is

$$
\boxed{
\lim_{L\to\infty}
\int_{\gamma_A}B_{IJ}^{(L)}
=
\int_{\gamma_A}B_{IJ}^{\rm local}.
}
\tag{3.2}
$$

To prove (3.2), set

$$
q=\cos2\phi\in[0,1],
\qquad
s=r\sqrt q,
\qquad
\gamma_A:\ s=1,
\tag{3.2a}
$$

on either half-geodesic. The interval wedge is $s\geq1$, so the inner outward
conormal is $-\mathrm ds$. All ambient derivatives entering (3.1) are taken
before restricting to $t=0,s=1$. With $\lambda=L^2$, the resulting exact
two-symbolic-frequency density for every real pairing
$A,B\in\{c,s\}$ has the structure

$$
B_{\lambda,mn}^{AB}(q)
=\frac{\sum_{a=1}^4\lambda^aN_{a,mn}^{AB}(q)}
{64\sqrt{1-q}\,(1+q)^{\rho_{AB}+(m+n)/2}
(q-1)(1+\lambda q)^4},
\tag{3.2b}
$$

where

$$
(\rho_{cc},\rho_{cs},\rho_{ss})
=\left(\frac{15}{2},\frac{13}{2},\frac{11}{2}\right),
$$

and

$$
N_{a,mn}^{AB}(q)
=q^{\nu_a}(1-q)\widehat N_{a,mn}^{AB}(q),
\qquad
(\nu_1,\nu_2,\nu_3,\nu_4)=(3,2,4,6).
\tag{3.2c}
$$

After the bounded frequency-dependent powers of $1+q$ and endpoint phases
are removed, every coefficient in $\widehat N_a$ has total frequency degree
at most six. The $(1-q)$ factor leaves only the integrable centre weight
$(1-q)^{-1/2}$. Splitting the integral at $q=1/2$ and using

$$
0\leq1-\left(\frac z{1+z}\right)^4\leq\frac4{1+z}
$$

then gives the uniform estimate

$$
\boxed{
\|B_{\lambda,mn}^{AB}-B_{mn}^{AB,{\rm local}}\|_{L^1(0,1)}
\leq\frac{C(1+m+n)^6}{\lambda}
=\frac{C(1+m+n)^6}{L^2}.
}
\tag{3.2d}
$$

The same estimate holds at the other anchor and for the reversed mixed
ordering. Thus (3.2) holds for every adapted pair, the projected endpoint
distribution is exactly zero, and there is no bulk transition remainder.

Separately, analytic finite parts of the symbolic expressions determine a
reflected fifth-jet functional. They include

$$
\mathcal A[\cos2\phi,\cos3\phi]=-\frac1{3\sqrt2},
\qquad
\mathcal A[\cos2\phi,\cos4\phi]=-\frac13
\tag{3.3}
$$

and, together with the additional exact cross data recorded in the ledger,
form a rank-21 system. The unique solution has only the zeroth--zeroth,
zeroth--first, and zeroth--second jet coefficients nonzero; all fourth- and
fifth-jet coefficients vanish. It also predicts, without refitting, the
direct checks
$\mathcal A[\cos3\phi,\cos4\phi]=-13/(3\sqrt2)$ and
$\mathcal A[\sin3\phi,\sin2\phi]=-2\sqrt2/3$.

The finite-part functional identified from those symbolic evaluations is

$$
\mathcal A[f]
=-\frac16\left[
\sum_{\sigma=\pm}f(\sigma a)
\big(-f''(\sigma a)-f(\sigma a)\big)
+f(a)f'(a)-f(-a)f'(-a)
\right].
\tag{3.4}
$$

Its symmetric polarization $\mathcal A[f,g]$ vanishes whenever both inputs
obey $f(\pm a)=g(\pm a)=0$, because every polarized monomial contains an
endpoint value from one of the two inputs. The algebraic regression reproduces
ten independently integrated exact mode anomalies and four direct cross
coefficients. Two cross coefficients complete the rank and two are unused
predictions. Thus $\mathcal A[P_Af,P_Ag]=0$ is an exact algebraic statement
about the reconstructed finite-part functional on arbitrary finite
trigonometric polynomials. It is not a proof that the complete regulated
ordinary kernel converges to $\mathcal A$: some unprojected symbolic
``integrals'' used in the reconstruction are finite parts of nonintegrable
expressions.

The fixed-pair hypotheses are essential. If the frequency grows with $L$,
the mixed layer is controlled by $m/L^2$ and the limits do not commute without
a diagonal prescription.

They are also sensitive to the anchor domain. The analytic finite-part
evaluation for the unprojected unit-boundary $\cos3\phi$ mode gives

$$
Q_{\rm local}=\frac{94}{35},
\qquad
\lim_{L\to\infty}Q_L=\frac{179}{210},
\qquad
\lim Q_L-Q_{\rm local}=-\frac{11}{6}.
\tag{3.5}
$$

Thus even where this selected finite part is available, pointwise convergence
alone does not determine the integrated limit. More decisively, the direct
unprojected cosine-$3$/cosine-$4$ density has

$$
B_{34}^{(L)}\big(\pm(a-d)\big)
=\frac{51L^4}{16\sqrt2}\frac1d+O(d^0).
\tag{3.5a}
$$

Its inner RT integral is logarithmically divergent at every finite $L$ when
the anchor cutoff has already been removed. Therefore the rank-21 data cannot
be interpreted as an ordinary unprojected endpoint distribution.  This is a
correct obstruction to using that raw generator representative, but not an
invariant obstruction of the metric perturbation.  H61 replaces each profile
$f$ by $P_{\rm PSL}f$, adding only an exact global AdS Killing vector.  The
metric perturbation is unchanged, both endpoint values vanish, and the H51
ordinary transition estimate applies.  Hence no physical asymptotic-frame
pair is required to remove this pole.

Two independent diagonal and one genuinely off-diagonal calculation check
the projected ordinary target:

$$
\lim_{L\to\infty}Q_L(P_A\cos3\phi)
=-\frac{76}{385},
\tag{3.6}
$$

in unit-boundary 2501 orientation, and

$$
\lim_{L\to\infty}
B_L(P_A\sin3\phi,P_A\sin4\phi)
=-\frac{4\sqrt2}{7}.
\tag{3.7}
$$

The selected physical $m=2$ mode separately gives $-32/105$. Equation (3.6)
equals the physical value $-38/1155$ after multiplying by its scale squared
$1/6$; comparing the two without this factor would create a spurious finite
anomaly.

The direct projected sine-$3$/sine-$4$ and projected
cosine-$2$/cosine-$3$ densities have zero endpoint residue and value and obey

$$
B_{34}^{P_A}(a-d)
=-\frac{3L^4}{4\sqrt2}d^2+O(d^3),
\qquad
B_{23}^{P_A}(a-d)
=\frac{3L^4}{8\sqrt2}d^2+O(d^3).
\tag{3.8}
$$

Their $L^2$-scaled endpoint profiles vanish. The second pair has the exact
integrated remainder

$$
\int_{\gamma_A}B_{23}^{P_A,(L)}
-\int_{\gamma_A}B_{23}^{P_A,\mathrm{local}}
=-\frac{2\sqrt2}{21L^4}+O(L^{-5}).
\tag{3.9}
$$

These earlier selected checks are now strict special cases of (3.2d).

## 4. Finite-rank boundary obstruction and its edge cancellation

Let $a^I$ be real coordinates on $V_M$. Pull the complete artificial-boundary
two-form, including the Brown--York wall and Hayward joints, back to the
regulated family (2.2):

$$
F_{M,\lambda}
=\frac12F_{IJ}^{(M,\lambda)}
\delta a^I\wedge\delta a^J.
\tag{4.1}
$$

At linearized order its coefficients are constant on the coefficient space
and $F_{M,\lambda}$ is closed. H47 says that it need not vanish at finite
cutoff. Define instead the finite-rank edge one-form

$$
\boxed{
\Theta_{{\rm edge},M,\lambda}
=-\frac12F_{IJ}^{(M,\lambda)}a^I\delta a^J.
}
\tag{4.2}
$$

Then

$$
\delta\Theta_{{\rm edge},M,\lambda}
=-F_{M,\lambda},
\tag{4.3}
$$

so the graph of the lifted modes is exactly Lagrangian at every finite
regulator. This is an exact auxiliary symplectic completion of the selected
finite-rank coefficient family, not a scalar $\delta w$. By finite-dimensional
Darboux decomposition, (4.2) can
equivalently be represented by finitely many canonical edge pairs
$(Q^\alpha,P_\alpha)$ with
$\Omega_{\rm edge}=\sum_\alpha\delta P_\alpha\wedge\delta Q^\alpha$.

It does not by itself identify the Darboux variables with gravitational wall,
joint, anchor, or embedding canonical pairs. For a field-dependent or
nonlinear finite-rank family, replace (4.2) by the standard radial homotopy
potential of the closed two-form. The present linearized auxiliary
construction needs only (4.2).

## 5. Conditional diagonal regulator theorem

Equation (3.2d), the Riesz-basis coefficient estimate, and the uniform
boundedness of $Q_M$ imply directly that

$$
\boxed{
\|B_{M,L}^{\rm trans}-B_M^{{\rm trans},{\rm local}}\|_{H^s\times H^s}
\leq C_s\frac{M^6}{L^2}.
}
\tag{5.0}
$$

Thus $M^6/L(M)^2\to0$ is sufficient for the projected transition sector and
its limit is schedule independent in that class. For the **complete**
finite-action diagonal theorem, H59a--H60 now prove:

1. H46--H51 and H59a--H59c give mode-uniform bounds for every complete wall,
   transition, joint, anchor, and outer-corner stratum on
   $\tanh(\epsilon/2)=1/(2L)$;
2. the complete moving-boundary action supplies the embedding and joint
   cross terms which cancel the fully compensated gauge-core curvature;
3. H60 identifies the weak HW collar with the fixed section sector by sector.

The auxiliary edge sector (4.2) may instead be included as an explicit
enlargement of phase space, but it is not derived from, or required by, the
action-derived projected theorem.

For fixed $M$, these theorems, the ordinary outer Brown--Henneaux cutoff
convergence inherited from `../article/`, and finite dimensionality give

$$
\lim_{\epsilon\to0}
\lim_{L\to\infty}
\lim_{R\to\infty}
F_{M,(\epsilon,L,R)}=0
\tag{5.1}
$$

and convergence of every finite-action bilinear matrix entry to the local
projected entry. Therefore one may choose recursively

$$
L_M\to\infty,
\qquad
R_M/L_M\to\infty,
\qquad
\epsilon_M\to0,
\tag{5.2}
$$

with the transition condition and the remaining kinematic conditions

$$
\frac{M^6}{L_M^2}\to0,
\qquad
\frac{M\sinh\epsilon_M}{L_M}\to0,
\tag{5.3}
$$

such that, in the $H^s$ operator norm on $V_M$,

$$
\|F_{M,\lambda_M}\|\leq2^{-M},
\qquad
\|B_{M,\lambda_M}-B_M^{\rm local}\|\leq2^{-M}.
\tag{5.4}
$$

Every entry in (5.4) now has a mode-uniform bound. On
$y=1/(2L)$ the complete finite-wall, transition, raw wall, raw joint,
compensated outer-joint, compensated outer-corner, and raw outer-corner
operator errors are bounded respectively by
$C_sM^7/L^2$, $C_sM^6/L^2$,
$C_sM^7(yL^{-5}+L^{-6})$, $C_sM^6yR^{-5}$,
$C_sM^6L^2/R^2$, $C_sM^6(L^2/R^2+L^4/R^2)$, and
$C_sM^6R^{-6}$. The outer source term is zero. In particular
$L=M^{10}$ and $R=M^{30}$ give a conservative complete error
$O(M^{-13})$. The recursive $2^{-M}$ choice remains available but is no
longer needed to establish existence.

Let $\iota_M$ map $f\in\mathcal H_A^s$ to the regulated bulk/embedding/edge
configuration built from $Q_Mf$. Since the local projected bilinear
form is continuous for $s>5/2$,

$$
\begin{aligned}
&|B_{M,\lambda_M}(Q_Mf,Q_Mg)
-B^{\rm local}(f,g)|\\
&\quad\leq
2^{-M}\|f\|_{H^s}\|g\|_{H^s}
+|B^{\rm local}(Q_Mf,Q_Mg)
-B^{\rm local}(f,g)|
\longrightarrow0.
\end{aligned}
\tag{5.5}
$$

If the optional auxiliary realization is used, (5.4) also makes its edge
potential (4.2) tend to zero uniformly on bounded coefficient sets. Thus

$$
\boxed{
\lim_{M\to\infty}
B_{M,\lambda_M}(\iota_Mf,\iota_Mg)
=B^{\rm local}(f,g),
\qquad s>\frac52.
}
\tag{5.6}
$$

Every diagonal sequence satisfying (5.4) has the same complete limit, so the
result is schedule independent within this admissible class. Transition-
sector schedule independence already follows unconditionally from (5.0).
The complete far-wall estimate gives a constructive but nonoptimal
$s>15/2$ route for that sector. The complete raw far-joint bound has degree
six and an exact $\tanh(\epsilon/2)q^5$ factor; its compensated mismatch is
separate. The full conditional statement (5.6) needs only the proved local
threshold $s>5/2$ once its remaining analytic hypotheses hold.

## 6. Scope

**Verified:** the adapted nested fixed-anchor projections $Q_M$, including
their uniform boundedness and density; fixed-anchor projection and physical
normalization; local $H^s$ continuity for $s>5/2$; the complete far-wall
kernel bound $C(1+m+n)^7(\tanh(\epsilon/2)q^5+q^6)$; the complete raw
moving-joint bound $C(1+m+n)^6\tanh(\epsilon/2)q^5$;
the finite-wall H47 obstruction; its compensated low-mode suppression; exact
proper-transition convergence for the selected mode, the projected cosine
and sine modes, and a nonzero off-diagonal projected pair; the rank-21
reflected fifth-jet reconstruction of analytic finite parts; three unused
direct finite-part predictions; exact algebraic annihilation of projected
polynomials by that finite-part functional; the direct unprojected
cosine-$3$/cosine-$4$ endpoint pole; the exact projected two-symbolic-
frequency factorization (3.2b)--(3.2c); ordinary integrability at both
anchors and the centre; the uniform $L^1$ estimate (3.2d); the zero projected
endpoint distribution and bulk remainder; the block estimate (5.0);
and the auxiliary finite-rank curvature cancellation (4.2)--(4.3).

**Assumptions of the proved transition theorem:** corrected smooth
compactified mode lifts; the declared radial profile; the project Iyer--Wald
potential and orientation; integer frequencies $m,n\geq2$; fixed anchors on
the $t=0$ cut; and vacuum Einstein AdS$_3$.

**Not proved at the H51 stage:** a representative-independent full metric
quotient; a lower regularity threshold; positivity; nonlinear/global edge
charts; a fixed-width smooth Gaussian-null realization of every finite-
Sobolev tangent; or a quantum edge Hilbert space. H59a--H59c subsequently
close the complete projected fixed-section schedule, H60 proves the exact
weak-collar pullback and time-fibre symplectomorphism, H61 supplies the
$P_{\rm PSL}$ section of the full linear metric quotient, and H62 proves the
positive combined-form closure to ordinary $H^2$.  The separated point-
anchor CPS chart remains at $H^\sigma$, $\sigma>5/2$; no $H^{3/2}$ claim is
made.  Nonlinear Bañados-orbit charts and all quantum extensions remain
outside this note.
