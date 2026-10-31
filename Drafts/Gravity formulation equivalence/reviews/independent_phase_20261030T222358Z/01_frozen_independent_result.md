# Frozen independent result: balanced elliptic gravity augmentation

Frozen before analyzing the parent-supplied `mu` follow-up. This note records a genuinely independent derivation from the task statement; no parent/reviewer candidate, synthesis, or prior research note was read. Only the root AGENTS and math-computation skill references were read. A parent message confirming agreement and proposing a new family arrived after the successful operator CAS check; it supplied no coefficient for that family.

## Decisive result

With the normalization below, the real gravity augmented Hessian is a Dirac-type, selfadjoint operator whose square is **exactly** the specified geometric Casimir on every field and multiplier component. It has an exact global anticommuting real complex structure, not just a symmetric principal symbol. Thus its eta kernel vanishes identically. Its own spectral-zeta logarithm and the stated common-Casimir heat finite-part logarithm have zero finite local defect, provided both use the same spatial geodesic finite part. There is no one-loop phase in either prescription in the absence of zero modes. Zero-mode exclusion on the complete cyclic quotient and a fully written heat-trace comparison remain to be documented in the final report.

## Action and operators

Take cs(A)=integral tr(A wedge dA + 2/3 A cubed), without a hidden 1/(4 pi), and orient the orthonormal coframe positively. Let u=delta omega and v=delta e. The matched Dirichlet wall is used only to cancel the action's surface variation; it is not a spectral hard wall. On compactly supported fluctuations, and then by closure,

I_2 = a [ <u,E u> + 2<u,C v> - <v,E v> ] = a <q,Kq>,

where q=(u,v), C=*D_omega, E=*[e,.], and

K = [[E,C],[C,-E]].

The actual Hessian in the convention I_2=(1/2)<q,Hq> is H=2aK. Identify the internal vector index with the tangent index by e. For U_{ia},

(EU)_{ia}=delta_{ia} tr(U)-U_{ai}.

Its eigenvalues on spin (0,1,2) are (2,1,-1). Set d=D_omega on zero forms and j=[e,.]. Then

G=[[d,-j],[j,d]],   G^dagger G=O_1 direct-sum O_1,

O_1=nabla* nabla+2.

Introduce two real vector multipliers b=(b_rho,b_tau), using the same Euclidean L2 norm as the gauge parameter, and choose

I_2,aug=a<q,Kq>+2a<b,G^dagger q>
        =a<(q,b),B(q,b)>,

B=[[K,G],[G^dagger,0]].

Thus H_aug=2aB. Ghosts represent det(G^dagger G); any overall 2a can instead be absorbed in their normalized finite-dimensional Berezin density. The finite Fourier multiplier measure is (2a/(2 pi i)) db on b in iR per gauge parameter, so its integral imposes delta(G^dagger q). The negative directions in the full real symmetric augmented quadratic form are continued along upper +i thimbles. The multiplier measure must be transported along that deformation, not dropped.

## Exact square and symmetry

Flatness of omega+i e gives KG=0. Direct tensor calculation gives

C^2+dd^dagger=nabla* nabla-2+E,

[E,C]+d j^dagger-j d^dagger=0,

j j^dagger=2 P_1.

Consequently

K^2+GG^dagger = R_0 P_0+R_1 P_1+R_2 P_2,

R_s=nabla* nabla+4-s(s+1),

on each of u,v. The multiplier block of B^2 is R_1 direct-sum R_1. The complete spin multiplicities are m_0=2, m_1=4, m_2=2; their total rank is 2+12+10=24.

Let T=[[0,1],[-1,0]] on each real pair, and S=diag(T_fields,-T_parameters). Then S^2=-1, S is unitary, and {S,B}=0 exactly. It preserves the complete H1 domain and descends through the loxodromic holonomy. The eta heat kernel is zero pointwise after the finite-dimensional fiber trace, hence also under the prescribed spatial finite part.

The principal symbol of B squares to |xi|^2 times the identity. Its closure on the complete bounded-geometry quotient is selfadjoint on H1, with B^2 on H2. This is the actual gravity operator, not a substitution by an untwisted de Rham complex.

## Zeta versus common cutoff

For the stipulated branch Log_-(negative eigenvalue)=log|lambda|-i pi,

Log_- B=(1/2) log(B^2) - (i pi/2)(1-sign(B)).

The common regulator is exactly B^2. On this odd-dimensional complete quotient its spatially renormalized heat trace has local powers t^(-3/2),t^(-1/2),t^(1/2),... and no t^0 term; nonidentity loxodromic terms are exponentially small as t tends to zero. Thus the constant log(2a), the multiplier -i Jacobian, the ghost normalization, and the paired spectral phase all have zero regulated mode count. The Mellin finite part gives the same constant term as the heat finite part. This establishes zero local defect for the balanced normalization.

The determinant magnitude formally reduces to

Z_1 = det(R_1) / sqrt(det(R_0) det(R_2)),

with all determinants on complete L2 homogeneous tensor bundles and the stated renormalized trace. Establishing comparison to a different gravitational formulation or its boundary/large-gauge measure is not part of this statement.

## Actual checks and limitations

A successful Wolfram calculation verified Hermiticity, the full 24-by-24 anticommuting symmetry, the principal-symbol square, the vanishing first-order off-diagonal term, and the spin-dependent Weitzenboeck potential; all returned True, with no messages. See operator_checks.txt. An earlier exploratory call had a malformed ArrayFlatten block and an unphysical I->0 substitution; its failed symmetry result was not used and will be retained in the evidence bundle. No independent child reviewer was available because this delegated session had zero remaining delegation depth. The tensor derivation and the CAS are complementary checks, not two independent reviewers.
