# Independent complete-domain elliptic gravitational CS Gaussian

## Result and provenance

**The balanced real doubled theory has a genuine selfadjoint elliptic augmentation. Its complete-domain square is a direct sum of positive Laplace-type operators, its spectral gap is sharp, and its grading-preserving eta trace vanishes identically. A correctly normalized imaginary Fourier multiplier, followed by the upper negative-mode Gaussian thimble, gives the hard-FP quotient exactly at every compatible finite cutoff. The bare augmented spectral determinant without this multiplier normalization is not that quotient.**

This derivation was made independently from the task setup, before reading any parent research conclusions or reviewer reports. Only the vault root instructions and the math-computation skill/reference were read. The parent subsequently requested a more explicit finite multiplier-normalization bridge; that request supplied no candidate calculation. No parent or other reviewer source was read before this report was frozen. A later supplied-text audit, if made, is a separate artifact and does not change this report.

The calculation is for radius one, Ric = -2g, and the complete oriented manifold M = H^3/<gamma>, where gamma has translation length beta > 0 and rotation theta. No finite-wall boundary-value problem is imposed. The completed wall functional affects neither the compact-support Hessian nor the complete-domain operators constructed here. All fields and proper gauge parameters are periodic/equivariant under gamma.

Conventions are T_a=-i sigma_a/2, [T_a,T_b]=epsilon_ab^c T_c, tr(T_a T_b)=-delta_ab/2, epsilon_123=1, omega^{ab}=-epsilon^{ab}_c omega^c, A=omega+i e, and a=k/(4 pi)>0. Each real field and multiplier carries its own unscaled Euclidean L2 norm. A complexification is used for spectral theory and contour continuation, not to replace this original real density convention.

## 1. Hessian from the actual action

Let E be the oriented internal rank-three Euclidean bundle, identified with TM by the background coframe. Write D=d_omega, and distinguish

- T:E-valued 0-forms -> E-valued 1-forms, T rho=[e,rho];
- B:E-valued 1-forms -> E-valued 1-forms, Bv=*[e,v];
- C:E-valued 1-forms -> E-valued 1-forms, Cv=*Dv.

The graded bracket is used throughout. In an orthonormal frame, with v_i^a viewed as a matrix,

\[
 (Bv)_i{}^a=\delta_i{}^a\operatorname{tr}v-v_a{}^i,
 \qquad (T\rho)_i{}^a=\epsilon^a{}_{ib}\rho^b.
\]

Thus B is parallel and symmetric and has eigenvalues 2,1,-1 on the trace, antisymmetric, and symmetric-tracefree parts, respectively. C is formally selfadjoint on compact support. Norms here use delta_ab, not the negative Lie-algebra trace.

For alpha=w+i f, flatness of the background and the compact-support CS variation give

\[
 S^{(2)}=ia\int\operatorname{tr}\{\alpha\wedge D_A\alpha
                  -\bar\alpha\wedge D_{\bar A}\bar\alpha\}.
\]

There is no extra factor two: delta^2 cs = 2 tr(alpha wedge D_A alpha), and the Taylor coefficient is one half of that second variation. Expanding D_A=D+i[e,.], using the stated trace normalization, gives

\[
 S^{(2)}=a\int(w^a\wedge Df^a+f^a\wedge Dw^a
                +w^a\wedge[e,w]^a-f^a\wedge[e,f]^a)
 =a\langle x,Hx\rangle,
\]

where

\[
 x=(w,f),\qquad H=\begin{pmatrix}B&C\\ C&-B\end{pmatrix},
 \qquad \boxed{J=2aH},\qquad S^{(2)}=\tfrac12\langle x,Jx\rangle.
\]

For example, w=phi e has positive algebraic quadratic term and f=phi e has negative algebraic quadratic term. This provides a direct trace/conformal sign check.

## 2. Hermitian Lorenz condition and the actual elliptic augmentation

The real gauge generator and its genuine L2 adjoint are

\[
 G=\begin{pmatrix}D&-T\\ T&D\end{pmatrix},\qquad
 G^\dagger=\begin{pmatrix}D^\dagger&T^\dagger\\-T^\dagger&D^\dagger\end{pmatrix}.
\]

