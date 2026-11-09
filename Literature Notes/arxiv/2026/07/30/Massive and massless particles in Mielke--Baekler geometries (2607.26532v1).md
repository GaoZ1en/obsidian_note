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

# Mielke--Baekler Algebras as Choices of Invariant Connection

On a reductive homogeneous space

$$\begin{align}
\mathfrak g=\mathfrak h\oplus\mathfrak m,
\end{align}$$

an invariant connection is encoded by a Nomizu map. In three Lorentzian dimensions the relevant family is

$$\begin{align}
N(P_A,P_B)=t\,\epsilon_{ABC}P^C, \tag{2.7}
\end{align}$$

with torsion and curvature

$$\begin{align}
T(P_A,P_B)=2t\,\epsilon_{ABC}P^C, \tag{2.8}
\end{align}$$

$$\begin{align}
R(P_A,P_B)P_C =-(\Lambda+t^2) \left(\eta_{CA}P_B-\eta_{CB}P_A\right). \tag{2.9}
\end{align}$$

Writing

$$\begin{align}
p=-(\Lambda+t^2), \qquad q=-2t,
\end{align}$$

the Mielke--Baekler algebra is

$$\begin{align}
[J_A,J_B]=\epsilon_{ABC}J^C, \qquad [J_A,P_B]=\epsilon_{ABC}P^C,
\end{align}$$

$$\begin{align}
[P_A,P_B] =\epsilon_{ABC}\left(pJ^C+qP^C\right). \tag{2.14}
\end{align}$$

The shifted translation generator

$$\begin{align}
K_A=P_A-\frac q2J_A
\end{align}$$

obeys the ordinary $(A)dS$/Poincaré form with

$$\begin{align}
\Lambda=-\left(p+\frac{q^2}{4}\right).
\end{align}$$

Thus $p$ and $q$ specify a reductive complement and an invariant metric connection; they do not define a new local isometry type.

Two quadratic Casimirs are

$$\begin{align}
C_1 =\eta^{AB}J_A \left(P_B-\frac q2J_B\right),
\end{align}$$

$$\begin{align}
C_2 =\eta^{AB}P_AP_B +p\,\eta^{AB}J_AJ_B. \tag{2.25}
\end{align}$$

The flat invariant-connection condition is $\Lambda=-t^2\leq0$. Apart from the torsionless Minkowski case, the Lorentzian solution is $\mathrm{AdS}_3$, with two invariant flat connections of opposite torsion. Although $\mathrm{dS}_3$ is parallelizable, its flat connections are not invariant under the full $\mathrm{SO}(3,1)$ action.

# The Teleparallel AdS3 Branch

For $p=0$, the coframe satisfies

$$\begin{align}
d\theta^A +\frac q2\epsilon^A{}_{BC} \theta^B\wedge\theta^C=0. \tag{2.44}
\end{align}$$

The canonical invariant connection is flat but torsionful. The invariant metric is

$$\begin{align}
G_{MN} =F(x)\eta_{MN} +\bigl(1-F(x)\bigr)\frac{x_Mx_N}{x^2}, \tag{2.47}
\end{align}$$

and its Levi--Civita curvature is

$$\begin{align}
R_{MN}=-\frac{q^2}{2}G_{MN}, \qquad R=-\frac32q^2, \qquad \Lambda=-\frac{q^2}{4}. \tag{2.50--2.51}
\end{align}$$

In conformally flat coordinates,

$$\begin{align}
ds^2 =\frac{4} {\left(1-\frac{q^2}{4}y^2\right)^2} \eta_{MN}dy^Mdy^N. \tag{2.65--2.66}
\end{align}$$

This makes the geometric statement precise: the teleparallel branch is still $\mathrm{AdS}_3$ as a metric manifold, but it is equipped with a flat Weitzenböck connection carrying torsion.

# Coadjoint Orbits and Worldline Actions

For $\alpha\in\mathfrak g^*$, the evolution space is

$$\begin{align}
\mathcal E=G/(G_\alpha\cap H),
\end{align}$$

and the first-order action is

