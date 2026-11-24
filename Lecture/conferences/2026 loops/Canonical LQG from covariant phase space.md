# Canonical LQG from covariant phase space

The classical starting point of canonical loop quantum gravity can be described without first choosing a preferred foliation. One begins with solutions of a Lorentz-covariant first-order gravitational action, constructs their pre-symplectic form, and identifies its gauge degeneracies. A Cauchy surface and an internal time gauge then provide coordinates on the same classical system. The Ashtekar–Barbero variables are obtained by evaluating this covariant structure on that slice; they are not additional spacetime fields.

This note carries out that construction, including the corner term needed to compare the Holst potential with the canonical potential. It follows the conventions of the [CPS formalism note](<Articles/Quantization in AdS/perturbation/formalism.md>): the boundary Lagrangian is part of the theory, the integrated potential includes its corner contribution, the pre-symplectic form is $\omega_\Sigma=\delta\theta_\Sigma$, and a symmetry generator is $H_X=\iota_X\theta_\Sigma-\alpha_X$. The construction stops at the classical phase space and constraints underlying the [canonical LQG note](<Lecture/conferences/2026 loops/Canonical loop quantum gravity.md>).

We consider four-dimensional vacuum gravity with zero cosmological constant, signature $(-,+,+,+)$, $\kappa=8\pi G$, and constant real $\gamma>0$. The spacetime is time-oriented and admits the Cauchy slicing under discussion; the closed-slice construction uses the globally hyperbolic Cauchy problem. Tetrads are nondegenerate and oriented, and $\delta\gamma=0$. The main canonical identification is for a compact Cauchy surface without boundary. Boundary terms are retained before making that specialization, and a concrete finite timelike-boundary variational problem is given below. No asymptotic or null-boundary completion is assumed.

Throughout, $d$ is the spacetime exterior derivative and $\delta$ the field-space exterior derivative. The Lorentz connection is written $\varpi^{IJ}$ to distinguish it from the pre-symplectic form $\omega_\Sigma$; it is the field denoted $\omega^{IJ}$ in the [spin-foam note](<Lecture/conferences/2026 loops/Covariant spin foam.md>). Spacetime wedge products are explicit. Field-space two-forms will usually be evaluated on two variations to make the ordering unambiguous.

## 1. Varying the first-order action before imposing torsionlessness

Let $e^I$ be a coframe, $\varpi^{IJ}=-\varpi^{JI}$ an independent Lorentz connection, and

$$
F^{IJ}=d\varpi^{IJ}+\varpi^I{}_K\wedge\varpi^{KJ},
\qquad T^I=D_\varpi e^I.
$$

Internal indices are raised with $\eta_{IJ}=\operatorname{diag}(-1,1,1,1)$. Choose $\epsilon_{0123}=+1$ and define the internal Hodge dual by

$$
(\star U)^{IJ}=\frac12\epsilon^{IJ}{}_{KL}U^{KL},
\qquad \star^2=-1
$$

on Lorentz bivectors. Introduce the momentum two-form

$$
\mathcal B^{IJ}=\star(e\wedge e)^{IJ}+\frac1\gamma e^I\wedge e^J.
$$

The bulk Lagrangian and action are

$$
L=\frac1{2\kappa}\mathcal B^{IJ}\wedge F_{IJ},
\qquad
S=\int_M L+\int_\Gamma\ell.
$$

All antisymmetric internal pairs in these expressions are summed over both orders. This fixes the factors of two. The sign of the Holst term is the **plus** sign used in the spin-foam note; its effect on the canonical corner term will be kept explicitly.

Since $\delta F=D_\varpi\delta\varpi$, integration by parts gives the off-shell identity

$$
\delta L=\frac1{2\kappa}
\left[\delta\mathcal B^{IJ}\wedge F_{IJ}
-D_\varpi\mathcal B^{IJ}\wedge\delta\varpi_{IJ}\right]+d\Theta,
\qquad
\Theta(\delta)=\frac1{2\kappa}\mathcal B^{IJ}\wedge\delta\varpi_{IJ}.
$$

Thus the connection equation is $D_\varpi\mathcal B=0$, while the tetrad equation is

$$
\epsilon_{IJKL}e^J\wedge F^{KL}
+\frac2\gamma e^J\wedge F_{IJ}=0.
$$

