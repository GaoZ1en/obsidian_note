# Independent nonlinear Palatini auxiliary/BV/density calculation

## Result and scope

The completed classical auxiliary split is exact:

\[
 I_P[e,\omega]=I_{\rm met}[g(e)]
 +a\int_M\operatorname{vol}_e\big[(\operatorname{tr}U)^2-\operatorname{tr}(U^2)\big].
\tag{1}
\]

The bulk total derivative and the connection-dependent wall flux cancel each other; neither may be discarded separately. The auxiliary quadratic form is nondegenerate, with signature \((4,5)\), not positive definite.

There is an exact local classical BV elimination in **geometric diffeomorphism plus Lorentz coordinates**: the contorsion transforms homogeneously, and the auxiliary section is \(U=U^*=0\), even at nonzero retained antifields. The field-dependent CS ghost map alone does not give these geometric coordinates. Its off-shell discrepancy, its cotangent lift, and an antifield-quadratic canonical correction are explicitly determined below through cubic perturbative order.

There is **no measure-independent statement that the nonlinear Jacobian is one**. A finite, background-normalized pointwise calculation gives

\[
 J_{\rm aux}=r^{-3/2},\qquad
 J_{\rm joint}=r^{-7/2},\qquad r=\frac{\operatorname{vol}_e}{\operatorname{vol}_{\bar e}}
 =\sqrt{\det(\bar g^{-1}g)}.
\tag{2}
\]

The first factor is the auxiliary Gaussian alone with the original frozen-background connection \(L^2\) measure. The second includes coframe/rotation and ghost-density conversion, relative to **frozen-background metric and diffeomorphism-ghost measures**, in the precisely specified finite model below. It is not a full gauge-fixed anomaly. Relative instead to the natural **dynamical-metric** geometric measure, the same residual density is exactly the target density, so the finite local ratio is one. These are different statements, not contradictory calculations.

The coordinate Berezinian of a full odd-cotangent lift is the **square** of the base super-Jacobian. A BV semidensity transforms with the base super-Jacobian. A gauge-fixing Lagrangian measure and an auxiliary Gaussian determinant are further, distinct objects. The cubic non-cotangent rectification also has an antifield-dependent measure correction for the inherited density, despite being volume-preserving for flat Darboux coordinates.

This report was independently derived without reading parent synthesis or reviewer candidates. Only the root rules, the required CPS convention note, skill instructions, and this report's own generated evidence were read. A later parent clarification fixed the original norms to the torsion-free background; it did not supply a candidate derivation. No original/source note was edited.

## Evidence

- Exact component algebra, quadratic Hessian, geometric Gram determinants, polar Jacobian, and cubic density series: [finite_checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/finite_checks.wl>), with [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/finite_checks.actual.txt>).
- Exact Grassmann-polynomial checks of all field and ghost-map components, the cubic antibracket, and the weighted BV-Laplacian correction: [grassmann_checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/grassmann_checks.wl>), with [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/grassmann_checks.actual.txt>).
- Antifield-source/shift identity, stationary equation, saddle substitution, and sign counterexamples: [auxiliary_source_checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/auxiliary_source_checks.wl>), with [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-bv-independent-20261031-065603/auxiliary_source_checks.actual.txt>).

All three inputs are self-contained Wolfram Language, need no packages, perform no shell operations, and write only their corresponding generated actual-output file in this unique evidence directory. They were actually executed through the Wolfram MCP. All outer kernel message lists were empty; every displayed Boolean check passed. Mathematica's generated names such as `a$8553` in the first output are scoped symbols, not additional assumptions. No second independent reviewer could be spawned at the available delegation depth; this is itself the independent calculation supplied to the parent.

## 1. Conventions and boundary contract

Take an oriented nondegenerate Euclidean coframe \(e^a\), \(a=1,2,3\), internal metric \(\delta_{ab}\), \(\epsilon_{123}=1\), and positive coordinate density \(E=\det(e^a{}_{\mu})\). Thus \(\operatorname{vol}_e=e^1\wedge e^2\wedge e^3=E\,d^3x\). Set \(\ell=1\), \(a=(16\pi G)^{-1}>0\), and

\[
 R^{ab}=d\omega^{ab}+\omega^a{}_c\wedge\omega^{cb},\qquad
 \omega^{ab}=-\epsilon^{ab}{}_c\omega^c.
\]

The outward unit normal is constrained by \(n^an_a=1\), \(\iota^*(n_ae^a)=0\), and is the normal determined by the coframe and fixed wall embedding, not a new independent BV field. The induced oriented area form is
\(\epsilon_\partial=\tfrac12\epsilon_{abc}n^ae^b\wedge e^c\).
The wall is smooth and closed, with periodic thermal time and no joints.

