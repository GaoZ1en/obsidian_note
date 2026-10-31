# Independent action–corner analysis: AdS₃ gravity and two Chern–Simons connections

## Result and status

The local identities are exact, with the following signs:

\[
\boxed{L_{\rm CS}=L_P+dB,\qquad
\theta_{\rm CS}=\theta_P+\delta B,\qquad
\theta_g=\theta_P+dY,}
\]
\[
\boxed{B=\frac{1}{16\pi G}e_a\wedge\omega^a,
\qquad
Y=\frac{1}{16\pi G}*(e_a\wedge\delta e^a).}
\]

The first two identities hold off shell for independent coframe and connection. The last identity is the pullback to a nondegenerate, orientation-compatible coframe with its torsion-free connection, including the corresponding tangent variations. It does not require the Einstein equation.

Equality of the **integrated Harlow–Wu symplectic structures** additionally requires matching boundary actions, allowed variations, corner terms, and gauge quotients. An explicit on-shell AdS example below gives a nonzero raw Palatini bulk integral on two pure Lorentz variations whose metric variations vanish. The missing corner cancels it exactly. Thus a bulk-current-only argument does not prove the full equivalence.

This is an independent derivation, not a check against a supplied candidate conclusion. No pre-existing note was edited. The conventions were aligned with [the authoritative CPS formalism:7–25](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>) and its [Noether-generator convention:48–52](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L48-L52>).

**Verified:** analytic derivation; exact generic first-jet component identity; explicit torsion-free AdS solution and Lorentz corner counterexample; full field-space exterior derivative on the noncommuting Lorentz vector fields.

**Assumptions:** three dimensions, signature \((-++)\), conventions specified below; nondegenerate oriented coframes only for metric reduction; matching relative boundary data only when integrated equivalence is asserted.

**Not established:** a global equivalence of all CS and gravitational sectors; an actual boundary variational problem without specifying its boundary action and allowed variations; large-gauge and bundle identifications.

## 1. Conventions and objects

Write

\[
c\equiv\frac{1}{16\pi G},\qquad
\Lambda=-\ell^{-2},\qquad
k=\frac{\ell}{4G},\qquad \ell>0.
\]

Internal indices \(a,b,c\) take values \(0,1,2\), with

\[
\eta_{ab}=\operatorname{diag}(-1,1,1),\qquad
\epsilon_{012}=+1,\qquad \epsilon^{012}=-1.
\]

All raised epsilon indices are raised with \(\eta\), not with a Euclidean Kronecker delta. The algebra and bilinear form are

\[
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,\qquad
\operatorname{tr}(J_aJ_b)=\frac12\eta_{ab}.
\]

Set

\[
e=e^aJ_a,\qquad \omega=\omega^aJ_a,\qquad
A=\omega+\ell^{-1}e,\qquad
\bar A=\omega-\ell^{-1}e.
\]

The dualized connection is related to the ordinary Lorentz connection by

\[
\boxed{\omega^{ab}=-\epsilon^{ab}{}_c\omega^c,
\qquad \omega^a=\frac12\epsilon^a{}_{bc}\omega^{bc}.}
\]

Consequently

\[
\omega^a{}_b=\epsilon^a{}_{cb}\omega^c,
\quad
T^a=de^a+\epsilon^a{}_{bc}\omega^b\wedge e^c,
\quad
R^a=d\omega^a+\frac12\epsilon^a{}_{bc}\omega^b\wedge\omega^c,
\]
\[
R^{ab}=-\epsilon^{ab}{}_cR^c.
\]

For metric reduction, choose the orientation sector

\[
\varepsilon_g=e^0\wedge e^1\wedge e^2
=+\sqrt{-g}\,dx^0\wedge dx^1\wedge dx^2,
\qquad g_{\mu\nu}=\eta_{ab}e^a{}_{\mu}e^b{}_{\nu}.
\]

The Hodge star is defined by

\[
\alpha\wedge *\beta=\langle\alpha,\beta\rangle_g\varepsilon_g.
\]

In an oriented orthonormal coframe this implies

