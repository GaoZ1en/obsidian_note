# Supplied-proof addendum: repairing the localization gauge fermion

**Verdict:** the proposed replacement **does repair positivity, Q-closedness, and the quadratic determinant cancellation** at the finite-dimensional geometric/formal loop-space level. It also works with the real rotation twist appropriate to arbitrary \(\tau_1\), provided the twist is treated equivariantly. This does **not** supply the missing infinite-dimensional, anomaly-free regulator or control of field-space boundaries, so it does not by itself turn the paper's exactness claim into an unconditional theorem.

This is a **separate audit of a supplied candidate repair**, proposed by the parent reviewer after the independent source audit. It is not presented as an argument printed in Cotler–Jensen, nor as an independent rediscovery of that proposal. The [main source-audit report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/source-audit-report.md>) records the original evidence and scope. Source conventions were visually checked in [v3, PDF 46–47 / pp.45–46](<https://arxiv.org/pdf/1808.03263v3#page=46>), equations (5.38)–(5.46).

## 1. Setup and complete variation, including derivative terms

Let \(M\) be a real symplectic phase space with a positive Riemannian metric \(g\), Hamiltonian vector field \(v\), and
\[
\mathcal L_vg=0.
\]
On a real loop \(x(y)\) and its Grassmann-odd tangent vector \(\psi(y)\), use the source's algebra
\[
Qx^i=\psi^i,\qquad Q\psi^i=v^i-i\dot x^i\equiv V^i,
\qquad Q^2=\delta_v-i\partial_y,
\quad Q\dot x^i=\dot\psi^i.
\]
In particular,
\[
Q^2\psi^i=(\partial_jv^i)\psi^j-i\dot\psi^i.
\]
Define the proposed gauge fermion, distinct from the paper's printed choice,
\[
\boxed{\Psi_+=\int dy\,g_{ij}(x)W^i\psi^j,\qquad W^i=v^i+i\dot x^i.}
\]
Here \(W\) is the complex conjugate of \(V\) on real bosonic loops, but no conjugation of \(Q\) is being assumed. Direct use of the graded Leibniz rule gives
\[
\begin{aligned}
Q\Psi_+=\int dy\,\big[&g_{ij}W^iV^j
+(\partial_kg_{ij})\psi^kW^i\psi^j\\
&+g_{ij}\big((\partial_kv^i)\psi^k+i\dot\psi^i\big)\psi^j\big].
\end{aligned}
\]
The metric derivative term must not be dropped away from normal coordinates. With the Levi–Civita connection it combines with the other fermionic terms into
\[
\boxed{Q\Psi_+=\int dy\left[
 g(v,v)+g(\dot x,\dot x)
 +g_{ij}\left((\nabla_kv^i)\psi^k+iD_y\psi^i\right)\psi^j\right].}
\]
To check this rewriting, substitute \(\partial_kg_{ij}=\Gamma^\ell{}_{ki}g_{\ell j}+\Gamma^\ell{}_{kj}g_{i\ell}\). The second connection term vanishes by symmetry in \(k,j\) against \(\psi^k\psi^j\); the first completes \(\nabla v\) and \(D_y\psi\). No extra quartic-fermion term occurs in this single Q variation.

Because \(g\) is real and symmetric,
\[
g(W,V)=g(v+i\dot x,v-i\dot x)=g(v,v)+g(\dot x,\dot x)\ge0.
\]
Its zero locus on real loops is \(v=0\), \(\dot x=0\), meaning constant points in the Hamiltonian fixed-point set. If the fixed-point set is not discrete, zero modes along it remain; one cannot then replace it by a sum over isolated Gaussian saddles.

## 2. Q-closedness: the needed condition is exactly invariance plus boundary gluing

Acting with \(Q^2\) on the scalar gauge-fermion density gives
\[
Q^2\Psi_+=\int dy\left[
(\mathcal L_vg)_{ij}W^i\psi^j-i\partial_y(g_{ij}W^i\psi^j)\right].
\]
Thus \(Q^2\Psi_+=0\) for periodic loops if \(\mathcal L_vg=0\). The total derivative has the minus sign dictated by the displayed source algebra \(Q^2=\delta_v-i\partial_y\); its sign is immaterial once its boundary contribution vanishes. The dependence of \(W\) on \(\dot x\) creates no obstruction: under \(\delta_v\), \(\dot x\) transforms as \((\partial v)\dot x\), and \(v\) transforms as \((\partial v)v\), so \(W\) transforms in the required tangent representation.

It follows that \(S'_E+tQ\Psi_+\) remains Q-invariant if the original \(S'_E\) is. Concluding that its partition function is independent of \(t\) still needs the Ward identity for the actual measure and integration cycle. Positivity of this repaired bosonic term does not establish that identity by itself.

### Twisted loops

Let the boundary condition be
\[
x(\beta)=R\,x(0),\qquad
\psi(\beta)=D R\,\psi(0),
\]
where \(R\) is a real symplectic isometry satisfying \(R_*v=v\). Then \(W(\beta)=D R\,W(0)\), and the scalar \(g(W,\psi)\) has identical endpoint values. The same total derivative therefore vanishes. Q also preserves this boundary condition; the apparent second derivative of \(R\) in varying \(D R\,\psi\) contracts a symmetric pair with \(\psi^j\psi^k\) and vanishes. If \(R\) is the flow of \(v\), it automatically preserves every fixed point of \(v\). More general commuting twists would restrict the localization locus to fixed points also fixed by \(R\).

These statements hold without making \(v\) complex. Rewriting a real twist as a complex chemical potential in a periodic-coordinate description may hide positivity; retaining the real twisted-loop description avoids that unnecessary problem.

## 3. Quadratic sign check and determinant cancellation

At an isolated fixed point, use orthonormal normal coordinates and write
\[
v=A\xi+O(\xi^2),\qquad A^T=-A,
\]
where antisymmetry follows from \(\mathcal L_vg=0\). To quadratic order,
\[
(Q\Psi_+)_{\rm bos}=\int dy\,[\dot\xi^T\dot\xi+\xi^TA^TA\xi]
=\int dy\,\xi^T M\xi,
\qquad M=-\partial_y^2-A^2.
\]
The fermionic expression, keeping its ordering, is
\[
\int dy\,(A\psi+i\dot\psi)^T\psi
=\int dy\,\psi^T K\psi,
\qquad K=-A-i\partial_y.
\]
The kinetic sign follows from \(\dot\psi^T\psi=-\psi^T\dot\psi\), not from treating Grassmann variables as commuting vectors. The key factorization is
\[
\boxed{M=(A-i\partial_y)(-A-i\partial_y)=(A-i\partial_y)K.}
\]
With an invariant paired-mode cutoff, the Gaussian ratio is therefore, up to consistently fixed constant factors and Pfaffian orientation,
\[
\frac{\operatorname{Pf}K}{\sqrt{\det M}}
\;\longrightarrow\;[\det(A-i\partial_y)]^{-1/2}.
\]
This is the same first-order Hamiltonian-flow operator that occurs in the original one-loop phase-space integral. In the paper's inverse-symplectic convention, for constant symplectic matrix \(\Omega\), the Hessian is \(H''=-\Omega A\). The original bosonic quadratic operator is
\[
H''+i\Omega\partial_y=-\Omega(A-i\partial_y).
\]
The symplectic measure removes the corresponding \(\Omega\) factor. Thus the repair changes the localizing presentation, not the spectral factor responsible for the character.

A reproducible two-dimensional rotation test uses \(A=\omega J\), \(J=\left(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\right)\), and \(\partial_y\to i\nu\). Actual Wolfram 14.3 results are
\[
M=(\nu^2+\omega^2)I,\quad
\det(A+\nu I)=\det(-A+\nu I)=\nu^2+\omega^2,
\]
with zero residuals for both the factorization and the original Hessian relation. See [CAS input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/localizer-repair-checks.wl>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/localizer-repair-checks-output.txt>). No kernel messages occurred.

This check controls the weak point involving derivative/Grassmann signs. It is not a proof that a finite nonlinear orbit truncation preserving Q exists. Infinite-dimensional determinant identities also require a common regularization and consistent phases; formal factorization alone does not license changing those independently.

## 4. Application to the orbit rotation and the general torus

For the chiral action in the source, with \(B=48\pi b_0/C\), the quadratic Lorentzian Euler–Lagrange equation is
\[
(\partial_\theta^3-B\partial_\theta)(\dot\epsilon+\epsilon')=0.
\]
After quotienting its kernel, physical modes therefore obey \(\partial_+\epsilon=0\): the Hamiltonian rotation acts as \(v=-\partial_\theta\) on tangent fluctuations. For the vacuum \(B=-1\), the removed kernel is exactly \(n=0,\pm1\); for \(B>-1\), it is \(n=0\). This sign matters. Set
\[
\beta=2\pi\tau_2>0,\qquad \alpha=2\pi\tau_1.
\]
The source's boundary condition is
\[
\phi(\theta,y+\beta)=\phi(\theta-\alpha,y),
\]
which is precisely the real rotation twist generated by \(v\). For a spatial mode \(e^{in\theta}\),
\[
A\to-in,\qquad
\nu_{m,n}=\frac{2\pi m-n\alpha}{\beta},\qquad
A-i\partial_y\to\nu_{m,n}-in
=\frac{m-n\tau}{\tau_2}.
\]
The final equality was also checked by CAS. It reproduces the factor \(m-n\tau\) of (5.19), with the correct \(\tau\), not \(\bar\tau\). The repaired bosonic eigenvalue is the manifestly positive \(\nu_{m,n}^2+n^2\). Quotienting first removes \(n=0,\pm1\) on the PSL vacuum orbit, or only \(n=0\) for an ordinary orbit; these should not be left as spurious zero modes of a supposedly positive metric.

The source invokes an invariant Kähler metric on the stable orbit, so an invariant positive real metric is available at the formal geometric level. Subject to using that metric on the reduced phase space, the proposed gauge fermion therefore applies to its rotation Hamiltonian and to the real twist for arbitrary \(\tau_1\).

A constant reduced point need not have a y-independent \(\phi\) representative. In particular,
\[
\phi_0=\theta-\frac{\tau_1}{\tau_2}y
\]
has \(v\) and \(\dot\phi_0\) entirely in the stabilizer direction; both vanish after projection to the orbit tangent space. It is therefore compatible with the repaired zero locus and the source's twisted boundary condition. The classical weight remains the source's \(e^{-S_0}=q^{-C/24}\). One must not discard the twist lift/boundary phase merely because the *reduced point* is constant; doing so would incorrectly lose its \(\tau_1\) dependence. This addendum checks the localizer and fluctuation spectrum, not a separate global construction of the prequantum line bundle and its rotation lift.

## 5. What is repaired, and what remains open

**Repaired:** the specific real-contour positivity defect of the printed (5.44); Q-closedness including metric and time-derivative terms; compatibility with periodic or equivariantly twisted boundary conditions; and the formal quadratic cancellation to the correct \(m-n\tau\) operator.

**Still required for an exact theorem:** an anomaly-free invariant measure/regulator on the infinite-dimensional quotient; control of noncompact field-space boundary terms and integration cycles as \(t\) varies; global treatment of stabilizers/charts and the twist lift; and consistent determinant/Pfaffian phases. The source's quoted measure theorem and Kähler geometry may be relevant inputs, but this supplied repair does not prove all of them.

**Final interpretation:** the printed positivity claim is wrong on real loops, but it is locally repairable. It must not be used as evidence against the displayed one-loop character or as a no-go theorem for localization. Conversely, the existence of this repair must not be silently attributed to the printed paper or promoted to a complete nonperturbative proof.