The full action is

\[
 I_P=-a\int_M\epsilon_{abc}\left(e^a\wedge R^{bc}+\frac13e^a\wedge e^b\wedge e^c\right)
 -2a\int_{\partial M}\epsilon_{abc}n^ae^b\wedge D_\omega n^c
 +2a\int_{\partial M}\epsilon_\partial.
\tag{3}
\]

The required [formalism convention note](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>) was read before the boundary calculation. Its retain-the-completed-action convention is followed. Its Lorentzian Cauchy-surface signs are not imported into this Euclidean wall calculation. No CPS charge or full boundary BFV theorem is asserted here.

For the BV integrations by parts and canonical adjoints below, ghosts and the test antifields/variations are compactly supported in the interior. This is deliberately narrower than the full Brown–Henneaux/proper-\(H^1\) boundary domain.

## 2. Exact completed auxiliary split

Write

\[
 \omega^{ab}=\bar\omega(e)^{ab}+K^{ab},\qquad
 K^{ab}=\epsilon^{ab}{}_cU^c{}_de^d,
\tag{4}
\]

where \(D_{\bar\omega}e=0\). Since

\[
 R(\bar\omega+K)=R(\bar\omega)+D_{\bar\omega}K+K\wedge K,
 \qquad d(\epsilon_{abc}e^a\wedge K^{bc})
 =-\epsilon_{abc}e^a\wedge D_{\bar\omega}K^{bc},
\]

the bulk difference is

\[
 I_{P,\rm bulk}[e,\bar\omega+K]-I_{P,\rm bulk}[e,\bar\omega]
 =a\int_{\partial M}\epsilon_{abc}e^a\wedge K^{bc}
 -a\int_M\epsilon_{abc}e^a\wedge K^b{}_d\wedge K^{dc}.
\tag{5}
\]

The wall difference is

\[
 \Delta I_{P,\rm wall}=-2a\int_{\partial M}\epsilon_{abc}n^ae^b\wedge K^c{}_dn^d.
\tag{6}
\]

On the wall the tangency constraint gives the identity

\[
 \iota^*(\epsilon_{abc}e^a\wedge K^{bc})
 =2\epsilon_{abc}n^ae^b\wedge K^c{}_dn^d.
\tag{7}
\]

For example, at an adapted point \(n=(0,0,1)\), \(\iota^*e^3=0\), the two fluxes divided by \(a\) are respectively
\(2(U_{12}-U_{21})e^1\wedge e^2\) and its negative. They are generically individually nonzero. Taking \(U_{12}=1,U_{21}=0\) is a direct counterexample to dropping either flux in isolation.

The remaining bulk contraction is

\[
 -\epsilon_{abc}e^a\wedge K^b{}_d\wedge K^{dc}
 =\big[(\operatorname{tr}U)^2-\operatorname{tr}(U^2)\big]\operatorname{vol}_e.
\tag{8}
\]

At \(K=0\), \(\epsilon eR=R[g]\operatorname{vol}_e\) and
\(\epsilon n eD_{\bar\omega}n=k\epsilon_\partial\), where \(k\) is the outward extrinsic-curvature trace. Therefore

\[
 I_{\rm met}[g]=-a\int_M(R+2)\operatorname{vol}_g
 -2a\int_{\partial M}(k-1)\epsilon_\partial,
\tag{9}
\]

and (1) follows, without a leftover auxiliary boundary term.

Define the Frobenius-self-adjoint operator

\[
 L(U)=\operatorname{tr}(U)\mathbf1-U^T,\qquad
 L^{-1}(Y)=\tfrac12\operatorname{tr}(Y)\mathbf1-Y^T.
\tag{10}
\]

Then \(q(U)=\langle U,LU\rangle=(\operatorname{tr}U)^2-\operatorname{tr}(U^2)\). With
\(U=u\mathbf1/\sqrt3+S+A\), \(S^T=S,\operatorname{tr}S=0,A^T=-A\),

\[
 q(U)=2u^2-\|S\|^2+\|A\|^2.
\tag{11}
\]

Thus the Hessian per unit physical volume has eigenvalues
\(4a\) once, \(-2a\) five times, and \(2a\) three times;
\(\det(2aL)=-1024a^9\). The only classical solution is \(U=0\), but the real Euclidean Gaussian diverges: \(U=\operatorname{diag}(t,-t,0)\) gives \(q=-2t^2\). A steepest-descent contour, or an equivalent analytic-continuation prescription, is indispensable. Its phase is not selected by the classical split.

## 3. Off-shell gauge dictionary: what the ghost map does and does not do

