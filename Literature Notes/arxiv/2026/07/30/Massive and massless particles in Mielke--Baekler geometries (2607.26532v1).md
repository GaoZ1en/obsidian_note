---
paper id: 2607.26532v1
title: Massive and massless particles in Mielke--Baekler geometries
authors:
  - Carles Batlle
  - Roberto Casalbuoni
  - Daniele Dominici
  - José Figueroa-O'Farrill
  - Joaquim Gomis
publication date: 2026-07-29T06:56
abstract: |-
  The paper constructs massive and massless spinning-particle worldline actions on three-dimensional Mielke--Baekler homogeneous geometries using coadjoint orbits and nonlinear realizations. It isolates the teleparallel AdS3 branch, shows how a spin Wess--Zumino term separates regular and critical sectors, and analyzes the resulting constraints, Dirac brackets, Papapetrou-type equations, and Noether symmetries.
comments: "56 pages"
url: https://arxiv.org/abs/2607.26532v1
summary: "A detailed coadjoint-orbit and constrained-Hamiltonian model of particles in torsionful AdS3, with a critical Wess--Zumino locus where second-class constraints become gauge symmetries."
tags: []
---

[[2026_07_30_overview|Back to the 2026-07-30 arXiv overview]]

The paper is a useful three-dimensional testbed rather than a field-theoretic CPS result. Its main reusable mechanism is the coincidence between a jump of the coadjoint stabilizer, a zero of the constraint determinant, and the conversion of second-class constraints into first-class gauge generators.

# Mielke--Baekler algebras as choices of invariant connection

On a reductive homogeneous space

$$
\mathfrak g=\mathfrak h\oplus\mathfrak m,
$$

an invariant connection is encoded by a Nomizu map. In three Lorentzian dimensions the relevant family is

$$
N(P_A,P_B)=t\,\epsilon_{ABC}P^C,
\tag{2.7}
$$

with torsion and curvature

$$
T(P_A,P_B)=2t\,\epsilon_{ABC}P^C,
\tag{2.8}
$$

$$
R(P_A,P_B)P_C
=-(\Lambda+t^2)
\left(\eta_{CA}P_B-\eta_{CB}P_A\right).
\tag{2.9}
$$

Writing

$$
p=-(\Lambda+t^2),
\qquad
q=-2t,
$$

the Mielke--Baekler algebra is

$$
[J_A,J_B]=\epsilon_{ABC}J^C,
\qquad
[J_A,P_B]=\epsilon_{ABC}P^C,
$$

$$
[P_A,P_B]
=\epsilon_{ABC}\left(pJ^C+qP^C\right).
\tag{2.14}
$$

The shifted translation generator

$$
K_A=P_A-\frac q2J_A
$$

obeys the ordinary $(A)dS$/Poincaré form with

$$
\Lambda=-\left(p+\frac{q^2}{4}\right).
$$

Thus $p$ and $q$ specify a reductive complement and an invariant metric connection; they do not define a new local isometry type.

Two quadratic Casimirs are

$$
C_1
=\eta^{AB}J_A
\left(P_B-\frac q2J_B\right),
$$

$$
C_2
=\eta^{AB}P_AP_B
+p\,\eta^{AB}J_AJ_B.
\tag{2.25}
$$

The flat invariant-connection condition is $\Lambda=-t^2\leq0$. Apart from the torsionless Minkowski case, the Lorentzian solution is $\mathrm{AdS}_3$, with two invariant flat connections of opposite torsion. Although $\mathrm{dS}_3$ is parallelizable, its flat connections are not invariant under the full $\mathrm{SO}(3,1)$ action.

# The teleparallel AdS3 branch

For $p=0$, the coframe satisfies

$$
d\theta^A
+\frac q2\epsilon^A{}_{BC}
\theta^B\wedge\theta^C=0.
\tag{2.44}
$$

The canonical invariant connection is flat but torsionful. The invariant metric is

$$
G_{MN}
=F(x)\eta_{MN}
+\bigl(1-F(x)\bigr)\frac{x_Mx_N}{x^2},
\tag{2.47}
$$