Equivalently, for alpha=w+i f the condition G^dagger x=0 is the real form of the **Hermitian** condition D_A^dagger alpha=0, where D_A^dagger=D^dagger-iT^dagger. It is not the complex-bilinear Lorenz condition with the opposite algebraic-adjoint sign.

Let b=(b_rho,b_tau) be a second real scalar-internal pair, with the same L2 parameter norm. Set

\[
 S^{(2)}_{\rm aug}=a\langle x,Hx\rangle+2a\langle b,G^\dagger x\rangle
 =a\left\langle\binom{x}{b},L\binom{x}{b}\right\rangle,
 \qquad
 \boxed{L=\begin{pmatrix}H&G\\G^\dagger&0\end{pmatrix}}.
\]

The augmented Hessian is **2aL**, not L and not aL. There is no multiplier mass in this report. L acts on a real rank-24 bundle. It is a formally symmetric, first-order elliptic operator. With principal-symbol convention derivative -> i xi,

\[
 \sigma_L(\xi)^\dagger=\sigma_L(\xi),\qquad
 \sigma_L(\xi)^2=|\xi|^2\mathbf1_{24}.
\]

The multiplier is real when defining this selfadjoint Hilbert-space operator. Its integration contour is not asserted to be the real slice: the Euclidean Landau/Fourier contour is b in i times the real parameter space. In real coordinates b=i lambda, the quadratic matrix has imaginary symmetric off-diagonal blocks and is not Hermitian. This does not change which selfadjoint analytic quadratic form L is being continued; pretending the lambda-coordinate matrix itself is Hermitian would be an error.

## 3. Exact square, including curvature and gauge compatibility

The following identities hold on compactly supported smooth sections:

\[
 T^\dagger T=2,\quad TT^\dagger=2\Pi_{\rm as},\quad
 B^2=1+3\Pi_{\rm tr},\quad B^2+TT^\dagger=2+B.
\]

Flatness of D+i[e,.] gives HG=0. Explicitly, the nontrivial identities are BD+CT=0 and CD=BT; the latter includes hyperbolic curvature and must not be replaced by the principal-symbol identity curl grad=0. Directly,

\[
 \boxed{G^\dagger G=P\oplus P},\qquad P=\nabla^*\nabla+2
\]

on the two scalar-internal vector parameters. Thus the permitted input in the question is compatible with, and follows from, this action-derived Hessian.

On internal one-forms the twisted Hodge Weitzenbock identity, with the present curvature conventions, is

\[
 \Delta_D=D^\dagger D+DD^\dagger=\nabla^*\nabla-2+B.
\]

The internal curvature contraction is +B; the ordinary covector Ricci contraction is -2. Since C^2=D^dagger D, the diagonal part of H^2+GG^dagger is nabla* nabla+2B. Its off-diagonal part vanishes by

\[
 [B,C]+DT^\dagger-TD^\dagger=0.
\]

Consequently

\[
 \boxed{L^2=\operatorname{diag}(Q,Q,P,P)},\qquad
 \boxed{Q=\nabla^*\nabla+2B}.
\]

Under the parallel trace/antisymmetric/STF splitting this is

\[
 Q=Q_0\oplus P\oplus Q_2,\quad
 Q_0=\Delta_0+4,\quad P=\nabla^*\nabla\big|_{E}+2,
 \quad Q_2=\nabla^*\nabla\big|_{\mathrm{STF}^2}-2.
\]

Here Delta_0=nabla* nabla is positive. In particular, on the rank-24 bundle,

\[
 L^2\simeq Q_0^{\oplus2}\oplus P^{\oplus4}\oplus Q_2^{\oplus2}.
\]

This square is not obtained by assuming a metric gauge-fixed Hessian. It has been derived from the given CS action and proper gauge map.

## 4. Complete domains, kernel, and sharp spectral gap

All Sobolev spaces are the global covariant L2 spaces on the complete quotient. Its injectivity radius is bounded below for fixed beta>0, its curvature and derivatives are bounded, and it has no metric boundary. Compactly supported smooth sections form the initial core.

**Augmented operator.** The symmetric first-order operator L has uniformly bounded propagation speed because its symbol is Clifford. The standard complete-manifold essential-selfadjointness argument applies: use exhausting cutoffs with gradient tending to zero in the deficiency equations; local elliptic regularity justifies the integrations. Hence its minimal and maximal closures agree. The square identity and bounded parallel potential give