For internal-vector-valued forms use
\((v\times w)^a=\epsilon^a{}_{bc}v^b\wedge w^c\), with the usual Grassmann signs for ghosts. Define

\[
 F=d\omega+\tfrac12\omega\times\omega,\quad
 T=de+\omega\times e,\quad
 C=F-\tfrac12 e\times e.
\tag{12}
\]

The bulk action is \(2a\int e\cdot F-(a/3)\int e\cdot(e\times e)\), and its interior Euler derivatives are
\(\delta I=2a\int(\delta e\cdot C+\delta\omega\cdot T)\).
A torsion-free AdS background has \(T=C=0\).

Choose the left BRST differential in the CS/Poincare-like basis as

\[
 \begin{aligned}
 Qe&=D\tau+e\times\rho,& Q\omega&=D\rho-e\times\tau,\\
 Q\tau&=-\rho\times\tau,& Q\rho&=-\tfrac12\rho\times\rho+\tfrac12\tau\times\tau.
 \end{aligned}
\tag{13}
\]

The specified invertible ghost map is

\[
 \rho^a=\lambda^a+\omega^a_\mu\xi^\mu,\qquad
 \tau^a=e^a_\mu\xi^\mu,\qquad
 \xi^\mu=e_a{}^\mu\tau^a.
\tag{14}
\]

Its exact pushforward BRST differential is

\[
 \begin{aligned}
 Qe_\mu^a&=(\mathcal L_\xi e)_\mu^a+(e_\mu\times\lambda)^a-\xi^\nu T^a_{\nu\mu},\\
 Q\omega_\mu^a&=(\mathcal L_\xi\omega)_\mu^a+(D_\mu\lambda)^a-\xi^\nu C^a_{\nu\mu},\\
 Q\xi^\mu&=\xi^\nu\partial_\nu\xi^\mu
       +\tfrac12e_a{}^\mu\xi^\nu\xi^\rho T^a_{\nu\rho},\\
 Q\lambda^a&=\xi^\nu\partial_\nu\lambda^a-\tfrac12(\lambda\times\lambda)^a
       +\tfrac12\xi^\nu\xi^\rho
        \left(C^a_{\nu\rho}-\omega^a_\mu e_b{}^\mu T^b_{\nu\rho}\right).
 \end{aligned}
\tag{15}
\]

These are exact, not merely an on-shell analogy. The Grassmann CAS checks every component with \(e^a_\mu=\delta^a_\mu\) at one point but arbitrary independent first jets of \(e,\omega\). This frame choice uses no equation of motion. General coframes follow by the invertible pointwise coordinate/frame change. The first two lines also follow immediately from Cartan's identity; the last two are necessary consequences of applying \(Q\) to (14).

The genuinely geometric differential \(Q_g\) is obtained by deleting the displayed \(T,C\) corrections from all four lines. In particular \(Q_ge=\mathcal L_\xi e-\Lambda e\), \(Q_g\omega=\mathcal L_\xi\omega+D\lambda\), where
\(\Lambda^a{}_b=-\epsilon^a{}_{bc}\lambda^c\).
Thus the ghost map alone agrees with geometric gauge transformations only on shell.

## 4. Antifield convention, cotangent lift, and cubic rectification

Use coordinate-density antifields \(e_a^{*\mu},\omega_a^{*\mu}\) (odd), and \(\rho_a^*,\tau_a^*,\lambda_a^*,\xi_\mu^*\) (even). To make the signs unambiguous, take

\[
 (A,B)=A\frac{\overleftarrow\delta}{\delta q^A}
       \frac{\overrightarrow\delta B}{\delta q_A^*}
      -A\frac{\overleftarrow\delta}{\delta q_A^*}
       \frac{\overrightarrow\delta B}{\delta q^A},\qquad Q=(S,\cdot).
\tag{16}
\]

For a left BRST differential the minimal Hamiltonian in this convention is
\(S=I+\sum_A(-1)^{\epsilon(q^A)}q_A^*Qq^A\): **plus** the even-field antifield terms and **minus** the odd-ghost antifield terms. This avoids silently mixing left and right BRST conventions. In particular the field-antifield terms used below have their displayed signs.

The odd cotangent lift of (14) is

\[
 \begin{aligned}
 \widehat e_a^{*\mu}&=e_{\rm old,a}^{*\mu}+\tau_a^*\xi^\mu,&
 \widehat\omega_a^{*\mu}&=\omega_{\rm old,a}^{*\mu}+\rho_a^*\xi^\mu,\\
 \lambda_a^*&=\rho_a^*,&
 \xi_\mu^*&=\omega_\mu^a\rho_a^*+e_\mu^a\tau_a^*.
 \end{aligned}
\tag{17}
\]

