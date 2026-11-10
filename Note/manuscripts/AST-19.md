# AST-19 — Actions from Cartan Geometry and Flat Connections

**DRAFT — bounded review recorded.**

A geometric description becomes a gravitational theory only after an action, its varied fields, its matter coupling and its boundary prescription have been chosen. Two useful constructions illustrate this distinction. A Cartan connection packages a coframe and a Lorentz connection into one larger connection; a particular curvature-squared action then contains the Einstein–Hilbert action with a cosmological constant. Alternatively, a flat auxiliary connection allows the same Einstein–Hilbert *bulk equations* to be written using a particular quadratic torsion or nonmetricity scalar. Neither construction selects its action from a group embedding alone.

The target here is the actual action comparison, including its signs and the discarded divergence. The physical manifold is always four-dimensional, with signature $(-,+,+,+)$, $\kappa=8\pi G$ and $c=\hbar=1$. All fields are smooth on the patch or region being considered, and coframes and metrics are nondegenerate. Compactly supported variations suffice until boundary conditions are discussed explicitly. The constructions are classical; no quantization prescription is supplied.

## 1. The Fields Carried by a Cartan Connection

A coframe $e^a=e^a{}_\mu \mathrm d x^\mu$ is a set of four linearly independent one-forms. It identifies each tangent space with an internal Lorentz vector space and defines

$$\begin{align}
g=\eta_{ab}e^a\otimes e^b,\qquad \eta_{ab}=\mathrm{diag}(-1,1,1,1),\qquad \mathrm{vol}=e^0\wedge e^1\wedge e^2\wedge e^3.
\end{align}$$

Choose the orientation $\epsilon_{0123}=+1$ in this orthonormal frame; raising all four indices gives $\epsilon^{0123}=-1$. A Lorentz connection is a matrix of one-forms $\omega^a{}_b$ satisfying $\omega_{ab}=-\omega_{ba}$. Its torsion and curvature two-forms are

$$\begin{align}
T^a=\mathrm d e^a+\omega^a{}_b\wedge e^b,\qquad R^a{}_b=\mathrm d\omega^a{}_b+\omega^a{}_c\wedge\omega^c{}_b.
\end{align}$$

These are definitions, not field equations. The coordinate connection associated with this pair is fixed by the tetrad postulate:

$$\begin{align}
\Gamma^\rho{}_{\mu\nu} =e_a{}^\rho\bigl(\partial_\mu e^a{}_\nu+\omega^a{}_{b\mu}e^b{}_\nu\bigr), \qquad T^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\Gamma^\rho{}_{\nu\mu}.
\end{align}$$

Thus the first lower connection slot is the derivative slot. The Lorentz connection is metric-compatible, so this part of the chapter has $Q_{\lambda\mu\nu}:=-\nabla_\lambda g_{\mu\nu}=0$, but it does not initially require $T=0$.

Introduce a length $\ell>0$ and a sign $\sigma=\pm1$. On an internal five-dimensional vector space use $H_{AB}=\mathrm{diag}(\eta_{ab},\sigma)$. The following block matrix is $H$-antisymmetric:

$$
\mathcal A^A{}_B=\begin{pmatrix}
\omega^a{}_b & e^a/\ell \\
-\sigma e_b/\ell & 0
\end{pmatrix}.
$$

For $\sigma=+1$ its internal group is $SO(1,4)$; for $\sigma=-1$ it is $SO(2,3)$. These are the de Sitter and anti-de Sitter choices. The fifth index is an internal index of a connection on a four-dimensional base. In particular, the second negative entry for $SO(2,3)$ is not a second physical time coordinate.

Compute $\mathcal F=\mathrm d\mathcal A+\mathcal A\wedge\mathcal A$ by matrix multiplication, retaining the wedge product in each matrix entry:

$$
\mathcal F^A{}_B=\begin{pmatrix}
R^a{}_b-\sigma e^a\wedge e_b/\ell^2 & T^a/\ell \\
-\sigma T_b/\ell & 0
\end{pmatrix}.
$$

The minus sign in the upper-left correction comes from multiplying the upper-right and lower-left blocks. In particular, after raising the second Lorentz index,

$$\begin{align}
F^{ab}:=\mathcal F^a{}_c\eta^{cb} =R^{ab}-\frac{\sigma}{\ell^2}e^a\wedge e^b.
\end{align}$$

This is the useful output of the packaging: Lorentz curvature and the coframe area enter one two-form. Calling $\mathcal A$ a Cartan connection also requires the coframe to give the soldering isomorphism between tangent vectors and the quotient of the larger algebra by the Lorentz algebra. An arbitrary larger-group gauge field with a degenerate off-diagonal block need not be a gravitational coframe.