\[
*(e^0\wedge e^1)=-e^2,\qquad
*(e^0\wedge e^2)=e^1,\qquad
*(e^1\wedge e^2)=e^0.
\]

In particular \(*^2=-1\) on one- and two-forms. Define
\(\varepsilon_\mu=\iota_{\partial_\mu}\varepsilon_g\).

The curvature convention is

\[
R^\rho{}_{\sigma\mu\nu}
=\partial_\mu\Gamma^\rho{}_{\nu\sigma}
-\partial_\nu\Gamma^\rho{}_{\mu\sigma}
+\Gamma^\rho{}_{\mu\lambda}\Gamma^\lambda{}_{\nu\sigma}
-\Gamma^\rho{}_{\nu\lambda}\Gamma^\lambda{}_{\mu\sigma}.
\]

Spacetime \(d\) and field-space \(\delta\) commute here; their two gradings are tracked separately. Potential and current formulas are also given on explicit field-space vectors, removing mixed-wedge shorthand ambiguities.

## 2. Exact off-shell transgression

The antisymmetric part of the triple trace is fixed by the bracket and bilinear form:

\[
\operatorname{tr}(A^3)
=\frac14\epsilon_{abc}A^a\wedge A^b\wedge A^c.
\]

Hence

\[
\operatorname{CS}(A)
=\frac12 A_a\wedge dA^a
+\frac16\epsilon_{abc}A^a\wedge A^b\wedge A^c.
\]

Writing \(q=\ell^{-1}\), direct expansion gives

\[
\begin{aligned}
\operatorname{CS}(\omega+qe)-\operatorname{CS}(\omega-qe)
={}&q(\omega_a\wedge de^a+e_a\wedge d\omega^a)\\
&+q\epsilon_{abc}\omega^a\wedge\omega^b\wedge e^c
+\frac{q^3}{3}\epsilon_{abc}e^a\wedge e^b\wedge e^c.
\end{aligned}
\]

Since

\[
d(\omega_a\wedge e^a)=e_a\wedge d\omega^a-\omega_a\wedge de^a,
\]

this is

\[
\boxed{
\operatorname{CS}(A)-\operatorname{CS}(\bar A)
=\frac2\ell e_a\wedge R^a
+\frac{1}{3\ell^3}\epsilon_{abc}e^a\wedge e^b\wedge e^c
-\frac1\ell d(\omega_a\wedge e^a).}
\]

Multiplying by \(k/(4\pi)=\ell/(16\pi G)\), define

\[
L_P=2c\,e_a\wedge R^a
+\frac{c}{3\ell^2}\epsilon_{abc}e^a\wedge e^b\wedge e^c
=c\,\epsilon_{abc}e^a\wedge
\left(R^{bc}+\frac{1}{3\ell^2}e^b\wedge e^c\right).
\]

Then

\[
L_{\rm CS}\equiv\frac{k}{4\pi}
\bigl(\operatorname{CS}(A)-\operatorname{CS}(\bar A)\bigr)
=L_P+dB,
\]
\[
\boxed{B=-c\,\omega_a\wedge e^a
=c\,e_a\wedge\omega^a
=\frac{k}{4\pi}\operatorname{tr}(A\wedge\bar A).}
\]

No equation of motion, nondegeneracy condition, integration by parts in field space, or boundary condition was used.

On torsion-free oriented nondegenerate coframes,

\[
\epsilon_{abc}e^a\wedge R^{bc}=R\varepsilon_g,
\qquad
\epsilon_{abc}e^a\wedge e^b\wedge e^c=6\varepsilon_g,
\]

so

\[
L_P\big|_{\omega[e]}=L_g=c(R+2\ell^{-2})\varepsilon_g.
\]

As a simple limit, \(\ell\to\infty\) at fixed \(G\), with \(k=\ell/(4G)\), leaves the ordinary zero-cosmological-constant Palatini density and the same finite \(B\).

## 3. Off-shell variation and field-space exact term

Using \(\delta R^a=D\delta\omega^a\),

\[
e_a\wedge D\delta\omega^a
=T_a\wedge\delta\omega^a-d(e_a\wedge\delta\omega^a).
\]

Therefore