and its Levi--Civita curvature is

$$
R_{MN}=-\frac{q^2}{2}G_{MN},
\qquad
R=-\frac32q^2,
\qquad
\Lambda=-\frac{q^2}{4}.
\tag{2.50--2.51}
$$

In conformally flat coordinates,

$$
ds^2
=\frac{4}
{\left(1-\frac{q^2}{4}y^2\right)^2}
\eta_{MN}dy^Mdy^N.
\tag{2.65--2.66}
$$

This makes the geometric statement precise: the teleparallel branch is still $\mathrm{AdS}_3$ as a metric manifold, but it is equipped with a flat Weitzenböck connection carrying torsion.

# Coadjoint orbits and worldline actions

For $\alpha\in\mathfrak g^*$, the evolution space is

$$
\mathcal E=G/(G_\alpha\cap H),
$$

and the first-order action is

$$
S[\gamma]
=\int
\left\langle
\alpha,(g\circ\gamma)^*\vartheta
\right\rangle.
$$

Its presymplectic two-form is the pullback of the Kirillov--Kostant--Souriau form; its characteristic curves project to spacetime trajectories.

For massive momentum

$$
\alpha=-m\pi^0+s\lambda^0,
$$

the generic orbit is four-dimensional. It becomes two-dimensional when

$$
m^2=s(ps-mq).
$$

On the teleparallel branch this critical condition is

$$
m+qs=0.
$$

For the massless orbit

$$
\alpha
=\mu(\pi^0-\pi^1)
-s(\lambda^0-\lambda^1),
\tag{4.1}
$$

the analogous rank drop is

$$
\mu^2=s(ps-q\mu),
$$

or

$$
\mu+qs=0
$$

when $p=0$.

# Massive spin, transport, and the critical Papapetrou sector

The teleparallel massive Lagrangian is

$$
L
=-m\left(
\cosh v\,\theta_\tau^0
+\sinh v\,\hat v_a\theta_\tau^a
\right)
+s(\cosh v-1)
\epsilon_{ab}\hat v^a\dot{\hat v}^b.
\tag{3.20}
$$

The last term is the spin Wess--Zumino term. For $s=0$, the boost-Goldstone equation gives the inverse-Higgs condition

$$
\vartheta_\tau^a=0,
\tag{3.23}
$$

and the action reduces to

$$
S=-m\int d\tau
\sqrt{-G_{MN}\dot x^M\dot x^N}.
\tag{3.25}
$$

For nonzero spin, define $u^Au_A=-1$ and

$$
p_M=-mu_A\theta^A{}_M.
$$

The momentum is parallel with respect to the transposed Weitzenböck connection,

$$
\overline\nabla_\tau p_M=0.
\tag{3.50}
$$

In Levi--Civita variables,

$$
\widetilde\nabla_\tau p_M
=\frac{mq}{2}
\epsilon_{ABC}u^A\theta^B{}_M E^C.
\tag{3.57}
$$

The remaining field equations combine into

$$
(m+qs)\epsilon^A{}_{BC}u^BE^C=0.
\tag{3.58}
$$

For $m+qs\neq0$, $E^A$ is parallel to $u^A$ and the force term vanishes. For $m+qs=0$, the momentum--velocity relation degenerates. With

$$
S^{AB}=-2s\epsilon^{ABC}u_C,
\tag{3.65}
$$

the equations become

$$
\widetilde\nabla_\tau S^{AB}
=m(u^BE^A-u^AE^B),
\tag{3.70}
$$

$$
\widetilde\nabla_\tau p_M
=-\frac12
\widetilde R_{MNAB}
\dot x^N S^{AB}.
\tag{3.71}
$$

These are Papapetrou-type first-order transport equations. In the critical sector they do not determine a unique trajectory until the additional gauge freedom is fixed.

# Constraint conversion and noncommutative positions

The massive phase space

$$
(x^M,p_M;v,\pi_v;\varphi,\pi_\varphi)
$$

has dimension ten. The primary constraints include

$$
\Phi_A=p_A+mu_A\approx0,
\qquad
\Psi_v=\pi_v\approx0,
$$