## 2. A Selected Curvature-Squared Action Contains Einstein Gravity

Consider the specific MacDowell–Mansouri action

$$\begin{align}
I_{\mathrm{MM}}[e,\omega] =-\frac{\sigma\ell^2}{8\kappa} \int_M\epsilon_{abcd}F^{ab}\wedge F^{cd}.
\end{align}$$

The contraction uses the Lorentz epsilon tensor, not the larger group's Killing form. It therefore contains a choice of Lorentz reduction. One can display that choice with a prescribed internal vector $V^A$ of norm $H_{AB}V^AV^B=\sigma\ell^2$ and a contraction $\epsilon_{ABCDE}(V^E/\ell)\mathcal F^{AB}\wedge\mathcal F^{CD}$. In the gauge $V^A=\ell\delta^A_4$, with $\epsilon_{01234}=+1$, it becomes the displayed action. Transforming $V$ as well as $\mathcal A$ makes this expression covariant under the larger group; holding $V$ fixed leaves its Lorentz stabilizer as the internal symmetry. Here the reduction is prescribed and $V$ is not varied as an additional dynamical field. A theory with dynamical symmetry breaking or a dynamical compensator would require a separately specified variational problem.

Two-forms commute in a wedge product. Consequently the two cross terms in $F^{ab}\wedge F^{cd}$ add rather than cancel:

$$\begin{aligned}
\epsilon_{abcd}F^{ab}\wedge F^{cd} ={}&\epsilon_{abcd}R^{ab}\wedge R^{cd} -\frac{2\sigma}{\ell^2}\epsilon_{abcd}e^a\wedge e^b\wedge R^{cd} \\
&+\frac{1}{\ell^4}\epsilon_{abcd}e^a\wedge e^b\wedge e^c\wedge e^d.
\end{aligned}$$

The resulting action, with $\Lambda=3\sigma/\ell^2$, is

$$\begin{aligned}
I_{\mathrm{MM}} ={}&\frac{1}{4\kappa}\int_M\epsilon_{abcd}e^a\wedge e^b\wedge R^{cd} -\frac{\Lambda}{24\kappa}\int_M\epsilon_{abcd}e^a\wedge e^b\wedge e^c\wedge e^d \\
&-\frac{\sigma\ell^2}{8\kappa}\int_M\epsilon_{abcd}R^{ab}\wedge R^{cd}.
\end{aligned}$$

The first two terms are the first-order Einstein action. With $R=e_a{}^\mu e_b{}^\nu R^{ab}{}_{\mu\nu}$, their normalization follows from

$$\begin{align}
\epsilon_{abcd}e^a\wedge e^b\wedge R^{cd}=2R\mathrm{vol}, \qquad \epsilon_{abcd}e^a\wedge e^b\wedge e^c\wedge e^d=24\mathrm{vol}.
\end{align}$$

The final term is the Euler curvature form of the Lorentz connection. Its local variation is a boundary term, because the covariant exterior derivative obeys $DR^{ab}=0$:

$$\begin{align}
\delta\bigl(\epsilon_{abcd}R^{ab}\wedge R^{cd}\bigr) =2\mathrm d\bigl(\epsilon_{abcd}\delta\omega^{ab}\wedge R^{cd}\bigr).
\end{align}$$

This identity uses a Lorentz connection and constant coefficients. It does not assert that its boundary integral is irrelevant, or that a single globally defined Chern–Simons primitive exists on every bundle.

For compactly supported variations and no spin source, the coframe and connection equations from the first two terms are

$$\begin{align}
\epsilon_{abcd}e^b\wedge \bigl(R^{cd}-\frac{\Lambda}{3}e^c\wedge e^d\bigr)=0, \qquad \epsilon_{abcd}T^a\wedge e^b=0.
\end{align}$$