\[
\begin{aligned}
\delta L_P={}&2c\,\delta e_a\wedge
\left(R^a+\frac{1}{2\ell^2}\epsilon^a{}_{bc}e^b\wedge e^c\right)
+2c\,\delta\omega_a\wedge T^a+d\theta_P,\\
\boxed{\theta_P={}&-2c\,e_a\wedge\delta\omega^a
=-c\,\epsilon_{abc}e^a\wedge\delta\omega^{bc}.}
\end{aligned}
\]

Equivalently, \(\theta_P=c\epsilon_{abc}\delta\omega^{bc}\wedge e^a\); moving the two one-forms past each other changes the sign.

For one CS connection,

\[
\delta\operatorname{CS}(A)
=2\operatorname{tr}(\delta A\wedge F_A)
-d\operatorname{tr}(A\wedge\delta A).
\]

Thus a directly varied representative is

\[
\begin{aligned}
\theta_{\rm CS}
&=-\frac{k}{4\pi}\operatorname{tr}
(A\wedge\delta A-\bar A\wedge\delta\bar A)\\
&=-c(\omega_a\wedge\delta e^a+e_a\wedge\delta\omega^a).
\end{aligned}
\]

The field-space exact term is essential to the potential identity:

\[
\delta B=c\,\delta e_a\wedge\omega^a+c\,e_a\wedge\delta\omega^a,
\qquad
\boxed{\theta_{\rm CS}=\theta_P+\delta B.}
\]

The two curvature equations are

\[
F_A^a=R^a+\frac{1}{2\ell^2}\epsilon^a{}_{bc}e^b\wedge e^c+\frac1\ell T^a,
\]
\[
F_{\bar A}^a=R^a+\frac{1}{2\ell^2}\epsilon^a{}_{bc}e^b\wedge e^c-\frac1\ell T^a.
\]

They give the Palatini equations without imposing invertibility. The further metric interpretation does require invertibility.

Let \(\boldsymbol\omega=\delta\theta\) denote a symplectic current, distinct from the spin connection. Then

\[
\boxed{\boldsymbol\omega_{\rm CS}=\boldsymbol\omega_P}
\]

pointwise, not merely modulo a spacetime derivative. Explicitly,

\[
\boldsymbol\omega_P(\delta_1,\delta_2)
=-2c\left(\delta_1e_a\wedge\delta_2\omega^a
-\delta_2e_a\wedge\delta_1\omega^a\right).
\]

## 4. Torsion-free Palatini versus metric EH: the corner sign

The comparison is the pullback along

\[
e\longmapsto(e,\omega[e]).
\]

Both the background and the variations are restricted:

\[
T^a=0,\qquad \delta T^a=0,\qquad
\delta\omega=\delta\omega[e].
\]

Merely setting \(T=0\) while retaining an arbitrary independent \(\delta\omega\) is not this pullback.

Define

\[
h_{\mu\nu}=\delta g_{\mu\nu},\qquad
h=g^{\mu\nu}h_{\mu\nu},\qquad
h^{\mu\nu}=g^{\mu\alpha}g^{\nu\beta}h_{\alpha\beta}.
\]

In particular \(h^{\mu\nu}\ne\delta g^{\mu\nu}\); rather \(\delta g^{\mu\nu}=-h^{\mu\nu}\). The standard metric representative is

\[
\boxed{\theta_g
=c\left(g^{\mu\nu}\delta\Gamma^\rho{}_{\mu\nu}
-g^{\rho\mu}\delta\Gamma^\nu{}_{\mu\nu}\right)\varepsilon_\rho
=c(\nabla_\nu h^{\rho\nu}-\nabla^\rho h)\varepsilon_\rho.}
\]

It obeys

\[
\delta L_g=-c(G^{\mu\nu}-\ell^{-2}g^{\mu\nu})h_{\mu\nu}\varepsilon_g+d\theta_g.
\]

Set

\[
K^\mu{}_\nu=e_a{}^\mu\delta e^a{}_{\nu},\qquad
K_{\mu\nu}=e_{a\mu}\delta e^a{}_{\nu},\qquad
a_{\mu\nu}=K_{[\mu\nu]},
\]