Equivalently \(\tau_a^*=e_a{}^\mu(\xi_\mu^*-\omega_\mu^b\lambda_b^*)\), followed by the inverse shifts in the first line. The graded signs in (17) are important: they agree with the canonical antibracket (16) and with substitution in the signed minimal Hamiltonian. Using an unsigned ghost-antifield pairing while retaining the left differential would incorrectly reverse these shifts.

Count each fluctuation, ghost, and antifield as order one around a solution \(\bar T=\bar C=0\). The discrepancy between the mapped CS and geometric master actions at cubic order is

\[
 \Delta S_3=-\int d^3x\,
   \left[e_a^{*\mu}\xi^\nu T^{a(1)}_{\nu\mu}
        +\omega_a^{*\mu}\xi^\nu C^{a(1)}_{\nu\mu}\right].
\tag{18}
\]

The extra ghost-antifield terms from the last two lines of (15) start at total order four on this background. With the coordinate Levi-Civita symbol and
\(E_e^{\mu a}=a\epsilon^{\mu\nu\rho}C^a_{\nu\rho}\),
\(E_\omega^{\mu a}=a\epsilon^{\mu\nu\rho}T^a_{\nu\rho}\), define

\[
 F_3=-\frac1{2a}\int d^3x\,
      \epsilon_{\nu\mu\sigma}e_a^{*\mu}\xi^\nu\omega_a^{*\sigma}.
\tag{19}
\]

It has ghost number \(-1\) and odd parity. Direct left Grassmann differentiation gives

\[
 (I,F_3)=-\int d^3x\,
 \left[e_a^{*\mu}\xi^\nu T^a_{\nu\mu}
      +\omega_a^{*\mu}\xi^\nu C^a_{\nu\mu}\right].
\tag{20}
\]

The antibracket sign and all Grassmann re-orderings were checked exactly. Hence the canonical action transformation
\(S\mapsto S-(S,F_3)+\cdots\) removes (18). This supplies the explicit cubic BV transport, not merely an on-shell replacement of ghosts.

No all-order CS-to-geometric canonical generator is claimed here. Standard local BV uniqueness can be invoked only with its regularity/properness hypotheses; its explicit higher-antifield completion has not been computed in this report. The exact geometric-BV auxiliary theorem in the next section does not depend on claiming such an uncomputed map.

## 5. Exact homogeneous contorsion and auxiliary equations at antifields

Naturality and uniqueness of the torsion-free connection imply

\[
 Q_g\bar\omega(e)=\mathcal L_\xi\bar\omega+D_{\bar\omega}\lambda.
\]

Thus, for the dual contorsion \(k=\omega-\bar\omega=-Ue\),

\[
 Q_gk=\mathcal L_\xi k+k\times\lambda,\qquad
 Q_gU=\xi^\mu\partial_\mu U+[U,\Lambda].
\tag{21}
\]

There is no inhomogeneous term. This follows off shell: apply the geometric transformation to \(D_{\bar\omega}e=0\), and use uniqueness of its solution for \(\bar\omega\).

The cotangent lift of \(\omega=\bar\omega(e)-Ue\) has

\[
 U^*_{ad}=-\omega_a^{*\mu}e^d_\mu,\qquad
 e_{\rm new}^{*\mu}{}_d=e_{\rm old}^{*\mu}{}_d
 +(D_e\bar\omega)^\dagger\omega^*\big|^{\mu}{}_d
 -\omega_a^{*\mu}U^a{}_d.
\tag{22}
\]

The adjoint in (22) includes the integration by parts of the derivative-dependent torsion-free connection. Compact support removes its boundary contribution; it cannot be discarded automatically on a larger asymptotic domain.

In geometric coordinates the master action takes the exact form

\[
 S_g=I_{\rm met}+a\int d^3x\,E q(U)
 +\int d^3x\,[e^*Q_ge+U^*Q_gU-\xi^*Q_g\xi-\lambda^*Q_g\lambda].
\tag{23}
\]

At general \(U^*\), integrate the derivative in \(U^*Q_gU\) by parts and call its coefficient of \(U_{ij}\) \(J_{ij}\). With the antifield placed to the left,

\[
 J_{ij}=-\partial_\mu(U^*_{ij}\xi^\mu)
       +\sum_b U^*_{ib}\Lambda_{jb}
       -\sum_a U^*_{aj}\Lambda_{ai}.
\tag{24}
\]

The stationary equation and its exact algebraic solution are

\[
 2aE\,L(U)+J=0,\qquad
 U=-\frac1{2aE}\left(\tfrac12\operatorname{tr}J\,\mathbf1-J^T\right).
\tag{25}
\]

