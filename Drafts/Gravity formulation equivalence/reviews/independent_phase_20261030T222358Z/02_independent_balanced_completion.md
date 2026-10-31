# Independent completion: domains, zero modes, and regulator equality

This is a completion of the frozen initial derivation, not a review of another researcher's text. The parent subsequently proposed a multiplier deformation; that separately supplied follow-up is in 03_supplied_mu_family.md. No candidate or synthesis was consulted in deriving the balanced result.

## The theorem

For the real Euclidean gravity data in the question, choose the multiplier norm equal to the stated gauge-parameter norm and the multiplier coupling 2a<b,G^dagger q>. The selfadjoint augmented Hessian is H_aug=2a B, with

B = [[K,G],[G^dagger,0]],
K = [[E,C],[C,-E]],
C=*D_omega, E=*[e,.], G=[[d,-j],[j,d]], d=D_omega, j=[e,.].

It satisfies B^2=R exactly, where the complete geometric regulator is

R = (R_0 direct-sum R_1 direct-sum R_2) on u,
    (R_0 direct-sum R_1 direct-sum R_2) on v,
    R_1 on b_rho, and R_1 on b_tau,

R_s=nabla* nabla+4-s(s+1).

There are two spin-0, four spin-1, and two spin-2 copies, total real rank 24. Ghosts supply det M, M=G^dagger G=R_1 direct-sum R_1, with rank 6. For the branch Log_-(lambda<0)=log|lambda|-i pi and the specified spatial-first geodesic finite part, the balanced spectral-zeta and common-Casimir prescriptions coincide. Their phase is one, and their finite local defect is zero. This is an exact operator theorem, not a conclusion inferred from the principal symbol alone.

## Action and normalization

With cs(A)=integral tr(A dA+2A^3/3), the bulk transgression gives, modulo the surface term canceled by the matched real Palatini Dirichlet wall,

I=-4a integral tr(e F_omega-e^3/3).

The trace convention in the question then gives the quadratic form

I_2=a integral [u wedge D_omega v+v wedge D_omega u
                  +u wedge [e,u]-v wedge [e,v]]
   =a<q,Kq>.

The bracket on one-forms is graded, so [e,u]^a=epsilon^a_bc e^b wedge u^c. The actual Hessian is 2aK, not K or aK. No boundary condition is imposed at a finite wall in the determinant problem.

Use the multiplier action 2a<b,F>, F=G^dagger q. In one gauge singular mode r>0, the orthonormal gauge-field coordinate x satisfies F=sqrt(r)x. The Fourier-normalized multiplier density is

(a/(pi i)) db,  b initially in iR.

With the orientation inherited from that Fourier integral and negative eigen-directions rotated along upper +i contours,

(a/(pi i)) integral_C dx db exp[-2a sqrt(r) x b] = 1/sqrt(r).

The finite Gaussian contributes i from its single negative eigenvalue, while the multiplier measure contributes 1/i. This cancellation must not be omitted. A ghost action 2a barc M c with Berezin density (2a)^(-1) dbarc dc per parameter mode gives precisely det M; a different sign convention for the ghost action is equivalent to fixing the Berezin orientation correspondingly. These normalizations are held fixed when comparing regulators.

## Full tensor proof and complete domains

The internal tangent index is identified with the spatial index by the covariantly constant coframe. On U_ia,

(EU)_ia=delta_ia tr U-U_ai.

Thus E has eigenvalues 2,1,-1 on scalar, antisymmetric, and symmetric-tracefree tensors. Also jj^dagger=2P_1. The curvature convention in the question gives

C^2+dd^dagger=nabla* nabla-2+E,
[E,C]+dj^dagger-jd^dagger=0.

Flatness of omega+i e implies KG=0. Hence B^2 is block diagonal, with field block C^2+dd^dagger+E^2+jj^dagger and parameter block M. The field potentials are respectively 4,2,-2, exactly R_s.

The quotient by a loxodromic element with beta>0 is complete and of bounded geometry. B is a symmetric first-order Dirac-type operator with bounded zeroth-order part and symbol square |xi|^2. Its closure from compactly supported smooth sections is selfadjoint with domain H1. Its square has domain H2. All integrations by parts above extend by this closure; there is no spectral hard wall and no boundary eta condition.

There are no L2 zero modes. The spin-0 block is at least 4. For spin 1, the ordinary Hodge Weitzenboeck identity gives R_1=Delta_1+4>=4. For a symmetric-tracefree U, the displayed curl identity gives

<U,(nabla* nabla-3)U>=||CU||^2+||d^dagger U||^2>=0.

Therefore R_2>=1. Consequently B^2>=1 and M>=4. This argument uses local identities and completeness, not an assumed principal-series spectral decomposition.

Let T_q(u,v)=(v,-u) and T_p(rho,tau)=(tau,-rho). Then T_qG=GT_p, T_qK=-KT_q, and

S=diag(T_q,-T_p), S^2=-1, S B=-B S.

S is a parallel, real orthogonal bundle automorphism, preserves H1, and commutes with the quotient identification. Thus it genuinely pairs every positive and negative spectral subspace. The fiber trace of B exp(-tB^2) vanishes pointwise, so eta_B(z)=0 under either spatial prescription wherever defined, and hence by continuation.

## Why the two regularizations agree

On this complete homogeneous quotient the identity heat kernel contributes the usual local series with exponents -3/2,-1/2,1/2,..., multiplied by the chosen renormalized volume. Nonidentity loxodromic images have minimum displacement beta>0 and give terms exponentially small as t tends to zero after spatial integration. Thus there is no t^0 or t^0 log t coefficient. The positive gaps control large t. In particular zeta_R(0)=zeta_M(0)=0.

The exact functional calculus identity is

Log_- B=(1/2)log R-(i pi/2)(1-sign B).

Since the common regulator is exp(-epsilon R), the sign term has zero fiber trace; the remaining imaginary mode count has zero epsilon^0 finite part. The Mellin representation of Tr_ren exp(-epsilon R)log R shows that its constant term is -zeta_R'(0): the possible extra terms arise only from a zero-power heat coefficient, which is absent. The same statement holds on ghosts and on the parameter bundle used to normalize the Fourier measure. Positive rescaling H_aug=2aB introduces log(2a) times a zero regulated mode count.

The normalized determinant magnitude is therefore

Z_1=det(R_1)/sqrt(det(R_0)det(R_2)).

All bundles here are full spin bundles; replacing them by transverse bundles without the corresponding decomposition Jacobians would be a different calculation.

For the canonical axial geodesic cutoff, write

ds^2=d rho^2+cosh^2(rho) dt^2+sinh^2(rho) d phi^2,
(t,phi)~(t+beta,phi+theta).

The radius-L volume is pi beta sinh^2 L, hence its finite part is V_ren=-pi beta/2. Keeping the answer in terms of V_ren makes explicit any change in the boundary representative/geodesic prescription. No extra finite volume counterterm has been added.

## Scope and actual evidence

The equality between the two determinant definitions for this balanced operator includes their nonlocal pieces; it does not require identifying a product formula. It does not prove equality with a separate metric, chiral CS, boundary, or large-gauge measure. Those are distinct comparisons and remain outside this report.

The actual operator CAS checks are in operator_checks.txt. They verify all finite matrix identities at arbitrary cotangent vector, including exact Hermiticity and anticommutation. They do not by themselves establish the complete-domain or heat-kernel arguments, which are given analytically above. An initial malformed exploratory CAS construction is retained, explicitly marked invalid. No fresh child reviewer could be spawned at this session's fixed maximum delegation depth.