so that \(h_{\mu\nu}=K_{\mu\nu}+K_{\nu\mu}\).
Varying the tetrad postulate gives

\[
e_a{}^\rho e^b{}_{\nu}\delta\omega^a{}_{b\mu}
=\delta\Gamma^\rho{}_{\mu\nu}-\nabla_\mu K^\rho{}_\nu.
\]

Contracting the two epsilon tensors in \(\theta_P\) then gives

\[
\theta_P
=2c\left(g^{\mu\nu}\delta\Gamma^\rho{}_{\mu\nu}
-\nabla_\nu K^{\rho\nu}\right)\varepsilon_\rho.
\]

Using

\[
g^{\mu\nu}\delta\Gamma^\rho{}_{\mu\nu}
=\nabla_\nu h^{\rho\nu}-\frac12\nabla^\rho h,
\qquad
g^{\rho\mu}\delta\Gamma^\nu{}_{\mu\nu}=\frac12\nabla^\rho h,
\]

one obtains

\[
\theta_g-\theta_P
=2c\nabla_\nu a^{\rho\nu}\varepsilon_\rho.
\]

The two-form \(z=e_a\wedge\delta e^a\) has components
\(z_{\mu\nu}=2a_{\mu\nu}\). With the Lorentzian Hodge convention above,

\[
d(*z)=\nabla_\nu z^{\rho\nu}\varepsilon_\rho.
\]

Consequently

\[
\boxed{\theta_g=\theta_P+dY,
\qquad Y=c*(e_a\wedge\delta e^a).}
\]

An equivalent internal-index expression, useful for independently checking the Hodge sign, is

\[
Y=-c\,\epsilon_{abc}e^a e^{b\mu}\delta e^c{}_{\mu},
\qquad e^{b\mu}=\eta^{bc}e_c{}^\mu.
\]

Combining the local identities,

\[
\boxed{\theta_{\rm CS}=\theta_g+\delta B-dY,\qquad
\boldsymbol\omega_{\rm CS}=\boldsymbol\omega_P
=\boldsymbol\omega_g-d\delta Y.}
\]

### A direct sign diagnostic

In a constant Minkowski coframe, take an infinitesimal local boost

\[
\delta e^0=b e^1,\qquad \delta e^1=b e^0,\qquad \delta e^2=0.
\]

Its spin-connection variation is \(\delta\omega^2=-db\). Hence

\[
\theta_P=-2c\,db\wedge e^2,\qquad
Y=+2c\,b e^2,\qquad \theta_g=0.
\]

Thus \(\theta_P+dY=0\), fixing the sign without reference to a remembered tetrad/metric formula. This flat-frame test is a local off-Einstein-shell check when \(\Lambda<0\); the next example is fully on shell in AdS.

## 5. Harlow–Wu integrated potentials and Hamiltonians

Let \(\ell_\Gamma\) be the boundary Lagrangian and suppose the allowed variations satisfy

\[
(\theta+\delta\ell_\Gamma)|_\Gamma=dC.
\]

Use the prescribed conventions

\[
\Theta_\Sigma=\int_\Sigma\theta-\int_{\partial\Sigma}C,
\qquad
\Omega=\delta\Theta_\Sigma,
\qquad
\iota_X\Omega=-\delta H.
\]

The orientation of \(\partial\Sigma\) is the Stokes orientation.

For the metric–Palatini comparison, after torsion-free pullback choose the same boundary Lagrangian and

\[
C_g=C_P+Y.
\]

Then

\[
\Theta_g=\Theta_P,\qquad \Omega_g=\Omega_P.
\]

For the CS–Palatini comparison choose

\[
\ell_{{\rm CS},\Gamma}=\ell_{P,\Gamma}-B|_\Gamma,
\qquad C_{\rm CS}=C_P.
\]

Then

\[
\Theta_{\rm CS}=\Theta_P+\delta\int_\Sigma B,
\qquad \Omega_{\rm CS}=\Omega_P.
\]

Equivalently \(C_{\rm CS}=C_g-Y\). On the full spacetime action, the matched timelike-boundary terms leave only
\(\int_{\Sigma_f}B-\int_{\Sigma_i}B\), an endpoint canonical generating functional.

