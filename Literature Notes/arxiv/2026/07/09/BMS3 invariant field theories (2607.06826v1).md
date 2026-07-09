---
paper id: 2607.06826v1
title: BMS$_3$ invariant field theories
authors:
  - Diego Hidalgo
  - Stefan Vandoren
  - Huaxuan Zeng
publication date: 2026-07-07T21:44:15
abstract: |-
  The paper reviews and constructs two-dimensional BMS$_3$ invariant scalar field theories, including electric, magnetic, canonical, coupled, sigma-model, Toda, and symplectically deformed models. It analyzes corner boundary terms at $u\to\pm\infty$, counterterms, BMS-invariant variational principles, central extensions, flux-balance laws, monodromy classes matching three-dimensional flat gravity, and flat limits from AdS$_3$ and dS$_3$ boundary Liouville theories.
comments: "60 pages"
url: https://arxiv.org/abs/2607.06826v1
summary: "A high-priority flat-space holography paper because it builds BMS$_3$ field theories with boundary counterterms, flux-balance laws, central charges, and 3D gravity monodromy data."
tags: []
---

Back to [[2026_07_09_overview]].

# BMS generators, boundary corners, and model classes

The paper starts from the centrally extended BMS$_3$ algebra

$$\begin{align}
[L_n,L_m]&=(n-m)L_{n+m}+\frac{c_L}{12}n(n^2-1)\delta_{n+m,0},\\
[L_n,M_m]&=(n-m)M_{n+m}+\frac{c_M}{12}n(n^2-1)\delta_{n+m,0},\\
[M_n,M_m]&=0 .
\end{align}$$

At future null infinity the centerless vector-field realization is

$$\begin{align}
L_n=e^{in\sigma}(i\partial_\sigma-nu\partial_u),\qquad M_n=-ie^{in\sigma}\partial_u .
\end{align}$$

A BMS primary scalar of weight $h$ transforms as

$$\begin{align}
\delta \Phi=f\dot\Phi+b\Phi'+h b'\Phi,\qquad f(\sigma,u)=a(\sigma)+u b'(\sigma).
\end{align}$$

The source is organized as follows:

- Section 2: electric BMS$_3$ scalar theories, corner counterterms, sources and flux-balance laws, central charges, and monodromy.
- Section 3: magnetic scalar theories, Liouville potential, flat AdS$_3$/dS$_3$ limits, and improved currents with both $c_M$ and $c_L$.
- Section 4: a canonical first-order BMS$_3$ scalar model and emergent Sugawara-type BMS algebra.
- Section 5: electric-magnetic coupled models and their on-shell analysis.
- Section 6: nonlinear sigma models, Toda theories, and a two-field model with an extended symplectic structure.
- Section 7: flat-space holography interpretation and open problems.

# Electric scalar: counterterm and flux-balance mechanism

The simplest electric model is

$$\begin{align}
S=\int du\,d\sigma\,{\cal L},\qquad {\cal L}=\frac12\dot\psi^2,\qquad \ddot\psi=0,\qquad \psi=\psi_0(\sigma)+u\psi_1(\sigma).
\end{align}$$

For BMS invariance the free field has $h=0$:

$$\begin{align}
\delta\psi=f\dot\psi+b\psi'.
\end{align}$$

The important point for current boundary/CPS work is the treatment of the two corner points $u=\pm\infty$. Because

$$\begin{align}
\delta{\cal L}=\partial_\mu K^\mu,\qquad K^u=f{\cal L},\qquad K^\sigma=b{\cal L},
\end{align}$$

the regulated action on $u\in[-\Lambda,\Lambda]$ varies by