For real nonzero $\gamma$,

$$
\left(\star+\frac1\gamma\right)^{-1}
=\frac{\gamma}{1+\gamma^2}(1-\gamma\star).
$$

The connection equation therefore implies

$$
D_\varpi(e^I\wedge e^J)
=T^I\wedge e^J-e^I\wedge T^J=0.
$$

For an invertible tetrad in four dimensions this equation sets $T^I=0$, so $\varpi$ becomes its torsion-free spin connection. The torsion Bianchi identity then gives $F_{IJ}\wedge e^J=0$, removing the Holst term from the tetrad equation. The remaining equation is $G_{\mu\nu}=0$.

Torsionlessness has been obtained only after variation. Substituting $\varpi=\varpi[e]$ at the outset and discarding total derivatives would obscure the very potential and corner terms needed in the comparison below.

## 2. The boundary problem determines the integrated symplectic structure

Take $\partial M=\Sigma_f-\Sigma_i+\Gamma$, with all boundary orientations fixed by Stokes' theorem. In particular, $\partial\Gamma=\partial\Sigma_i-\partial\Sigma_f$. For allowed boundary variations the [Harlow–Wu condition](https://arxiv.org/abs/1906.08616) is

$$
(\Theta+\delta\ell)|_\Gamma=dC,
$$

where $C$ is a spacetime two-form and a field-space one-form on the boundary. It gives

$$
\delta S=\int_M\mathcal E\cdot\delta\phi
+\theta_{\Sigma_f}-\theta_{\Sigma_i},
\qquad
\theta_\Sigma=\int_\Sigma\Theta-\int_{\partial\Sigma}C,
\qquad \phi=(e,\varpi).
$$

Here $\mathcal E=0$ denotes the two field equations above. The notation $C$ is the differential-form version of the corner contribution denoted $\theta_{\mu\nu}$ in the formalism note.

For commuting variations the bulk symplectic current is explicitly

$$
\boldsymbol\omega(\delta_1,\delta_2)
=\frac1{2\kappa}
\left(\delta_1\mathcal B^{IJ}\wedge\delta_2\varpi_{IJ}
-\delta_2\mathcal B^{IJ}\wedge\delta_1\varpi_{IJ}\right).
$$

The integrated pre-symplectic form is therefore

$$
\omega_\Sigma(\delta_1,\delta_2)
=\int_\Sigma\boldsymbol\omega(\delta_1,\delta_2)
-\int_{\partial\Sigma}(\delta C)(\delta_1,\delta_2).
$$

### A definite finite-boundary example

On a finite timelike $\Gamma$, fix the pulled-back coframe in a chosen boundary frame:

$$
\delta e^I|_\Gamma=0,
\qquad
\ell=-\frac1{2\kappa}\mathcal B^{IJ}\wedge\varpi_{IJ}\Big|_\Gamma.
$$

Then

$$
(\Theta+\delta\ell)|_\Gamma
=-\frac1{2\kappa}\delta\mathcal B^{IJ}\wedge\varpi_{IJ}\Big|_\Gamma=0,
$$

so $C=0$ is a valid choice for this potential. The pullback of $\boldsymbol\omega$ to $\Gamma$ also vanishes because $\delta\mathcal B|_\Gamma=0$.

This is a fixed-**frame** boundary condition, stronger than fixing only the induced metric. The boundary Lagrangian is not invariant under arbitrary nontrivial boundary Lorentz rotations; such transformations are not symmetries of this boundary problem. Proper Lorentz transformations can be taken to vanish near $\Gamma$. Diffeomorphisms must preserve the wall and its prescribed coframe. This example establishes differentiability and zero symplectic flux; it does not by itself establish a well-posed Einstein initial-boundary-value problem for arbitrary prescribed data. The closed-slice identification below does not require that extra assertion.

### Why the Cauchy surface can change

Let $\mathscr S$ denote the space of solutions obeying the boundary conditions. A tangent variation satisfies the linearized equations as well as the linearized boundary conditions. Antisymmetrizing the second variation of $L$ gives

$$
d\boldsymbol\omega(\delta_1,\delta_2)
=\delta_2\mathcal E\cdot\delta_1\phi
-\delta_1\mathcal E\cdot\delta_2\phi=0
$$

