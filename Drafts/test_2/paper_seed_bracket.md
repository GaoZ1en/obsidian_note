# Seed odd-bracket normalization: finite analytic check

## Result

The proposed compressed bilinear identity is correct for every positive finite radius satisfying \(a^2=b^2+c^2\). It gives the relative odd-bracket coefficients
\[
\boxed{(-1,b^2/a^2,c^2/a^2)},\qquad
\alpha=b^2/c^2=R_-^2/R_+^2,
\]
provided the simple-factor generators and invariant forms are normalized as below. The Lorentzian minus sign is explicit; it is not inferred from Jacobi alone.

This note supplies the seed input missing from the exposition audit. It neither changes the primary solution nor assumes the seed superalgebra by name.

## 1. Spinor space and invariant pairing

Use mostly-plus signature, \((012)_A,(345)_+,(678)_-\), and
\[
A=\Gamma^{012},\quad B=\Gamma^{345},\quad C=\Gamma^{678},\quad X=\Gamma^9,
\quad H=aA+bB+cC,
\]
\[
Q=(b/a)AB+(c/a)AC,\qquad
\Pi_0=\tfrac14(1-Q)(1+X),\qquad W=\operatorname{im}\Pi_0.
\]
Thus \(W\) is the real eight-dimensional seed sector \(H\epsilon=0\), \(X\epsilon=\epsilon\). Let \(M^\sharp=\mathcal C^{-1}M^T\mathcal C\), with \((\Gamma^i)^\sharp=-\Gamma^i\) and \(\mathcal C^T=-\mathcal C\). Then
\[
A^\sharp=A,\quad Q^\sharp=-Q,\quad X^\sharp=-X,
\quad \Pi_0^\sharp=\tfrac14(1+Q)(1-X),
\quad \Pi_0^\sharp A=A\Pi_0.
\]
Consequently
\[
\Omega(\epsilon,\chi)=\bar\epsilon A\chi
\]
is antisymmetric and nondegenerate on \(W\). Nondegeneracy follows because \(A^2=1\) maps \(W\) isomorphically onto the subspace paired nondegenerately with \(W\) by the Majorana pairing.

For factor \(I=A,+,-\), write \((r_I,V_I)=(a,A),(b,B),(c,C)\). The matrices
\[
\rho(T_j)=-\tfrac12\Gamma_j V_I\qquad(j\in I)
\]
preserve \(W\) and \(\Omega\): the degree-two matrices commute with \(\Pi_0\) and \(A\), and are skew under \(\sharp\). They realize the three doublet representations, so \(W\) is the real form of \((\mathbf2,\mathbf2,\mathbf2)\). Its invariant alternating pairing is unique up to scale, being the product of the three doublet alternating tensors.

## 2. Analytic proof of the compression identity

The precise statement, with either consistently upper or lower index \(j\), is
\[
\boxed{r_I\,\bar\epsilon A\Gamma_jV_I\chi
=a\,\bar\epsilon\Gamma_j\chi,
\qquad\epsilon,\chi\in W.}
\]
For \(I=A\), this follows immediately from \([A,\Gamma_j]=0\) and \(A^2=1\).