$$\begin{align}
\delta S=\lim_{\Lambda\to\infty}\int d\sigma\, \left[ a\bigl({\cal L}(\Lambda)-{\cal L}(-\Lambda)\bigr) + \Lambda b'\bigl({\cal L}(\Lambda)+{\cal L}(-\Lambda)\bigr) \right].
\end{align}$$

The supertranslation part is controlled by matching ${\cal L}(\Lambda)={\cal L}(-\Lambda)$. The superrotation part needs a corner counterterm

$$\begin{align}
S_{\rm ct}=-\frac12\lim_{\Lambda\to\infty}\int d\sigma\, \Lambda\bigl({\cal L}(\Lambda)+{\cal L}(-\Lambda)\bigr).
\end{align}$$

This is the first transferable object: BMS invariance in these null-boundary models is not only a bulk current statement. It is a statement about a renormalized corner variational principle at $u=\pm\infty$.

With a source $J$ in the electric equation $\ddot\psi=J$, the currents

$$\begin{align}
{\cal H}=\frac12\dot\psi^2,\qquad {\cal P}=\dot\psi\psi'
\end{align}$$

obey flux-balance laws rather than conservation. The source-driven jump example in the paper shows explicitly how an incoming delta-function source changes the energy density. Locally, this is the flat-space-holography analogue of a balance law: source data replace the missing bulk radiation channel in 3D.

# Central extensions and the monodromy dictionary

The electric free scalar admits an improved transformation

$$\begin{align}
\delta\psi=f\dot\psi+b\psi'+\frac{2}{\gamma}f'
\end{align}$$

with improved currents

$$\begin{align}
{\cal H}=\frac12\dot\psi^2-\frac{2}{\gamma}\dot\psi' +\frac{2}{\gamma^2},\qquad {\cal P}=\dot\psi\psi'-\frac{2}{\gamma}\psi''.
\end{align}$$

They satisfy

$$\begin{align}
\partial_u{\cal H}\approx0,\qquad \partial_u{\cal P}\approx\partial_\sigma{\cal H},
\end{align}$$

and transform quasi-primarily:

$$\begin{align}
\delta{\cal H}&=b{\cal H}'+2b'{\cal H} -\frac{4}{\gamma^2}(b'''+b'),\\
\delta{\cal P}&=f{\cal H}'+b{\cal P}'+2b'{\cal P}+2f'{\cal H} -\frac{4}{\gamma^2}(f'''+f').
\end{align}$$

The charge algebra contains

$$\begin{align}
K_{12}= \frac{4i}{\gamma^2}\int d\sigma\, \left[ b_1(f_2'''+f_2')-b_2(f_1'''+f_1') \right],
\end{align}$$

so

$$\begin{align}
\frac{c_M}{12}=\frac{8\pi}{\gamma^2},\qquad c_M=\frac{96\pi}{\gamma^2}.
\end{align}$$

A further $\lambda b'$ term in $\delta\psi$ gives

$$\begin{align}
c_M=\frac{96\pi}{\gamma^2},\qquad c_L=\lambda\frac{96\pi}{\gamma}.
\end{align}$$

The monodromy analysis solves constant-${\cal H}$ configurations. Dropping the additive vacuum constant,

$$\begin{align}
\frac12\psi_1^2-\frac{2}{\gamma}\psi_1'={\cal H}_0.
\end{align}$$

With

$$\begin{align}
\psi_1=-\frac{4}{\gamma}\frac{Y'}{Y},
\end{align}$$

this becomes the linear equation

$$\begin{align}
Y''-\kappa Y=0,\qquad \kappa=\frac{\gamma^2}{8}{\cal H}_0.
\end{align}$$

Elliptic, parabolic, and hyperbolic monodromy classes then reproduce the familiar 3D gravity interpretation: conical defects, null-orbifold-like limits, and flat-space cosmology branches. The conical-defect window is

$$\begin{align}
-\frac{1}{8G}<E_0<0,
\end{align}$$

with the smooth Minkowski reference at $E_0=-1/(8G)$ after the standard identification $2/\gamma^2=1/(16\pi G)$.

# Magnetic and canonical sectors

The magnetic model uses

$$\begin{align}
{\cal L}=\chi\dot\phi-\frac12\phi'^2
\end{align}$$

and its Euclidean-sign partner. The improved magnetic transformation

$$\begin{align}
\delta_\pm\phi &=f\dot\phi+b\phi'+\frac{2}{\gamma}b',\\
\delta_\pm\chi &=f\dot\chi+(b\chi)'\pm f'\phi'\pm\frac{2}{\gamma}f'' +\lambda b''
\end{align}$$

leads to

$$\begin{align}
{\cal H}_{+} =\frac12\phi'^2-\frac{2}{\gamma}\phi''+\frac{2}{\gamma^2} =-{\cal H}_{-},
\end{align}$$

and

$$\begin{align}
{\cal P}_{\pm} =\chi\phi'-\frac{2}{\gamma}\chi'-\lambda\phi'' +\frac{2\lambda}{\gamma}.
\end{align}$$

The magnetic charge algebra gives

$$\begin{align}
c_{M\pm}=\pm\frac{96\pi}{\gamma^2},\qquad c_L=\lambda\frac{96\pi}{\gamma}.
\end{align}$$

The sign flip of $c_M$ is the key difference between AdS$_3$ and dS$_3$ flat limits in this model, while $c_L$ remains fixed. This is useful because it separates the supertranslation charge sign from the common superrotation sector.

The canonical first-order model is a degenerate symplectic limit: its action is essentially a first-order pairing, and the BMS algebra emerges from a Sugawara-like construction. For local use, it is a toy model for boundary degrees of freedom whose dynamics is carried by the symplectic term more than by a Hamiltonian potential.

# Electric-magnetic coupling and the potential constraint

The coupled sector makes the paper more than a list of free examples. It considers one electric scalar and one magnetic first-order pair with Carrollian Lagrangian

$$\begin{align}
{\cal L}
=\frac12\dot\psi^2+\chi\dot\phi-\frac12\phi'^2
-V(\psi,\phi).
\end{align}$$

The transformations combine the electric and magnetic background-charge shifts,

$$\begin{align}
\delta\psi
&=f\dot\psi+b\psi'+\frac{2}{\beta}f'
+\frac{\lambda}{\gamma}b',\\
\delta\phi
&=f\dot\phi+b\phi'+\frac{2}{\gamma}b',\\
\delta\chi
&=f\dot\chi+(b\chi)'+f'\phi'
+\frac{2}{\gamma}f''
+\frac{\lambda}{\gamma}b'' .
\end{align}$$

BMS invariance does not allow an arbitrary interaction. The potential must solve a first-order functional constraint whose general solution is

$$\begin{align}
V(\psi,\phi)
=g\,\exp\left(\frac{\beta}{2}\psi+\frac{\gamma}{2}\phi\right)
h(\beta\psi-\gamma\phi).
\end{align}$$

Thus the interaction has one fixed exponential direction, plus an arbitrary function along the BMS-invariant transverse combination $\beta\psi-\gamma\phi$. This is the most useful technical point of Section 5: the coupled model is constrained by the same background-charge data that generate the central terms. It is not just a product of the electric and magnetic models.

The improved charges have the same form

$$\begin{align}
Q=i\int d\sigma\,(f{\cal H}+b{\cal P}),
\end{align}$$

but now ${\cal H}$ receives both electric kinetic and magnetic-gradient contributions, while ${\cal P}$ contains the mixed first-order momentum density. The source-derived central charges are

$$\begin{align}
c_M=96\pi\left(\frac{1}{\beta^2}+\frac{1}{\gamma^2}\right),
\qquad
c_L=\frac{96\pi\lambda}{\gamma^2}.
\end{align}$$

The coupled construction is a good local model for a null-boundary theory in which electric data carry the supertranslation anomaly while magnetic data carry the spatial-gradient Hamiltonian. The potential constraint identifies which interactions respect the BMS representation rather than merely preserving the Carrollian kinetic terms.

# Multifield sigma models and Toda theories

The sigma-model extension replaces the single scalar by target coordinates $\phi^A$ with kinetic metric $G_{AB}(\phi)$ and potential $V(\phi)$:

$$\begin{align}
{\cal L}
=\frac12G_{AB}(\phi)\dot\phi^A\dot\phi^B
-V(\phi).
\end{align}$$

The BMS shift data are target-space vector fields $T^A(\phi)$ and $R^A(\phi)$. Invariance requires them to be covariantly constant Killing-type background-charge directions in the source conventions:

$$\begin{align}
\nabla_A T_B=0,\qquad
\nabla_A R_B+\nabla_B R_A=0,
\end{align}$$

together with homogeneity conditions on $V$. The associated central charges are determined by target-space contractions,

$$\begin{align}
c_M=24\pi\,G_{AB}T^AT^B,\qquad
c_L=48\pi\,G_{AB}T^AR^B.
\end{align}$$

This package is useful because it turns the single-field background charge into a geometric datum on the target. In local CPS language, the anomaly coefficient is not a freely attached number; it is the norm or pairing of the field-space directions that appear in the symmetry transformation.

For BMS Toda models the paper uses a collection of scalar fields associated with simple roots. Schematically,

$$\begin{align}
{\cal L}
=\frac12K_{ij}\dot\psi^i\dot\psi^j
-\sum_i g_i\exp\left(\frac{\gamma}{2}K_{ij}\psi^j\right),
\end{align}$$

with $K_{ij}$ the Cartan matrix data. BMS invariance fixes the background-charge vector through the root/Cartan relation

$$\begin{align}
\sum_jK_{ij}\beta^j=\frac{2}{\gamma}.
\end{align}$$

For the $sl(3)$ example the paper reports

$$\begin{align}
c_M=\frac{768\pi}{\gamma^2},\qquad
c_L=\frac{768\pi\lambda}{\gamma^2}.
\end{align}$$

The main transfer from the Toda sector is the normalization bookkeeping. Compared with the one-field Liouville-type model, the Cartan matrix multiplies the anomaly coefficients. This matters when comparing BMS field-theory central charges against 3D gravity normalizations.

# Extended first-order phase space and the critical symplectic surface

The most CPS-adjacent construction in the paper is the two-field magnetic model with a deformed first-order symplectic structure:

$$\begin{align}
{\cal L}
=\chi_i\dot\phi^i
+q_1\epsilon_{ij}\phi^i\dot\phi^j
+q_2\epsilon^{ij}\chi_i\dot\chi_j
-{\cal H}(\phi,\chi).
\end{align}$$

The field-space two-form is no longer the canonical $\delta\chi_i\wedge\delta\phi^i$ alone. In matrix form it contains the $\phi\phi$ and $\chi\chi$ blocks proportional to $q_1$ and $q_2$. The paper's key invariant is

$$\begin{align}
\Delta=1+4q_1q_2.
\end{align}$$

For $\Delta\neq0$ the symplectic form is invertible and the model has a deformed but ordinary Poisson structure. For $\Delta=0$ the two-form becomes presymplectic. The equations then contain compatibility constraints rather than determining all velocities. This is the place where the paper most closely touches edge-mode logic: at the critical surface a would-be phase-space direction becomes null and the boundary dynamics is governed by source compatibility.

The authors also identify an $Sp(2,\mathbb R)$-type structure acting on the field doublet. For local use, the critical value $\Delta=0$ should be treated like a boundary-condition transition rather than like a singular parameter limit to be ignored. It changes the rank of the symplectic form, so charge integrability and source admissibility have to be rechecked there.

# Local translation for current projects

- CPS/boundary dictionary: the paper is not a Wald-charge paper, but its counterterm analysis is directly relevant to null-boundary variational principles. The important objects are the endpoint/corner conditions at $u=\pm\infty$, the renormalized action, and the balance laws.
- Charge dictionary: $Q=i\int(f{\cal H}+b{\cal P})$ is the boundary charge. The pair $({\cal H},{\cal P})$ plays the same organizational role as energy and momentum aspects in 3D gravity.
- Symmetry dictionary: $M_n$ are supertranslations and $L_n$ are superrotations. The anomalous $b'''+b'$ and $f'''+f'$ terms vanish on the global Poincare modes, making the currents quasi-primary rather than primary.
- Flat-holography dictionary: the electric and magnetic sectors give complementary field-theory realizations of 3D flat gravity data; the monodromy of $Y$ translates boundary scalar data into bulk particle/cosmology conjugacy classes.
- Interaction dictionary: the coupled potential constraint shows how BMS symmetry selects allowed null-boundary interactions. The invariant combination $\beta\psi-\gamma\phi$ is the analogue of a spectator direction in field space, while the exponential direction carries the background charge.
- Multifield dictionary: in the sigma/Toda sectors the anomaly is encoded by target-space vectors and Cartan data. This is useful when translating between scalar realizations and gravity-side central-charge conventions.
- Presymplectic dictionary: the two-field $\Delta=0$ surface is the closest analogue of a boundary phase-space degeneracy. It is a small laboratory for how null directions, compatibility conditions, and admissible sources enter a would-be charge algebra.
- Project extension: use the counterterm plus flux-balance logic as a compact model before writing null-infinity or finite-boundary charge notes. The source terms give a clean place to compare charge non-conservation, balance laws, and memory-like jumps; the deformed first-order sector gives a separate place to compare rank-changing symplectic forms.

# Verification log

## Checked

- Mathematica checked the centerless BMS$_3$ vector-field representation:

$$\begin{align}
[L_n,L_m]=(n-m)L_{n+m},\qquad [L_n,M_m]=(n-m)M_{n+m},\qquad [M_n,M_m]=0.
\end{align}$$

The residuals simplified to `{0,0,0}` for a test function $f(u,\sigma)$.

## Blocked

- The central extension terms were not independently rederived from canonical Poisson brackets with distributions. A complete check would require implementing the equal-time bracket, periodic integration by parts, and mode expansions.
- The monodromy-to-3D-gravity matching is source-derived. Checking the full identification would require comparing the paper's normalization of $G,\gamma,E_0$ with the Barnich-Compere flat-space gravity conventions.
- The coupled, sigma-model, Toda, and deformed first-order sectors above are source-derived reconstructions. I did not independently verify their functional BMS variations or the degenerate two-form rank condition beyond reading the source formulas.

## Failed

- No failed independent check was found in the calculations attempted here.