on $\mathscr S$. The boundary condition similarly gives $\boldsymbol\omega|_\Gamma=d\delta C$. Stokes' theorem now yields

$$
\begin{aligned}
\omega_{\Sigma_f}-\omega_{\Sigma_i}
&=-\int_\Gamma\boldsymbol\omega
-\int_{\partial\Sigma_f}\delta C
+\int_{\partial\Sigma_i}\delta C\\
&=0.
\end{aligned}
$$

Thus the **pre-symplectic form** is independent of the Cauchy surface. The potential itself need not be: on solutions, $\theta_{\Sigma_f}-\theta_{\Sigma_i}$ is the variation of the on-shell slab action. The distinction prevents an exact field-space variation from being mistaken for a physical change of symplectic structure.

## 3. Gauge degeneracies and generators before choosing a time gauge

The space $\mathscr S$ is a pre-phase space, not yet the physical phase space. A transformation is a gauge redundancy for this purpose when it is tangent to $\mathscr S$ and its contraction with $\omega_\Sigma$ vanishes for every allowed tangent variation. Transformations with nonzero boundary generators need not be quotiented as degeneracies.

With the convention of the formalism note, if a symmetry obeys the off-shell endpoint identity and $\mathcal L_X\theta_\Sigma=\delta\alpha_X$, then

$$
H_X=\iota_X\theta_\Sigma-\alpha_X,
\qquad
\iota_X\omega_\Sigma
=\mathcal L_X\theta_\Sigma-\delta(\iota_X\theta_\Sigma)
=-\delta H_X.
$$

Equivalently $\omega_\Sigma(\delta,X)=\delta H_X$. This sign is consistent with $\theta=p\,\delta q$, $\omega=\delta p\wedge\delta q$ and $\{q,p\}=1$.

### Internal Lorentz transformations

For a field-independent antisymmetric parameter $\lambda^{IJ}$,

$$
\delta_\lambda e^I=\lambda^I{}_Je^J,
\qquad
\delta_\lambda\varpi^{IJ}=-D_\varpi\lambda^{IJ}.
$$

The bulk action is invariant off shell. For a parameter supported away from the wall the full action is invariant as well, so $\alpha_\lambda=0$. The bulk current is

$$
\Theta(\delta_\lambda)
=-\frac1{2\kappa}\mathcal B^{IJ}\wedge D_\varpi\lambda_{IJ}
=-\frac1{2\kappa}d(\mathcal B^{IJ}\lambda_{IJ})
+\frac1{2\kappa}(D_\varpi\mathcal B^{IJ})\lambda_{IJ}.
$$

On solutions the bulk term vanishes. For the bare $C=0$ potential its contraction consequently gives

$$
\omega_\Sigma(\delta,\delta_\lambda)
=-\frac1{2\kappa}\int_{\partial\Sigma}\lambda_{IJ}\delta\mathcal B^{IJ}.
$$

In particular, on a closed slice, or for proper gauge parameters vanishing near its boundary, this is zero. The surface expression also explains why one cannot declare an arbitrary nonzero boundary Lorentz transformation to be a degeneracy. Its admissibility and any additional corner contribution must first be checked for the chosen boundary problem; the fixed-frame example does not allow arbitrary rotations of that frame.

### Spacetime diffeomorphisms

Let $\xi$ be a field-independent vector field tangent to $\Gamma$ and preserving the boundary data. It acts by ordinary Lie derivatives on $e$ and $\varpi$; assume that $\ell$ and $C$ are chosen covariantly under this admitted transformation. In the fixed-frame example this requires $\mathcal L_\xi e^I|_\Gamma=0$, not merely that $\xi$ be a Killing vector of the induced metric. Covariance gives the off-shell identity

$$
\delta_\xi S=\alpha_\xi[\Sigma_f]-\alpha_\xi[\Sigma_i],
\qquad
\alpha_\xi[\Sigma]=\int_\Sigma\iota_\xi L
-\int_{\partial\Sigma}\iota_\xi\ell.
$$

The minus sign in the boundary term follows from the orientation of $\partial\Gamma$. Define

$$
J_\xi=\Theta(\mathcal L_\xi\phi)-\iota_\xi L.
$$

Using $\mathcal L_\xi\varpi=\iota_\xi F+D_\varpi(\iota_\xi\varpi)$, one obtains the actual first-order current