$$
\Psi_\varphi
=\pi_\varphi-s(\cosh v-1)\approx0,
$$

with mass shell

$$
C=p_Ap^A+m^2\approx0.
$$

The internal constraint matrix has determinant

$$
\det M
=m^2\sinh^4v\,(m+qs)^2.
\tag{3.90}
$$

In the regular sector there are four second-class constraints and one first-class mass shell, leaving

$$
10-4-2=4
$$

physical phase-space dimensions. The position variables acquire the Dirac bracket

$$
\{x^M,x^N\}_D
=-\frac{s}{m(m+qs)}
\epsilon^{ABC}u_C
e_A{}^Me_B{}^N.
\tag{3.95}
$$

At $m+qs=0$, two of the internal constraints become first class. Together with the mass shell there are three first-class and two second-class constraints, leaving

$$
10-2-6=2
$$

physical phase-space dimensions. The critical surface is therefore simultaneously an orbit-dimension jump and a gauge-symmetry enhancement.

# Massless particles and conformal Noether symmetry

Using

$$
N_A=e^\varphi
\left(\frac12u^2,-u,1\right),
$$

the massless action is

$$
L
=-\mu N_A\theta^A{}_M\dot x^M
+s e^\varphi\dot u.
\tag{4.25}
$$

The internal determinant is

$$
\det M
=e^{4\varphi}\mu^2(\mu+qs)^2.
\tag{4.42}
$$

The regular sector again has a four-dimensional reduced phase space and ordinary null-geodesic Hamilton equations, while spin leaves a nonzero coordinate Dirac bracket. At $\mu=-qs$, two internal constraints become first class and the reduced space becomes two-dimensional.

For a candidate generator

$$
\mathcal G
=\alpha^M(x)p_M+\beta p_u+\gamma p_\varphi,
$$

Noether invariance is preservation of the primary constraint surface. If

$$
\mathcal L_\alpha\theta^A
=K^A{}_B\theta^B,
$$

the symmetry conditions are

$$
K^B{}_An_B
+\beta m_A+\gamma n_A
-\frac{s}{\mu}e_A\beta=0,
\tag{4.68}
$$

$$
s(\partial_u\beta+\gamma)=0,
\qquad
s\,\partial_\varphi\beta=0.
\tag{4.69--4.70}
$$

For $s=0$, every spacetime conformal Killing field lifts to a Noether symmetry, giving $\mathfrak{so}(3,2)$. For $s\neq0$ in the regular sector, the Wess--Zumino term restricts this to genuine Killing fields. In the critical sector, proper-conformal pieces can be removed by the extra internal gauge transformations and reparametrization.

The teleparallel translations satisfy

$$
[P_A,P_B]=q\epsilon_{AB}{}^C P_C,
\tag{4.161}
$$

and are related to the standard conformal-coordinate basis by

$$
P_A
=\Pi_A-\frac q2J_A-\frac{q^2}{8}K_A.
\tag{4.164}
$$

The resulting "conformal MB algebra" is therefore a change of basis in $\mathfrak{so}(3,2)$, not a deformation of that algebra.

# Verification boundary

Checked with Sage under $\eta=\operatorname{diag}(-,+,+)$ and $\epsilon_{012}=+1$:

- all Jacobi residuals of Eq. (2.14) vanish for symbolic $p,q$;
- the shift $K_A=P_A-\frac q2J_A$ gives coefficient $p+q^2/4=-\Lambda$;
- both quadratic expressions in Eq. (2.25) Poisson-commute with all six linear generators on $\mathfrak g^*$.

Source-derived but not independently verified: the Nomizu classification, the teleparallel coordinate metric, orbit ranks, Euler--Lagrange reductions, determinant formulas, complete Dirac classification, brackets in Eq. (3.95), Papapetrou rewriting, and the full conformal-symmetry analysis.

This paper does not construct the Mielke--Baekler field theory's covariant phase space, boundary conditions, or charge algebra. Its presymplectic geometry is the finite-dimensional KKS/worldline structure.
