# Admissible Massless Scalars: Fixed-Embedding Finite-Wall Theorem

## Result

For the smooth weighted class defined below, the massless-scalar project has
an actual fixed-embedding theorem rather than a mode-by-mode fusion
conjecture.  The theorem has two logically separate conclusions:

1. the smooth outer--matter--area identity is cut independent;
2. the transparent finite wall realizes the same identity, with uniformly
   vanishing source transgression, collar energy and anchor tails.

A general non-orthogonal wall--cut intersection can nevertheless carry a
finite endpoint functional.  That functional belongs to the chosen
finite-action polarization.  It must be retained in the regulated wall
decomposition, but it does **not** modify the smooth Noether--Stokes identity.

Throughout,

$$
g_{mu\nu}
=G_{mu\nu}+\kappa_{\mathrm p}^2\varepsilon^2k_{mu\nu}
+O(\varepsilon^4),
\qquad
\Phi=\varepsilon\phi+O(\varepsilon^3),
\qquad
\kappa_{\mathrm p}^2=8\pi G,
\tag{0.1}
$$

and every superscript $(2)$ denotes the $\varepsilon^2$ Taylor coefficient,
not the full second derivative.

## 1. Admissible response class

Write global AdS$_3$ as

$$
ds^2
=\csc^2z\left(-dt^2+dz^2+\cos^2z\,d\phi^2\right),
\qquad
r=\cot z,
\qquad
0<z\leq\frac\pi2.
\tag{1.1}
$$

Fix an interval $A=(-a,a)$ with $0<a<\pi/2$ and a bounded modular-time
band $|\tau|\leq\tau_*$.  An **admissible massless-scalar response pair**
$(\phi,k)$ satisfies:

1. $\Box_G\phi=0$ and
   $F:=z^{-2}\phi$ extends with bounded derivatives through order three to
   the conformal boundary in the causal region under consideration;
2. $k$ solves the sourced equation

   $$
   \mathcal E^{(1)}_{\mu\nu}[k]=T_{\mu\nu}[\phi],
   \qquad
   \nabla_\mu T^{\mu\nu}[\phi]=0;
   \tag{1.2}
   $$

3. $k$ is $C^2$ in regular Kruskal coordinates across the bifurcation
   curve and obeys Brown--Henneaux falloff.  In the compact coordinates
   $(t,z,\phi)$ it is enough to require, uniformly with the derivatives
   used below,

   $$
   k_{AB}=O(1),
   \qquad
   k_{zA}=O(z),
   \qquad
   k_{zz}=O(1),
   \qquad A,B\in\{t,\phi\};
   \tag{1.3}
   $$

4. the renormalized boundary stress coefficient determined by $k$ is
   bounded, and the boundary frame and the interval anchors are fixed.

The corresponding norm may be taken to be

$$
\begin{aligned}
\|(\phi,k)\|_{\rm adm}
:={}&\|z^{-2}\phi\|_{C^3}
+\|k_{AB}\|_{C^2}
+\|z^{-1}k_{zA}\|_{C^1}
+\|k_{zz}\|_{C^1}
+\|t^{\rm bdy}[k]\|_{C^1}\\
&+\|k\|_{C^2(K_{\gamma,\tau_*})},
\end{aligned}
\tag{1.4}
$$

where $K_{\gamma,\tau_*}$ is one fixed compact Kruskal neighborhood of the
bifurcation curve inside the chosen time band.  Only finiteness of (1.4),
not a particular equivalent norm, is used.

The project selects the matter-sourced representative by adding no
independent homogeneous Brown--Henneaux graviton.  This fixes attribution
and uniqueness; it is not needed for the outer--matter--area identity itself.
A homogeneous solution separately obeys its vacuum outer--area identity.

## 2. The theorem