\[
 \|Ly\|^2+O(\|y\|^2)=\|\nabla y\|^2,
 \qquad \boxed{\mathcal D(\bar L)=H^1},\qquad
 \boxed{\mathcal D(\bar L^2)=H^2}.
\]

The latter equality uses the global bounded-geometry elliptic estimate for nabla* nabla plus bounded potential. It is a complete-domain statement, not a boundary condition at a cutoff wall.

**Gauge map.** The closed operator G has domain H1 on the rank-six parameter bundle. Its graph norm is equivalent to H1 because G^dagger G=P pair. The scalar-internal vector is identified with an ordinary one-form, so the ordinary Hodge Weitzenbock formula gives nabla* nabla >=2, hence P>=4. Thus G is injective with closed range

\[
 \mathcal R=G(H^1),\qquad \mathcal X=\mathcal R\oplus\mathcal T,
 \qquad \mathcal T=\ker G^\dagger
\]

with the last kernel understood distributionally in L2. The orthogonal projector is the bounded extension of G(P pair)^(-1)G^dagger. Equivalently U_G=G(P pair)^(-1/2) is an isometry onto R.

**Ungaugefixed Hessian.** H is essentially selfadjoint as well: it is a complete-manifold symmetric first-order system with bounded symbol. Equivalently one may use the reducing transverse/gauge decomposition of L. Its domain is not the full H1 domain:

\[
 \boxed{\mathcal D(\bar H)=\mathcal R\oplus(H^1\cap\mathcal T)},
 \qquad \bar H=0\oplus H_{\mathcal T}.
\]

The domain statement matters: every L2 gauge vector G u with u merely H1 belongs to the zero eigenspace, even if G u is not H1. Requiring H1 for all ungaugefixed fields would discard part of the closed kernel. The symmetric differential expression has maximal domain {x in L2: Hx in L2 distributionally}, which is the displayed domain. The transverse H1 estimate follows from Q=H^2+GG^dagger, and the reverse graph approximation follows from complete cutoffs and the first-order core theorem.

**Positivity.** Q0>=5 on this cyclic quotient. For completeness, Delta_0>=1 follows from the unit gradient of a Busemann function based at a loxodromic fixed point: its differential descends even though the function shifts by a constant, its divergence is 2, and integration by parts gives ||dphi||>=||phi||. Also P>=4 as above. On STF tensors,

\[
 Q_2=\Delta_D+1\ge1,
 \quad\text{since}\quad
 \langle h,\Delta_Dh\rangle=\|Dh\|^2+\|D^\dagger h\|^2\ge0.
\]

Therefore

\[
 L^2\ge1,\quad\ker_{L^2}L=0,\quad
 H_{\mathcal T}^2\ge1,\quad
 \boxed{\ker_{L^2}J=G(H^1)}.
\]

No additional nongauge L2 zero modes survive.

The lower bound is sharp. In cylindrical coordinates

\[
 ds^2=dr^2+\cosh^2r\,dt^2+\sinh^2r\,d\phi^2,
 \quad(t,\phi)\sim(t+\beta,\phi+\theta),
\]

put e1=cosh(r)dt, e2=sinh(r)dphi and choose an annular, normalized STF tensor

\[
 h_\pm=\chi((r-R)/A)e^{(-1+i\lambda)r}(e^1\pm i e^2)^{\otimes2}.
\]

The error from the two end principal curvatures differs from the horospherical value by O(exp(-2R)); the cutoff error is O(A^(-1)). Its divergence is of the same small order, T^dagger h=0, B h=-h, and C h_+ =lambda h_+ plus the stated errors (the opposite helicity reverses lambda). On (w,f) proportional to this tensor, H approaches

\[
 \begin{pmatrix}-1&\lambda\\\lambda&1\end{pmatrix},
\]

whose eigenvalues are +/-sqrt(1+lambda^2). Taking disjoint annuli with R,A tending to infinity gives Weyl sequences. Thus, as spectral sets,

\[
 \sigma(L)=(-\infty,-1]\cup[1,\infty),\qquad
 \sigma(H)=(-\infty,-1]\cup\{0\}\cup[1,\infty).
\]

