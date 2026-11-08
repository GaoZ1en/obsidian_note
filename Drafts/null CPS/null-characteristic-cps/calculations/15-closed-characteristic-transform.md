# Closed Characteristic Analysis Transform and Its Two Completions

## 1. Verdict and Hilbert Spaces

Fix one radiative master mass \(\mu>0\).  The two-sheet formula of `13-characteristic-complex-structure.md`
defines a closable real-linear analysis operator.  Its closure is the
operator used in the classical energy theorem.  The associated idempotent is
bounded in the graph topology; it is not asserted to be an
everywhere-defined bounded projector on the ambient \(H^1\)-profile space.

Set

$$
H_{\mathrm{match}}
:=\{(f,g)\in H^1(\mathbb R_+)\oplus H^1(\mathbb R_+):f(0)=g(0)\},
$$

$$
Y_E:=L^2(\mathbb R,\omega_k\,dk),
\qquad \omega_k=\sqrt{k^2+\mu^2}.
\tag{1.1}
$$

All spaces are real Hilbert spaces when the usual relation between \(a\) and
\(\overline a\) is imposed.  Let

$$
\mathscr C_{\mathrm{match}}
:=\{h\in\mathcal S(\overline{\mathbb R}_+)^2:
h_-(0)=h_+(0),\ T_\mu^{(0)}h\in Y_E\},
\tag{1.2}
$$

where \(T_\mu^{(0)}\) is formula (2.1) of calculation 13.  The core contains
\(C_c^\infty((0,\infty))^2\).  Adding one synthesized Schwartz pair with
nonzero common trace supplies the missing one-dimensional trace direction.
The \(H^1_0\)-density theorem then makes
\(\mathscr C_{\mathrm{match}}\) dense in \(H_{\mathrm{match}}\).

## 2. Closed-Operator Theorem

### Theorem 2.1

The densely defined operator

$$
T_\mu^{(0)}:\mathscr C_{\mathrm{match}}
\subset H_{\mathrm{match}}\longrightarrow Y_E
\tag{2.1}
$$

is closable.  Define

$$
T_\mu:=\overline{T_\mu^{(0)}},
\qquad
\mathcal D_E(T_\mu):=\operatorname{Dom}T_\mu.
\tag{2.2}
$$

Then \(T_\mu:\mathcal D_E(T_\mu)\to Y_E\) is closed and
\(\mathcal D_E(T_\mu)\) is Hilbert in the graph norm

$$
\boxed{
\|h\|_{\mathcal D_E}^2
=\|h\|_{H^1\oplus H^1}^2
+\|T_\mu h\|_{L^2(\omega dk)}^2.}
\tag{2.3}
$$

The closure domain is the definition.  Equality with a formal maximal
distributional domain is not assumed.

### Proof

For each \(b\in\mathcal S(\mathbb R_k)\), substitution of the two half-line
Fourier kernels and Fubini on the core gives

$$
\langle T_\mu^{(0)}h,b\rangle_{Y_E}=L_b(h).
\tag{2.4}
$$

After changing variables \(k\leftrightarrow\alpha_k,\beta_k\), the mass gap
and rapid decay of \(b\) make the inverse kernels defining \(L_b\) elements
of \(H^{-1}(\mathbb R_+)\) on each sheet.  Hence

$$
|L_b(h)|\leq C_b\|h\|_{H^1\oplus H^1}.
\tag{2.5}
$$

If \(h_n\to0\) in \(H_{\mathrm{match}}\) and
\(T_\mu^{(0)}h_n\to a\) in \(Y_E\), then (2.4)--(2.5) imply
\(\langle a,b\rangle_{Y_E}=0\) for every Schwartz \(b\).  Schwartz functions
are dense in \(Y_E\), so \(a=0\).  This is the closability criterion.  The
remaining statements are the standard closure construction.  \(\square\)

## 3. Bounded Synthesis and Exact Left Inverse