**Theorem (admissible fixed-embedding finite wall).**  Let $(\phi,k)$ be an
admissible pair, let $\xi_A$ be the exact AdS$_3$ interval Killing field with
surface gravity $\kappa_\xi$, and insert the fixed walls
$\mathcal H_{\chi_0}=\{\chi=\chi_0\}$ with $0<\chi_0\leq\chi_*$.  Match the
retained wedge and the collar by

$$
\gamma^+_{ab}=\gamma^-_{ab},
\qquad
\Pi_+^{ab}+\Pi_-^{ab}=0,
\qquad
\Phi_+=\Phi_-,
\qquad
\pi_++\pi_-=0.
\tag{2.1}
$$

Then:

1. the matching subspace (2.1) is a Lagrangian correspondence.  The sum of
   the two interface source one-forms and the pullback of the sum of the two
   symplectic currents vanish exactly at every $\chi_0$;
2. on every smooth Cauchy cut with the same outer anchors and inner
   bifurcation curve,

   $$
   \boxed{
   H_{\xi_A,\partial}^{(2)}
   =H_{\xi_A,{\rm matter}}^{(2)}
   +\frac{\kappa_\xi}{\kappa_{\mathrm p}^2}
    A_{\gamma_A}^{(2)}
   };
   \tag{2.2}
   $$

3. the wall source--corner transgression and the omitted collar matter
   energy obey the uniform estimates

   $$
   \left|\int du\,\mathfrak t_{\chi_0}\right|
   \leq C\chi_0^2\|(\phi,k)\|_{\rm adm},
   \qquad
   |H_{\rm collar}^{\rm matter}|
   \leq C\chi_0^2\|(\phi,k)\|_{\rm adm}^2;
   \tag{2.3}
   $$

4. the longitudinal tails of the metric wall densities and of every
   fixed-cut endpoint density are $O(e^{-2|u|})$, while the scalar stress
   tail is $O(e^{-4|u|})$.  The wall tail beyond a global cutoff $R$ and the
   outer anchor strip are both $O(R^{-2})$, uniformly for
   $0\leq\chi_0\leq\chi_*$.  Hence the $R\to\infty$ and
   $\chi_0\to0^+$ limits commute within this class;
5. removing the collar leaves the boost corner

   $$
   \lim_{\chi_0\to0^+}
   \frac{\kappa_\xi}{\kappa_{\mathrm p}^2}
   A_{C_{\chi_0}}^{(2)}
   =\frac{\kappa_\xi}{\kappa_{\mathrm p}^2}
   A_{\gamma_A}^{(2)}.
   \tag{2.4}
   $$

For the modular normalization $\kappa_\xi=2\pi$, equation (2.2) is

$$
\boxed{
K_{A,\partial}^{(2)}
=K_{A,{\rm matter}}^{(2)}
+\frac{A_{\gamma_A}^{(2)}}{4G}
}.
\tag{2.5}
$$

The estimates are locally uniform on bounded sets in the norm (1.4).  Thus
they apply to arbitrary superpositions that remain bounded in this
admissible topology, not only to the three modes used to discover them.
Equivalently, the sum of all source-transgression, collar and truncation
remainders obeys

$$
|\mathcal R(\chi_0,R)|
\leq C\left(\chi_0^2+R^{-2}\right)
\tag{2.6}
$$

on every such bounded set.

## 3. Smooth Noether--Stokes proof

Use weight-one-half antisymmetrization and the project potential

$$
\begin{aligned}
S_\xi^{\mu\nu}[k]
&=\xi_\rho\nabla^{[\mu}k^{\nu]\rho}
+\frac12k\nabla^{[\mu}\xi^{\nu]}
-k^{\rho[\mu}\nabla_\rho\xi^{\nu]},\\
S_{\xi,k}^{[0],\mu\nu}[k]
&=\xi^{[\mu}\left(
\nabla_\rho k^{\nu]\rho}-\nabla^{\nu]}k
\right),\\
C_\xi^{\mu\nu}[k]
&:=S_\xi^{\mu\nu}[k]-S_{\xi,k}^{[0],\mu\nu}[k].
\end{aligned}
\tag{3.1}
$$