The gap for 2aL, or for J away from its gauge kernel, is exactly 2a. This argument does not claim absence of embedded eigenvalues or threshold eigenvectors; those claims are not needed for the gap or kernel statement.

## 5. Exact eta cancellation and determinant information

On a real field or parameter pair let S(u,v)=(-v,u), and define

\[
 U=\operatorname{diag}(S_{\rm fields},-S_{\rm multipliers}).
\]

Then U is parallel, U^*U=1, U^2=-1, and

\[
 UL+LU=0.
\]

On the complexification, Gamma=iU is a selfadjoint involution anticommuting with L. It preserves H1 and the quotient equivariance. Thus the diagonal fiber trace of L exp(-tL^2) vanishes for every t>0, before any spatial integration. The same statement holds on each nonidentity image term. Every grading-preserving local, orbital, or renormalized eta prescription therefore gives

\[
 \boxed{\eta_L=0},\qquad \eta_{H_{\mathcal T}}=0.
\]

This is an exact operator symmetry, not an imported toy-model coefficient.

Ordinary heat traces on this infinite-volume manifold are not trace class. Accordingly, there is no unqualified ordinary zeta determinant. For any consistent direct-sum-compatible heat regularization, the modulus is fixed by

\[
 \boxed{\log\det|L|=\log\det Q_0+2\log\det P+\log\det Q_2}.
\]

The complete operator, its gap, and its eta symmetry are independent of the choice of identity/volume subtraction. A numerical determinant requires such a prescription. In the nonidentity thermal image prescription, the ultraviolet exponential suppression and the positive large-t gap imply zeta(0)=0 for these positive blocks; scalar rescalings such as 2a do not affect that thermal part. A full renormalized identity term can carry local normalization choices.

The grading does not by itself fix the Gaussian phase. For the upper negative-eigenmode thimble, the compatible spectral logarithm is

\[
 \log(-r)=\log r-i\pi\quad(r>0).
\]

At a finite cutoff the thimble Gaussian has phase i^(n_-). Under zeta continuation this is exp[i pi (zeta_|L|(0)-eta_L(0))/4]. The other spectral-log branch describes the lower, not the upper, negative-mode contour.

## 6. The Fourier multiplier really reproduces the hard-FP quotient

This section is a finite-dimensional theorem before any regularized functional determinant is taken. It also specifies the density normalization that a continuum regulator must preserve.

Let X be a finite real Euclidean field space, V a parameter space of dimension r, G:V->X injective, P_V=G^dagger G, H=H^dagger with HG=0, and H_T invertible on T=ker G^dagger. Use **plain Lebesgue densities induced by the original L2 metrics** on X and V. Write t=dim T. Choose the physical transverse contour C_T to be the real positive eigenspace plus +i times the real negative eigenspace, with the upper-rotation orientation.

The hard-FP quotient is

\[
 Z_{\rm FP}=\det P_V\int dx\,\delta(G^\dagger x)e^{-a\langle x,Hx\rangle}
 =\sqrt{\det P_V}\int_{C_T}dy\,e^{-a\langle y,H_Ty\rangle}.
\]

Indeed x=y+G u has density dx=sqrt(det P_V) dy du, while delta(P_V u)=(det P_V)^(-1)delta(u). The Fourier identity, with the imaginary contour oriented from -i infinity to +i infinity, is

\[
 \boxed{\delta(z)=\frac{a}{\pi i}\int_{i\mathbb R}db\,e^{-2abz}}.
\]

Thus

\[
 Z_{\rm FP}=\left(\frac{a}{\pi i}\right)^r\det P_V
 \int_{C_T\times\mathcal R\times iV}dx\,db\,
 e^{-a\langle(x,b),L(x,b)\rangle}.
\]

The initially oscillatory gauge/multiplier part is equivalent to the convergent thimble of L. To see the normalization and orientation rather than merely asserting a contour deformation, diagonalize P_V and let s=sqrt(p)>0 for one singular pair. In orthonormal gauge coordinate v and multiplier b,

\[
 L_{\rm pair}=\begin{pmatrix}0&s\\s&0\end{pmatrix}.
\]

On b=i lambda, inserting exp[-epsilon(v^2+lambda^2)] gives the absolutely convergent integral