At fixed arbitrary \(U^*\) this is generally not zero. Algebraically substituting the solution gives
\(-\int d^3x\,(4aE)^{-1}\langle J,L^{-1}J\rangle\), which starts at total order four. This substitution by itself is not a definition of a reduced BV symplectic manifold while keeping the conjugate \(U^*\).

For the valid auxiliary BV section set \(U^*=0\) and solve the \(U\) equation. Then \(J=0\), \(U=0\), and also \(Q_gU=0\), **with all retained metric/coframe, Lorentz, and diffeomorphism antifields unrestricted**. This is the precise statement that the homogeneous geometric chart avoids a retained-antifield source.

In contrast, in the unrectified chart (15), setting its own auxiliary antifield to zero leaves, already at cubic order,

\[
 -e_a^{*\mu}\xi^\nu T^a_{\nu\mu}=J^{\rm CS}_{bd}U_{bd},\quad
 J^{\rm CS}_{bd}=\epsilon_{abc}e_a^{*\mu}\xi^\nu
                (e^d_\nu e^c_\mu-e^d_\mu e^c_\nu).
\tag{26}
\]

Consequently \(U_{(2)}=-(2a\bar E)^{-1}L^{-1}(J^{\rm CS}_{(2)})\), generically nonzero. At \(\bar e=\mathbf1\), put
\(B_{bd}=\epsilon_{\nu\mu d}e_b^{*\mu}\xi^\nu\). The exact finite check gives
\(J^{\rm CS}_{(2)}=L(B)\); the correction is precisely the auxiliary shift generated by (19), with the sign selected by the action transformation following (20). Eliminating before fixing the off-shell dictionary is therefore not interchangeable with simply declaring \(U=0\).

For \(g=\bar g+h\), \(H=\bar g^{-1}h\), the auxiliary terms through cubic order in the geometric chart are explicitly

\[
 S_{{\rm aux},2}=a\int\bar E q(U),\qquad
 S_{{\rm aux},3}=\frac a2\int\bar E\operatorname{tr}H\,q(U)
 +\int U^*\big(\xi^\mu\partial_\mu U+[U,\Lambda]\big).
\tag{27}
\]

Since \(J\) in (24) is order two,
\(U_{(2)}=-(2a\bar E)^{-1}L^{-1}J\) and
\(U_{(3)}=(4a\bar E)^{-1}\operatorname{tr}H\,L^{-1}J\), before any further ghost reparametrization.

## 6. Metric plus a local Lorentz contractible pair

Locally write \(e=R\,s(g)\), \(R\in SO(3)\), using a smooth coframe section \(s(g)\). In a coordinate/reference-frame chart one can choose \(s(g)=\sqrt g\). Let \(R=e^\Theta\), with three local coordinates \(\theta\), and define the new odd variable

\[
 \chi=Q_g\theta.
\tag{28}
\]

The map from \(\lambda\) to \(\chi\), at fixed \(g,\theta,\xi\), is invertible in this chart. Nilpotence gives \(Q_g\chi=0\). After the cotangent lift and auxiliary elimination,

\[
 S_{\rm red}=I_{\rm met}[g]+
 \int[g^*\mathcal L_\xi g-\xi^*_\mu\xi^\nu\partial_\nu\xi^\mu+\theta^*\chi].
\tag{29}
\]

Thus \((\theta,\chi)\) is a local Lorentz contractible pair. This is not a statement that the global group \(SO(3)\), all frame bundles, or all large Lorentz transformations are contractible.

For explicit cubic charts, at \(\bar g=\mathbf1\),

\[
 s(g)=\mathbf1+\tfrac12h-\tfrac18h^2+\tfrac1{16}h^3+O(h^4),\qquad
 R=\mathbf1+\Theta+\tfrac12\Theta^2+\tfrac16\Theta^3+O(\Theta^4).
\tag{30}
\]

Writing \(A=(Q_gR)R^{-1}\), the chart ghost is
\(Q_g\Theta=A-\tfrac12[\Theta,A]+\tfrac1{12}[\Theta,[\Theta,A]]+\cdots\).
For pure Lorentz transformations \(A=-\Lambda\), so

\[
 Q_g\Theta=-\Lambda+\tfrac12[\Theta,\Lambda]
          -\tfrac1{12}[\Theta,[\Theta,\Lambda]]+O(\Theta^3\Lambda).
\tag{31}
\]

The diffeomorphism contribution is fixed, not omitted: if \(S=\sqrt g\) and \(S\,\delta S+\delta S\,S=\mathcal L_\xi g\), then
\(A_\xi=(\mathcal L_\xi e)e^{-1}-R\delta S S^{-1}R^{-1}\).
This supplies a finite Sylvester equation for every coefficient in the diffeomorphism part of the same chart expansion.

