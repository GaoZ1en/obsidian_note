# Global Peierls, Weyl, and Exhaustion

## 1. Direct verdict

- **G-E1-rad-test:** `proved` on the explicit radiative test quotient below;
  it is not a statement about arbitrary compact two-forms.
- **G-E2a-Poisson:** `proved` from the L-F symplectic composition map.
- **G-E2b-finite-Peierls:** `proved` for compact smearings in the open
  causally convex rectangle/triangle. A theory that includes the physical
  outer cut as a dynamical boundary is a different, `conditional` problem.
- **G-F-Weyl:** `proved` algebraically from G-C; it is not gated by G-D.
- **G-F-alg-dyn:** `proved` for algebraic Weyl automorphisms.
- **G-F-Cstar-norm-cont:** `false` for every nontrivial orbit in the universal
  Weyl $C^*$-algebra.
- **G-F-rep-dyn:** `proved` in the declared stationary Fock representation by
  the standard second-quantization theorem and the domains in Section 6.
- **G-G-F:** literal field-strength restriction/exhaustion is `proved` on the
  globally extendable fixed-point subspace.
- **G-G-A(reanchored):** potential exhaustion is `proved` on the Schwartz core
  only with the re-anchoring transition maps below; the energy-potential
  version remains `conditional`.

Sharp endpoint/memory observables and charged asymptotic frames remain
`conditional`.

## 2. Peierls convention and master inverse

For one master let

$$
K_\lambda=\partial_t^2-\partial_z^2+\lambda,
\qquad
E_{\rm P}=G_{\rm adv}-G_{\rm ret}.
\tag{2.1}
$$

With $\iota_{X_F}\Omega=-\delta F$, Green's identity gives

$$
\Omega_{X_\infty}(E_{\rm P}h,s)
=-\int d^2x\,h(x)s(x)
\tag{2.2}
$$

for compact $h$ and every homogeneous energy solution $s$ in the dense
domain. Thus the inverse of the complete characteristic form equals the bulk
Peierls bracket. The explicit kernel is

$$
E_{{\rm P},\lambda}(\tau,\xi)
=-\frac12\operatorname{sgn}(\tau)\theta(\tau^2-\xi^2)
J_0(\sqrt\lambda\sqrt{\tau^2-\xi^2}).
\tag{2.3}
$$

The analytic Fourier--Bessel and Green proof is the read-only result of
`../../null-characteristic-cps/calculations/10-peierls-and-propagator-check.md`.

## 3. Radiative Maxwell test quotient

The global theorem fixes $Q_E=n=0$ and $\ell\geq1$. Its test space must make
that restriction explicit. Compact-support de Rham cohomology already shows
why arbitrary $\eta\in\Omega_c^2(M)$ cannot be inserted without projection.
The compact-support Kunneth formula gives

$$
H_c^p(\mathbb R^2)=
\begin{cases}\mathbb R,&p=2,\\0,&p\neq2,\end{cases}
\qquad
H^q(S^2)=
\begin{cases}\mathbb R,&q=0,2,\\0,&\text{otherwise},\end{cases}
\tag{3.1}
$$

and hence

$$
\boxed{H_c^2(\mathbb R^{1,1}\times S^2)\simeq
H_c^2(\mathbb R^2)\otimes H^0(S^2)\simeq\mathbb R.}
\tag{3.2}
$$

A representative is
$\eta_0=\chi(t,z)\,dt\wedge dz\,Y_{00}$ with
$\chi\in C_c^\infty(\mathbb R^2)$ and $\int\chi\,dt\,dz\neq0$. It is a
spherical $\ell=0$ compact-support class. Thus compact support does not remove
the fixed flux sector.

Let $\Pi_{\rm rad}=\Pi_{\ell\geq1}$ subtract the scalar $\ell=0$ angular
components of a compact two-form. It preserves smoothness and compact support
in $(t,z)$. Let

$$
\mathscr H_c^{\rm rad}
=\widehat\bigoplus_{P=E,B;\,\ell\geq1,m}
C_c^\infty(\mathbb R^{1,1})
\tag{3.3}
$$

