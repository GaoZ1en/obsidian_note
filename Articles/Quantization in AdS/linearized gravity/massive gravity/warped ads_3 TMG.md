---
title: Warped AdS3 TMG feasibility audit
date: 2026-08-27
summary: "Tests whether the propagating linearized TMG sector on homogeneous spacelike warped AdS3 admits a complete SL(2,R) x U(1) representation decomposition suitable for CPS quantization."
---

# Linearized TMG on spacelike warped AdS$_3$

## 1. Verdict

$$
\boxed{\textbf{C. NOT PROMISING for the full propagating-sector quantization pipeline at present.}}
$$

The precise verdict is:

> **Not proven by the current equations or literature:** the physical propagating solution space has not been shown to be equivalent to a Casimir/first-order $SL(2,\mathbb R)\times U(1)$ system whose irreducible modules exhaust all globally admissible solutions. The evidence establishes only an isometry-equivariant one-degree-of-freedom problem, an explicit highest-weight subclass, and a separate second-order radial equation for general $k\neq0$ modes.

There are three independent obstructions to immediately extending the global-AdS$_3$ pipeline

$$
\text{complete physical solutions}\longrightarrow \Omega_{\rm CPS}
\longrightarrow\text{normalization}\longrightarrow\text{quantization}.
$$

1. The highest-weight sector is **not complete**. For sufficiently stretched backgrounds it is empty even though the local propagating equation still exists. The general radial equation has not been converted into a tensor-Casimir eigenproblem, and the $k=0$ sector is not covered by the $k\neq0$ gauge.
2. The standard Compère--Detournay-type stretched-warped phase space excludes **all** local propagating massive modes. Its physical spectrum consists of boundary/large-gauge excitations.
3. Relaxed boundary conditions that retain a massive graviton do exist on asymptotically warped black-hole quotients, with finite integrable canonical generators, but no complete global-warped mode basis, nondegenerate CPS norm, or self-adjoint Casimir decomposition has been established for that enlarged phase space.

Thus the standard physical phase space has no massive sector to quantize, while the enlarged phase space is not yet controlled well enough for the desired construction. A small invariant-master-field calculation remains worthwhile; a full CPS normalization project should wait for that kill test.

Throughout this note:

- a **local solution** solves the linearized field equation in a coordinate patch;
- a **globally admissible mode** is also regular on the geodesically complete unquotiented background and belongs to a specified global function space;
- a **phase-space mode** additionally obeys the selected asymptotic conditions and has finite symplectic flux/norm.

These three sets are not identified.

## 2. Why this is the natural sequel to global-AdS$_3$ TMG quantization

The comparison theory is `TMG.md`. On unit global AdS$_3$, in TT gauge and with

$$
(Eh)_{\mu\nu}=\varepsilon_\mu{}^{\alpha\beta}\nabla_\alpha h_{\beta\nu},
$$

that note uses

$$
E^2h=(\nabla^2+3)h,
\qquad
(D^L D^R D^\mu h)_{\mu\nu}=0,
\qquad
D^\mu=1+\frac1\mu E.
$$

The massive primary and descendants can then be separated from the two boundary-graviton sectors before the CPS form is normalized.

Spacelike warped AdS$_3$ is the correct stress test because it preserves homogeneity but reduces

$$
SL(2,\mathbb R)_L\times SL(2,\mathbb R)_R
\quad\longrightarrow\quad
SL(2,\mathbb R)_R\times U(1)_L,
$$

and it is not Einstein. The question is therefore not merely whether some highest-weight solutions exist. It is whether maximal symmetry was essential to the entire implication

$$
\text{first-order factorization}
\Longrightarrow \text{complete module basis}
\Longrightarrow \text{algebraic CPS normalization}.
$$

> **New inference / project-specific conclusion.** The warped problem is a natural sequel conceptually, but not yet a natural sequel computationally: the very step that made the global-AdS$_3$ calculation finite-dimensional in representation space is the step that currently fails.

## 3. Conventions and warped-AdS$_3$ geometry

### 3.1 Action and sign bookkeeping