\[
 i\int_{\mathbb R^2}dv\,d\lambda\,
 e^{-\epsilon(v^2+\lambda^2)-2iasv\lambda}
 =\frac{i\pi}{\sqrt{\epsilon^2+a^2s^2}}
 \longrightarrow\frac{i\pi}{as}.
\]

The oriented upper thimble is

\[
 v=(u-iq)/\sqrt2,\qquad b=(u+iq)/\sqrt2,
 \qquad dv\,db=i\,du\,dq,
\]

on which the same integral is i times the positive Gaussian integral exp[-as(u^2+q^2)], hence i pi/(as). Multiplication by the Fourier scalar a/(pi i) and the FP factor p=s^2 leaves exactly s, the quotient Jacobian per parameter.

Equivalently,

\[
 |\det L|=\det P_V\,|\det H_T|,\quad
 n_-(L)=r+n_-(H_T),
\]

and the two evaluations give the identical finite expression

\[
 \boxed{Z_{\rm FP}=\sqrt{\det P_V}
 (\pi/a)^{t/2}\,i^{n_-(H_T)}\,|\det H_T|^{-1/2}}.
\]

This establishes an actual normalized finite Gaussian quotient, not merely spectral eta cancellation. If the original field and parameter densities are instead each dz/sqrt(2pi), and the augmented density uses that same convention, the Fourier prefactor is **2a/i per parameter**, rather than a/(pi i). With contour density db/(i sqrt(2pi)) the i is absorbed and that scalar becomes 2a. Switching conventions without this conversion changes the answer.

In infinite dimensions this theorem can be imposed cutoff by cutoff, followed by a specified heat/zeta prescription. An inverse first-order operator on this infinite-volume three-manifold is not trace class, so this is not a claim of an unregularized Gaussian probability measure on the original L2 space. The usual field Gaussian is a regulated/distributional object.

## 7. What follows for the quotient modulus, and what does not

For the present theory P_V=P pair. The normalized quotient has the following operator-dependent modulus, apart from the explicitly tracked scalar-density factors and contour phase:

\[
 \boxed{Z_{\rm quotient,mod}\ \propto\
 \frac{\det P}{\sqrt{\det Q_0\,\det Q_2}}}.
\]

There is also a complete-domain York decomposition, without importing a metric Hessian. Let

\[
 Kv=\nabla_{(i}v_{j)}-\tfrac13g_{ij}\nabla\cdot v.
\]

Then Q2 K=K P, obtained by taking the STF part of the already proved identity QG=GP_V. Moreover

\[
 K^\dagger K=\tfrac12P-\tfrac16\operatorname{grad}\operatorname{div}\ge2.
\]

Thus K has closed range and the STF space splits orthogonally into TT tensors and range K. Its polar isometry intertwines Q2 with P on that range. Similarly, Delta_0>=1 makes the scalar gradient range closed, and P grad=grad Q0. With P_T=P restricted to divergence-free vectors and Q_TT=Q2 restricted to TT tensors,

\[
 \det Q_2=\det Q_{TT}\det P,\qquad
 \det P=\det P_T\det Q_0,
\]

in a regularization respecting these equivariant direct sums. Hence

\[
 Z_{\rm quotient,mod}\propto
 \sqrt{\frac{\det(\nabla^*\nabla+2)|_{\rm div-free\ vectors}}
 {\det(\nabla^*\nabla-2)|_{\rm TT\ tensors}}}.
\]

This is an operator consequence of the first-order calculation. It is not, by itself, a proof that a separately chosen metric-gravity contour and density push forward to this quotient. Such a transfer still requires: the actual field transformation and its L2/Jacobian normalization, the allowed local Lorentz and diffeomorphism domains, a compatible auxiliary-connection Gaussian cycle, the conformal-mode cycle, and the same boundary and renormalization prescription. No physical gravity contour is selected uniquely by L being selfadjoint or eta_L being zero.

### Optional principal-series description (additional standard representation input)

If one uses the standard homogeneous-bundle principal-series decomposition for PSL(2,C)/SO(3), the spin-s rough Laplacian has spectral value lambda^2+1+s(s+1)-m^2 for |m|<=s. This branching/Casimir input is stated explicitly; it is not proved by the finite matrix script. It gives the following blocks of the present L:

| helicity | multiplicity before signs | eigenvalues of L |
|---|---:|---|
| m=0 | 8 | +sqrt(lambda^2+5), -sqrt(lambda^2+5), each 4 |
| each m=+1,-1 | 6 | +sqrt(lambda^2+4), -sqrt(lambda^2+4), each 3 |
| each m=+2,-2 | 2 | +sqrt(lambda^2+1), -sqrt(lambda^2+1), each 1 |

The local square theorem, spectral gap, and eta cancellation above do not depend on this additional harmonic-analysis input.

For orientation only, combining that input with the standard spin orbital heat character yields, for q=exp(-beta+i theta),

\[
 \log\det_{\rm th}|L|=-\sum_{n\ge1}
 \frac{8e^{-(1+\sqrt5)n\beta}+12e^{-3n\beta}\cos(n\theta)
       +4e^{-2n\beta}\cos(2n\theta)}{n|1-q^n|^2}.
\]

The scalar orbital normalization can be derived directly: the H3 scalar heat kernel is exp(-t)(4 pi t)^(-3/2)(d/sinh d)exp[-d^2/(4t)], and cosh d_n=cosh(n beta)+(cosh(n beta)-cos(n theta))sinh^2r. Integrating over a fundamental cylinder gives beta exp[-t-n^2 beta^2/(4t)]/(sqrt(4 pi t)|2sinh(n(beta+i theta)/2)|^2) per nonzero image. The spin/helicity character supplies the factors exp(i m n theta), and the square determines the replacement mass. This last spin-character step is a standard extra input, not an independent newly proved heat-kernel theorem here.

The ghost-combined thermal logarithm then reduces algebraically to

\[
 \sum_{n\ge1}\frac{2e^{-2n\beta}\cos(2n\theta)-2e^{-3n\beta}\cos(n\theta)}
 {n|1-q^n|^2}
 =\sum_{n\ge1}\frac1n\left(\frac{q^{2n}}{1-q^n}
                 +\frac{\bar q^{2n}}{1-\bar q^n}\right).
\]

The rational character identity is machine-checked; neither that check nor the optional formula certifies a separately imported physical metric partition function.

## 8. Evidence and limits of certification

- [Corrected operator source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b/verify_operator.py>) is runnable with Sage and checks 22 exact identities: the action sign/factor, curvature algebra, gauge compatibility, symbol square, first-order cancellation, and grading, plus the optional rational thermal character identity.
- [Corrected operator result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b/verification-result.json>) records every check as passed and includes the source SHA-256 and Sage version. [The actual tool record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b/corrected-operator-tool-record.json>) is preserved separately.
- [Multiplier source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b/verify_multiplier.py>), [its result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b/multiplier-result.json>), and [its actual tool record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b/multiplier-tool-record.json>) check the Fourier/thimble orientation and determinant algebra and a complete two-parameter/four-transverse-mode example.
- [Initial exploratory source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b/initial-exploration.py>) and [its actual failed-check record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b/initial-exploration-tool-record.json>) are retained. Two initial False results compared 9x3 matrices to 9x9 zero matrices. The corrected run uses 9x3 zeros and passes; the failure has not been erased or relabeled as a successful initial run.

**Analytically established here, not machine-proved:** the complete-domain closures, closed gauge and York ranges, the coercive estimates, Weyl-sequence gap sharpness, and the finite Gaussian contour bridge. The complete first-order core theorem and bounded-geometry elliptic estimate are standard functional-analytic inputs with their applicability explained above.

**Additional input only for the optional explicit thermal formula:** principal-series branching/Casimir and the spin orbital heat character. The scalar orbital normalization and the subsequent determinant algebra were derived above. These representation-theoretic formulas were not independently proved in this review, and they are not needed to establish the main finite operator theorem.

**Not claimed:** a nonzero multiplier-mass eta coefficient; a physical metric contour/measure transfer without the listed hypotheses; a regulator-independent full infinite-volume determinant; a Gaussian probability measure on L2; absence of embedded or threshold eigenvalues. No toy-model eta coefficient or parent metric result has been imported. This agent could not launch an additional fresh verifier because delegation depth was exhausted; this report itself is the requested fresh independent review.