denote the rapid-angular compact-source space, and quotient each component by
the equation-of-motion image $K_{\lambda_\ell}C_c^\infty$. For the local
field-strength maps $\mathcal D^P_{\ell m}$ of calculation 13 define

$$
q_F:\Omega_c^2(M)\longrightarrow
\widehat\bigoplus_{P,\ell\geq1,m}
\frac{C_c^\infty(\mathbb R^{1,1})}
{K_{\lambda_\ell}C_c^\infty(\mathbb R^{1,1})},
\qquad
q_F(\eta)=
\left[\mathcal D^{P\dagger}_{\ell m}\Pi_{\rm rad}\eta\right].
\tag{3.4}
$$

The precise on-shell annihilator and test quotient are

$$
\boxed{\mathcal N_F^{\rm rad}=\ker q_F,\qquad
\mathcal T_F^{\rm rad}=\Omega_c^2(M)/\mathcal N_F^{\rm rad}.}
\tag{3.5}
$$

Equivalently,
$\mathcal T_F^{\rm rad}\simeq
\Pi_{\rm rad}\Omega_c^2(M)/\mathcal N_{F,\Pi}^{\rm rad}$.
The first form makes the exclusions visible:

- $\ker\Pi_{\rm rad}$, including every fixed-sector $\ell=0$ direction, lies
  in $\mathcal N_F^{\rm rad}$;
- $\ker\mathcal D^\dagger$ lies in $\mathcal N_F^{\rm rad}$;
- more generally, a projected test lies in the annihilator whenever every
  master adjoint source is $K_{\lambda_\ell}$ of a compact test function.

These are exactly the smearings that vanish on all fixed-sector on-shell
field strengths, because the Maxwell/master map is complete for
$\ell\geq1$.

Define the radiative causal propagator on a test class by

$$
\boxed{
E_F^{\rm rad}[\eta]
=\mathcal D
\left(\widehat\bigoplus_{P,\ell\geq1,m}
E_{{\rm P},\lambda_\ell}\right)
\mathcal D^\dagger\Pi_{\rm rad}\eta.}
\tag{3.6}
$$