The warped-mode literature will be quoted in the conventions of Anninos--Esole--Guica (AEG), [arXiv:0905.2612](https://arxiv.org/abs/0905.2612):

$$
I=\frac1{16\pi G}\int d^3x\sqrt{-g}\left[
R+\frac{2}{\ell^2}
-\frac1{2\mu}\varepsilon^{\lambda\mu\nu}
\Gamma^\rho{}_{\lambda\sigma}
\left(\partial_\mu\Gamma^\sigma{}_{\rho\nu}
+\frac23\Gamma^\sigma{}_{\mu\tau}\Gamma^\tau{}_{\nu\rho}\right)
\right],
$$

with $\varepsilon^{\tau r x}=+1/\sqrt{-g}$ and

$$
\mu\ell=3\nu.
$$

`TMG.md` writes the gravitational-CS density with the opposite displayed sign. Therefore a literal comparison of first-order helicity labels requires either $\varepsilon\mapsto-\varepsilon$ or $\mu\mapsto-\mu$. None of the structural conclusions below--non-Einstein curvature, failure of the AdS factorization, highest-weight incompleteness, or exclusion by falloff--depends on this relabelling.

For the coordinate geometry checks below I use the standard Cotton tensor

$$
C_{\mu\nu}=\varepsilon_\mu{}^{\alpha\beta}
\nabla_\alpha\left(R_{\beta\nu}-\frac14g_{\beta\nu}R\right),
$$

and state explicitly when an AEG formula is quoted in the paper's convention.

### 3.2 Global spacelike warped vacuum

Define

$$
L^2\equiv\frac{\ell^2}{\nu^2+3},
\qquad
a\equiv\frac{2\nu}{\sqrt{\nu^2+3}},
\qquad
a^2>1\Longleftrightarrow\nu^2>1.
$$

The geodesically complete unquotiented metric is

$$
\boxed{
ds^2=L^2\left[-(1+r^2)d\tau^2+\frac{dr^2}{1+r^2}
+a^2(dx+r\,d\tau)^2\right],
}
$$

where $(\tau,r,x)\in\mathbb R^3$. Constant-$\tau$ slices are spacelike. The stretched branch is $1<a<2$. At $a=\nu=1$, $L=\ell/2$ and the metric is global AdS$_3$ in Hopf-fibration coordinates.

The boundary of the unquotiented space is not just $r\to+\infty$. On a constant-$\tau$ slice it contains the four asymptotic pieces

$$
r\to\pm\infty\quad(x\ \text{finite}),
\qquad
x\to\pm\infty\quad(r\ \text{finite}).
$$

This global fact matters for both wave-packet normalizability and symplectic flux.

Let

$$
Q=\partial_x,
\qquad
Q^2=g(Q,Q)=a^2L^2,
\qquad
Q_\mu dx^\mu=a^2L^2(dx+r\,d\tau).
$$

With $\varepsilon_{\tau r x}=+aL^3$, direct calculation gives

$$
\boxed{
\nabla_\mu Q_\nu=-\frac{a}{2L}\varepsilon_{\mu\nu\rho}Q^\rho,
\qquad
\nabla_{(\mu}Q_{\nu)}=0.
}
$$

This is the warped analogue of the first-order Killing/Proca identities used in maximally symmetric examples, but it already singles out the fibre direction.

### 3.3 Curvature and the non-Einstein tensor

> **Known from literature.** The local curvature tensors can be written entirely using $g$ and $Q$; see [Chen--Guo--Shi--Zhang, arXiv:2303.11714](https://arxiv.org/abs/2303.11714). That paper uses self-dual quotient coordinates, so its result is only imported as a local homogeneous-space identity.

> **Re-derived here.** xCoba in the unquotiented global coordinates above gives

$$
\boxed{
R_{\mu\nu}=\frac{a^2-2}{2L^2}g_{\mu\nu}
+\frac{1-a^2}{a^2L^4}Q_\mu Q_\nu,
\qquad
R=\frac{a^2-4}{2L^2}=-\frac6{\ell^2}.
}
$$

The Cotton tensor is

$$
\boxed{
C_{\mu\nu}=\frac{a(1-a^2)}{2L^3}g_{\mu\nu}
+\frac{3(a^2-1)}{2aL^5}Q_\mu Q_\nu.
}
$$

It is symmetric and traceless. The background equation is verified in the form

$$
G_{\mu\nu}-\frac{4-a^2}{12L^2}g_{\mu\nu}
+\frac{2L}{3a}C_{\mu\nu}=0,
$$

because

$$
\frac{4-a^2}{12L^2}=\frac1{\ell^2},
\qquad
\frac{2L}{3a}=\frac{\ell}{3\nu}=\frac1\mu.
$$

For $a\neq1$, the $Q_\mu Q_\nu$ term is nonzero. This is the precise invariant obstruction to treating the background as a constant-curvature deformation with merely a changed radius.

## 4. $SL(2,\mathbb R)\times U(1)$ Killing algebra and invariant tensors

### 4.1 Global Killing basis

Use the AEG complex basis

$$
\widetilde L_0=i\partial_\tau,
\qquad
J_0=-i\partial_x,
$$

$$
\widetilde L_{\pm1}=\pm e^{\pm i\tau}
\left(
\frac{r}{\sqrt{1+r^2}}\partial_\tau
\mp i\sqrt{1+r^2}\partial_r
+\frac1{\sqrt{1+r^2}}\partial_x
\right).
$$

> **Re-derived here.** Their coordinate Lie brackets are

$$
[\widetilde L_1,\widetilde L_{-1}]=2\widetilde L_0,
\qquad
[\widetilde L_{\pm1},\widetilde L_0]=\pm\widetilde L_{\pm1},
\qquad
[J_0,\widetilde L_m]=0.
$$

All four vectors satisfy $\mathcal L_Kg=0$. There is no globally compact Killing orbit analogous to the global-AdS angular generator.

### 4.2 The inverse metric needs $U(1)^2$

Define the principal-symbol tensor of the $SL(2,\mathbb R)$ Casimir,

$$
H_{SL(2)}^{\mu\nu}
=\widetilde L_0^\mu\widetilde L_0^\nu
-\frac12\left(
\widetilde L_1^\mu\widetilde L_{-1}^\nu
+\widetilde L_{-1}^\mu\widetilde L_1^\nu
\right).
$$

In $(\tau,r,x)$ coordinates,

$$
H_{SL(2)}^{\mu\nu}=
\begin{pmatrix}
-\dfrac1{1+r^2}&0&\dfrac r{1+r^2}\\[4pt]
0&1+r^2&0\\[4pt]
\dfrac r{1+r^2}&0&\dfrac1{1+r^2}
\end{pmatrix}.
$$

The exact inverse-metric identity is

$$
\boxed{
L^2g^{\mu\nu}=H_{SL(2)}^{\mu\nu}
+(1-a^{-2})J_0^\mu J_0^\nu.
}
$$

Equivalently, with the real generator $Q=\partial_x$,

$$
L^2g^{-1}=H_{SL(2)}-(1-a^{-2})Q\otimes Q.
$$

Thus the $SL(2,\mathbb R)$ Casimir alone reconstructs the inverse metric only at $a=1$. For scalars, the corresponding full Lie-derivative Casimir is

$$
\boxed{
\mathcal C_{\rm full}
=\mathcal C_{SL(2)}+(1-a^{-2})\mathcal L_{J_0}^2
=L^2\Box.
}
$$

In the real $Q$ basis the second term is $-(1-a^{-2})\mathcal L_Q^2$.

### 4.3 The volume tensor and first-order invariant

Define

$$
\begin{aligned}
Z_{\alpha\beta\gamma}
={}&\widetilde L_{0\alpha}\nabla_\beta\widetilde L_{0\gamma}
-\frac12\left(
\widetilde L_{1\alpha}\nabla_\beta\widetilde L_{-1\gamma}
+\widetilde L_{-1\alpha}\nabla_\beta\widetilde L_{1\gamma}
\right)\\
&+(1-a^{-2})J_{0\alpha}\nabla_\beta J_{0\gamma}.
\end{aligned}
$$

> **Re-derived here.** In the orientation and complex-generator convention above,

$$
\boxed{Z_{\alpha\beta\gamma}=\frac{aL}{2}\varepsilon_{\alpha\beta\gamma}.}
$$

Changing the orientation or the real/complex generator convention flips the displayed sign. The important statement is that the full Casimir data reconstruct both $g^{-1}$ and $\varepsilon$; omitting the $U(1)$ term destroys both identities. The Killing identity

$$
\nabla_\mu\nabla_\nu K_\rho=R_{\rho\nu\mu}{}^\sigma K_\sigma
$$

then turns tensor Lie-Casimir actions into a finite combination of $\nabla^2$, $\varepsilon\nabla$, curvature, and algebraic $Q$-polarization operators.

For example, another useful invariant identity is

$$
R_{\alpha\beta\gamma\delta}
\varepsilon^{\alpha\beta}{}_{\mu}
\varepsilon^{\gamma\delta}{}_{\nu}
=\frac{a^2}{L^2}g_{\mu\nu}
+\frac{4(1-a^2)}{a^2L^4}Q_\mu Q_\nu.
$$

> **New inference / project-specific conclusion.** The Zhang tensor technology does extend to the local warped geometry, but for spin two it predicts a polarization-mixing matrix, not automatically a scalar Casimir eigenvalue. The 2023 paper proves the scalar/vector/spinor cases and explicitly leaves the TMG metric perturbation open.

## 5. Linearized TMG equation and why AdS$_3$ factorization changes

### 5.1 Covariant variation

Let

$$
\mathcal E_{\mu\nu}
=G_{\mu\nu}-\ell^{-2}g_{\mu\nu}+\mu^{-1}C_{\mu\nu}.
$$

The convention-independent statement is

$$
\boxed{\delta\mathcal E_{\mu\nu}[h]=0.}
$$

With

$$
R^{(1)}_{\mu\nu}
=\frac12\left(
\nabla^\lambda\nabla_\mu h_{\lambda\nu}
+\nabla^\lambda\nabla_\nu h_{\lambda\mu}
-\nabla^2h_{\mu\nu}-\nabla_\mu\nabla_\nu h
\right),
$$

the full variation before using the trace equation is

$$
\delta\mathcal E_{\mu\nu}
=R^{(1)}_{\mu\nu}
-\frac12g_{\mu\nu}\delta R
-\left(\frac12R+\ell^{-2}\right)h_{\mu\nu}
+\mu^{-1}C^{(1)}_{\mu\nu}.
$$

The trace of the exact TMG equation fixes $R=-6/\ell^2$, hence its linearization gives $\delta R=0$. The Cotton variation can be kept without an Einstein-background assumption as

$$
\begin{aligned}
C^{(1)}_{\mu\nu}
={}&\delta\varepsilon_\mu{}^{\alpha\beta}\nabla_\alpha S_{\beta\nu}
+\varepsilon_\mu{}^{\alpha\beta}\big(
\nabla_\alpha\delta S_{\beta\nu}
-\delta\Gamma^\lambda{}_{\alpha\beta}S_{\lambda\nu}
-\delta\Gamma^\lambda{}_{\alpha\nu}S_{\beta\lambda}
\big),\\
S_{\mu\nu}={}&R_{\mu\nu}-\frac14Rg_{\mu\nu}.
\end{aligned}
$$

AEG write the same linear problem in their sign/normalization convention as their equations (3.1)--(3.3). The important warped terms are the connection variations multiplying the non-Einstein background Schouten tensor. They cannot be replaced by a multiple of $g_{\mu\nu}$.

### 5.2 Exact failure of the $E^2$ scalar identity

Even if one temporarily imposes TT conditions,

$$
\nabla^\mu h_{\mu\nu}=0,
\qquad h=0,
$$

the general commutator identity is

$$
(E^2h)_{\mu\nu}
=\nabla^2h_{\mu\nu}
-\left(
R_\mu{}^\lambda h_{\lambda\nu}
+R^\alpha{}_{\mu\nu}{}^\lambda h_{\alpha\lambda}
\right).
$$

Using the three-dimensional Riemann--Ricci identity and the warped Ricci tensor, define

$$
v_\mu\equiv Q^\alpha h_{\alpha\mu},
\qquad
s\equiv Q^\alpha Q^\beta h_{\alpha\beta},
\qquad
B\equiv\frac{1-a^2}{a^2L^4}.
$$

Then

$$
\boxed{
\begin{aligned}
(E^2h)_{\mu\nu}
={}&\nabla^2h_{\mu\nu}
-\frac{5a^2-8}{4L^2}h_{\mu\nu}\\
&-B\left(2Q_\mu v_\nu+Q_\nu v_\mu-g_{\mu\nu}s\right).
\end{aligned}}
$$

At $a=1$, $L=\ell/2$, the $B$ term vanishes and the remaining coefficient gives

$$
E^2h=(\nabla^2+3/\ell^2)h,
$$

which is precisely the identity used in `TMG.md`. Away from $a=1$, $E^2$ mixes the fibre polarizations $v_\mu$ and $s$. Moreover, TT gauge is not the complete gauge used for the propagating warped mode.

Therefore the three constant-coefficient operators $D^L,D^R,D^\mu$ of global AdS$_3$ do not arise by the same polynomial factorization. The obstruction is not merely “fewer Killing vectors”; it is the explicit $Q_\mu Q_\nu$ part of the background Ricci/Schouten/Cotton tensors.

> **Known from literature.** AEG report that they could not put the general warped linearized equation into the AdS form $D^M D^L D^R h=0$.

> **Re-derived here.** The displayed $E^2$ identity locates the obstruction in an invariant polarization-mixing term and recovers the `TMG.md` identity exactly at $a=1$.

## 6. Gauge reduction to the propagating mode

### 6.1 $k\neq0$

Write a Fourier mode as

$$
h_{MN}(\tau,r,x)=e^{i(kx-\Omega\tau)}\widetilde h_{MN}(r).
$$

Decomposing the metric as an AdS$_2$ base plus fibre, AEG show that for $k\neq0$ all diffeomorphism freedom can be used to impose

$$
\boxed{h_{\mu x}=0,\qquad \mu\in\{\tau,r,x\}.}
$$

The remaining ansatz is

$$
h_{MN}=e^{i(kx-\Omega\tau)}
\begin{pmatrix}
-(1+r^2)g_1(r)&g_2(r)&0\\
g_2(r)&(1+r^2)^{-1}g_3(r)&0\\
0&0&0
\end{pmatrix}.
$$

The constraints eliminate $g_1,g_2$ and leave one second-order equation,

$$
g_3''+A(r)g_3'+B(r)g_3=0,
$$

with

$$
A(r)=\frac{P_5(r)}{(1+r^2)P_4(r)},
\qquad
B(r)=\frac{P_6(r)}{(1+r^2)^2P_4(r)}.
$$

Here $P_n$ are degree-$n$ polynomials depending on $(a,k,\Omega)$. This proves the expected single local propagating degree of freedom, but not a Casimir characterization.

At either $r\to\pm\infty$,

$$
A(r)=\frac2r+O(r^{-2}),
\qquad
B(r)=\frac{(a^2-1)(k^2+a^2)}{a^2r^2}+O(r^{-3}).
$$

Hence

$$
g_i(r)\sim r^{-\Delta_\pm},
\qquad
\boxed{
\Delta_\pm(k,a)=\frac12\pm
\sqrt{k^2(a^{-2}-1)+\frac54-a^2}.
}
$$

For a general separated solution, the temporal frequency $\Omega$ is not constrained to equal $\Delta_\pm$.

### 6.2 $k=0$

The gauge $h_{\mu x}=0$ is singular at $k=0$: the fibre scalar $h_{xx}$ is then gauge invariant under the transformation that removed it for $k\neq0$. AEG quote a dimensionally reduced equation with effective mass

$$
(\Box_2-m_0^2)\phi=0,
\qquad
m_0^2=-\frac{3(\nu^2-1)}{\ell^2},
$$

whose asymptotic exponent agrees with $\Delta_\pm(0,a)$.

This does **not** close the physical $k=0$ question. The current version of [Kim--Myung--Park, arXiv:0901.4390](https://arxiv.org/abs/0901.4390) finds no physical pole for the Achúcarro--Ortiz reduced theory and concludes that this reduction is unsuitable for describing the massive mode; it distinguishes that reduction from a Kaluza--Klein reduction. Thus the scalar equation is reliable as an asymptotic diagnostic, not as proof of a nondegenerate three-dimensional CPS oscillator.

> **New inference / project-specific conclusion.** The $k=0$ sector must be re-derived directly from the three-dimensional constraints or from a reduction proven equivalent at the quadratic-action and symplectic levels. It cannot be obtained as the $k\to0$ limit of the completely fixed $k\neq0$ gauge.

## 7. Casimir/first-order characterization test

### 7.1 What symmetry guarantees, and what it does not

Because the background and the field equation are invariant,

$$
[\delta\mathcal E,\mathcal L_K]=0
$$

for every Killing vector $K$. Therefore the solution space is an $SL(2,\mathbb R)\times U(1)$ module. This is weaker than any of the following:

1. $\delta\mathcal E$ is a scalar polynomial in the quadratic Casimir;
2. a fixed Casimir eigenvalue plus algebraic constraints is equivalent to the field equation;
3. the physical domain is a direct sum/integral of irreducible unitary modules;
4. highest-weight modules exhaust the domain.

Only the first, weakest module statement is automatic.

### 7.2 Scalar benchmark

For

$$
\phi=e^{i(kx-\Omega\tau)}f(r),
$$

the full scalar Casimir equation $(\mathcal C_{\rm full}-\lambda)\phi=0$ becomes

$$
\boxed{
(1+r^2)f''+2rf'
+\left[
\frac{\Omega^2+2\Omega kr-k^2}{1+r^2}
+k^2(1-a^{-2})-\lambda
\right]f=0.
}
$$

Its only fixed finite singularities are $r=\pm i$. By contrast, the gauge-fixed graviton component $g_3$ has additional $P_4(r)$ singular points for generic $(a,k,\Omega)$. Therefore $g_3$ itself is not a scalar-Casimir master field in this complete gauge.

This comparison is not a theorem against every possible field redefinition: some $P_4$ singularities could be apparent or introduced by eliminating constraints. It is, however, a direct failure of the simplest proposal

$$
[\mathcal C_{\rm full}-\lambda(k,a)]g_3=0.
$$

### 7.3 Tensor Casimir and polarization matrix

For a rank-two tensor, each Lie derivative acts both on the spacetime dependence and on the two indices. The $H$ and $Z$ identities imply the schematic invariant form

$$
\mathcal C_{\rm full}h
=L^2\nabla^2h
+aL\,(\varepsilon\nabla\ \text{on each index})h
+\mathsf M(a;Q)h,
$$

where $\mathsf M$ is an algebraic matrix built from $g,Q$ and contractions of $h$. The explicit $E^2$ calculation above already exhibits the sub-block involving

$$
h_{\mu\nu},\qquad Q^\alpha h_{\alpha\mu},
\qquad Q^\alpha Q^\beta h_{\alpha\beta}.
$$

No source inspected here derives a matrix $\mathsf P(\mathcal C_{SL(2)},k,E)$ whose kernel is proven equivalent to the complete gauge-reduced TMG equation. In particular, the 2023 Casimir/QNM paper treats scalar, vector and spinor fields, and explicitly leaves the TMG metric perturbation for future work.

Therefore:

$$
\boxed{
\text{A matrix-valued invariant system is expected, but its reduction and simultaneous diagonalization are unproved.}
}
$$

> **New inference / project-specific conclusion.** Isometry equivariance makes an invariant master equation plausible; it does not make it available. The missing calculation is exactly the one needed before claiming representation completeness.

## 8. Highest-weight modes

Impose

$$
J_0h=kh,
\qquad
\widetilde L_0h=\Omega h,
\qquad
\widetilde L_1h=0.
$$

> **Known from literature.** Solving the highest-weight equations first fixes all radial dependence up to six constants. For $k(k^2+a^4)\neq0$, the highest-weight-preserving gauge sets the fibre components to zero. The remaining field-equation matrix has determinant

$$
\det\mathsf A
=k^2(a^4+k^2)(k^2+(\Omega-2)^2)
\left[a^4-k^2+a^2(k^2-1-\Omega+\Omega^2)\right].
$$

The non-pure-gauge massive branch is

$$
\boxed{
\Omega=\Omega_\pm(k,a)
=\frac12\pm\sqrt{k^2(a^{-2}-1)+\frac54-a^2}.
}
$$

The mode has the form

$$
h_{\mu\nu}\propto
e^{i(kx-\Omega\tau)+k\tan^{-1}r}
(1+r^2)^{-\Omega/2}
\begin{pmatrix}
f_1&f_2&0\\
f_2&f_4&0\\
0&0&0
\end{pmatrix},
$$

with rational $f_i(r)$ fixed algebraically.

The ranges are decisive:

- $a<1$: real highest-weight modes exist for all real $k$;
- $1<a<\sqrt5/2$: only a bounded interval of $k$ is allowed, and the upper branch obeys $1/2<\Omega_+<1$;
- $a>\sqrt5/2$: there is no real highest-weight propagating mode.

The highest-weight modes satisfy the Casimir relation quoted by AEG,

$$
\left[
\frac12(\widetilde L_1\widetilde L_{-1}
+\widetilde L_{-1}\widetilde L_1)
-\widetilde L_0^2
+\frac{1-a^2}{a^2}\partial_x^2
\right]h_{\mu\nu}
=-(1-a^2)h_{\mu\nu}.
$$

On a primary this reduces to

$$
\Omega(\Omega-1)
=(1-a^2)\left(1-\frac{k^2}{a^2}\right),
$$

which reproduces $\Omega_\pm$ exactly.

This is a valid characterization of the displayed primary family. It is not an equivalence to the general field equation.

## 9. General/non-highest-weight and $k=0$ solutions; completeness audit

### 9.1 Highest-weight descendants are not complete

The general $k\neq0$ propagating equation permits arbitrary separated frequency $\Omega$; only the radial exponents are fixed to $\Delta_\pm(k,a)$. A highest-weight state imposes the additional equality $\Omega=\Delta_\pm$.

There are two direct completeness failures:

1. AEG explicitly state that not every linearized solution is a superposition of highest-weight states and descendants.
2. For $a>\sqrt5/2$, the real highest-weight family disappears, whereas the completely gauge-fixed local second-order equation still describes the propagating degree of freedom.

Thus

$$
\boxed{
\text{highest-weight modules do not exhaust the local solution space.}
}
$$

### 9.2 Could the rest be principal/complementary series?

At fixed real $k$, a candidate representation label would consist of

$$
k,\qquad
c=\Delta(\Delta-1),
\qquad
\text{an }\widetilde L_0\text{ spectral parameter},
$$

plus a choice of global cover and boundary domain. However, assigning “discrete”, “principal” or “complementary” is not justified by the Casimir value alone. One also needs:

- a globally defined invariant inner product or Krein form;
- a domain on which the Casimir is self-adjoint (or a precisely controlled non-self-adjoint spectral problem);
- boundary conditions at both $r\to\pm\infty$ and $x\to\pm\infty$;
- treatment of the $P_4$ singular points and global matching;
- the gauge quotient and the separate $k=0$ constraints.

None of these has been completed for the propagating warped-TMG sector. Negative canonical energy also warns that the natural bilinear need not define a positive unitary representation.

> **New inference / project-specific conclusion.** The complete solution space is certainly an isometry module, but a manageable direct-integral decomposition into standard irreducibles is presently a conjecture, not an output of the mode equation.

### 9.3 Status of $k=0$

The $k=0$ sector is neither discardable nor presently classifiable:

- it is not covered by the $k\neq0$ complete gauge;
- its fibre scalar is gauge invariant under the missing transformation;
- the quoted AdS$_2$ equation reproduces the expected falloff;
- the AO-reduced quadratic theory has no physical pole and is not equivalent to the KK reduction.

Therefore $k=0$ could be a constrained, null, pure-gauge, or genuinely physical sector depending on the correct three-dimensional reduction and boundary conditions. An explicit three-dimensional symplectic calculation is required.

## 10. Boundary conditions and physical admissibility

### 10.1 Standard stretched-warped phase space

> **Known from literature.** AEG adapt the Compère--Detournay conditions of [arXiv:0906.1243](https://arxiv.org/abs/0906.1243) to the global coordinates. At large $r$ their leading form is

$$
\begin{aligned}
g_{\tau\tau}&=(a^2-1)r^2+O(r),
&g_{\tau r}&=O(r^{-1}),\\
g_{\tau x}&=ar+O(1),
&g_{xx}&=a^2+O(r^{-1}),\\
g_{xr}&=O(r^{-2}),
&g_{rr}&=r^{-2}+O(r^{-3}).
\end{aligned}
$$

The omitted coefficients are constrained so that the charges are finite, integrable and conserved. On the unquotiented global vacuum one must additionally impose decay at $|x|\to\infty$; AEG use sufficiently localized wave packets but do not give a full global propagation theorem for this condition.

For a propagating mode,

$$
h_{\tau\tau}\sim r^{2-\Delta},
\quad
h_{\tau x}\sim r^{1-\Delta},
\quad
h_{\tau r},h_{xx}\sim r^{-\Delta},
\quad
h_{rx}\sim r^{-1-\Delta},
\quad
h_{rr}\sim r^{-2-\Delta}.
$$

The phase space requires $\Delta\geq1$. On the stretched branch the admissible upper propagating exponent obeys $\Delta_+<1$ whenever it is real. The general modes have the same radial exponents as the primaries. Hence

$$
\boxed{
\text{the standard stretched-warped boundary conditions exclude all local propagating massive modes.}
}
$$

The remaining physical excitations are large diffeomorphisms with a Virasoro $\ltimes\,U(1)$ current algebra. The fuller Compère--Detournay charge analysis finds that the spacelike $U(1)$ current descendants can lower $L_0$ unless one imposes an additional restriction; this boundary-sector sign issue does not reinstate any bulk massive mode. In either case, the surviving quantization problem is a boundary-graviton/current problem, not a warped massive-graviton problem.

### 10.2 Relaxed phase space with a graviton

> **Known from literature.** Henneaux--Martínez--Troncoso, [arXiv:1108.2841](https://arxiv.org/abs/1108.2841), later constructed relaxed asymptotic conditions on spacelike-stretched warped black-hole quotients. They contain a nonlinear Kerr--Schild solution with a propagating massive graviton and slower falloff. The canonical surface generators are finite and integrable after additional asymptotic constraints.

This is important positive evidence, but its scope is narrower than what the present project needs:

- the construction is formulated for asymptotically warped black-hole coordinates with a compact angular quotient, not a complete mode basis on the unquotiented global vacuum;
- finite integrable asymptotic charges do not by themselves prove finite symplectic flux/norm for every linearized massive mode;
- the graviton-dependent relaxation coefficients do not contribute directly to the displayed asymptotic charges, so nondegeneracy of their bulk CPS pairing is not established by those charges;
- no stability or positive-norm theorem is supplied for the retained graviton sector.

Therefore a broader phase space exists, but adopting it changes the physics: it reintroduces the negative-energy/local massive degree of freedom that the standard stable phase space removes.

## 11. Preliminary CPS norm/orthogonality test

### 11.1 Current to be used

Use the same decomposition as `TMG.md`, but do not use its AdS TT simplification:

$$
\boxed{
\Omega_{\rm TMG}
=\frac1{16\pi G}\int_\Sigma d^2x\sqrt\sigma\,\tau_\mu
\left(\omega_{\rm EH}^\mu+\frac1\mu\omega_{\rm gCS}^\mu\right).
}
$$

A convenient unsimplified Einstein representative is generated by

$$
\theta_{\rm EH}^\mu(h)=\nabla_\nu h^{\mu\nu}-\nabla^\mu h,
\qquad
\omega_{\rm EH}^\mu(h_1,h_2)
=\delta_1\theta_{\rm EH}^\mu(h_2)-\delta_2\theta_{\rm EH}^\mu(h_1).
$$

In the connection-space representative used by `TMG.md`, the linearized CS piece is

$$
\omega_{\rm gCS}^\mu
=\frac12\varepsilon^{\mu\nu\rho}
\delta\Gamma^\alpha{}_{\nu\beta}
\wedge\delta\Gamma^\beta{}_{\rho\alpha},
$$

with

$$
\delta\Gamma^\rho{}_{\mu\nu}
=\frac12g^{\rho\sigma}
(\nabla_\mu h_{\sigma\nu}+\nabla_\nu h_{\mu\sigma}-\nabla_\sigma h_{\mu\nu}).
$$

On the warped background, the $h_{\mu x}=0$ gauge is not TT, and boundary/corner improvements cannot be dropped until the asymptotic flux has been checked. Thus the compact TT current written in `TMG.md` is not yet the correct integrand for the present mode.

### 11.2 One explicit radial finiteness test

On a stationary domain with vanishing symplectic flux, the canonical energy is obtained from the same current by

$$
\mathcal E_c(h_1,h_2)=\Omega_{\rm TMG}(h_1,\mathcal L_{\partial_\tau}h_2).
$$

For a nonzero real-frequency eigenmode, the energy and the mode--conjugate CPS pairing therefore have the same radial convergence requirement. This relation is used only as a convergence test below, not as an equality of normalization coefficients before boundary terms are audited.

Take the stretched example

$$
a^2=\frac65,
\qquad
k^2=\frac3{25},
\qquad
\Delta_+=\frac{5+\sqrt3}{10}.
$$

Then

$$
\frac12<\Delta_+<1.
$$

For the AEG highest-weight mode, the quadratic Hamiltonian density reduces to radial integrals of the form

$$
I_n=\int_{-\infty}^{\infty}dr\,
\frac{r^n e^{2k\tan^{-1}r}}{(1+r^2)^{\Delta_++4}},
\qquad 0\leq n\leq8.
$$

The exponential factor is bounded. The worst $n=8$ integrand behaves as

$$
r^{-2\Delta_+}=r^{-1-\sqrt3/5},
$$

so every $I_n$ is radially finite. This is a nontrivial per-unit-$x$ finiteness check for the mode and its conjugate. A plane wave is still delta-normalized/infinite along the noncompact fibre; a wave packet in $k$ is required for a finite global integral.

AEG find the quadratic energy density of all such upper-branch modes to be negative. The mode also violates the standard phase-space condition because $\Delta_+<1$. Thus this example shows

$$
\text{finite radial bilinear}\quad\not\Longrightarrow\quad
\text{allowed stable phase-space mode}.
$$

This check does not supply the exact CPS normalization coefficient. That requires inserting the full mode into the unsimplified Einstein+CS current and controlling all four global boundary pieces.

### 11.3 Orthogonality from symmetry

If the selected boundary conditions make $Q$ Hamiltonian and the symplectic flux vanishes, invariance gives

$$
\Omega(\mathcal L_Qh_1,h_2)+\Omega(h_1,\mathcal L_Qh_2)=0.
$$

For $h_k\sim e^{ikx}$ and $h_{k'}^*\sim e^{-ik'x}$,

$$
(k-k')\Omega(h_k,h_{k'}^*)=0.
$$

Hence different real fibre momenta are delta-orthogonal. The same argument applies to distinct $\widetilde L_0$ eigenvalues when the relevant generator preserves the domain.

Different Casimir labels are orthogonal only if the Casimir is self-adjoint on the physical domain. That is not established. Likewise, descendant norms can be generated algebraically from a seed only after the adjoint relation between $\widetilde L_1$ and $\widetilde L_{-1}$ is fixed by the CPS form and boundary conditions. At present, one cannot avoid an explicit seed/radial norm calculation for each inequivalent representation block.

## 12. Comparison with global AdS$_3$ TMG

| Question | Global AdS$_3$ in `TMG.md` | Homogeneous spacelike warped AdS$_3$ |
|---|---|---|
| Background | Einstein and maximally symmetric | Homogeneous, non-Einstein; $R_{\mu\nu}=Ag_{\mu\nu}+BQ_\mu Q_\nu$ |
| Isometry | $SL(2,\mathbb R)\times SL(2,\mathbb R)$ | $SL(2,\mathbb R)\times U(1)$ |
| Inverse metric from Casimir | Each AdS sector supplies the standard invariant tensors | $SL(2)$ Casimir alone fails; an additional $Q\otimes Q$ term is necessary |
| $E^2$ on TT tensors | Scalar identity $E^2=\nabla^2+3/\ell^2$ | Matrix identity with $Q$-polarization mixing |
| Linearized TMG factorization | $D^L D^R D^\mu h=0$ | No corresponding constant-coefficient factorization known; AEG could not obtain one |
| Local propagating sectors | One massive helicity sector plus pure/large-gauge massless sectors | One local propagating degree of freedom plus large gauge modes |
| Gauge reduction | TT gauge organizes all three factors | Complete $k\neq0$ gauge is $h_{\mu x}=0$; $k=0$ is separate |
| Highest-weight completeness | Massive primary and descendants furnish the selected global-AdS massive sector under the stated boundary conditions | False for the local solution space; general frequencies and non-highest-weight modes remain |
| Special sector | Critical $\mu\ell=1$ logarithmic Jordan partner | $k=0$ reduction/constraint problem; no justified oscillator yet |
| Standard boundary conditions | Brown--Henneaux may retain the massive primary for the stated parameter range | Compère--Detournay-type stretched conditions remove all propagating massive modes |
| Broader boundary conditions | Log/relaxed choices change the phase space | HMT relaxed quotient boundary conditions retain a graviton, with finite integrable charges but no complete CPS mode theory |
| CPS normalization | Explicit radial integrals and primary normalization available | A radial finiteness example exists; exact norm, global flux, and adjoint ladder structure remain open |
| Canonical quantization | Feasible within the selected factorized sector | Not yet feasible for the propagating sector; boundary-current quantization is a different project |

## 13. Exact symbolic checks

The following calculations were performed in the global coordinates of section 3. The final labelled xAct/xCoba verification returned `allZero = true` for the Ricci, scalar-curvature, Cotton symmetry/trace/formula, and background-TMG residuals.

| Check | Method | Exact result |
|---|---|---|
| Killing brackets | Mathematica coordinate Lie brackets | All six displayed $SL(2)\times U(1)$ residuals vanish |
| Inverse metric decomposition | Mathematica matrix algebra | $L^2g^{-1}-H_{SL(2)}-(1-a^{-2})J_0\otimes J_0=0$ componentwise |
| Fibre twist | Mathematica Christoffel calculation | $\nabla_\mu Q_\nu+(a/2L)\varepsilon_{\mu\nu\rho}Q^\rho=0$ |
| Casimir volume tensor | Mathematica covariant derivatives of Killing covectors | $Z-(aL/2)\varepsilon=0$ componentwise in the chosen convention |
| Ricci tensor and scalar | xAct/xCoba, exact $a,L,r$ | Both residuals against section 3.3 vanish |
| Cotton tensor | xAct/xCoba connection and Schouten derivative | Formula in section 3.3, symmetry and trace residuals all vanish |
| Background TMG equation | xAct/xCoba | All nine component residuals vanish |
| General-mode indicial roots | Exact algebra | Roots are $\Delta_\pm(k,a)$ |
| Sample radial convergence | Mathematica exact inequalities | For $a^2=6/5$, $k^2=3/25$, worst power is $-1-\sqrt3/5<-1$ |

**Assumptions.** $L>0$, $a>0$, orientation $\varepsilon_{\tau r x}>0$, smooth fields, and the curvature-commutator convention chosen to reproduce the `TMG.md` AdS identity at $a=1$.

**Not verified here.** A complete component-by-component reduction of $\delta\mathcal E_{\mu\nu}$ to the AEG $P_4,P_5,P_6$ equation; an explicit gauge-invariant spin-two Casimir matrix; simultaneous diagonalization of that matrix; the globally matched spectrum through all $P_4$ singular points; a three-dimensional $k=0$ CPS residue; an exact Einstein+CS norm for a warped graviton; and vanishing symplectic flux for the HMT relaxed phase space on the unquotiented global vacuum.

## 14. Final verdict and the smallest next calculation

> **Final verdict.** The local propagating sector is one-dimensional after constraints and is acted on by $SL(2,\mathbb R)\times U(1)$, but no known Casimir/first-order condition is equivalent to its complete equation. Highest-weight modes are an incomplete subclass, $k=0$ is separate, the standard stable phase space removes all massive modes, and the relaxed phase space lacks a complete finite-CPS mode theory. Therefore a full propagating-sector quantization project is not presently justified.

The smallest calculation that could change this verdict is:

1. For $k\neq0$, construct a **gauge-invariant scalar master field** $\Psi_k$ directly from the three-dimensional perturbation, rather than using the gauge component $g_3$.
2. Compute $\mathcal C_{\rm full}\Psi_k$ and reduce it using the exact linearized constraints. Test the operator identity

   $$
   (\mathcal C_{\rm full}-\lambda(k,a))\Psi_k=0
   $$

   against the complete AEG radial equation, including the finite $P_4$ singular points. A nonzero residual that cannot be removed by a nonsingular local field redefinition ends the representation-first route.
3. If and only if that residual vanishes, repeat the construction at $k=0$ directly in three dimensions and compute one exact Einstein+CS symplectic flux/norm under the relaxed boundary conditions.

Passing step 2 would upgrade the local problem toward “conditionally feasible.” Passing only the highest-weight check does not.