$$
\begin{aligned}
J_\xi&=dQ_\xi
-\frac1{2\kappa}(D_\varpi\mathcal B^{IJ})(\iota_\xi\varpi_{IJ})
-\frac1{2\kappa}(\iota_\xi\mathcal B^{IJ})\wedge F_{IJ},\\
Q_\xi&=\frac1{2\kappa}\mathcal B^{IJ}(\iota_\xi\varpi_{IJ}).
\end{aligned}
$$

The last two terms vanish by the connection and tetrad equations, respectively, so $J_\xi=dQ_\xi$ on solutions. The Noether prescription then gives

$$
H_\xi=\int_\Sigma J_\xi
+\int_{\partial\Sigma}(\iota_\xi\ell-\iota_{X_\xi}C)
=\int_{\partial\Sigma}
(Q_\xi+\iota_\xi\ell-\iota_{X_\xi}C)
$$

on $\mathscr S$, up to a constant. This is the boundary-sensitive generator of the specified first-order theory, not automatically the surface charge of a differently improved metric potential.

For the fixed-coframe example, $C=0$ and the two terms containing $\mathcal B\,\iota_\xi\varpi$ cancel:

$$
H_\xi=-\frac1{2\kappa}\int_{\partial\Sigma}
(\iota_\xi\mathcal B^{IJ})\wedge\varpi_{IJ}.
$$

For an allowed boundary-preserving $\xi$, its variation is

$$
\delta H_\xi
=-\frac1{2\kappa}\int_{\partial\Sigma}
(\iota_\xi\mathcal B^{IJ})\wedge\delta\varpi_{IJ}
=\int_{\partial\Sigma}(\delta Q_\xi-\iota_\xi\Theta),
$$

where the fixed coframe has set the pulled-back $\delta\mathcal B$ to zero. No such boundary generator remains when $\partial\Sigma$ is empty. On a closed universe the diffeomorphisms connected to the identity are therefore degeneracies of the covariant pre-symplectic structure, rather than time evolution relative to an external clock.

Locally on a regular sector, quotienting these proper Lorentz and diffeomorphism degeneracies gives the physical phase space. This statement is local in field space: stabilizers, global identifications and singular strata are not resolved by the quotient notation alone.

## 4. A Cauchy slice reveals the Ashtekar–Barbero coordinates

Fix an embedding of a spacelike Cauchy surface and let $n^\mu$ be its future unit normal. Its internal representative is $n^I=e^I{}_{\mu}n^\mu$. The **time gauge** uses internal boosts to set

$$
n^I=(1,0,0,0),\qquad e^0|_\Sigma=0.
$$

This fixes an internal frame relative to the chosen hypersurface; it does not select a preferred spacetime foliation as part of the theory. The residual internal group is SO(3), or its SU(2) double cover after choosing a spin lift. For the variation formulas in this section the embedding is fixed and tangent variations preserve the time gauge. In the finite-wall example, the foliation and prescribed boundary coframe must already be compatible with this gauge: a boost that changes the fixed boundary coframe is not an allowed gauge-fixing transformation. No such boundary restriction is needed for the closed-slice construction.

Choose the spatial orientation so that $\det(e_a^i)>0$, write the co-triad as $e_a^i$, and define

$$
q_{ab}=e_a^ie_b^j\delta_{ij},\qquad
E_i^a=\sqrt q\,e_i^a,
\qquad
\boldsymbol E_i=\frac12\epsilon_{ijk}e^j\wedge e^k\Big|_\Sigma
=\frac12\epsilon_{abc}E_i^a\,dx^b\wedge dx^c.
$$

Thus $\boldsymbol E_i\wedge v^i=E_i^av_a^i\,d^3x$ for any spatial one-form $v^i$: the two-form $\boldsymbol E_i$ and the density $E_i^a$ describe the same spatial flux.

On torsion-free solutions,

$$
K_a^i=\varpi_a^{0i},\qquad
\Gamma_a^i=-\frac12\epsilon^i{}_{jk}\varpi_a^{jk},
$$

$$
K_{ab}=K_a^ie_{bi}=\frac12\mathcal L_nq_{ab},
\qquad
D^\Gamma e^i=de^i+\epsilon^i{}_{jk}\Gamma^j\wedge e^k=0.
$$

