## 1. Euclidean continuation is part of the data

Retain the Lorentzian CPS convention Omega=delta Theta, i_XH Omega=-delta H of the [authoritative formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>). The present calculation is a Euclidean stationary-phase problem with an additional contour choice. It does not replace the real Lorentzian pair by two independently integrated real Euclidean SL(2,R) connections.

Use Euclidean internal metric delta_ab, orientation epsilon_123=1, and anti-Hermitian generators

\[
T_a=-\frac i2\sigma_a,\quad [T_a,T_b]=\epsilon_{ab}{}^cT_c,
\quad\operatorname{tr}(T_aT_b)=-\frac12\delta_{ab},\quad
\operatorname{tr}(T_aT_bT_c)=-\frac14\epsilon_{abc}.
\]

For an oriented nondegenerate coframe and an SO(3) connection set

\[
\omega^{ab}=-\epsilon^{ab}{}_c\omega^c,\quad
A=\omega+ie,\quad\bar A=\omega-ie,\quad
R^a=d\omega^a+\tfrac12\epsilon^a{}_{bc}\omega^b\wedge\omega^c.
\tag{1.1}
\]

At a real geometric background bar A=-A^dagger. Torsion vanishes and Ric=-2g precisely when both connections are flat. Their two Gaussian variations are tied by the geometric contour, not assigned independent compact-CS real cycles.

A convention check against the Lorentzian basis in the [action comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/02 Boundary and corner calculation.md#L29-L54>) is useful. With internal labels 0,1,2 choose T_0=J_0, T_1=iJ_1, T_2=iJ_2; these have the same Euclidean trace and bracket as the basis above up to a fixed rotation. Under e_L^0=-i e_E^0, e_L^{1,2}=e_E^{1,2}, omega_L^0=omega_E^0 and omega_L^{1,2}=i omega_E^{1,2}, the matrices obey e_L=-i e_E and omega_L=omega_E. Thus A_L continues to bar A_E, the barred factor to A_E, and I_E=-i S_L has the coefficient below. This explicit interchange removes a potential Euclidean sign ambiguity.

Write a=1/(16pi G), reserving gamma for the boundary metric. The complete first-order action at a smooth closed outer wall is

\[
\begin{aligned}
I_{P,\rm bulk}&=-a\int\epsilon_{abc}
 (e^a\wedge R^{bc}+\tfrac13e^a\wedge e^b\wedge e^c),\\
I_{P,\rm wall}&=-2a\int\epsilon_{abc}n^ae^b\wedge D_\omega n^c
                  +2a\int\epsilon_{\partial M},
\end{aligned}\tag{1.2}
\]

where n is outward, n.n=1 and the pullback of n.e is zero. Its torsion-free restriction is the metric Einstein/GHY/area-counterterm action, with outward K tending to 2. Thermal time is periodic: there are no temporal endpoints or joints in this calculation.

For cs(A)=tr(A dA+(2/3)A^3), direct off-shell algebra gives

\[
\boxed{\frac{ik}{4\pi}\bigl[\operatorname{cs}(A)-\operatorname{cs}(\bar A)\bigr]
 =L_P+dB_E,\qquad B_E=a e_a\wedge\omega^a.}
\tag{1.3}
\]

Indeed the left side is 2a e_a R^a-(a/3)epsilon_abc e^a e^b e^c-a d(omega_a e^a). The Euclidean dual curvature sign differs from the Lorentzian internal-metric identity. Define the geometric CS wall density by l_gCS=l_P-B_E. Then the *complete* actions agree off shell in the chosen common bundle trivialization. An unrelated holomorphic boundary polarization or independent global transition/framing phase is not being identified with (1.2).

## 2. Auxiliary elimination with the wall retained

Put omega^{ab}=omega(e)^{ab}+K^{ab}. It is convenient here to use

\[
K^{ab}=\epsilon^{ab}{}_c U^c{}_d e^d.
\tag{2.1}
\]

U is minus the dual contorsion tensor in the convention (1.1). The independent auxiliary report calls this matrix C; here U avoids confusion with the reference central coefficient C in (0.1). Define Theta=epsilon_abc e^a wedge K^{bc}. Since D_(omega(e)) e=0,

\[
\epsilon_{abc}e^a\wedge D K^{bc}=-d\Theta,
\qquad
\Theta|_{\partial M}
 =2\epsilon_{abc}n^ae^b\wedge K^c{}_d n^d.
\tag{2.2}
\]

The second identity holds for arbitrary K under the stated normal constraints. The bulk derivative contributes +a integral Theta and the connection-dependent wall term contributes its negative. Thus, before any radial limit,

\[
\boxed{I_P[e,\omega]=I_g[g(e)]+a\int\sqrt g\,
 \bigl[(\operatorname{tr}U)^2-\operatorname{tr}(U^2)\bigr].}
\tag{2.3}
\]

No torsion boundary restriction, connection boundary equation, or discarded wall term is needed for this completed identity. One must combine the two terms at the same cutoff, not assume that each separately tends to zero.

With the invariant norm ||U||^2=tr(U^T U), decompose it into trace, symmetric-traceless and antisymmetric parts,

\[
U=\frac t{\sqrt3}1+s+b,\qquad
q(U)=2t^2-\|s\|^2+\|b\|^2.
\tag{2.4}
\]

The nine-dimensional Hessian Q of a q, in orthonormal coordinates, is

\[
Q=2a\bigl(2\Pi_0-\Pi_2+\Pi_1\bigr),\quad
\det Q=-2^{10}a^9,\quad (n_+,n_-,n_0)=(4,5,0).
\tag{2.5}
\]

Thus a real Euclidean auxiliary integral diverges. Choose t and the three antisymmetric coordinates real, and rotate each of the five symmetric-traceless coordinates by s_A=+i y_A with a fixed orientation. For a cell of physical volume v, z=av, its bare integral is

\[
\int_{\mathcal C_K}d^9U\,e^{-zq}
 =\frac{i\pi^{9/2}}{\sqrt2\,z^{9/2}},
\qquad
\int_{\mathcal C_K}\prod\frac{dC_A}{\sqrt{2\pi}}e^{-zq}
 =\frac{i}{32z^{9/2}}.
\tag{2.6}
\]

This is an extra cycle prescription, not a deformation of an initially convergent real integral. Its infinite product and phase still require a regulator. We do not set (2.6) to one by definition; §6 evaluates its contribution for independent orthonormal L2 measures.

**A boundary counterexample.** On the complete thermal metric dr^2+cosh^2(r)dt^2+sinh^2(r)dx^2, take U=e^(-3r/2)(E12-E21)/sqrt(2), with a smooth core cutoff and the third frame direction outward. Its quadratic radial tail is finite, proportional to e^(-R)/4-e^(-5R)/20. Yet integral Theta grows as e^(R/2). Therefore K in L2 does not justify dropping the contorsion wall flux. Equation (2.2) cancels it exactly at every cutoff. A radial trace cutoff remains a trace regulator, not a finite-wall spectral boundary-value problem.