To see the coefficient in the first equation, the coframe variation of the Einstein term gives $2\epsilon_{abcd}\delta e^a\wedge e^b\wedge R^{cd}/(4\kappa)$, whereas that of the volume term gives $-4\Lambda\epsilon_{abcd}\delta e^a\wedge e^b\wedge e^c\wedge e^d/(24\kappa)$. For the connection variation use $\delta R^{ab}=D\delta\omega^{ab}$ and $D(e^a\wedge e^b)=T^a\wedge e^b-e^a\wedge T^b$. The internal epsilon contraction is invertible on antisymmetric index pairs, so the connection equation is equivalently $T^a\wedge e^b-e^a\wedge T^b=0$. To solve it, let $i_a$ contract with the frame dual to $e^a$ and put $v=\sum_b i_bT^b$. Contracting and summing on $b$ gives $T^a+e^a\wedge v=0$ in four dimensions; contracting this on $a$ gives $v=-3v$. Hence $v=0$ and $T^a=0$. This uses the invertibility of the coframe. The connection then becomes Levi-Civita, and the first equation is $\bar G_{\mu\nu}+\Lambda g_{\mu\nu}=0$. Spin-dependent matter changes the connection equation; the vacuum elimination is not available unchanged in that case.

A nonzero example fixes the orientation and all action coefficients. Set $e^0=\mathrm dt$, $e^i=a(t)\mathrm dx^i$ and $H=\dot a/a$. The torsion-free connection has $\omega^i{}_0=\omega^0{}_i=He^i$ and $\omega^i{}_j=0$. Taking the exterior derivative gives

$$\begin{align}
R^{0i}=(\dot H+H^2)e^0\wedge e^i,\qquad R^{ij}=H^2e^i\wedge e^j,\qquad \bar R=6(\dot H+2H^2).
\end{align}$$

There are $24$ signed permutations contributing to the Euler four-form. Pairing the complementary time-space and spatial two-planes gives

$$\begin{align}
\epsilon_{abcd}R^{ab}\wedge R^{cd} =24H^2(\dot H+H^2)\mathrm{vol}, \qquad \mathcal L_{\mathrm{MM}} =-\frac{3\sigma\ell^2}{\kappa} \bigl(\dot H+H^2-\sigma/\ell^2\bigr)\bigl(H^2-\sigma/\ell^2\bigr)\mathrm{vol}.
\end{align}$$

For the de Sitter flat patch $a=e^{t/\ell}$ and $\sigma=+1$, both $T^a$ and $F^{ab}$ vanish. Nevertheless the metric has $\bar R=12/\ell^2$, and the Einstein-plus-cosmological density is $3\mathrm{vol}/(\kappa\ell^2)$. The Euler contribution is its negative, so the full MM density vanishes. Zero Cartan curvature is therefore compatible with nonzero spacetime Levi-Civita curvature. As an off-shell example, $a=(t/t_0)^2$, $t,t_0>0$, gives

$$\begin{align}
\mathcal L_{\mathrm{MM}} =\frac1{\kappa}\left(-\frac{24\ell^2}{t^4}+\frac{18}{t^2}-\frac3{\ell^2}\right)\mathrm{vol} \quad(\sigma=+1).
\end{align}$$

An embedding has supplied neither the epsilon contraction, the reduction, $\ell$, the overall coupling nor the matter content. Those inputs, not group dimensions, determine this gravitational model.

## 3. The Distortion Identity That Compares Bulk Actions

We now allow a general coordinate connection, independent of $g$. Keep the derivative-first slots and define its curvature by

$$\begin{align}
R^\rho{}_{\sigma\mu\nu}(\Gamma) =\partial_\mu\Gamma^\rho{}_{\nu\sigma} -\partial_\nu\Gamma^\rho{}_{\mu\sigma} +\Gamma^\rho{}_{\mu\lambda}\Gamma^\lambda{}_{\nu\sigma} -\Gamma^\rho{}_{\nu\lambda}\Gamma^\lambda{}_{\mu\sigma}, \qquad R(\Gamma)=g^{\sigma\nu}R^\rho{}_{\sigma\rho\nu}.
\end{align}$$

No antisymmetry in the first lowered pair, pair-exchange symmetry or Levi-Civita Bianchi identity is assumed for this general curvature. Let $N^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\bar\Gamma^\rho{}_{\mu\nu}$ be the distortion from the Levi-Civita connection of this same metric. Unlike either connection separately, $N$ is a tensor. Substitution into the curvature definition gives

$$\begin{aligned}
R^\rho{}_{\sigma\mu\nu}(\Gamma) ={}&\bar R^\rho{}_{\sigma\mu\nu} +\bar\nabla_\mu N^\rho{}_{\nu\sigma} -\bar\nabla_\nu N^\rho{}_{\mu\sigma} \\
&+N^\rho{}_{\mu\lambda}N^\lambda{}_{\nu\sigma} -N^\rho{}_{\nu\lambda}N^\lambda{}_{\mu\sigma}.
\end{aligned}$$