The linearized Einstein identity and the Killing equation give, off shell in
$k$,

$$
\nabla_\nu C_\xi^{\mu\nu}[k]
=\xi_\nu\mathcal E^{(1),\mu\nu}[k].
\tag{3.2}
$$

Equation (1.2) turns the right-hand side into the conserved matter current.
Stokes' theorem on a cut truncated at $R$ gives the outer surface term, the
matter integral and the oriented inner term.  The bounds proved in Section 5
license $R\to\infty$.

At the bifurcation curve,

$$
\xi|_{\gamma_A}=0,
\qquad
\nabla_\mu\xi_\nu|_{\gamma_A}
=\kappa_\xi\epsilon_{\mu\nu}.
\tag{3.3}
$$

All terms proportional to $\xi$ vanish and the remaining Killing-jet term is
the fixed-embedding area variation.  With the outward inner orientation,

$$
Q_{\gamma_A}^{\rm out}[C_\xi]
=-\frac{\kappa_\xi}{\kappa_{\mathrm p}^2}
 A_{\gamma_A}^{(2)}.
\tag{3.4}
$$

Substitution into Stokes gives (2.2).  Moreover
$\nabla_\mu(T^{\mu\nu}\xi_\nu)=0$ and the $\Delta=2$ boundary flux vanishes,
so deforming the smooth cut cannot change either side.  No finite-wall
endpoint functional occurs in this smooth calculation.

## 4. Universal near-horizon jet

Let

$$
R_K:=\sinh\chi,
\qquad
T=R_K\sinh\tau,
\qquad
X=R_K\cosh\tau
\tag{4.1}
$$

be regular normal-plane coordinates.  On a fixed $\tau$ cut define the
orthonormal vectors

$$
e_0:=\frac1{\sinh\chi}\partial_\tau,
\qquad
e_1:=\partial_\chi.
\tag{4.2}
$$

Kruskal smoothness gives the exact component relations

$$
k_{\tau\tau}=\sinh^2\chi\,k_{00},
\qquad
k_{\tau\chi}=\sinh\chi\,k_{01},
\qquad
k_{uu}=O(1),
\tag{4.3}
$$

where $k_{ij}:=k(e_i,e_j)$ are regular.  For the inner outward normal, the
background densitized wall momentum is exactly

$$
\Pi_0^{ab}=\operatorname{diag}(-1,1)
\tag{4.4}
$$

in $(\tau,u)$ coordinates.  Hence the gravitational wall source density and
the cut-length variation density, with the common
$1/\kappa_{\mathrm p}^2$ stripped, are

$$
b_\chi=\frac12(k_{\tau\tau}-k_{uu}),
\qquad
\ell_\chi=\frac{k_{uu}}{2\cosh\chi}.
\tag{4.5}
$$

Their source-to-boost-corner transgression is therefore the exact expression

$$
\boxed{
\mathfrak t_\chi
=\kappa_\xi(b_\chi+\ell_\chi)
=\frac{\kappa_\xi}{2}\left[
\sinh^2\chi\,k_{00}
+(\operatorname{sech}\chi-1)k_{uu}
\right].
}
\tag{4.6}
$$

There is neither a constant nor a linear term in $\chi$.  Bounded regular
jets give $\mathfrak t_\chi=O(\chi^2)$ pointwise.

On the same cut the collar matter density is

$$
\mathfrak m(\chi,u)
=\kappa_\xi\sinh\chi\cosh\chi\,T_{00}(\chi,u),
\tag{4.7}
$$

so bounded $T_{00}$ gives an integrated $O(\chi_0^2)$ collar.  Finally,
$\ell_\chi\to k_{uu}(0,u)/2$ by dominated convergence, which proves (2.4).

## 5. Longitudinal and anchor estimates