Let \(S_\mu\) be the two-sheet synthesis formula of calculation 13.  The
exact null-trace estimates of calculation 12 give

$$
\boxed{
\|S_\mu a\|_{H^1\oplus H^1}^2
\leq \sqrt2\left(1+\frac2{\mu^2}\right)
\|a\|_{Y_E}^2.}
\tag{3.1}
$$

Thus \(S_\mu:Y_E\to H_{\mathrm{match}}\) is bounded.  On the Schwartz
spectral core, the two principal-value terms cancel and the two delta terms
add to one:

$$
T_\mu^{(0)}S_\mu a=a.
\tag{3.2}
$$

For \(a_n\to a\) in \(Y_E\), with \(a_n\) Schwartz, (3.1) gives
\(S_\mu a_n\to S_\mu a\) in \(H_{\mathrm{match}}\), while (3.2) gives
\(T_\mu S_\mu a_n=a_n\to a\).  Closedness therefore yields

$$
\boxed{
S_\mu a\in\mathcal D_E(T_\mu),
\qquad T_\mu S_\mu a=a,
\qquad a\in Y_E.}
\tag{3.3}
$$

In particular \(S_\mu\) is injective.

## 4. Graph Projector and Intrinsic Energy Profile Space

Define

$$
P_\mu:=S_\mu T_\mu:
\mathcal D_E(T_\mu)\longrightarrow\mathcal D_E(T_\mu).
\tag{4.1}
$$

Equations (3.1) and (3.3) give

$$
T_\mu P_\mu h=T_\mu h,
\qquad P_\mu^2h=P_\mu h,
\tag{4.2}
$$

and

$$
\|P_\mu h\|_{\mathcal D_E}^2
\leq
\left[1+\sqrt2\left(1+\frac2{\mu^2}\right)\right]
\|T_\mu h\|_{Y_E}^2.
\tag{4.3}
$$

Thus \(P_\mu\) is a bounded idempotent on the graph Hilbert space, hence
closed in that topology.  No claim is made that it is bounded on ambient
\(H_{\mathrm{match}}\), or closed there as an unbounded operator without the
graph topology.

Define

$$
\boxed{
X_{E,\mu}:=\ker_{\mathcal D_E(T_\mu)}(1-P_\mu)
=\{h\in\mathcal D_E(T_\mu):P_\mu h=h\}.}
\tag{4.4}
$$

This is graph-closed, and (3.3) gives

$$
X_{E,\mu}=S_\mu Y_E,
\qquad
T_\mu:X_{E,\mu}\overset{\sim}{\longrightarrow}Y_E,
\qquad S_\mu=T_\mu^{-1}.
\tag{4.5}
$$

The definition is intrinsic: it does not define the target as the range of
spacetime restriction.

## 5. Global Restriction Without Circular Range Language

Let \(\mathcal A_\mu:\mathcal S_{E,\mu}\to Y_E\) be the stationary
coefficient isometry of calculation 12.  Literal restriction obeys

$$
R_X=S_\mu\mathcal A_\mu.
\tag{5.1}
$$

Therefore

$$
\boxed{
R_X:\mathcal S_{E,\mu}\overset{\sim}{\longrightarrow}X_{E,\mu}}
\tag{5.2}
$$

is bijective, and

$$
\|R_X\Phi\|_{E,X}^2
:=\|T_\mu R_X\Phi\|_{Y_E}^2
=E_\mu[\Phi],
\tag{5.3}
$$

$$
\Omega_X(R_X\Phi_1,R_X\Phi_2)
=\Omega_\Sigma(\Phi_1,\Phi_2).
\tag{5.4}
$$

Thus \(R_X\) is an isometric symplectic isomorphism in the energy norm.  The
graph norm states closedness; it is not identified with the exact energy.

## 6. Classical and One-Particle Complex Structures

On the classical energy profile space define

$$
\boxed{
J_{X,E}h:=S_\mu(-i)T_\mu h,
\qquad h\in X_{E,\mu}.}
\tag{6.1}
$$