For example, $\nabla_an^I=\varpi_a^I{}_0$ in this gauge gives $K_a^i=\varpi_a^{0i}$ with the chosen sign of $K_{ab}$. The spatial torsion equation determines $\Gamma$ from the triad, while its normal component requires $K_{ab}=K_{ba}$.

### The pullback of the Holst potential

The internal dual and the time gauge give

$$
\mathcal B^{0i}|_\Sigma=-\boldsymbol E_i,
\qquad
\mathcal B^{ij}|_\Sigma=\frac1\gamma\epsilon^{ij}{}_k\mathcal E_k.
$$

Also $\delta\varpi_{0i}=-\delta K^i$ and $\delta\varpi_{ij}=-\epsilon_{ij}{}^k\delta\Gamma^k$. Substitution into the covariant potential, including both orders of each internal pair, yields

$$
\Theta|_\Sigma
=\frac1\kappa\boldsymbol E_i\wedge\delta K^i
-\frac1{\kappa\gamma}\boldsymbol E_i\wedge\delta\Gamma^i.
$$

The minus sign in the second term is fixed by our plus-sign Holst action. It cannot be replaced by a plus sign just because the desired canonical connection is $A=\Gamma+\gamma K$.

To perform that change of variables correctly, vary $D^\Gamma e^i=0$:

$$
D^\Gamma\delta e^i+\epsilon^i{}_{jk}\delta\Gamma^j\wedge e^k=0.
$$

Wedging with $e_i$ gives the needed identity

$$
\boldsymbol E_i\wedge\delta\Gamma^i
=\frac12d(e_i\wedge\delta e^i).
$$

Now set

$$
A_a^i=\Gamma_a^i[E]+\gamma K_a^i.
$$

Then the potential relation is

$$
\Theta|_\Sigma
=\frac1{\kappa\gamma}E_i^a\delta A_a^i\,d^3x
-\frac1{\kappa\gamma}d(e_i\wedge\delta e^i),
$$

and the **integrated** relation, with the original boundary data retained, is

$$
\boxed{
\theta_\Sigma
=\frac1{\kappa\gamma}\int_\Sigma d^3x\,E_i^a\delta A_a^i
-\int_{\partial\Sigma}
\left(C+\frac1{\kappa\gamma}e_i\wedge\delta e^i\right).
}
$$