The general ambiguity calculation is useful. If

\[
L'=L+dB,\quad \theta'=\theta+\delta B+dZ,\quad
\ell'_\Gamma=\ell_\Gamma-B+d\beta,\quad
C'=C+Z+\delta\beta,
\]

then

\[
\Theta'_\Sigma=\Theta_\Sigma
+\delta\left(\int_\Sigma B-\int_{\partial\Sigma}\beta\right),
\qquad \Omega'=\Omega.
\]

For the same symmetry vector, matched symplectic forms give the same \(\delta H\), up to an integration constant in \(H\). Under \(\Theta\to\Theta+\delta b\), the off-shell action-symmetry term also transforms as \(\alpha\to\alpha+Xb\). Therefore the formalism's expression

\[
H=\iota_X\Theta-\alpha
\]

is unchanged. Treating \(\iota_X\Theta\) alone as the Hamiltonian would introduce a spurious shift.

There is no unique actual \(C\), charge, or phase space before specifying the boundary action, allowed variations, and which boundary transformations are proper gauge. The formulas above give consistent matching rules; they do not select a boundary variational problem that was never specified.

## 6. Noncommuting Lorentz vectors and the field-space corner two-form

For a field-independent Lorentz parameter \(\lambda^a(x)\), use

\[
X_\lambda e^a=\epsilon^a{}_{bc}\lambda^b e^c,
\qquad X_\lambda\omega^a=-D\lambda^a.
\]

Thus the finite coframe transformation is \(e\mapsto g e g^{-1}\). With the field-space vector bracket defined by commutators of derivations,

\[
\boxed{[X_\lambda,X_\rho]=-X_{[\lambda,\rho]}.}
\]

Indeed, \(X_\lambda(X_\rho e)=\operatorname{ad}_\rho\operatorname{ad}_\lambda e\), so subtracting the reverse order gives minus the Lie-algebra commutator. Field-independent parameters do **not** make these field-space vectors commute.

For these conventions,

\[
Y(X_\lambda)=2c\lambda_a e^a.
\]

The correct two-form is

\[
\begin{aligned}
(\delta Y)(X_\lambda,X_\rho)
={}&X_\lambda\bigl(Y(X_\rho)\bigr)
-X_\rho\bigl(Y(X_\lambda)\bigr)
-Y([X_\lambda,X_\rho])\\
={}&-2c[\lambda,\rho]_a e^a.
\end{aligned}
\]

Both Lorentz directions preserve the metric, so their variations of the Hodge star vanish. The equivalent bilinear expression is

\[
\boxed{(\delta Y)(X_\lambda,X_\rho)
=2c*\bigl((X_\lambda e_a)\wedge(X_\rho e^a)\bigr).}
\]

The full exterior-derivative formula and the bilinear expression agree. Omitting the field-space bracket term in the first formula would give an erroneous factor of two. The preserved computation below checks the full formula against the bilinear one.

On torsion-free fields,

\[
\theta_P(X_\lambda)=2c e_a\wedge D\lambda^a
=-2c\,d(e_a\lambda^a)=-dY(X_\lambda).
\]

This is compatible with \(\theta_g(X_\lambda)=0\), but its field-space derivative must still be evaluated as an exterior derivative, not as an uncorrected commutator of two directional derivatives.

## 7. On-shell AdS counterexample to dropping the corner

Use the Poincaré patch with \(z>0\):

\[
e^0=\frac\ell zdt,\qquad
e^1=\frac\ell zdx,\qquad
e^2=\frac\ell zdz,
\]
\[
\omega^0=\frac{dx}{z},\qquad
\omega^1=\frac{dt}{z},\qquad
\omega^2=0.
\]

These satisfy

\[
T^a=0,\qquad
R^a=-\frac{1}{2\ell^2}\epsilon^a{}_{bc}e^b\wedge e^c.
\]

Let \(\Sigma\) be a finite smooth domain in a constant-\(t\) plane, contained in \(z>0\), oriented by \(dx\wedge dz\). No asymptotic limit or renormalization is needed.

Take the two field-independent Lorentz parameters