Multiplication by \(-i\) preserves \(Y_E\), so \(J_{X,E}\) preserves
\(X_{E,\mu}\), obeys \(J_{X,E}^2=-1\), and is bounded in the energy and graph
norms.

The one-particle completion is different.  Let

$$
Y_1:=L^2(\mathbb R,dk),
\qquad
X_{1,\mu}:=\text{the abstract completion transported from }Y_1
\text{ by completing the core synthesis map}.
\tag{6.2}
$$

Write \(U_{\mu,1}:Y_1\to X_{1,\mu}\) for the resulting unitary
identification.  Its norm is \(\|U_{\mu,1}a\|_{1,X}=\|a\|_{L^2(dk)}\), and

$$
\boxed{J_{X,1}=U_{\mu,1}(-i)U_{\mu,1}^{-1}}
\tag{6.3}
$$

is bounded.  A general element of \(X_{1,\mu}\) need not lie in
\(H_{\mathrm{match}}\), and need not admit individual sheet representatives
as ordinary distributions.  Consequently the pointwise condition
\(f(0)=g(0)\) belongs only to the smooth/classical energy profile domain and
is not imposed on the full one-particle completion.

Indeed, the coefficient

$$
a(k)=\frac{\mathbf 1_{\{k<-e\}}}{\sqrt{|k|}\log|k|}
\tag{6.4}
$$

lies in \(L^2(dk)\).  Setting \(k=-x\) and using
\(\alpha_{-x}\sim\mu^2/(2\sqrt2x)\) and
\(N_{-x}\sim(4\pi x)^{-1/2}\), the full real first-sheet synthesis paired
with a real test function satisfying \(\widehat\varphi(0)\ne0\) has a tail
proportional to \(\int_e^\infty dx/(x\log x)\), which diverges.  This rules out a general
ordinary-distribution realization of the individual sheet profiles.  An
extra sheetwise \(\alpha_k\) or \(\beta_k\) factor in tangential derivatives
and radiative/field-strength profiles improves the offending
low-null-frequency tail; this observation is compatible with the
gauge-invariant quantum observables used here but is not promoted to a new
Sobolev theorem.

## 7. Kernel and Corner-Term Convention

The explicit kernel (6.3) of calculation 13 first acts on
\(\mathscr C_{\mathrm{match}}\), and more generally on its classical energy
domain.  It determines \(J_{X,1}\) only by completion in the one-particle
norm.  It is not an ordinary distributional sheet-by-sheet kernel action on
an arbitrary vector of \(X_{1,\mu}\).  The derivative stays on the profile in
the primary formula.

If it is integrated by parts on the decaying core, then

$$
\int_0^\infty dy\,
\cos(\gamma_qy-\gamma_rs)h_q'(y)
=-\cos(\gamma_rs)h_q(0)
+\gamma_q\int_0^\infty dy\,
\sin(\gamma_qy-\gamma_rs)h_q(y).
\tag{7.1}
$$

The corner term must be retained.  It is not pointwise-defined on a generic
element of \(X_{1,\mu}\).

## 8. Claim Strength

**Proved:** dense closability, the closed energy-domain analysis operator,
bounded energy synthesis, \(T_\mu S_\mu=1\), graph-bounded idempotence,
graph-closed fixed-point space, and the isometric/symplectic restriction
isomorphism; the literal classical operator
\(J_{X,E}=S_\mu(-i)T_\mu\); and the abstract bounded one-particle operator
\(J_{X,1}=U_{\mu,1}(-i)U_{\mu,1}^{-1}\).

**Checked symbolically:** the Jacobians, principal-value cancellations, delta
normalization, and kernel coefficients used by the proof.

**Not claimed:** equality with a maximal distributional domain, ambient
\(H^1\)-boundedness of \(P_\mu\), ordinary distribution-valued individual
sheet representatives or pointwise corner traces in the full one-particle
completion, or any massless/curved-background extension.
