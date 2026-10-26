# Common radial cutoff and genuine switching: new joint-limit results

## Fixed input and scope

The input is commit
`aa128cb903e0f3750a16a69487d64013d38667b1`.
The complete stress–scalar–scalar boundary coefficient is the three-line
common-cutoff integral (5) of `half_bps_stress_completion.md`.
Write it as \(G_B(p,q,\Omega)\), with \(r=q-p+\Omega\), and let
\(G=\lim_{B\to\infty}G_B\) be its actual canonical causal limit.
All three insertions use exactly the same
\(\beta_B(u)=\beta(u/B)\).

The established result removes \(B\) first and the spacetime scale \(R\)
second. This note proves two further statements:

1. a global strong joint limit on all sufficiently fast **linear**
   radial paths \(B\ge cR\);
2. cutoff-uniform removal on every compact strictly timelike patch
   with nonzero transfer mass, including its physical collinear Gram
   threshold.

The second statement uses an exact all-insertion Hankel cancellation,
before radial integration. The remaining massive and soft estimates
are now supplied by half_bps_stress_joint_massive.md and
half_bps_stress_joint_soft.md. Their all-strata dominated gluing is recorded
in the main joint-limit theorem.

## 1. A global linear-path theorem

Assume

\[
\beta(v)=1\quad(0\le v\le b_0),\qquad
\beta\in C_c^\infty([0,\infty)),\qquad |\beta|\le1,
\]
\[
\chi\in C_c^\infty(\mathbb R^4),\quad
\operatorname{supp}\chi\subset\{|X|_E\le L_\chi\},\quad
\chi(0)=1.
\]

Here \(b_0,L_\chi>0\) are fixed profile constants. The profile is smooth
as a radial function at the origin because it is a plateau there.

**Theorem 1.** For every \(M>0\) there is a finite Schwartz seminorm
\(P_M\) and a constant \(C_M\), independent of \(B,R\), such that

\[
\left|
\left\langle
(G_B-G)\widehat\chi_R,\Psi
\right\rangle\right|
\le C_M B^{-M}P_M(\Psi),
\qquad
B\ge {2L_\chi\over b_0}R,\quad B,R\ge1.
\tag{1}
\]