\[
\lambda_B=(0,0,b),\qquad b=\frac{z^2}{\ell^2},
\qquad \lambda_R=(-1,0,0).
\]

They generate

\[
X_Be^0=b e^1,\quad X_Be^1=b e^0,\quad X_Be^2=0,
\]
\[
X_Re^0=0,\quad X_Re^1=e^2,\quad X_Re^2=-e^1.
\]

Both satisfy \(X_Bg=X_Rg=0\), preserve torsion-freeness and the Einstein equation, and are allowed when only metric boundary data are fixed. They need not be allowed when a boundary **frame** is fixed.

Their connection variations are

\[
X_B\omega=\left(\frac b zdt,\frac b zdx,-db\right),
\qquad
X_R\omega=\left(0,0,-\frac{dt}{z}\right).
\]

The Lie-algebra bracket and field-space bracket parameter are

\[
[\lambda_B,\lambda_R]=(0,-b,0),\qquad
[X_B,X_R]=-X_{(0,-b,0)}=X_{(0,b,0)}.
\]

Substitution into the Palatini symplectic current gives

\[
\boxed{\boldsymbol\omega_P(X_B,X_R)=\frac{2c}{\ell}dx\wedge dz.}
\]

The full field-space corner two-form is

\[
\boxed{(\delta Y)(X_B,X_R)=2c b e^1=\frac{2cz}{\ell}dx.}
\]

Consequently

\[
d\bigl((\delta Y)(X_B,X_R)\bigr)
=-\frac{2c}{\ell}dx\wedge dz,
\qquad
\boldsymbol\omega_g(X_B,X_R)=0.
\]

The raw bulk integrals therefore differ:

\[
\boxed{
\Omega_{P,\mathrm{bulk}}(X_B,X_R)
=\frac{2c}{\ell}\operatorname{Area}_{dx\,dz}(\Sigma)\ne0,
\qquad
\Omega_{g,\mathrm{bulk}}(X_B,X_R)=0.}
\]

The area in this formula is coordinate area, not proper area. Stokes' theorem gives

\[
\int_{\partial\Sigma}(\delta Y)(X_B,X_R)
=-\frac{2c}{\ell}\operatorname{Area}_{dx\,dz}(\Sigma).
\]

The matched Harlow–Wu corner \(C_P=C_g-Y\) cancels the discrepancy exactly. This example disproves discarding the corner; it does not disprove correctly matched gravity–CS equivalence.

A separate global/domain obstruction is already visible in the flat pair \(A=\bar A=0\): it is a CS solution but gives \(e=0\), not a metric. Equality of bulk densities and currents cannot remove that sector mismatch.

## 8. Preserved machine verification and provenance

The reproducible input is [coframe_corner_checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/coframe_corner_checks.wl>). Its actual successfully executed output is [coframe_corner_checks.results.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/coframe_corner_checks.results.json>).

The implementation is **exact Wolfram Language component algebra hosted by the xAct tool**, with its core packages loaded. It does not invoke an xAct tensor-canonicalization or variational routine. Thus package loading is not being presented as an independent tensor proof. Mathematica and an xAct-hosted Wolfram kernel are also not two independent computational implementations.

### Generic first-jet test

At an arbitrary base point choose coordinates with \(e^a{}_\mu=\delta^a{}_\mu\). Keep all of the following independent:

- 27 components of \(\partial_\kappa e^a{}_\mu\);
- 9 components of \(\delta e^a{}_\mu\);
- 27 components of \(\partial_\kappa\delta e^a{}_\mu\).

There are **63 independent symbolic jets**. The code constructs the metric and its first variation and first derivatives, computes the Christoffel symbols and their variation, and varies

\[
\omega_\mu=e\,\Gamma_\mu e^{-1}-(\partial_\mu e)e^{-1}
\]

before inserting the result into \(\theta_P\). Separately, it differentiates \(Y\), including the spacetime derivatives of both inverse metrics and the volume factor in the Hodge star. It then evaluates the residual

\[
\theta_g-\theta_P-dY.
\]