## 7. Four different measure objects

### 7.1 Odd-cotangent Berezinian versus semidensity

If \(z=f(q)\) is a base super-coordinate change with \(B=\operatorname{Ber}(\partial z/\partial q)\), its odd-cotangent lift has

\[
 \operatorname{Ber}_{\rm full}=B^2,\qquad
 \text{semidensity factor}=B.
\tag{32}
\]

Odd symplecticity is not ordinary-volume preservation. For the elementary one-even-coordinate map \(x=f(y)\), \(x^*=y^*/f'(y)\), the full Berezinian is \(f'(y)^2\), not one.

For (14), with fields unchanged, the odd ghost matrix is
\(\left(\begin{smallmatrix}\mathbf1&\omega\\0&e\end{smallmatrix}\right)\), so

\[
 B_{\rm ghost}=E^{-1},\quad
 \operatorname{Ber}_{{\rm ghost},\rm full}=E^{-2},\quad
 \text{ghost-map semidensity factor}=E^{-1}.
\tag{33}
\]

No determinant from the off-diagonal \(\omega\) shear is present. A preassigned even parameter \(L^2\) volume induces an inverse volume on its parity-reversed ghost space; it must be transformed too.

A base density \(\nu(q)Dq\) defines a cotangent BV volume \(\nu^2DqDq^*\) and semidensity \(\nu\sqrt{DqDq^*}\). In an adapted graph polarization the latter induces the base integration density. It does not determine an unrelated gauge-fixing Lagrangian measure without the gauge fermion, nonminimal sector, and their normalization.

### 7.2 The cubic canonical correction is not automatically measure-neutral

For flat Darboux density, \(\Delta_0F_3=0\): the generator contains antifields and \(\xi\), but no conjugate field-antifield pair on which the two derivatives can both act. Its coordinate canonical Berezinian is therefore one.

After the ghost-map lift, however, the inherited normalized base coefficient is \(\nu=E^{-1}\). For the BV Laplacian associated to \(\nu^2DqDq^*\),

\[
 \Delta_\nu F_3=\Delta_0F_3+(\log\nu,F_3)
 =\frac1{2a}\int d^3x\,e_a{}^\mu\epsilon_{\nu\mu\sigma}
                  \xi^\nu\omega_a^{*\sigma}.
\tag{34}
\]

The local expression on the right is generally nonzero, and was checked as a six-monomial Grassmann polynomial at \(e=\mathbf1\). It vanishes on \(\omega^*=0\), equivalently \(U^*=0\). The associated density correction is nilpotent and antifield-dependent; it is not another ordinary bosonic determinant power. A genuine gauge-fixing graph with nonzero connection antifield need not kill it. Thus even the explicit cubic transport must not be called universally quantum-measure preserving.

### 7.3 The auxiliary Gaussian and its original geometric measure

Consider one cell with coordinate weight \(v>0\), and use a background orthonormal coframe so that \(\bar g=\mathbf1,\bar E=1\). This is a finite model derived from the geometric norms, not an assertion that the original functional measure was arbitrary coordinate Lebesgue measure.

The original frozen-background connection norm is

\[
 \|\delta\omega\|^2_{\bar g}
 =v\bar E\,\bar g^{\mu\nu}\delta_{ab}\delta\omega^a_\mu\delta\omega^b_\nu.
\tag{35}
\]

At fixed \(e\), \(\delta\omega^a_\mu=-\delta U^a{}_be^b_\mu\), so
\(|\det(\partial\omega/\partial U)|=E^3\). The action Hessian is \(2avE L\). On a selected steepest-descent contour,

\[
 \int d^9U\,e^{-avE q(U)/\hbar}
 =e^{i\phi}\frac1{\sqrt2}\left(\frac{\pi\hbar}{avE}\right)^{9/2}.
\tag{36}
\]

The original norm contributes \(v^{9/2}E^3d^9U\), so, after dividing by the value at the background,

\[
 J_{\rm aux}^{\rm frozen}=r^{-3/2}.
\tag{37}
\]

Using instead the different nonlinear norm \(\|\delta\omega\|^2_g=vE g^{\mu\nu}\delta\omega_\mu\delta\omega_\nu\) gives \(vE\|\delta U\|^2\) on the vertical fiber. Its density \((vE)^{9/2}\) cancels (36), leaving a constant per fixed cell. This explains precisely which extra nonlinear measure choice yields auxiliary unity; it is not licensed by a Gaussian normalization fixed only at \(\bar g\).

### 7.4 Joint coframe, Lorentz, and ghost density