Along either end of the bifurcation curve,

$$
z\asymp 2\sin a\,e^{-|u|}.
\tag{5.1}
$$

Every background-unit Rindler frame vector has compact-coordinate
components $O(z)$.  Equations (1.3) and the $C^2$ Kruskal bound therefore
imply

$$
|k(e_i,e_j)|\leq C z^2
\leq C'\operatorname{sech}^2u.
\tag{5.2}
$$

Since $\phi=z^2F$ with bounded $C^3$ norm, its orthonormal derivative is
$O(z^2)$ and

$$
|T(e_i,e_j)|\leq C z^4
\leq C'\operatorname{sech}^4u.
\tag{5.3}
$$

Equations (5.2)--(5.3) are integrable majorants for (4.6)--(4.7) and prove
(2.3).

The embedding formulas also give, uniformly on bounded $\chi$ and $\tau$,

$$
r
=\frac{\cosh\chi}{2\sin a}e^{|u|}
\left(1+O(e^{-|u|})\right).
\tag{5.4}
$$

Thus an $e^{-2|u|}$ wall tail cut off at $r=R$ is $O(R^{-2})$.  At the right
anchor,

$$
R(a-\phi_c)
\longrightarrow\sinh\chi\cosh\tau,
\tag{5.5}
$$

with the analogous formula at the left anchor.  The boundary modular kernel
vanishes linearly at $\phi=\pm a$, and the admissible boundary stress is
bounded.  The omitted outer strip is consequently

$$
\int_0^{O(R^{-1})}O(s)\,ds=O(R^{-2}).
\tag{5.6}
$$

The constants in (5.4)--(5.6) are uniform for
$0\leq\chi\leq\chi_*$ and $|\tau|\leq\tau_*$.  This proves the claimed
commutation of regulator limits.

## 6. Explicit endpoint functionals

There is no variationally neutral object called “the endpoint term.”  The
fully Dirichlet Hayward functional and the Harlow--Wu endpoint one-form are
different objects and must not be added to each other.

Let $p_{\mu\nu}:=[\varepsilon^2]g_{\mu\nu}
=\kappa_{\mathrm p}^2k_{\mu\nu}$.  For a timelike wall and a spacelike cut
with ordered unit normals $(n,\tau)$, define

$$
\sinh\eta=n\mathbin\cdot\tau.
\tag{6.1}
$$

For a fully Dirichlet piecewise-smooth action, the oriented Hayward endpoint
coefficient is

$$
\boxed{
\mathcal E_{\rm H}[C;p]
=\frac{\sigma_C}{\kappa_{\mathrm p}^2}
\int_C\left(
\eta_0\,\delta_p\sqrt q
+\sqrt{q_0}\,\delta_p\eta
\right).
}
\tag{6.2}
$$

Here $\sigma_C$ records the initial/final and inner/outer orientation.  For
the fixed $\tau$ cuts used in the regressions, $\eta_0=0$ and, with the
project's ordered-normal convention,

$$
\mathcal E_{\rm H}[C_\chi;p]
=\frac{\sigma_C}{\kappa_{\mathrm p}^2}
\int du\,\cosh\chi\,
\frac{p_{\tau\chi}}{\sinh\chi}.
\tag{6.3}
$$

The Harlow--Wu descent instead starts from the codimension-two field-space
one-form

$$
C_\Gamma^\mu[p]
=-\frac1{2\kappa_{\mathrm p}^2}
\gamma^{\mu\nu}n^\rho p_{\nu\rho}.
\tag{6.4}
$$

Its fixed-cut endpoint coefficient is

$$
\boxed{
\mathcal E_{\rm HW}[C;p]
:=\int_C\sqrt q\,\tau_\mu C_\Gamma^\mu[p].
}
\tag{6.5}
$$

For the same fixed $\tau$ cuts and orientation as (6.3),