Consequently every path satisfying this linear inequality and
\(R\to\infty\) has the already identified strong
\(\mathcal S'(\mathbb R^{12})\) Wightman limit. In particular the
condition \(B/R\to\infty\) is sufficient; a fixed sufficiently large
ratio also suffices.

### Proof

Use independent momenta \((p,r,q)\) and pair the complete retarded
output of each graph first, as in the causal-corner construction.
For the middle graph this is \(r\); for the stress graph it is \(p\);
for the right graph it is \(-q\).

For fixed two free input momenta, inverse Fourier transformation of
the output test gives, up to a harmless phase,

\[
F_R(X)=
\int_{\mathbb R^4}
\chi(Y/R)\,F(X-Y)\,d^4Y,
\tag{2}
\]

where \(F\) is the inverse transform in the injection variable of
the original Schwartz test. Its Schwartz bounds are uniform with
arbitrary polynomial weights in the two remaining free momenta.
Every polynomial output factor in \(\mathcal N\) becomes a fixed
number of \(X\)-derivatives in (2). Those derivatives can act on
\(F\), so they introduce no power of \(R\).

For \(|X|_E\ge2L_\chi R\), the integration domain has
\(|X-Y|\ge |X|/2\). Extending it to the corresponding exterior region
in the variable \(Z=X-Y\) gives, for every desired \(n\),

\[
|\partial_X^\gamma F_R(X)|
\le C_{n,\gamma}(1+|X|_E)^{-n}\,Q_{n,\gamma}(\Psi).
\tag{3}
\]

The constant is uniform in \(R\): this estimate uses the integral
of the Schwartz tail, rather than its supremum multiplied by an
\(R^4\) volume. Spectator-momentum weights satisfy the same bound.

The two causal output kernels are exactly

\[
\mathcal F^{-1}\mathscr R_k(0,u)
=-\frac{\theta(T)}{\pi}\delta'(T^2-|\mathbf X|^2-u^2),
\]
\[
\mathcal F^{-1}\partial_{s(k)}^2\mathscr R_k(0,u)
=-\frac{\theta(T)\theta(T^2-|\mathbf X|^2-u^2)}{16\pi}.
\tag{4}
\]

Their supports have \(|X|_E\ge u\). The cutoff difference vanishes
unless \(u\ge b_0B\). Under the inequality in (1), this lies entirely
in the region where (3) applies. The explicit delta-derivative
pairing or the step-kernel integral then gives arbitrary powers of
\(u^{-1}\), uniformly in \(R\).

The remaining free modes satisfy
\(|J_0|\le1\) and
\(|\partial_x^2J_0(u\sqrt x)|\le u^4/32\).
Their polynomial growth and the polynomial tensor numerator consume
only finitely many test weights. Integration of the remaining
radial tail over \(u\ge b_0B\) proves (1), after increasing the
Schwartz seminorm. This is precisely the original integral, with no
interchange of a singular projector and a scalar distribution.

The argument works on bounded sets of Schwartz tests, so its
convergence is strong. Combining it with the proved adiabatic
limit of \(G\widehat\chi_R\) completes the theorem. \(\square\)

### What this theorem does not assume

No lower external mass or Gram determinant enters (1). In particular
all null strata and the twelve-dimensional origin are included.
The conclusion is stronger than a generic estimate
\(B^{-M}R^k\), obtained by blindly differentiating the narrowing
switch transform. The causal support supplies the uniform estimate
directly.

The fast-path estimate alone does not cover a path such as
\(B=\log R\). Such paths are covered by the additional annular
estimates and their dominated gluing, independently of this
full-output tail theorem.

### 1.1 Uniform bounded external radii

The same proof applies to the complete finite-radius three-insertion
coefficient, uniformly for \(0\le z\le Z\) and \(0\le w\le W\).
The scalar output kernel with an external radius \(z\) is the circular
average of the six-dimensional retarded kernel with transverse
distance
\[
\rho_\theta=(u^2+z^2-2uz\cos\theta)^{1/2}\ge|u-z|.
\tag{4a}
\]
For \(u\ge2Z\), this is at least \(u/2\). Free external radial
factors remain bounded by one on their actual free cones.
Thus a sufficient uniform condition is
\[
b_0B\ge4L_\chi R,\qquad b_0B\ge2\max(Z,W,1).
\tag{4b}
\]
Under (4b), (1) holds for the complete finite-radius coefficient
with a constant independent of \(z,w\) in those intervals.
Combining it with the established bounded-radii theorem also allows
the independent external radii to tend to zero jointly with \(R\).
This argument uses the complete causal output kernels directly;
it introduces no isolated exponentially growing \(I_0\) multiplier.

## 2. Exact timelike all-insertion cancellation

Put \(a=\sqrt{x}\), \(b=\sqrt y\), and \(c=\sqrt t\) on positive
mass patches. Use

\[
R_\pm(m^2,u)=\frac{\pi}{2}Y_0(mu)
\mp\frac{i\pi}{2}J_0(mu),
\qquad
\partial_x^2J_0(au)=\frac{u^2}{4a^2}J_2(au),
\tag{5}
\]

and the analogous identity with \(Y_0,Y_2\).

### 2.1 Past middle momentum

When \(r\in V_-\), the middle and outer-stress terms survive.
Their imaginary parts cancel exactly at each \(u\). The remaining
raised scalar integrand, including \(u\,du\), is

\[
I^-_u=
\frac{\pi}{8a^2}\,u^3J_0(bu)
\left[Y_2(au)J_0(cu)+J_2(au)Y_0(cu)\right].
\tag{6}
\]

The polynomial tensor and the common overall normalization have
been factored out. The exact identity

\[
Y_\nu(A)J_0(C)+J_\nu(A)Y_0(C)
=\frac{H_\nu^{(1)}(A)H_0^{(1)}(C)
-H_\nu^{(2)}(A)H_0^{(2)}(C)}{2i}
\tag{7}
\]

holds before taking any large-\(u\) expansion.
Thus (6) has only the phases

\[
\pm(a+c)u\pm bu.
\tag{8}
\]

At stationarity \(p=q-r\), reverse timelike triangle gives
\(a\ge b+c\). In particular
\[
a+c-b\ge2c.
\tag{9}
\]
The seemingly dangerous phase \(a-b-c\) is absent from the
complete common-cutoff integrand. The statement includes the
physical Gram threshold \(a=b+c\).

### 2.2 Future middle momentum

When \(r\in V_+\), the middle and right-scalar terms survive, and
their complete integrand is

\[
I^+_u=
\frac{\pi}{8a^2}\,u^3J_2(au)
\left[Y_0(cu)J_0(bu)+J_0(cu)Y_0(bu)\right].
\tag{10}
\]

Here the phases are \(\pm(b+c)u\pm au\). At stationarity
\(q=p+r\), so \(b\ge a+c\), and
\[
b+c-a\ge2c.
\tag{11}
\]

The same-sign Hankel identity removes the physical resonant phase
in this sector too.

## 3. A cutoff-uniform timelike annular theorem

Consider a compact patch with
\[
a,b,c\ge m_0>0
\]
and fixed energy signs as above, whose stationary points belong to
the corresponding physical sector. Shrink the injection
neighborhood once so that the gap in (9) or (11) stays at least
\(m_0\). The compact support of the external test is otherwise
arbitrary, including overlap with the collinear Gram surface.

**Theorem 2.** On this patch, the complete boundary kernel and all
fixed parameter derivatives obey
\[
\|G_B-G\|_{C^k}\le C_{k,M}B^{-M}
\tag{12}
\]
for every \(k,M\). Hence its genuine switched pairing converges
along every joint path \(B(R)\to\infty,\ R\to\infty\).

**Proof.** The standard large-positive-argument Hankel expansions
write (6) and (10) as finite sums of
\[
e^{iu\phi}\,u^{3/2}\,a_\phi(u;\text{parameters}),
\qquad |\phi|\ge m_0,
\tag{13}
\]
where \(a_\phi\) is a classical symbol of order zero, uniformly
with all fixed parameter derivatives on the compact patch.
The exact identity (7) ensures that only the gapped phases
occur, including every asymptotic order.

Integrate the tail \((\beta_B-1)\) repeatedly by parts in \(u\).
Boundary terms at the plateau endpoint vanish; the endpoint at
infinity is understood in the same oscillatory boundary-value
definition, or with a temporary exponential damping that is
removed after these integrations. Derivatives of \(\beta(u/B)\)
cost \(B^{-1}\), and symbol derivatives lower its order. Arbitrarily
many integrations therefore give (12), including fixed parameter
derivatives.

For the switched pairing,
\(\|\widehat\chi_R\|_{L^1}\) is independent of \(R\).
Its part outside the fixed small-injection patch is smaller than
every inverse power of \(R\), by the global uniform
twelve-dimensional finite-order bound and a Schwartz tail.
This proves the claimed joint convergence. \(\square\)

On spacelike-transfer compact sets with
\(\sqrt{-t}\ge m_0>0\), the same result is immediate from
the exponential \(K_0(u\sqrt{-t})\) factor.
On regular nonzero-Gram patches where the physical mass map is
a submersion, it also follows by pairing the unraised free mass
first in the Hankel transform, with the injection retained as a
smooth parameter. These observations do not cover the degenerate
zero-transfer map.

## 4. Why the word common is necessary

At the collinear values \(a=b+c>0\), the individual stress term
in (6) has the nonoscillatory asymptotic contribution

\[
I^{\mathrm{stress}}_u
=-\frac{u^{3/2}}{16\sqrt\pi\,a^2\sqrt{abc}}
+\text{oscillatory terms}+O(u^{1/2}),
\tag{14}
\]

and the middle term has the opposite leading contribution.
Their finite integrals separately grow as \(B^{5/2}\) times
\(\int_0^\infty v^{3/2}\beta(v)\,dv\). At a generic nearby test
this leading pointwise growth must still be treated
distributionally; (14) is not itself a statement about a
nonzero unamputated tensor exactly at collinearity.

The exact sum removes this contribution for a common cutoff.
Cutting the two terms separately with unrelated profiles loses
the integrand identity. Likewise complex-frequency shifts change
the arguments in only the retarded factors, so (7) does not
automatically prove a corresponding Abel-family statement.

## 5. The additional interfaces used for unrestricted paths

Beyond Theorems 1–2, unrestricted paths require a bound uniform
in \(B\) for the injection trace on these annular geometries:

1. massive \(p=q\), \(r=0\), where the gap (9)/(11) collapses;
2. the mass-dependent gluing to nonzero collinear null rays;
3. the soft external endpoints, including the finite-\(B\)
   contribution outside a mass band whose exact support
   cancellation holds only after \(B\to\infty\).

The existing all-null central cores are uniform in every \(B>0\).
The complementary massive annuli are now controlled by
half_bps_stress_joint_massive.md, using a hard-mass pairing at the
original radial integral. The finite-\(B\) soft leakage is
controlled by half_bps_stress_joint_soft.md. Those estimates supply
the hypotheses for the main all-strata joint theorem.

An alternative, unused route would express the finite-\(B\) scalar seed
as the convolution in a two-dimensional transverse injection
\(\kappa\), supplied by \(\widehat\beta_B\), and prove that its
actual radially raised TT coefficient is continuous as a
\(\mathcal D'_{p,q}\)-valued function jointly at
\((\Omega,\kappa)=(0,0)\).
The unraised six-dimensional seed has this property. Its
continuity estimate cannot simply be differentiated twice:
the outer-cone mass jets and the harmonic TT cancellation must
be retained in the raised theorem.

**Verified:** Theorem 1; identities (5)–(11); Theorem 2 with the
specified positive-mass compact patch; the individual leading
term (14).

**Assumptions:** the actual common causal radial prescription of
the fixed commit; smooth plateau radial cutoff; the stated
support, mass-gap and profile conditions.

**Separate result:** arbitrary slow joint paths are proved by the
new massive/soft estimates and the main dominated-gluing theorem.

**Not established:** identification of a denominator-only
frequency-Abel family with the genuine switched observable.

## Executable verification links

- [regulator_checks.py](checks/dictionary_extensions/regulator_checks.py) and [actual output](checks/dictionary_extensions/regulator_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