Changing $\eta$ by $\mathcal N_F^{\rm rad}$ changes each adjoint source by an
equation-of-motion image or zero, so (3.6) is well defined on the quotient.
For $[\eta],[\eta']\in\mathcal T_F^{\rm rad}$,

$$
\boxed{
\{F[\eta],F[\eta']\}
=\sum_{P,\ell\geq1,m}
\left\langle \mathcal D^{P\dagger}_{\ell m}\Pi_{\rm rad}\eta,
E_{{\rm P},\lambda_\ell}
\mathcal D^{P\dagger}_{\ell m}\Pi_{\rm rad}\eta'\right\rangle.}
\tag{3.7}
$$

Green identity (2.2), G-A, and the full Maxwell pullback G-C show that (3.7)
is simultaneously (i) the inverse characteristic symplectic form, (ii) the
bulk fixed-sector Maxwell Peierls bracket, and (iii) the pairing with
$E_F^{\rm rad}$. This proves G-E1-rad-test. No gauge-potential propagator and
no unprojected $\ell=0$ test direction are used.

## 4. Finite Poisson composition and autonomous Peierls

For adjacent finite cells inside $X_T$, L-F gives a symplectic isomorphism

$$
G_N:\mathcal P(D_1)\star_N\mathcal P(D_2)
\xrightarrow{\simeq}\mathcal P(D_1\cup_ND_2).
\tag{4.1}
$$

Hence $G_N$ is Poisson on differentiable gauge-invariant observables. Internal
interface terms cancel because both $i^*F$ and $i^*(*F)$ match; the
distributional proof of calculation 07 excludes electric surface current and
magnetic defect. This proves **G-E2a-Poisson** without a Green-operator claim.

For G-E2b let $O\subset\mathbb R^{1,1}\times S^2_R$ be one of the open
regions

$$
O_\Box=(u_0,u_1)\times(v_0,v_1)\times S^2_R,
\tag{4.2}
$$

or

$$
O_\triangle=\{u>0,\ v>0,\ u/U+v/V<1\}\times S^2_R.
\tag{4.3}
$$

If $\gamma$ is future causal, then

$$
-2\dot u\dot v+R^2|\dot\vartheta|^2\leq0,
\qquad \dot t=(\dot u+\dot v)/\sqrt2>0,
\tag{4.4}
$$

so $\dot u\dot v\geq0$ and $\dot u+\dot v>0$, hence
$\dot u,\dot v\geq0$. For the rectangle, endpoint bounds therefore hold
along the entire curve. For the triangle, the positive affine function
$L(u,v)=u/U+v/V$ is monotone, and a curve from $p$ to $q$ satisfies
$0<L(p)\leq L(\gamma)\leq L(q)<1$. Both regions are causally convex.

Strong causality is inherited from the product spacetime. For $p,q\in O$,
$J_O^+(p)\cap J_O^-(q)$ is the corresponding global causal diamond confined
between the endpoint coordinate bounds. Those bounds have a positive margin
from every component of $\partial O$, and $S^2$ is compact; the diamond is
therefore compact in $O$. Thus $O_\Box$ and $O_\triangle$ are globally
hyperbolic. Every massive master operator $K_{\lambda_\ell}$ is normally
hyperbolic there and has unique regional Green operators $G_{O,\ell}^\pm$.

Let $h\in C_c^\infty(O)$; compactness places its support away from the
physical outer cuts. Causal convexity gives

$$
J_M^\pm(\operatorname{supp}h)\cap O
=J_O^\pm(\operatorname{supp}h).
\tag{4.5}
$$

The restriction $(G_{M,\ell}^\pm h)|_O$ solves
$K_{\lambda_\ell}\phi=h$ in $O$ and has the regional support in (4.5).
Uniqueness of the retarded/advanced Green solution on the globally
hyperbolic region yields

$$
\boxed{G_{O,\ell}^\pm h=(G_{M,\ell}^\pm h)|_O.}
\tag{4.6}
$$

The projected Maxwell adjoint is local in $(t,z)$ and preserves the support
there. Applying $\mathcal D(\oplus E_{O,\ell})\mathcal D^\dagger$ therefore
lifts (4.6) to $[\eta],[\eta']\in\mathcal T_F^{\rm rad}$ with compact support
in $O$. Their autonomous regional Peierls bracket equals the restriction of
the global radiative bracket (3.7). This proves **G-E2b-finite-Peierls** for
the open regional theory.

No boundary condition is required at an excluded outer cut. If instead the
cut itself is included and given dynamical boundary degrees of freedom or a
reflecting/absorbing boundary condition, the Green problem has changed; its
Peierls equality is `conditional` until that boundary theory is specified.

## 5. Algebraic Weyl functor

For any real symplectic space $(V,\Omega)$, define

$$
W(x)W(y)=e^{-i\Omega(x,y)/2}W(x+y),
\qquad W(x)^*=W(-x).
\tag{5.1}
$$

G-C immediately gives

$$
\boxed{\mathfrak W(R_\infty):W(c)\longmapsto W(R_\infty c)}
\tag{5.2}
$$

as a global characteristic Weyl $*$-isomorphism, and (4.1) gives the finite
composition isomorphism. These are G-F-Weyl. They use only symplecticity, not
translation Hamiltonians.

## 6. Three levels of Weyl dynamics

The global symplectic groups $T_s=e^{sA_X}$ of G-D induce

$$
\alpha_s^X(W(x))=W(T_sx).
\tag{6.1}
$$

The group law and Weyl relations prove **G-F-alg-dyn**: (6.1) is an algebraic
$*$-automorphism group.

It is not point-norm continuous in the universal Weyl $C^*$-algebra. For
$z\neq0$, weak nondegeneracy supplies $y$ with $\Omega(z,y)\neq0$.
Conjugation by $W(ty)$ rotates $W(z)$ through every phase, so
$\operatorname{spec}W(z)=S^1$ and

$$
\|W(x+z)-W(x)\|
=\|e^{-i\Omega(x,z)/2}W(z)-1\|=2
\tag{6.2}
$$

because the Weyl phase only rotates the unit-circle spectrum. If
$T_sx\neq x$, therefore
$\|\alpha_s(W(x))-W(x)\|=2$. Every nontrivial orbit has arbitrarily small
nonfixed $s$, so **G-F-Cstar-norm-cont is false**. Algebraic automorphisms do
not form a point-norm continuous universal $C^*$-dynamics.

For the stationary one-particle space $\mathfrak h$, let

$$
u_t(s)a=e^{-is\omega}a,
\qquad
u_z(s)a=e^{isk}a=e^{-is(-k)}a,
\tag{6.3}
$$

with the analogous finite-$\ell$ rotation representation. These are strongly
continuous complex-linear unitaries. Their self-adjoint one-particle
generators and domains are

$$
h_t=\omega,\quad \mathcal D(h_t)=\{a:\omega a\in\mathfrak h\},
\qquad
h_z=-k,\quad \mathcal D(h_z)=\{a:ka\in\mathfrak h\},
\tag{6.4}
$$

and the angular generator uses its usual $m$-multiplet graph domain. The
standard bosonic second-quantization theorem gives a strongly continuous
implementer

$$
U_X(s)=\Gamma(u_X(s)),
\qquad
U_X(s)\pi_{\rm F}(W(x))U_X(s)^*=\pi_{\rm F}(W(T_sx)),
\tag{6.5}
$$

with self-adjoint generator $d\Gamma(h_X)$. A common core is the algebraic
finite-particle space built from finite-harmonic smooth compact-spectral
one-particle vectors; the closed domain is $\mathcal D(d\Gamma(h_X))$.
This proves **G-F-rep-dyn** in the stationary Fock/GNS representation and
implies strong, hence weak, continuity there. It is a theorem about the global
dynamics, not Fock implementability of the finite composition map, and it
supplies no sheetwise tensor factorization.

## 7. Field-strength exhaustion and potential re-anchoring

Let

$$
\rho_T:\mathcal X_\infty^{\rm Max}\longrightarrow
\mathcal X_T^{\rm Max}
\tag{7.1}
$$

be literal restriction of $(r,p;E_0,b^0)$. The following points are
essential.

1. $\rho_T$ is defined for every global energy datum, but it is not onto all
   local matched-$H^1$ pairs; global data obey the nonlocal fixed-point
   condition of calculation 12.
2. Every subdivision of $X_T$ into finite cells is governed by L-A--L-G. The
   complete interface trace of two adjacent restrictions agrees because both
   are restrictions of the same global $F$.
3. Goursat uniqueness and the literal Maxwell dictionary make restriction
   commute with finite gluing.
4. Field-strength restrictions are literal and satisfy

   $$
   \rho_{T_3,T_1}=\rho_{T_2,T_1}\circ\rho_{T_3,T_2},
   \qquad T_3>T_2>T_1.
   \tag{7.2}
   $$

5. Calculation 14 proves

   $$
   \Omega_{X_\infty}(x_1,x_2)
   =\lim_{T\to\infty}\Omega_{X_T}(\rho_Tx_1,\rho_Tx_2).
   \tag{7.3}
   $$

6. Applying (7.3) after either order of internal reduction gives the same
   limit by L-G and dominated convergence.

The commutative structure is

$$
\begin{CD}
\operatorname{Sol}_{\rm Max,E}^{\rm rad}
@>{R_\infty}>>\mathcal X_\infty^{\rm Max}\\
@V{\operatorname{res}_{D_T}}VV @VV{\rho_T}V\\
\operatorname{Sol}(D_T)
@>{R_T}>>\mathcal X_T^{\rm Max}
@<G_N<<
\mathcal X_{T,1}^{\rm Max}\star_N\mathcal X_{T,2}^{\rm Max}.
\end{CD}
\tag{7.4}
$$

The two horizontal $R$ maps are isomorphisms onto their declared global and
local restriction spaces. Both paths in (7.4) are literal restriction of the
same $F$. Taking $T\to\infty$ in their symplectic forms gives (7.3). This
proves **G-G-F** on the globally extendable subspace.

Potential representatives are not literal restrictions of one finite
anchored representative. Put $L_T=\sqrt2T$. In one electric harmonic the
finite canonical sections are

$$
\alpha_+^{(T)}(v)=\frac{g(v)-g(L_T)}{s_\ell}Y_{\ell m},
\qquad
\alpha_-^{(T)}(u)=\frac{f(L_T)-f(u)}{s_\ell}Y_{\ell m}.
\tag{7.5}
$$

For $T_2>T_1$, restriction of the $T_2$ representative does not equal the
$T_1$ representative. Define $r_{T_2,T_1}$ by the constant-along-generator
frame shifts

$$
c^+_{21}=\frac{g(L_{T_2})-g(L_{T_1})}{s_\ell}Y_{\ell m},
\qquad
c^-_{21}=\frac{f(L_{T_1})-f(L_{T_2})}{s_\ell}Y_{\ell m},
\tag{7.6}
$$

so that $\alpha_\pm\mapsto\alpha_\pm+c^\pm_{21}$. In the split connection
presentation simultaneously send
$\bar a_\pm\mapsto\bar a_\pm-d_Sc^\pm_{21}$. Then
$a_\pm=\bar a_\pm+d_S\alpha_\pm$ and the generator components
$\partial_{u/v}\alpha_\pm$ are unchanged; hence $A$ in the chosen split and
in particular $F$ are unchanged. Direct substitution gives

$$
r_{T_2,T_1}\bigl(\alpha_\pm^{(T_2)}|_{X_{T_1}}\bigr)
=\alpha_\pm^{(T_1)}.
\tag{7.7}
$$

The shifts add:

$$
c^\pm_{31}=c^\pm_{32}+c^\pm_{21},
\qquad
\boxed{r_{T_3,T_1}=r_{T_2,T_1}\circ r_{T_3,T_2}.}
\tag{7.8}
$$

Thus the potential exhaustion is a re-anchored inverse system, not a literal
restriction system of equal representatives. On the Schwartz core,
$f(L),g(L)\to0$ faster than any power. Consequently the finite-to-asymptotic
anchor correction is $O(f(L_T)/s_\ell,g(L_T)/s_\ell)\to0$, and more generally
$c^\pm_{21}\to0$ whenever $\min(T_1,T_2)\to\infty$. It does **not** tend to
zero with $T_2\to\infty$ if $T_1$ is held fixed. This proves
**G-G-A(reanchored)** on the rapid-angular Schwartz potential core. The
energy-potential version is `conditional` until an asymptotic potential
topology and uniform angular trace theorem are proved.

## 8. Recovery of translations only in the limit

At finite $T$,

$$
\mathcal L_{\delta_X}\Omega_{X_T}
=\int_{\partial\Sigma_T^{\rm int}}i_X\omega
\tag{8.1}
$$

is generically nonzero for $X=\partial_t,\partial_z$. For global data on the
G-D domains, calculation 15 proves that the two outer bilinears separately
tend to zero. Therefore

$$
\mathcal L_{\delta_X}\Omega_{X_\infty}=0
\tag{8.2}
$$

and the Hamiltonian representation is recovered only after completing the
future cross. This is the precise connection between L-H-trans and G-D.

## 9. Evidence boundary

**Proved:** G-E1-rad-test, G-E2a-Poisson, the open-region version of
G-E2b-finite-Peierls, G-F-Weyl, G-F-alg-dyn, G-F-rep-dyn, G-G-F, and the
Schwartz-core version of G-G-A(reanchored), under the displayed sector/domain
conditions.

**False:** point-norm continuity G-F-Cstar-norm-cont on every nontrivial
universal Weyl orbit.

**Checked by regression:** finite-to-global symplectic exhaustion, projected
finite harmonic tests, sampled causal monotonicity, a finite ambiguity bound,
the re-anchoring cocycle, Weyl exponent preservation, and a finite Weyl
norm-discontinuity witness.

**Not inferred from regression:** compact-support Kunneth, causal convexity,
global hyperbolicity, Green uniqueness, uniform boundedness on the continuum
energy space, or the universal $C^*$ norm theorem.

**Conditional/outside scope:** a closed-cut boundary Green theory, arbitrary
asymptotic Lee--Wald representatives, energy-completed potential exhaustion,
sharp endpoint/memory observables, charged large-gauge algebra, Hilbert tensor
factorization, partial trace, Fock implementability of composition, and B2
cross covariance.