$$
\mathcal E_{\rm HW}[C_\chi;p]
=\frac1{2\kappa_{\mathrm p}^2}
\int du\,\cosh\chi\,
\frac{p_{\tau\chi}}{\sinh\chi}.
\tag{6.6}
$$

The factor of two in this special comparison does not identify the two
variational problems.

Kruskal smoothness and (5.2) imply the finite limits

$$
\begin{aligned}
\lim_{\chi\to0^+}\mathcal E_{\rm H}[C_\chi;p]
&=\frac{\sigma_C}{\kappa_{\mathrm p}^2}
\int_{\gamma_A}du\,p(e_0,e_1),\\
\lim_{\chi\to0^+}\mathcal E_{\rm HW}[C_\chi;p]
&=\frac1{2\kappa_{\mathrm p}^2}
\int_{\gamma_A}du\,p(e_0,e_1).
\end{aligned}
\tag{6.7}
$$

These integrals need not vanish.  Reflection symmetry makes them zero for
the stationary and real-quadrature modes on $\tau=0$; the rotating mode has
an odd nonzero density with zero integral; the real quadrature on a general
$\tau_s$ cut has a nonzero integral.

The precise finite-wall statement is therefore:

- the **two-sided transparent interface generator**, including the endpoint
  term selected on each side, cancels exactly by opposite orientations;
- a one-sided or endpoint-truncated wall decomposition differs from the
  complete one by the appropriate oriented functional (6.2) or (6.5);
- removing the complete artificial interface removes that endpoint
  functional with it, while the distinct boost corner (2.4) survives.

Consequently, the endpoint-free shorthand is valid only on cuts for which
the selected integrated functional vanishes.  A nonzero endpoint functional
is not an extra term in (2.2).

## Verified

- the off-shell sourced Noether--Stokes identity (3.2) in the inherited
  project convention;
- the bifurcation Killing-jet reduction (3.3)--(3.4);
- the exact inner-wall momentum (4.4);
- the generic Kruskal component relations and the exact transgression
  formula (4.6);
- the collar $O(\chi_0^2)$ scaling;
- the $\operatorname{sech}^2u$ and $\operatorname{sech}^4u$ integrable
  majorants;
- the large-$|u|$ global-radius relation and $O(R^{-2})$ anchor estimate;
- the Hayward and Harlow--Wu fixed-cut formulas (6.3)--(6.7), including their
  distinct variational origin;
- compatibility with all 190 exact checks in the three existing benchmark
  regressions.

The generic algebraic and asymptotic checks are independently encoded in
`admissible_scalar_finite_wall_structure.wl`.

## Assumptions

- classical minimally coupled massless scalar and Einstein gravity on unit
  global AdS$_3$;
- standard normalizable $\Delta=2$ scalar falloff;
- a regular Brown--Henneaux sourced response satisfying (1.2)--(1.4);
- fixed wall embeddings, fixed boundary frame and fixed interval anchors;
- bounded modular-time band and the transparent matching polarization (2.1);
- one consistently oriented choice of finite-action endpoint polarization.

## Not verified

- existence and uniqueness of an admissible $k[\phi]$ for every datum in the
  full finite-energy scalar Hilbert completion;
- continuity of (2.2) on that Hilbert completion rather than the smooth
  weighted class (1.4);
- moving wall embeddings or the full non-orthogonal edge phase space;
- alternative quantization, BF/logarithmic branches, massive matter,
  Maxwell fields or higher-curvature gravity;
- matter loops, bulk entropy, graviton entropy, factorization or quantum
  JLMS.

## Claim tier

The achieved result is a **classical admissible-class fixed-embedding
finite-wall theorem**: exact smooth outer--matter--area balance, exact
transparent insertion, uniform wall/collar/anchor estimates, commuting
regulator limits, and an explicit general-cut endpoint functional.  It is
stronger than the previous mode-verified conditional proposition and weaker
than a theorem on the full finite-energy Hilbert completion or a moving-edge
phase space.