The geometric dynamical coframe and connection Gram matrices each have density \(E^{3/2}\) in their nine coordinate components. The six CS parameters with norm
\(\int\operatorname{vol}_g(\rho^2+\tau^2)\) have even volume density \(E^3\), hence ghost density \(E^{-3}\). Consequently their combined minimal base coefficient is \(E^3E^{-3}=1\), up to constant cell weights. The frozen-background counterpart is likewise constant in background-normalized coordinates. This coincidence is a consequence of the chosen ranks and geometric norms; it is not a declaration that all measures are flat.

For geometric parameters \((\lambda,\xi)\),

\[
 \|(\lambda,\xi)\|^2_g=\int\operatorname{vol}_g
       (\lambda^2+g_{\mu\nu}\xi^\mu\xi^\nu),
\]

the even volume density is \(E^4\), so the ghost density is \(E^{-4}\). Pulling back the CS parameter density through (14) gives exactly this density. Thus the odd coordinate factor \(E^{-1}\) is consistent with, not in conflict with, an intrinsic unit ratio between these two **dynamical** geometric parameter-volume prescriptions.

For the polar decomposition in a local rotation chart,

\[
 d^9e=\frac1{8E}\,d^6g\,d\mu_{\rm Haar}(R).
\tag{38}
\]

The exact diagonal-positive-coframe calculation verifies \(1/(8E)\), including the off-diagonal symmetric metric components. Orthogonal covariance extends it to every positive coframe in the chart. Replacing the Lorentz ghost by \(\chi=Q\theta\) cancels the chart-dependent Haar coefficient: the determinant of the fundamental Lorentz vector fields is the inverse Haar density. The remaining coframe/Lorentz-doublet factor is therefore a constant times \(E^{-1}\), not one.

The combined **coordinate** factors below concern only the derivative-triangular field reparametrization, the ghost map, and their odd-cotangent lifts. They explicitly **exclude** the additional non-cotangent off-shell antifield rectification (19) and its uncomputed higher completion. In particular the full \(E^2\) entry is not a claim about the full CS-to-metric BV transformation at arbitrary antifields. Before integrating the auxiliary fiber, the factors are

| Map | Base Berezinian / semidensity coefficient | Full odd-cotangent Berezinian |
| --- | ---: | ---: |
| \(\omega\leftrightarrow U\), \(e\) fixed | \(E^3\) | \(E^6\) |
| \((\lambda,\xi)\mapsto(\rho,\tau)\) | \(E^{-1}\) | \(E^{-2}\) |
| coframe and Lorentz ghost to metric and local doublet | \(\mathrm{const}\,E^{-1}\) | \(\mathrm{const}\,E^{-2}\) |
| combined | \(\mathrm{const}\,E\) | \(\mathrm{const}\,E^2\) |

The derivative-dependent shift \(\bar\omega(e)\) is triangular in a finite discretization; it does not change the diagonal factor \(E^3\). This is not a proof that every continuum mode cutoff preserves that triangular structure.

**Finite-density proposition.** Use a fixed finite set of cells/blocks; background-normalized coframe and connection field \(L^2\) densities and inverse parameter \(L^2\) ghost densities; an orientation-preserving coframe chart; a compatible point/jet or finite-difference representation in which \(\omega=\bar\omega(e)-Ue\) is a triangular map with an invertible multiplication block; a fixed steepest-descent contour for the nine auxiliary variables; and a normalized local Lorentz doublet. Compare with frozen-background metric and diffeomorphism-ghost densities. At the zero-antifield/base-density level, or for the corresponding specified geometric-chart fiber calculation, integrating (36) gives the residual coefficient

\[
 J_{\rm joint}^{\rm frozen}=r^{-7/2}.
\tag{39}
\]

Equivalently this is the residual density obtained by the finite fiber calculation in the geometric chart, relative to frozen metric and diffeomorphism-ghost norms. At arbitrary antifields, (34) and higher canonical terms must be included; (39) is not a replacement for that full BV semidensity.

A useful geometric cross-check is the quotient coframe metric

\[
 \|\delta g\|^2_g=\frac14\int\operatorname{vol}_g\,
             \operatorname{tr}(g^{-1}\delta g\,g^{-1}\delta g).
\tag{40}
\]

Its six-component density is \(\mathrm{const}\,E^{-1}\). The diffeomorphism-parameter norm \(\int\operatorname{vol}_g\,g_{\mu\nu}\xi^\mu\xi^\nu\) gives ghost density \(E^{-5/2}\). Their product is exactly \(\mathrm{const}\,E^{-7/2}\). Hence (39) is unity **relative to this nonlinear dynamical metric target measure**, but not relative to its frozen-background extension. A fixed nondegenerate DeWitt trace modification changes only a field-independent determinant factor in this pointwise comparison.