For example, the terms linear in $N$ from the two connection products combine with $\partial_\mu N^\rho{}_{\nu\sigma}$ to supply the connection corrections on its three indices. The correction on the derivative-form index $\nu$ cancels under antisymmetrization because $\bar\Gamma^\lambda{}_{\mu\nu}$ is symmetric. This explains why the displayed derivative is Levi-Civita rather than the general torsionful derivative.

Contracting the first and third curvature indices, then the remaining Ricci indices, define

$$\begin{aligned}
B^\rho(N)&=g^{\sigma\nu}N^\rho{}_{\nu\sigma} -g^{\sigma\rho}N^\lambda{}_{\lambda\sigma}, \\
C(N)&=g^{\sigma\nu}\bigl( N^\rho{}_{\rho\lambda}N^\lambda{}_{\nu\sigma} -N^\rho{}_{\nu\lambda}N^\lambda{}_{\rho\sigma}\bigr).
\end{aligned}$$

Since $\bar\nabla g=0$, the two contracted derivative terms are exactly $\bar\nabla_\rho B^\rho$. Hence

$$\begin{align}
R(\Gamma)=\bar R+\bar\nabla_\rho B^\rho(N)+C(N), \qquad \bar\nabla_\rho B^\rho =\frac1{\sqrt{-g}}\partial_\rho(\sqrt{-g}B^\rho).
\end{align}$$

The second identity is for the *Levi-Civita* divergence. Replacing it by a general connection divergence without its torsion and nonmetricity trace corrections would change the action comparison.

The useful decompositions can be derived without importing a contorsion convention. Lower the first index with $g$ and write $N_{abc}=K_{abc}+L_{abc}$, with

$$\begin{aligned}
K_{abc}&=\frac12(T_{abc}-T_{bca}+T_{cab}), &K_{abc}&=-K_{cba}, \\
L_{abc}&=\frac12(Q_{bca}+Q_{cba}-Q_{abc}), &L_{abc}&=L_{acb}.
\end{aligned}$$

Here all indices may be understood as coordinate tensor indices; lower-case letters make the permutations legible and do not change the slot order. Indeed $T_{abc}=N_{abc}-N_{acb}$ and $Q_{abc}=N_{cab}+N_{bac}$. In the metric-compatible part, use $K_{abc}=-K_{cba}$ to solve the three cyclic torsion equations for $K_{abc}$, obtaining its displayed expression. In the torsionless part, the three cyclic nonmetricity equations similarly give $L_{abc}$. Their sum has exactly the original $T$ and $Q$, so their difference from $N$ has both zero torsion and zero nonmetricity and must vanish by uniqueness of the Levi-Civita connection. This is not a decomposition into the simple symmetric and antisymmetric lower-slot parts of $N$.

The general $C(K+L)$ also contains mixed torsion–nonmetricity terms. We will not suppress those terms in a general metric-affine theory. The next two sections restrict to $L=0$ and $K=0$ separately, where no mixed term survives.

## 4. Flat Metric-Compatible Connections: the Torsion Action

A teleparallel connection is flat and metric-compatible:

$$\begin{align}
R^\rho{}_{\sigma\mu\nu}(\Gamma)=0,\qquad Q_{\lambda\mu\nu}=0.
\end{align}$$

Locally it can be represented by a coframe and a flat Lorentz connection through the tetrad postulate in section 1. A convenient local Lorentz gauge sets $\omega^a{}_b=0$, giving $\Gamma^\rho{}_{\mu\nu}=e_a{}^\rho\partial_\mu e^a{}_\nu$. This is the Weitzenböck expression. Curvature vanishes because the coframe is parallel, while torsion measures its failure to be a coordinate coframe. A local Lorentz transformation must transform the flat $\omega$ together with $e$; setting $\omega=0$ again without that transformation is a separate gauge choice, not the tensor transformation law.