All nine component entries are exactly zero. The Lorentz-index antisymmetry residual of \(\delta\omega^{ab}{}_\mu\) is also identically zero. This is an exact symbolic pointwise test with unrestricted first jets, not a finite numerical sample. The analytic derivation above supplies the coordinate-covariant argument.

### Explicit AdS and field-space tests

The saved code independently checks:

1. all torsion components vanish;
2. the constant negative-curvature residual vanishes;
3. both Lorentz metric variations vanish;
4. the computed field-space bracket equals minus the Lie-algebra bracket action;
5. the full exterior derivative of \(Y\), including the nonzero field-space bracket, equals the bilinear shortcut;
6. the actual nonzero current and corner have the values displayed above;
7. \(\boldsymbol\omega_P+d\delta Y=0\) on these two variations.

All residuals are zero. The saved report has `OverallPass: true` and an empty message list. It records Wolfram Engine 14.3.0 for Mac OS X ARM and the loaded xAct core packages. The script is executed by `Get[...]`; the report is a returned association, not a manually prepared expected-output fixture.

The final successful run exported into a fresh private kernel-results directory. The workspace report is a byte-for-byte copy of [that kernel-exported JSON](</Users/koishi/.dsh/research-results/kernel-exports/xact.s8jcHn/coframe_corner_checks.results.json>). The complete association was also exported as [WXF](</Users/koishi/.dsh/research-results/kernel-exports/xact.s8jcHn/result.wxf>).

Reproducibility hashes of the final artifacts:

```text
coframe_corner_checks.wl
SHA256 93ec1f662d5178338dd488fe160e38125c425dfedce642f84a42fc8575921c73

coframe_corner_checks.results.json
SHA256 c72b9c1b21f2e096c0b91a6683bd6315afdd1e22c2c821a96aeab1e291076594
```

An earlier scratch run's metadata used an unqualified `$Version`, which the xAct context resolved to a package version. The final saved script explicitly uses ``System`$Version``, was rerun successfully, and the preserved report records the actual Wolfram version. This metadata correction did not alter the algebra or any residual.

The off-shell CS transgression and variation were also independently checked by generic exterior-component Wolfram algebra during this review, with zero residuals and no messages. Their initial output is preserved in [the scratch transgression report](</Users/koishi/.dsh/research-results/session-b4aea3960f38/57ff6c83463e-research-result-readable.txt>). The dedicated saved script in this review focuses on the metric–Palatini corner and AdS counterexample, rather than duplicating the parent analysis's separately preserved transgression check.

## 9. Scope, conditions for equivalence, and open global issues

There is no unresolved **local sign** under the specified epsilon, dualization, curvature, orientation, Hodge, and field-space conventions.

The following restrictions remain essential:

1. **Metric sector:** torsion-free pullback, nondegenerate coframes, and orientation compatibility are required. An orientation-reversing coframe gives the opposite signed metric density relative to a fixed spacetime orientation.
2. **Boundary theory:** boundary actions, allowed variations, and the proper/improper gauge quotient must match. Equality of local bulk currents is not sufficient. Closed \(\Sigma\), or allowed variations with vanishing pulled-back \(\delta Y\) at its boundary, are sufficient special cases for omitting this particular corner integral; they are not automatic.
3. **Gauge fixing:** setting the antisymmetric coframe variation to zero for one tangent vector at a point is not by itself a proof that the field-space two-form \(\delta Y\) vanishes on an allowed family. The field-space bracket and integrability of the chosen restriction matter.
4. **Common bundle:** the relative invariant transgression is the Palatini form. Writing it as the difference of ordinary CS densities plus the displayed \(dB\) requires a common bundle identification and compatible local trivializations. \(B\) itself need not be globally gauge invariant or globally single-valued as a canonical generating functional.
5. **Global equivalence:** the choice of global gauge group, allowed bundles, holonomies, large gauge transformations, and preservation of the nondegenerate sector have not been specified or proved. Local gravity–CS identities do not settle them.

Accordingly, the established statement is a local off-shell action/potential identity, an exact torsion-reduced metric corner identity, and a conditional equality of the integrated Harlow–Wu structures when the relative boundary data and phase-space domain are matched. It is not an unconditional global equivalence theorem for the full two-connection CS theory.