The finite Lorentz sector can be removed by a normalized nonminimal gauge-fixing or an adapted BV fiber Lagrangian for \(\theta^*\chi\). The remaining diffeomorphism gauge fixing has not been specified. Thus neither (37) nor (39) is asserted to be a full metric–CS anomaly or a fully gauge-fixed one-loop determinant.

## 8. Explicit nonlinear counterexample and the continuum obstruction

For \(H=\bar g^{-1}(g-\bar g)\), the finite density expansions are

\[
 \begin{aligned}
 \log J_{\rm aux}^{\rm frozen}
  &=-\frac34\operatorname{tr}H+\frac38\operatorname{tr}H^2
    -\frac14\operatorname{tr}H^3+O(H^4),\\
 \log J_{\rm joint}^{\rm frozen}
  &=-\frac74\operatorname{tr}H+\frac78\operatorname{tr}H^2
    -\frac7{12}\operatorname{tr}H^3+O(H^4).
 \end{aligned}
\tag{41}
\]

These are genuine first local Jacobians for the specified finite densities. They do not begin only at quartic order. For the conformal coframe \(e=s\bar e\), \(r=s^3\); at \(s=2\),
\(J_{\rm aux}=2^{-9/2}=1/(16\sqrt2)\) and
\(J_{\rm joint}=2^{-21/2}=1/(1024\sqrt2)\), after background normalization. This is a concrete counterexample to a universal nonlinear unit-Jacobian statement with frozen target measures. It uses geometric background \(L^2\) norms throughout.

Promoting a pointwise coefficient to a continuum determinant requires a regulator. Formally,

\[
 \log J_{\rm joint}=-\frac72\operatorname{Tr}_{\rm reg}M_{\log r},
\tag{42}
\]

where \(M_f\) is multiplication by \(f\). No unregulated trace of this multiplication operator exists. A background heat-kernel regulator already displays the ambiguity:

\[
 \operatorname{Tr}(e^{-t\bar\Delta}M_f)
 =(4\pi t)^{-3/2}\int\operatorname{vol}_{\bar g}
     [f+t\bar R f/6+\cdots],
\tag{43}
\]

for a scalar-bundle regulator in the interior. The trace multiplicity and actual tensor-bundle regulator must be matched to the complete field/ghost system in a real application. A different cutoff profile changes the local power-divergent coefficients; a subtraction prescription can remove or shift them. At a wall there are additional boundary heat-kernel terms. Thus the pointwise exponent is calculable, while its continuum contribution to a renormalized action is not fixed by the original \(L^2\) norms alone.

Even the dynamical-measure auxiliary constant per cell does not settle the continuum issue: with a fixed-background cutoff there is a fixed number of modes, whereas a cutoff tied to \(g\) has \(N_\Lambda(g)\sim c\Lambda^3\operatorname{Vol}_g+\cdots\). A constant Gaussian normalization \(C(a)^{N_\Lambda(g)}\) then becomes a regulator-dependent local cosmological term. This is an explicit regulator obstruction, not merely an unanswered question.

Finally, a spectral cutoff generally does not commute with multiplication by \(e\) or with the derivative-dependent connection shift. Therefore the finite triangular Jacobian need not be the complete regulated determinant; derivative local terms and boundary-domain effects require a separate calculation. Calling a local density ratio an anomaly would additionally require the quantum master equation, the full nonminimal/gauge-fixed system, and a cohomological non-removability argument. None follows from (1), (32), or (41).

## 9. Verified claims and uncomputed extensions

**Verified analytically and by exact finite CAS:** the completed action split including cancellation of the two nonzero wall fluxes; auxiliary Hessian and inverse; all four exact field/ghost-map laws; cubic antibracket rectification; the distinction between geometric and unrectified antifield auxiliary equations; the finite geometric Gram determinants and polar Jacobian; cubic local density series; the nonzero inherited-density BV-Laplacian correction.

**Exact local geometric-BV theorem:** nondegenerate coframes, the completed metric wall, interior compact-support gauge transformations, and the explicitly chosen geometric BRST generators admit elimination on \(U=U^*=0\) and a local Lorentz contractible-pair chart. The relevant hypotheses are locality, invertibility of the coframe and auxiliary Hessian, and an admissible local frame chart.

**Not established here:** an explicit all-order CS-to-geometric canonical transformation; a quantum master equation for a regulated continuum measure; a preferred Euclidean auxiliary contour; a full diffeomorphism gauge-fixed determinant; global frame-sector equivalence; or an extension from compact support to the full Brown–Henneaux/proper-\(H^1\) boundary complex. These omissions do not weaken the exact completed split or the explicit finite-density counterexample, but they do prevent promoting those results to a universal nonlinear quantum-equivalence claim.