To distinguish the opposite trace from the shared one in [AST-06](<AST-06.md#4-two-connection-traces-and-the-metric-volume>), define

$$\begin{align}
\tau_\mu:=T^\rho{}_{\rho\mu}=-t_\mu,\qquad \mathbb T=\frac14T_{abc}T^{abc} +\frac12T_{abc}T^{cba}-\tau_a \tau^a.
\end{align}$$

These formulas, including the location of the trace, specify the signs. To reduce $B(K)$, metric compatibility gives

$$\begin{align}
K^\rho{}_{\rho\sigma}=\tau_\sigma,\qquad g^{\sigma\nu}K^\rho{}_{\nu\sigma}=-\tau^\rho,\qquad B^\rho(K)=-2\tau^\rho.
\end{align}$$

For the quadratic part, substituting the cyclic solution for $K$ into $C$ gives the two contractions

$$\begin{aligned}
g^{\sigma\nu}K^\rho{}_{\rho\lambda}K^\lambda{}_{\nu\sigma}&=-\tau_\lambda \tau^\lambda, \\
-g^{\sigma\nu}K^\rho{}_{\nu\lambda}K^\lambda{}_{\rho\sigma} &=\frac14T_{abc}T^{abc}+\frac12T_{abc}T^{cba}.
\end{aligned}$$

For example, the first follows immediately by inserting the two trace expressions; the second follows by expanding the two three-term cyclic expressions and using $T_{abc}=-T_{acb}$ to rename their dummy indices. Thus $C(K)=\mathbb T$, and flatness in the distortion identity gives

$$\begin{align}
\boxed{\bar R=-\mathbb T+2\bar\nabla_\mu \tau^\mu.}
\end{align}$$

Accordingly define the teleparallel equivalent of general relativity, at the bulk level, by

$$\begin{align}
I_{\mathrm T}=-\frac1{2\kappa}\int_M\mathrm d^4x\sqrt{-g}\,(\mathbb T+2\Lambda), \qquad I_{\mathrm{EH}}-I_{\mathrm T} =\frac1{\kappa}\int_M\mathrm d^4x\partial_\mu(\sqrt{-g}\tau^\mu),
\end{align}$$

where $I_{\mathrm{EH}}=(2\kappa)^{-1}\int\sqrt{-g}(\bar R-2\Lambda)\mathrm d^4x$. The minus sign in $I_{\mathrm T}$ is essential in this signature and curvature convention. The varied connection is restricted to be flat and metric-compatible, for example by varying the coframe and the flat Lorentz gauge data. Varying an arbitrary unconstrained $\Gamma$ in a different action and only afterwards imposing flatness is not this variational problem.

## 5. Flat Torsionless Connections: the Nonmetricity Action

A symmetric-teleparallel connection obeys $R^\rho{}_{\sigma\mu\nu}(\Gamma)=0$ and $T^\rho{}_{\mu\nu}=0$, but need not preserve the metric. On a sufficiently small patch one can use affine coordinates $\xi^\alpha(x)$, $\alpha=0,1,2,3$, with invertible Jacobian, such that

$$\begin{align}
\Gamma^\rho{}_{\mu\nu} =\frac{\partial x^\rho}{\partial\xi^\alpha} \partial_\mu\partial_\nu\xi^\alpha.
\end{align}$$

In the $\xi$ chart the connection components vanish; this is the coincident gauge. Flatness gives a local parallel frame, and zero torsion makes its dual parallel coframe closed, so locally it consists of coordinate differentials. This argument explains the two assumptions behind the gauge. It says nothing about the existence of a single global affine chart.

Use the two nonmetricity traces

$$\begin{align}
Q_a=g^{bc}Q_{abc},\qquad \widetilde Q_a=g^{bc}Q_{bac},\qquad Q_{abc}=-\nabla_a g_{bc}=Q_{acb}.
\end{align}$$

The disformation trace contractions are

$$\begin{align}
L^\rho{}_{\rho\sigma}=\frac12Q_\sigma,\qquad g^{\sigma\nu}L^\rho{}_{\nu\sigma} =\widetilde Q^\rho-\frac12Q^\rho,\qquad B^\rho(L)=\widetilde Q^\rho-Q^\rho.
\end{align}$$

To see the second one, contract $L_{a\nu\sigma}=(Q_{\nu\sigma a}+Q_{\sigma\nu a}-Q_{a\nu\sigma})/2$ with $g^{\nu\sigma}$. The first two terms each give $\widetilde Q_a$, and the third gives $Q_a$. Likewise the first product in $C(L)$ is $Q_a\widetilde Q^a/2-Q_aQ^a/4$. Expanding its second product yields

$$\begin{align}
-g^{\sigma\nu}L^\rho{}_{\nu\lambda}L^\lambda{}_{\rho\sigma} =\frac14Q_{abc}Q^{abc}-\frac12Q_{abc}Q^{bac}.
\end{align}$$

Define the sign-specific scalar

$$\begin{align}
\mathbb Q:=C(L) =\frac14Q_{abc}Q^{abc}-\frac12Q_{abc}Q^{bac} -\frac14Q_aQ^a+\frac12Q_a\widetilde Q^a.
\end{align}$$

Flatness now gives

$$\begin{align}
\boxed{\bar R=-\mathbb Q+\bar\nabla_\mu(Q^\mu-\widetilde Q^\mu).}
\end{align}$$

In particular, the symbol $\mathbb Q$ is not the nonmetricity tensor and must not be identified with a differently signed scalar from another convention. The corresponding bulk action is

$$\begin{align}
I_{\mathrm Q}=-\frac1{2\kappa}\int_M\mathrm d^4x\sqrt{-g}\,(\mathbb Q+2\Lambda), \qquad I_{\mathrm{EH}}-I_{\mathrm Q} =\frac1{2\kappa}\int_M\mathrm d^4x\partial_\mu[\sqrt{-g}(Q^\mu-\widetilde Q^\mu)].
\end{align}$$

Varying $g$ and the affine-coordinate fields before fixing $\xi^\alpha=x^\alpha$ keeps the flat, torsionless configuration space explicit. For compactly supported variations and matter coupled only to metric/Levi-Civita structures, the affine-coordinate variation of this action is a boundary variation, while the metric equation is Einstein's equation. Gauge fixing the connection in an action with different couplings or nonlinear functions cannot be justified by this linear-action argument.

## 6. A Curved Metric Calibrated Against Both Flat Connections

Take a finite comoving cell of coordinate volume $V_0$ and the spatially flat FLRW metric

$$\begin{align}
\mathrm ds^2=-n(t)^2\mathrm dt^2+a(t)^2\delta_{ij}\mathrm dx^i\mathrm dx^j,\qquad n,a>0,\qquad H_n=\frac{\dot a}{na}.
\end{align}$$

The lapse $n$ is kept until the constraint is obtained. The Levi-Civita scalar is

$$\begin{align}
\bar R=6\left(\frac{\ddot a}{an^2}+\frac{\dot a^2}{a^2n^2}-\frac{\dot a\dot n}{an^3}\right).
\end{align}$$

For the diagonal coframe $e^0=n\mathrm dt$, $e^i=a\mathrm dx^i$ and $\omega=0$, the nonzero Weitzenböck components are

$$\begin{align}
\Gamma^0{}_{00}=\dot n/n,\qquad \Gamma^i{}_{0j}=(\dot a/a)\delta^i_j.
\end{align}$$

There is no $\Gamma^i{}_{j0}$ in this gauge. Directly $R(\Gamma)=0$, $Q_{\lambda\mu\nu}=0$, $T^i{}_{0j}=(\dot a/a)\delta^i_j$, and

$$\begin{align}
\tau_0=-3\dot a/a,\qquad \tau^0=3\dot a/(an^2),\qquad \mathbb T=6H_n^2.
\end{align}$$

For a *different* connection, choose the coincident gauge $\Gamma^\rho{}_{\mu\nu}=0$ in the same displayed coordinate chart. Then $R(\Gamma)=T^\rho{}_{\mu\nu}=0$, but

$$\begin{align}
Q_{000}=2n\dot n,\qquad Q_{0ij}=-2a\dot a\delta_{ij},\qquad Q_0=-2\dot n/n-6\dot a/a,\qquad \widetilde Q_0=-2\dot n/n.
\end{align}$$

Substitution into the four quadratic contractions gives $\mathbb Q=6H_n^2$; the $\dot n$ dependence cancels. In the two cases respectively,

$$\begin{align}
B^0(K)=-2\tau^0=-\frac{6\dot a}{an^2},\qquad B^0(L)=\widetilde Q^0-Q^0=-\frac{6\dot a}{an^2}.
\end{align}$$

Their equality here is a property of this homogeneous ansatz, not an equality of the two connections or their tensors. Since $\sqrt{-g}=na^3$, both distortion identities reduce to

$$\begin{align}
\bar R=-6H_n^2+\frac1{na^3}\frac{\mathrm d}{\mathrm dt}\left(\frac{6a^2\dot a}{n}\right).
\end{align}$$

In particular, for $n=1$, $a=(t/t_0)^2$, on $0<t_1<t_2$,

$$\begin{align}
(\bar R,\mathbb T,\mathbb Q,\bar\nabla_\mu B^\mu) =\left(\frac{36}{t^2},\frac{24}{t^2},\frac{24}{t^2},-\frac{60}{t^2}\right).
\end{align}$$

The metric curvature and both bulk scalars are genuinely nonzero. The finite gravitational action difference is

$$\begin{align}
I_{\mathrm{EH}}-I_{\mathrm T} =I_{\mathrm{EH}}-I_{\mathrm Q} =\frac{6V_0}{\kappa t_0^6}(t_2^5-t_1^5).
\end{align}$$

The cosmological terms cancel in these differences. This metric is an off-shell calibration unless matter and its equations are supplied; it is not asserted to solve vacuum gravity.

There is also a dynamical consequence of the comparison. Per unit $V_0$, integrating the Einstein–Hilbert second-derivative term by parts gives the same reduced bulk Lagrangian as either flat-connection action:

$$\begin{align}
L_{\mathrm{EH}} =-\frac{3a\dot a^2}{\kappa n}-\frac{\Lambda na^3}{\kappa} +\frac{\mathrm d}{\mathrm dt}\left(\frac{3a^2\dot a}{\kappa n}\right).
\end{align}$$

Define the homogeneous matter energy density by $\delta I_m/\delta n=-V_0a^3\rho$, consistently with the Hilbert stress tensor. Variation of the reduced bulk expression with respect to $n$, before setting $n=1$, gives

$$\begin{align}
0=\frac{a^3}{\kappa}(3H_n^2-\Lambda)-a^3\rho,\qquad 3H_n^2=\Lambda+\kappa\rho.
\end{align}$$

Thus the action normalization fixes the Friedmann constraint. Setting $n=1$ before varying would remove the variable that enforces this constraint; a gauge choice does not replace its equation.

## 7. Local Gauges, Global Data and the Boundary Problem

Flatness is a local integrability condition, not a guarantee of trivial global holonomy. For a concrete four-dimensional example let $M=\mathbb R_t\times S^1_x\times\mathbb R^2$, with $x$ of period $L$, the flat metric $-\mathrm dt^2+\mathrm dx^2+\mathrm dy^2+\mathrm dz^2$, and global coframe $(\mathrm dt,\mathrm dx,\mathrm dy,\mathrm dz)$. Choose the Lorentz connection $\omega^0{}_1=\omega^1{}_0=b\mathrm dx$, with real constant $b$, all other entries zero. Its curvature vanishes: $\mathrm d\omega=0$ and its sole one-form wedges with itself to zero. It is metric-compatible, and $T^1=-b\mathrm dt\wedge\mathrm dx$ is nonzero for $b\ne0$.

Parallel transport once around the circle has the time–$x$ block

$$
\mathrm{Hol}_x=\exp(-bLJ_{01})
=\begin{pmatrix}
\cosh(bL)&-\sinh(bL)\\
-\sinh(bL)&\cosh(bL)
\end{pmatrix},
\qquad
J_{01}=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
$$

It preserves the Lorentz metric but is not the identity for real $bL\ne0$. No single-valued Lorentz gauge can set this connection to zero around the whole circle. The use of $\omega=0$ on local patches remains legitimate. Similarly, a flat torsionless connection admits local coincident charts, while affine holonomy, topology and failure of a developing map to be injective may obstruct one global chart. Even a flat circle with local zero connection has no single global real-valued angular coordinate. Global connection sectors must therefore be specified rather than erased by local formulas.

For boundary variations, write a Lagrangian four-form as

$$\begin{align}
\delta L=E_I\delta\phi^I+\mathrm d\Theta(\phi,\delta\phi).
\end{align}$$

The boundary term $\Theta$ determines which variations are admissible unless a boundary action is added. For example, the Euler term in the MM action contributes

$$\begin{align}
\Theta_{\mathrm{Euler}} =-\frac{\sigma\ell^2}{4\kappa} \epsilon_{abcd}\delta\omega^{ab}\wedge R^{cd}.
\end{align}$$

Its vanishing bulk equation does not make this potential vanish. Boundary data fixing the connection, or an explicitly chosen transgression/boundary action, deal with a different question from its bulk variation.

For the metric Einstein–Hilbert action, fixing only the induced metric on a smooth non-null boundary is implemented by the Gibbons–Hawking–York term

$$\begin{align}
I_{\mathrm{GHY}}=\frac1{\kappa}\int_{\partial M}\mathrm d^3x\,\varepsilon\sqrt{|h|}\mathcal K,\qquad \varepsilon=n_\mu n^\mu=\pm1,\qquad \mathcal K=h^{\mu\nu}\bar\nabla_\mu n_\nu,
\end{align}$$

where $n^\mu$ is the outward unit normal; it is not the lapse used above. Null boundaries and joints require additional prescriptions and are not covered by this formula. One way to match a flat-connection action to this metric Dirichlet problem is to restore exactly its displayed divergence and then add $I_{\mathrm{GHY}}$. Thus use $I_{\mathrm T}+\kappa^{-1}\int\partial_\mu(\sqrt{-g}\tau^\mu)\mathrm d^4x+I_{\mathrm{GHY}}$, or the corresponding $\mathrm Q$ expression with its factor $1/(2\kappa)$. This is an explicit matching prescription; simply dropping the divergences defines neither those boundary actions nor their allowed boundary variations.

The same distinction appears in covariant phase space. The symplectic current is $\omega_{\mathrm{IW}}(\delta_1,\delta_2)=\delta_1\Theta(\delta_2)-\delta_2\Theta(\delta_1)$. If a globally defined covariant three-form $\mu$ changes $L$ to $L+\mathrm d\mu$, a compatible choice is $\Theta'=\Theta+\delta\mu$. This leaves that current unchanged. Here $\Theta$ is the local three-form; on the same oriented hypersurface the canonical convention of [AST-11](<AST-11.md>) is $\Omega_\Sigma=-\int_\Sigma\omega_{\mathrm{IW}}$. For a field-independent vector field $\xi$, the corresponding Noether charge may be chosen as $Q'_\xi=Q_\xi+i_\xi\mu$, and consequently

$$\begin{align}
\delta Q'_\xi-i_\xi\Theta' =\delta Q_\xi-i_\xi\Theta.
\end{align}$$

This conditional cancellation is useful but has hypotheses: the same field-space and boundary conditions, a matched potential prescription, a covariant global $\mu$, and no additional corner ambiguity. A shift $\Theta\to\Theta+\mathrm dY$, field-dependent generators, charge integration constants and boundary counterterms require separate treatment. The Euler form's locally defined primitive must not silently be substituted for such a global covariant $\mu$. Bulk equality up to a divergence alone is not a calculation establishing equality of boundary charges.

Finally, the bulk equivalence assumed the *same matter theory*. Metric scalar matter and other matter actions written with the metric/Levi-Civita connection can be carried along unchanged. If matter instead couples to the independent affine connection, its connection variation supplies spin or more general hypermomentum currents. The resulting connection equation need not be the one used here. The choice of spinor connection, in particular, is part of a matter model rather than an instruction to replace every Levi-Civita derivative by either flat connection.

## 8. What the Action Identities Do and Do Not Identify

The three linear bulk actions agree in their Einstein metric equations on the stated restricted configuration spaces with the same metric-coupled matter, and with compactly supported variations or matched boundary prescriptions. Their geometric fields are not equal: the Levi-Civita connection is generally curved, the teleparallel connection is flat and metric-compatible, and the symmetric-teleparallel connection is flat and torsionless. The FLRW calculation exhibits these differences on one and the same curved metric.

Nonlinear functions do not inherit this equivalence. If $\bar R=-\mathbb T+B$ with $B=2\bar\nabla_\mu \tau^\mu$, then

$$\begin{align}
\bar R^2=\mathbb T^2-2\mathbb T B+B^2.
\end{align}$$

For the power-law example in section 6, $B=60/t^2$, so $\bar R^2-\mathbb T^2=720/t^4$, not zero. More generally integrating a term $f'(-\mathbb T)\bar\nabla_\mu \tau^\mu$ by parts differentiates $f'$ and leaves a bulk term when $f''\ne0$. The same obstruction applies to $\mathbb Q$. A numerical nonzero density is not by itself a universal non-divergence proof; the differentiated coefficient explains the generic failure of the linear-action argument. Thus generic $f(R)$, $f(T)$ and $f(Q)$ models require their own variations, constraints and matter definitions.

Likewise, changing variables in a quantum functional integral requires a measure, constraints, gauge fixing and its determinants, boundary states and a prescription for global sectors. No such data were fixed here. Cartan packaging and the two distortion identities establish useful classical constructions, not a quantum-gravity model, a Standard Model embedding, a generation count or uniqueness of a fundamental action.

### Further Study

MacDowell and Mansouri, “Unified geometric theory of gravity and supergravity,” *Physical Review Letters* **38** (1977) 739–742, is the historical curvature-squared construction. Wise, “MacDowell–Mansouri gravity and Cartan geometry,” *Classical and Quantum Gravity* **27** (2010) 155010, develops its Cartan-geometric interpretation. Aldrovandi and Pereira, *Teleparallel Gravity* (Springer, 2013), and Beltrán Jiménez, Heisenberg and Koivisto, “Coincident General Relativity,” *Physical Review D* **98** (2018) 044048, provide further flat-connection formulations. Their signs must be translated to the explicit definitions here rather than inferred from the names of their scalars. Boundary phase-space ambiguities are treated by Iyer and Wald, *Physical Review D* **50** (1994) 846–864. These references are further reading, not substitutes for the action expansion and trace derivations above.