For \(I=+\), set
\[
S=AB,\quad T=AC,\quad p=b/a,\quad q=c/a,
\quad Q=pS+qT,\quad Q'=-pS+qT.
\]
Here \(S^2=T^2=1\), \(\{S,T\}=0\), \(p^2+q^2=1\). Put
\[
P=(1-Q)/2,\qquad P'=(1+Q')/2.
\]
Since \(QP=-P\), \(P'Q'=P'\), and \(Q-Q'=2pS\),
\[
2pP'SP=P'(Q-Q')P=-2P'P,
\qquad P'SP=-p^{-1}P'P.
\]
For a plus-sphere gamma matrix, \(Q\Gamma_j=\Gamma_jQ'\), \(\{X,\Gamma_j\}=0\), and
\(A\Gamma_jB=-\Gamma_jS\). Inserting the left and right projectors therefore gives
\[
\Pi_0^\sharp A\Gamma_jB\Pi_0
=p^{-1}\Pi_0^\sharp\Gamma_j\Pi_0.
\]
The minus-sphere proof interchanges \((S,p)\) and \((T,q)\), using \(Q''=pS-qT\). No division by a vanishing parameter occurs for finite positive radii.

## 3. Physical Killing vectors and normalized Lie generators

Let \(K_j\) be the surviving opposite-side invariant Killing fields, normalized at a reference point \(o\) by \(K_j(o)=E_j(o)\), where \(E_j\) is the orthonormal frame vector. Globally these are not the dual left-invariant frame fields. In the Maurer–Cartan convention used for the seed,
\[
[K_j,K_k]=-2r_I\eta^{\ell\ell}\varepsilon_{jk\ell}K_\ell,
\qquad T_j=-\frac{K_j}{2r_I}.
\]
Thus \([T_j,T_k]=\eta^{\ell\ell}\varepsilon_{jk\ell}T_\ell\), independently of the radii.

The representation follows directly from the spinorial Lie derivative, rather than a presumed superalgebra. On \(W\), the seed KSE is
\[
\nabla_j\epsilon=\tfrac{r_I}{2}\Gamma_jV_I\epsilon.
\]
At \(o\), opposite-side invariance gives
\[
\nabla_a(K_j)_b=r_I\varepsilon_{jab},\qquad
\tfrac14\nabla_a(K_j)_b\Gamma^{ab}
=\tfrac{r_I}{2}\Gamma_jV_I.
\]
Hence
\[
\mathcal L_{K_j}\epsilon=r_I\Gamma_jV_I\epsilon,
\qquad \mathcal L_{T_j}\epsilon=-\tfrac12\Gamma_jV_I\epsilon.
\]
The Clifford identity includes the Lorentzian lowering of \(j\); replacing \(\Gamma_j\) by \(\Gamma^j\) without the corresponding change in vector components would corrupt the AdS sign.

## 4. Moment maps and the three coefficients

Write \(\chi_A=-1\), \(\chi_+=\chi_-=1\). Normalize the invariant form on each simple algebra by the same trace convention,
\[
h_I(U,V)=-2\operatorname{tr}_{\mathbf2}(\rho(U)\rho(V)),
\qquad h_I(T_j,T_k)=\chi_I\eta_{jk}.
\]
Thus the compact forms are positive definite, while the AdS form is \(-\eta\). Equivalently, \(\operatorname{tr}_{W}\rho(T_j)\rho(T_k)=-2\chi_I\eta_{jk}\), since the other two doublet factors give multiplicity four.

Define the symmetric moment map \(\mu_I:W\times W\to\mathfrak g_I\) by
\[
h_I(\mu_I(\epsilon,\chi),T_j)
=\Omega(\epsilon,\rho(T_j)\chi).
\]
Let \(\kappa^j=\bar\epsilon\Gamma^j\chi\). The compression identity yields
\[
\Omega(\epsilon,\rho(T_j)\chi)
=-\frac{a}{2r_I}\kappa_j,
\qquad
\mu_I=-\frac{\chi_Ia}{2r_I}\kappa^jT_j.
\]
The vector bilinear at \(o\), expressed in normalized generators, is
\[
K(\epsilon,\chi)=\sum_I\kappa^jK_j
=-\sum_I2r_I\kappa^jT_j
=4a\sum_I\frac{\chi_Ir_I^2}{a^2}\mu_I(\epsilon,\chi).
\]
There are no flat-vector components: the \(X\)-projection kills the \(x\) current, while \(\Gamma^{10}\) commutes with \(Q\), so the opposite \(Q\) eigenvalues of the left and right projected spinors kill the \(y\) current. The simple-factor vector fields are determined globally by equivariance from their values at \(o\).

The common factor \(4a>0\) is conventional. For example, set \(\Omega_{\rm std}=4a\Omega\), so its moment maps are \(\mu_I^{\rm std}=4a\mu_I\). Then
\[
\boxed{K(\epsilon,\chi)
=-\mu_A^{\rm std}
+\frac{b^2}{a^2}\mu_+^{\rm std}
+\frac{c^2}{a^2}\mu_-^{\rm std}.}
\]
Equivalently, choose an odd basis whose \(\Omega\)-matrix is \((4a)^{-1}\) times the canonical product of alternating tensors. Relative to those canonical tensors the bracket has precisely the boxed coefficients. This states the normalization change explicitly rather than silently rescaling a bilinear while retaining its old components. Their sum vanishes by \(a^2=b^2+c^2\), providing the odd Jacobi check. All three coefficients are nonzero at finite positive radii.

## 5. Exact finite verification performed

I reused only the sparse Clifford and integer-polynomial definitions preceding `verify` in the existing [exact Clifford source](</Users/koishi/Documents/Note/Drafts/test_2/susy_exact_check.py#L1-L55>); the old 94-check routine was not rerun. The reduction uses only \(a^2=b^2+c^2\). Put
\[
Q_n=bAB+cAC,\quad
P_R=(a-Q_n)(1+X)=4a\Pi_0,\quad
P_L=(a+Q_n)(1-X)=4a\Pi_0^\sharp.
\]
The nine exact polynomial residuals
\[
P_L(r_IA\Gamma_jV_I-a\Gamma_j)P_R
\]
all vanished. Also checked: all nine generator/projector commutators; all nine pairing-invariance commutators with \(A\); \(P_LA=AP_R\); and all 27 within-factor trace coefficients, including off-diagonal zeros. Both Python invocations completed successfully and printed `ALL PASS: True` / `All 27 generator trace coefficients: True`.

The proof above is analytic and all-parameter. These checks are targeted cross-checks of the compressed identity, invariant pairing, and sign normalization, not a new large computation or an appeal to a previously named seed superalgebra. The existing seed KSE and its eight-dimensional sector remain the inputs established in [the SUSY derivation](</Users/koishi/Documents/Note/Drafts/test_2/susy_review.md#L16-L87>).