$$\begin{align}
S[\gamma] =\int \left\langle \alpha,(g\circ\gamma)^*\vartheta \right\rangle.
\end{align}$$

Its presymplectic two-form is the pullback of the Kirillov--Kostant--Souriau form; its characteristic curves project to spacetime trajectories.

For massive momentum

$$\begin{align}
\alpha=-m\pi^0+s\lambda^0,
\end{align}$$

the generic orbit is four-dimensional. It becomes two-dimensional when

$$\begin{align}
m^2=s(ps-mq).
\end{align}$$

On the teleparallel branch this critical condition is

$$\begin{align}
m+qs=0.
\end{align}$$

For the massless orbit

$$\begin{align}
\alpha =\mu(\pi^0-\pi^1) -s(\lambda^0-\lambda^1), \tag{4.1}
\end{align}$$

the analogous rank drop is

$$\begin{align}
\mu^2=s(ps-q\mu),
\end{align}$$

or

$$\begin{align}
\mu+qs=0
\end{align}$$

when $p=0$.

# Massive Spin, Transport, and the Critical Papapetrou Sector

The teleparallel massive Lagrangian is

$$\begin{align}
L =-m\left( \cosh v\,\theta_\tau^0 +\sinh v\,\hat v_a\theta_\tau^a \right) +s(\cosh v-1) \epsilon_{ab}\hat v^a\dot{\hat v}^b. \tag{3.20}
\end{align}$$

The last term is the spin Wess--Zumino term. For $s=0$, the boost-Goldstone equation gives the inverse-Higgs condition

$$\begin{align}
\vartheta_\tau^a=0, \tag{3.23}
\end{align}$$

and the action reduces to

$$\begin{align}
S=-m\int d\tau \sqrt{-G_{MN}\dot x^M\dot x^N}. \tag{3.25}
\end{align}$$

For nonzero spin, define $u^Au_A=-1$ and

$$\begin{align}
p_M=-mu_A\theta^A{}_M.
\end{align}$$

The momentum is parallel with respect to the transposed Weitzenböck connection,

$$\begin{align}
\overline\nabla_\tau p_M=0. \tag{3.50}
\end{align}$$

In Levi--Civita variables,

$$\begin{align}
\widetilde\nabla_\tau p_M =\frac{mq}{2} \epsilon_{ABC}u^A\theta^B{}_M E^C. \tag{3.57}
\end{align}$$

The remaining field equations combine into

$$\begin{align}
(m+qs)\epsilon^A{}_{BC}u^BE^C=0. \tag{3.58}
\end{align}$$

For $m+qs\neq0$, $E^A$ is parallel to $u^A$ and the force term vanishes. For $m+qs=0$, the momentum--velocity relation degenerates. With

$$\begin{align}
S^{AB}=-2s\epsilon^{ABC}u_C, \tag{3.65}
\end{align}$$

the equations become

$$\begin{align}
\widetilde\nabla_\tau S^{AB} =m(u^BE^A-u^AE^B), \tag{3.70}
\end{align}$$

$$\begin{align}
\widetilde\nabla_\tau p_M =-\frac12 \widetilde R_{MNAB} \dot x^N S^{AB}. \tag{3.71}
\end{align}$$

These are Papapetrou-type first-order transport equations. In the critical sector they do not determine a unique trajectory until the additional gauge freedom is fixed.

# Constraint Conversion and Noncommutative Positions

The massive phase space

$$\begin{align}
(x^M,p_M;v,\pi_v;\varphi,\pi_\varphi)
\end{align}$$

has dimension ten. The primary constraints include

$$\begin{align}
\Phi_A=p_A+mu_A\approx0, \qquad \Psi_v=\pi_v\approx0,
\end{align}$$

$$\begin{align}
\Psi_\varphi =\pi_\varphi-s(\cosh v-1)\approx0,
\end{align}$$

with mass shell

$$\begin{align}
C=p_Ap^A+m^2\approx0.
\end{align}$$

The internal constraint matrix has determinant