This is the explicit map from the covariant gravitational potential to the canonical slice potential. With the opposite sign for the Holst term, the bulk pullback would instead give $E\delta A/(\kappa\gamma)$ directly in these time-gauge conventions. The [Ashtekar–Lewandowski review](https://arxiv.org/abs/gr-qc/0404018) uses that opposite Holst sign; its canonical parametrization agrees on a closed slice, but its potential must not be imported here without this boundary conversion.

Taking a field-space variation gives

$$
\begin{aligned}
\omega_\Sigma(\delta_1,\delta_2)
={}&\frac1{\kappa\gamma}\int_\Sigma d^3x
\left(\delta_1E_i^a\delta_2A_a^i-\delta_2E_i^a\delta_1A_a^i\right)\\
&-\int_{\partial\Sigma}(\delta C)(\delta_1,\delta_2)\\
&-\frac1{\kappa\gamma}\int_{\partial\Sigma}
\left(\delta_1e_i\wedge\delta_2e^i
-\delta_2e_i\wedge\delta_1e^i\right).
\end{aligned}
$$

The last integrand equals $2\delta_1e_i\wedge\delta_2e^i$ because these are spacetime one-forms. It vanishes for the fixed-coframe boundary variations, but not for a general boundary problem.

### Which dependence on the Immirzi parameter remains

The bulk Holst contribution becomes a spacetime exact form on torsion-free solutions and variations tangent to them. Indeed, varying $D_\varpi e^I=0$ and contracting with $e_I$ gives

$$
e^I\wedge e^J\wedge\delta\varpi_{IJ}
=-d(e_I\wedge\delta e^I).
$$

Consequently

$$
\Theta_{\mathrm{Holst}}
=-\frac1{2\kappa\gamma}d(e_I\wedge\delta e^I),
$$

$$
\boldsymbol\omega_{\mathrm{Holst}}(\delta_1,\delta_2)
=-\frac1{2\kappa\gamma}d\left(
\delta_1e_I\wedge\delta_2e^I-\delta_2e_I\wedge\delta_1e^I\right).
$$

The current is exact, not pointwise zero. Its integral vanishes on a closed slice, so the vacuum torsion-free covariant symplectic structure there is $\gamma$-independent. In canonical coordinates this is equally visible from

$$
\frac1{\kappa\gamma}\int_\Sigma E_i^a\delta A_a^i
=\frac1\kappa\int_\Sigma E_i^a\delta K_a^i
+\frac1{2\kappa\gamma}\int_{\partial\Sigma}e_i\wedge\delta e^i.
$$

When the boundary is present, neither this last term nor the corner in the boxed formula can be dropped without the boundary condition that removes it. More generally, improving a bulk potential by $\Theta\mapsto\Theta+dY$ must be accompanied by $C\mapsto C+Y|_\Gamma$ if the same integrated structure is to be retained. Keeping the improved bulk term while discarding the compensating corner changes the boundary phase space. The significance of these tetrad-potential boundary terms is discussed in [Oliveri and Speziale](https://arxiv.org/abs/1912.01016).

## 5. From the solution space to the constrained canonical chart

For the rest of this section take $\partial\Sigma=\varnothing$. The boxed result becomes

$$
\theta_\Sigma=\frac1{\kappa\gamma}\int_\Sigma E_i^a\delta A_a^i\,d^3x,
\qquad
\omega_\Sigma=\frac1{\kappa\gamma}\int_\Sigma\delta E_i^a\wedge\delta A_a^i\,d^3x.
$$

On the space of solutions this form is still degenerate. To read a canonical Poisson bracket, introduce the extended initial-data space $\mathcal P_\Sigma$ of independent $A_a^i,E_i^a$ with nondegenerate positive-orientation triads, equipped with the displayed nondegenerate two-form. Its inverse gives

$$
\{A_a^i(x),E_j^b(y)\}=\kappa\gamma\delta_a^b\delta_j^i\delta^{(3)}(x,y),
\qquad \{A,A\}=\{E,E\}=0.
$$

The restriction of a spacetime solution lies on a constraint surface $\mathcal C_\Sigma\subset\mathcal P_\Sigma$. The covariant form is the pullback of the canonical form to this surface, not the inverse of an unconstrained symplectic matrix on the already reduced physical solution space.

### The constraints are projections of the covariant equations

Compatibility gives $D_a^\Gamma E_i^a=0$. Symmetry of $K_{ab}$ therefore becomes the Gauss constraint

$$
\mathcal G_i=D_a^AE_i^a
=\gamma\epsilon_{ij}{}^kK_a^jE_k^a=0.
$$

The remaining initial-data constraints are the normal projections of Einstein's equations. With $K_{ab}=\tfrac12\mathcal L_nq_{ab}$, the Gauss–Codazzi relations give

$$
G_{\mu\nu}n^\mu n^\nu
=\frac12\left({}^{(3)}R+K^2-K_{ab}K^{ab}\right)=0,
$$

$$
G_{\mu\nu}n^\mu q^\nu{}_a
=D_bK^b{}_a-D_aK=0.
$$

Here $D_a$ is the Levi-Civita derivative of $q_{ab}$ and $q^\nu{}_a$ the tangential inclusion. To relate these equations to the connection constraints, define

$$
F_{ab}^i(A)=2\partial_{[a}A_{b]}^i+\epsilon^i{}_{jk}A_a^jA_b^k.
$$

The expansion

$$
F_{ab}^i(A)=R_{ab}^i(\Gamma)
+2\gamma D_{[a}^\Gamma K_{b]}^i
+\gamma^2\epsilon^i{}_{jk}K_a^jK_b^k
$$

gives, on the Gauss surface,

$$
\frac1{\kappa\gamma}F_{ab}^iE_i^b
=-\frac{\sqrt q}{\kappa}\left(D_bK^b{}_a-D_aK\right).
$$

For the scalar constraint the needed contractions are

$$
\begin{aligned}
\frac{\epsilon^{ij}{}_kE_i^aE_j^b}{\sqrt q}R_{ab}^k(\Gamma)
&=-\sqrt q\,{}^{(3)}R,\\
\frac{\epsilon^{ij}{}_kE_i^aE_j^b}{\sqrt q}D_{[a}^\Gamma K_{b]}^k&=0,\\
\frac{2E_i^aE_j^b}{\sqrt q}K_{[a}^iK_{b]}^j
&=\sqrt q\left(K^2-K_{ab}K^{ab}\right).
\end{aligned}
$$

The intrinsic curvature sign uses $R^i{}_{j ab}=\epsilon^i{}_{kj}R_{ab}^k(\Gamma)$; the derivative contraction vanishes because it is $\epsilon^{abc}D_aK_{bc}$. Thus the connection expression

$$
\mathcal H
=\frac{E_i^aE_j^b}{2\kappa\sqrt q}
\left[\epsilon^{ij}{}_kF_{ab}^k
-2(1+\gamma^2)K_{[a}^iK_{b]}^j\right]
$$

is precisely

$$
\mathcal H=\frac{\sqrt q}{2\kappa}
\left(K_{ab}K^{ab}-K^2-{}^{(3)}R\right)
=-\frac{\sqrt q}{\kappa}G_{\mu\nu}n^\mu n^\nu.
$$

No new equation has been introduced by the canonical parametrization. These are the torsion and Einstein constraints written in the coordinates extracted from the covariant potential.

### The generators and the meaning of refoliation

For field-independent smearings on the extended canonical space, use

$$
G[\lambda]=\frac1{\kappa\gamma}\int_\Sigma\lambda^i\mathcal G_i,
$$

$$
D[\vec N]=\frac1{\kappa\gamma}\int_\Sigma N^a
\left(F_{ab}^iE_i^b-A_a^i\mathcal G_i\right),
\qquad H[N]=\int_\Sigma N\mathcal H.
$$

They obey

$$
\{A_a,G[\lambda]\}=-D_a^A\lambda,
\qquad
\{E^a,G[\lambda]\}=[\lambda,E^a],
$$

$$
\{A_b,D[\vec N]\}=N^aF_{ab}+D_b(N^aA_a)=\mathcal L_{\vec N}A_b.
$$

The Gauss subtraction in $D$ converts a gauge-covariant displacement into an ordinary spatial Lie derivative. For the normal deformation, first restrict to the Gauss surface, where $K_{ab}$ is symmetric, and reduce the internal rotations. The ADM momentum is

$$
P^{ab}=\frac{\sqrt q}{2\kappa}(K^{ab}-Kq^{ab}).
$$

The [canonical note's symplectic conversion](<Lecture/conferences/2026 loops/Canonical loop quantum gravity.md#L110-L129>) reads

$$
\int_\Sigma P^{ab}\delta q_{ab}
=\frac1\kappa\int_\Sigma E_i^a\delta K_a^i
-\frac1\kappa\delta\int_\Sigma\sqrt q\,K.
$$

On a closed slice the first term is precisely the potential already obtained in Section 4, up to its vanishing $\Gamma$ surface term. The exact field-space variation drops out of the two-form, so $q_{ab},P^{ab}$ have the usual ADM bracket after Gauss reduction. The scalar constraint then gives

$$
\{q_{ab},H[N]+D[\vec N]\}
=2NK_{ab}+\mathcal L_{\vec N}q_{ab}.
$$

This equality is on the Gauss-reduced space, not for arbitrary nonsymmetric $K_{ab}$ on the extended connection space. It is the change of induced metric under a displacement of the slice with lapse $N$ and shift $N^a$. On the same reduced space the normal-deformation algebra is

$$
\{H[N],H[M]\}
=D\!\left[q^{ab}(N\partial_bM-M\partial_bN)\right].
$$

On the unreduced connection space there can also be terms proportional to the Gauss constraint, depending on its chosen representative. The metric-dependent coefficient is not a failure of covariance: the decomposition of a spacetime displacement into normal and tangential parts depends on the metric itself.

In particular, a fixed spacetime vector $\xi$ decomposes as $\xi=Nn+\vec N$ with field-dependent lapse and shift. The fixed-$\xi$ covariant charge calculation and the canonical brackets with independently fixed $N,N^a$ must be compared with this dependence included. The equations above do not treat these two kinds of fixed parameter as identical.

Let $r_\Sigma$ denote restriction of a solution to its time-gauge initial data. Locally in a regular sector of the closed-slice Cauchy problem,

$$
r_\Sigma:\mathscr S\longrightarrow\mathcal C_\Sigma,
\qquad
r_\Sigma^*(\omega_{\mathrm{can}}|_{\mathcal C_\Sigma})=\omega_\Sigma.
$$

Existence and uniqueness of the Einstein Cauchy development, modulo gauge, identify the corresponding reduced solution space and reduced initial-data space locally. Changing $\Sigma$ changes the chart, not the covariant symplectic structure. The kernel directions of the pulled-back form are represented by the first-class constraint flows. For example, if $\delta$ is tangent to $\mathcal C_\Sigma$, then

$$
\omega_{\mathrm{can}}(\delta,X_{H[N]})
=\delta H[N]=0,
$$

although $X_{H[N]}$ is generally nonzero on the extended space. This reconciles the vanishing diffeomorphism generator on the physical closed-universe CPS with the nontrivial canonical equations that move a representative slice.

## 6. What this supplies to canonical LQG

The classical input to canonical LQG is now obtained from the covariant theory: a constrained SU(2) connection chart with $\{A,E\}=\kappa\gamma\delta$, together with its relation to the solution space and its gauge directions. The standard holonomy–flux variables are smearings of this chart, not new covariant observables.

For the right-ordered holonomy convention of the canonical note,

$$
\dot h_e(t)=h_e(t)\dot e^a(t)A_a(e(t)),\qquad h_e(0)=1,
\qquad A_a=A_a^i\tau_i,\quad \tau_i=-\frac i2\sigma_i,
$$

and for $E(S,f)=\int_S f^iE_i^a\,dS_a$, a single transverse interior intersection $p$ gives

$$
\{h_e,E(S,f)\}
=\kappa\gamma\,\varepsilon(e,S;p)f^i(p)
h_{e[0,p]}\tau_i h_{e[p,1]}.
$$

It follows by inserting $\delta h_e/\delta A_a^i(x)$ into the Poisson bracket derived in Section 5. Endpoint half-weights and subsequent representations are treated in the canonical note. This is the precise point at which that quantization construction can resume.

The covariance established here belongs to the underlying solution space, its pre-symplectic form and the equivalence of its canonical charts. The real connection $A_a^i=\Gamma_a^i+\gamma K_a^i$ depends on the spatial normal and time gauge; it has not been made into a four-dimensional Lorentz connection by this derivation. Nor are holonomies on an arbitrary embedded graph already observables on the fully reduced gravitational phase space. They are variables on the extended canonical chart, on which constraints still have to act.

The result is therefore a covariant classical foundation for canonical LQG, with a fully specified passage to its usual slice variables. It neither requires a positive-frequency mode decomposition nor claims a new quantum implementation of spacetime covariance.

## Sources and convention map

- [The local CPS formalism](<Articles/Quantization in AdS/perturbation/formalism.md>) supplies the boundary-sensitive potential, $\omega=\delta\theta$, the distinction between pre-phase space and physical phase space, and $H_X=\iota_X\theta-\alpha_X$. Its fixed-background matter stress-tensor Hamiltonian is not transplanted to dynamical gravity: here diffeomorphism generators are constraints and, when present, boundary charges.
- [Canonical loop quantum gravity](<Lecture/conferences/2026 loops/Canonical loop quantum gravity.md>) fixes $E_i^a$, $K_{ab}=\tfrac12\mathcal L_nq_{ab}$, $A=\Gamma+\gamma K$, and the right-ordered holonomy convention. [Covariant spin foam](<Lecture/conferences/2026 loops/Covariant spin foam.md>) fixes the plus-sign Holst action and internal Hodge convention used here. The corner conversion in Section 4 reconciles these inputs without changing either note.
- D. Harlow and J.-q. Wu, [*Covariant phase space with boundaries*](https://arxiv.org/abs/1906.08616), supplies the boundary variational condition and the corrected integrated generators.
- A. Ashtekar and J. Lewandowski, [*Background Independent Quantum Gravity: A Status Report*](https://arxiv.org/abs/gr-qc/0404018), provides the first-order and canonical connection formulations. Its Holst sign differs as explained in Section 4.
- R. Oliveri and S. Speziale, [*Boundary effects in General Relativity with tetrad variables*](https://arxiv.org/abs/1912.01016), explains why exact differences between tetrad and metric potentials cannot be ignored in surface-charge comparisons.