$$\begin{align}
\det M =m^2\sinh^4v\,(m+qs)^2. \tag{3.90}
\end{align}$$

In the regular sector there are four second-class constraints and one first-class mass shell, leaving

$$\begin{align}
10-4-2=4
\end{align}$$

physical phase-space dimensions. The position variables acquire the Dirac bracket

$$\begin{align}
\{x^M,x^N\}_D =-\frac{s}{m(m+qs)} \epsilon^{ABC}u_C e_A{}^Me_B{}^N. \tag{3.95}
\end{align}$$

At $m+qs=0$, two of the internal constraints become first class. Together with the mass shell there are three first-class and two second-class constraints, leaving

$$\begin{align}
10-2-6=2
\end{align}$$

physical phase-space dimensions. The critical surface is therefore simultaneously an orbit-dimension jump and a gauge-symmetry enhancement.

# Massless Particles and Conformal Noether Symmetry

Using

$$\begin{align}
N_A=e^\varphi \left(\frac12u^2,-u,1\right),
\end{align}$$

the massless action is

$$\begin{align}
L =-\mu N_A\theta^A{}_M\dot x^M +s e^\varphi\dot u. \tag{4.25}
\end{align}$$

The internal determinant is

$$\begin{align}
\det M =e^{4\varphi}\mu^2(\mu+qs)^2. \tag{4.42}
\end{align}$$

The regular sector again has a four-dimensional reduced phase space and ordinary null-geodesic Hamilton equations, while spin leaves a nonzero coordinate Dirac bracket. At $\mu=-qs$, two internal constraints become first class and the reduced space becomes two-dimensional.

For a candidate generator

$$\begin{align}
\mathcal G =\alpha^M(x)p_M+\beta p_u+\gamma p_\varphi,
\end{align}$$

Noether invariance is preservation of the primary constraint surface. If

$$\begin{align}
\mathcal L_\alpha\theta^A =K^A{}_B\theta^B,
\end{align}$$

the symmetry conditions are

$$\begin{align}
K^B{}_An_B +\beta m_A+\gamma n_A -\frac{s}{\mu}e_A\beta=0, \tag{4.68}
\end{align}$$

$$\begin{align}
s(\partial_u\beta+\gamma)=0, \qquad s\,\partial_\varphi\beta=0. \tag{4.69--4.70}
\end{align}$$

For $s=0$, every spacetime conformal Killing field lifts to a Noether symmetry, giving $\mathfrak{so}(3,2)$. For $s\neq0$ in the regular sector, the Wess--Zumino term restricts this to genuine Killing fields. In the critical sector, proper-conformal pieces can be removed by the extra internal gauge transformations and reparametrization.

The teleparallel translations satisfy

$$\begin{align}
[P_A,P_B]=q\epsilon_{AB}{}^C P_C, \tag{4.161}
\end{align}$$

and are related to the standard conformal-coordinate basis by

$$\begin{align}
P_A =\Pi_A-\frac q2J_A-\frac{q^2}{8}K_A. \tag{4.164}
\end{align}$$

The resulting "conformal MB algebra" is therefore a change of basis in $\mathfrak{so}(3,2)$, not a deformation of that algebra.

# Verification Boundary

Checked with Sage under $\eta=\operatorname{diag}(-,+,+)$ and $\epsilon_{012}=+1$:

- all Jacobi residuals of Eq. (2.14) vanish for symbolic $p,q$;
- the shift $K_A=P_A-\frac q2J_A$ gives coefficient $p+q^2/4=-\Lambda$;
- both quadratic expressions in Eq. (2.25) Poisson-commute with all six linear generators on $\mathfrak g^*$.

Source-derived but not independently verified: the Nomizu classification, the teleparallel coordinate metric, orbit ranks, Euler--Lagrange reductions, determinant formulas, complete Dirac classification, brackets in Eq. (3.95), Papapetrou rewriting, and the full conformal-symmetry analysis.

This paper does not construct the Mielke--Baekler field theory's covariant phase space, boundary conditions, or charge algebra. Its presymplectic geometry is the finite-dimensional KKS/worldline structure.
