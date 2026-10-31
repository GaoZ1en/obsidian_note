# Independent derivation: fixed-wall metric corner, FG restriction, and frame obstruction

## Result

With the conventions in the question, the natural local integration-by-parts representative is

\[
\boxed{\left.\theta_g\right|_\Gamma+\delta\ell_g
=\gamma\big[(K-\ell^{-1})q^{ij}-K^{ij}\big]\delta q_{ij}\,\epsilon_\Gamma
+d_\Gamma C_g,\qquad
C_g=-\gamma\,\iota_b\epsilon_\Gamma,}
\tag{1}
\]

where \(b^i=q^{i\mu}n^\nu h_{\mu\nu}\), \(h_{\mu\nu}=\delta g_{\mu\nu}\). Equation (1) is **off shell, with arbitrary normal, mixed, and tangential metric variations**, at fixed wall embedding. In particular, the sign of this representative is **minus** in front of \(\iota_b\epsilon_\Gamma\).

For the stated **metric and adapted-coframe gauge slice**, both \(C_g\) and the wall pullback of \(\alpha=\gamma*(e_a\wedge\delta e^a)\) vanish separately. Consequently the field-space pullback of \(\delta(C_g-\alpha)\), and its integral over any fixed corner in that wall, vanish exactly. This is a gauge-restricted result, not an unrestricted identity.

The exact frame obstruction is particularly simple. Define the internal normal \(N^a=e^a(n)\), the wall coframe \(E^a=e^a|_\Gamma\), and the intrinsic Lorentzian Hodge operator using \(\epsilon_\Gamma\). Then

\[
\boxed{C_g-\alpha|_\Gamma
=-2\gamma *_\Gamma(N_a\delta E^a)
=2\gamma *_\Gamma(E_a\delta N^a).}
\tag{2}
\]

Thus fixing the internal normal throughout field space already gives \(C_g=\alpha|_\Gamma\), even without FG gauge. Normal–tangent Lorentz frame variations, which metric FG gauge alone does not exclude, obstruct the vanishing in general. Tangential \(SO(1,1)\) boosts do not obstruct the fixed-normal result.

## 1. Definitions, conventions, and provenance

- Dimension is three, signature \(\eta_{ab}=\mathrm{diag}(-,+,+)\), and \(\epsilon=e^0\wedge e^1\wedge e^2\).
- \(\gamma=(16\pi G)^{-1}\), \(\Lambda=-\ell^{-2}\), with \(\ell>0\); the couplings are fixed, \(\delta G=\delta\ell=0\).
- The timelike wall has fixed embedding, spacelike outward unit normal \(n\), induced metric \(q\), and orientation \(\epsilon_\Gamma=\iota_n\epsilon\).
- \(K_{ij}=q_i{}^\mu q_j{}^\nu\nabla_\mu n_\nu\). No sign reversal of this definition is made.
- \(d_\Gamma\) is the wall exterior derivative; \(\delta\) is the ordinary field-space exterior derivative. Spacetime and field-space wedge products are distinguished by their arguments. Pullback to a fixed spacetime embedding commutes with \(\delta\).
- Bulk Hodge convention: \(u\wedge *v=\langle u,v\rangle_g\epsilon\). Intrinsic convention: \(u\wedge *_\Gamma v=\langle u,v\rangle_q\epsilon_\Gamma\).
- At an adapted orthonormal frame with \(n=\mathbf e_2\), where \(e^a(\mathbf e_b)=\delta^a_b\),
  \[
  *(e^0\wedge e^1)=-e^2,\quad *(e^0\wedge e^2)=e^1,\quad *(e^1\wedge e^2)=e^0,
  \]
  \[
  \epsilon_\Gamma=e^0\wedge e^1,\qquad *_\Gamma e^0=-e^1,\qquad *_\Gamma e^1=-e^0.
  \tag{3}
  \]
- The CPS convention was read first from [formalism.md:7–25](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>): keep the boundary Lagrangian, with integrated potential \(\Theta=\int_\Sigma\theta-\int_{\partial\Sigma}C\) and \(\Omega=\delta\Theta\).
- This derivation did not read parent candidate analyses or use any PDF equations. The proof is from the supplied definitions. No existing notes were edited.

## 2. Full off-shell metric calculation

Decompose the metric variation at the wall as

\[
a=h_{\mu\nu}n^\mu n^\nu,\qquad
b_i=q_i{}^\mu n^\nu h_{\mu\nu},\qquad
s_{ij}=q_i{}^\mu q_j{}^\nu h_{\mu\nu}=\delta q_{ij},\qquad
s=q^{ij}s_{ij}.
\tag{4}
\]

The fixed embedding makes the normal covector vary only in its normalization:

\[
\delta n_\mu=\tfrac12 a n_\mu,\qquad
\delta n^\mu=-\tfrac12 a n^\mu-b^\mu,\qquad
\delta\epsilon_\Gamma=\tfrac12s\epsilon_\Gamma.
\tag{5}
\]

For the calculation at any chosen background, use a Gaussian neighborhood of the wall:

\[
g=d\rho^2+q_{ij}(\rho,x)dx^i dx^j,\qquad n=\partial_\rho,\qquad K_{ij}=\tfrac12\partial_\rho q_{ij}.
\tag{6}
\]

**This is a coordinate choice for the background calculation, not a restriction on its tangent variation.** All of \(a=h_{\rho\rho}\), \(b_i=h_{\rho i}\), \(s_{ij}=h_{ij}\), and their derivatives remain arbitrary.

Let \(v^\mu=\nabla_\nu h^{\mu\nu}-\nabla^\mu h\), where indices on \(h\) are raised by the background metric, and \(h=a+s\). Direct evaluation gives

\[
v^\rho=D_i b^i-K^{ij}s_{ij}+Ka-\partial_\rho s.
\tag{7}
\]

The variation of the extrinsic curvature, including the variation of the normalized normal, is

\[
\delta K_{ij}=\tfrac12\partial_\rho s_{ij}-D_{(i}b_{j)}-\tfrac12aK_{ij},
\tag{8}
\]

and hence, using \(\partial_\rho q^{ij}=-2K^{ij}\),

\[
\delta K=\tfrac12\partial_\rho s-D_i b^i-\tfrac12Ka.
\tag{9}
\]

One way to obtain (8), without assuming the varied metric is Gaussian, is to use \(K_{ij}=-n_\rho\Gamma^\rho{}_{ij}\) on the fixed coordinate wall. Then \(\delta n_\rho=a/2\), while the full connection variation retains all mixed and normal metric terms.

The two contributions are therefore

\[
\theta_g|_\Gamma=\gamma(D_i b^i-K^{ij}s_{ij}+Ka-\partial_\rho s)\epsilon_\Gamma,
\]

\[
\delta\ell_g=\gamma\big[\partial_\rho s-2D_i b^i-Ka+(K-\ell^{-1})s\big]\epsilon_\Gamma.
\tag{10}
\]

Their sum is

\[
\gamma\big[(K-\ell^{-1})s-K^{ij}s_{ij}-D_i b^i\big]\epsilon_\Gamma.
\tag{11}
\]

Since \(d_\Gamma(\iota_b\epsilon_\Gamma)=(D_i b^i)\epsilon_\Gamma\), equation (1) follows. All normal terms cancel; the mixed variation remains solely in the divergence. The counterterm introduces no additional corner derivative.

For variations of the inverse induced metric, the same source is

\[
\mathcal S_g=\gamma\big[K_{ij}-(K-\ell^{-1})q_{ij}\big]\delta q^{ij}\,\epsilon_\Gamma,
\tag{12}
\]

because \(\delta q^{ij}=-q^{ik}q^{jl}\delta q_{kl}\). This explicitly fixes the convention when comparing stress-tensor formulas.

### Elementary sign and special-background checks

1. In flat coordinates \((t,x,\rho)\), take \(\epsilon=dt\wedge dx\wedge d\rho\), \(n=\partial_\rho\), and only \(h_{t\rho}=f(t)\) nonzero. Then \(b=-f\partial_t\), so \(C_g=+\gamma f\,dx\), and \(dC_g=+\gamma f' dt\wedge dx\). Directly, \(\theta_g=-\gamma f'\epsilon_\Gamma\), \(2\gamma\delta K=+2\gamma f'\), giving the same positive sum. Reversing the sign of (1)'s corner would fail this test.
2. For \(ds^2=\ell^2dr^2/r^2-r^2dt^2/\ell^2+r^2d\phi^2\), outward \(n=(r/\ell)\partial_r\) gives \(K_{ij}=q_{ij}/\ell\), \(K=2/\ell\); the source tensor in (1) vanishes. The symbolic suite also checks \(R_{\mu\nu}=-2g_{\mu\nu}/\ell^2\).

## 3. Exact metric/frame comparison and the origin of the obstruction

In this comparison, \(C_g\) is pulled back from metric field space along \(e\mapsto g=\eta_{ab}e^a\otimes e^b\); metric and coframe are not independent data. Set \(B=e_a\wedge\delta e^a\). Since \(n^2=1\), its normal part is \(n^\flat\wedge\iota_n B\). With the Hodge conventions (3),

\[
(*B)|_\Gamma=*_\Gamma\big[(\iota_nB)|_\Gamma\big].
\tag{13}
\]

For a wall tangent vector, the symmetric and antisymmetric coframe combinations give respectively

\[
b^\flat=N_a\delta E^a+E_a\,\iota_n\delta e^a,
\qquad
(\iota_nB)|_\Gamma=N_a\delta E^a-E_a\,\iota_n\delta e^a
=2N_a\delta E^a-b^\flat.
\tag{14}
\]

Because \(*_\Gamma b^\flat=\iota_b\epsilon_\Gamma\),

\[
\alpha|_\Gamma=\gamma *_\Gamma(2N_a\delta E^a-b^\flat),\qquad
C_g=-\gamma *_\Gamma b^\flat.
\tag{15}
\]

The identity \(N_aE^a=0\) and fixed embedding imply \(N_a\delta E^a=-E_a\delta N^a\). This proves (2) without field equations or a torsion assumption.

For a component check at an adapted background, write \(\delta e^a=M^a{}_b e^b\). Then

\[
C_g=\gamma[(M^1{}_2+M^2{}_1)e^0+(M^2{}_0-M^0{}_2)e^1],
\]

\[
\alpha|_\Gamma=\gamma[(M^1{}_2-M^2{}_1)e^0-(M^0{}_2+M^2{}_0)e^1],
\]

\[
C_g-\alpha|_\Gamma=2\gamma(M^2{}_1e^0+M^2{}_0e^1).
\tag{16}
\]

Thus the internal-normal-preserving condition \(\delta N^a=0\) gives equality even when \(b\ne0\). It is not necessary to set the mixed metric variation to zero for this more general statement.

## 4. FG/adapted gauge: what vanishes and in which sense

Let the wall be \(r=R\) and impose throughout a genuine field-space slice

\[
g_{ri}=0,\qquad g_{rr}=\ell^2/r^2\text{ fixed},\qquad
\delta g_{ri}=\delta g_{rr}=0.
\tag{17}
\]

Then \(b=0\), and \(C_g=0\) as a field-space one-form restricted to this metric slice.

Now additionally impose the adapted coframe conditions throughout that slice:

\[
e^2=\ell\,dr/r,\qquad e_i{}^2=0,\qquad e_r{}^A=0\quad(A=0,1),
\]

\[
\delta e^2=0,\qquad\delta e_i{}^2=0,\qquad\delta e_r{}^A=0.
\tag{18}
\]

Then \(e_a\wedge\delta e^a\) is a tangential two-form. Its bulk Hodge dual is purely proportional to \(e^2\), so

\[
\alpha|_\Gamma=0.
\tag{19}
\]

**It need not be zero as a bulk spacetime one-form.** For example, a residual tangential boost with \(\delta e^0=\lambda e^1\), \(\delta e^1=\lambda e^0\) gives \(\alpha=2\gamma\lambda e^2\), whose wall pullback is zero. Outward normal opposite to the displayed radial coframe changes the orientation bookkeeping, not these separate vanishing statements.

If \(j:\mathcal F_{\mathrm{adapted\,FG}}\hookrightarrow\mathcal F\) denotes the actual field-space inclusion, then

\[
\boxed{j^*\delta(C_g-\alpha|_\Gamma)
=\delta\,j^*(C_g-\alpha|_\Gamma)=0.}
\tag{20}
\]

For every fixed curve \(S\subset\Gamma\),

\[
\boxed{j^*\int_S\delta(C_g-\alpha)=0.}
\tag{21}
\]

These are exact, not asymptotic or perturbative equalities. They include the variation of the Hodge operator: taking the pullback of the whole one-form identity automatically varies that operator correctly.

### Field-space qualification and a useful stronger pointwise statement

More generally define \(A_a=*_\Gamma E_a\). Equation (2) implies

\[
\delta(C_g-\alpha|_\Gamma)=2\gamma\,\delta A_a\wedge_{\!\mathcal F}\delta N^a.
\tag{22}
\]

Any genuine fixed-\(N^a\) level-set slice therefore satisfies (20), even without FG. Moreover, at a single field point, if **both actual tangent vectors** \(X,Y\) satisfy \(\delta_XN^a=\delta_YN^a=0\), (22) already proves \(\delta(C_g-\alpha)(X,Y)=0\). The regular distribution \(\ker(d_{\mathcal F}N)\) is integrable, being tangent to level sets of the actual normal map.

What does **not** suffice is merely checking \((C_g-\alpha)(X)=(C_g-\alpha)(Y)=0\) at one point, or substituting an arbitrary nonintegrable “horizontal/no-frame-variation” prescription for ordinary \(\delta N=0\). In general, vanishing of a one-form on selected vectors does not imply vanishing of its exterior derivative on those vectors. Equation (22), rather than a formal deletion of frame terms, is the exact criterion.

## 5. Metric FG gauge alone: an explicit nonzero integrated obstruction

Use the locally AdS metric and adapted background coframe

\[
\bar e^0=(r/\ell)dt,\qquad\bar e^1=r\,d\phi,\qquad\bar e^2=\ell\,dr/r,
\qquad\phi\sim\phi+2\pi.
\tag{23}
\]

Consider a two-parameter family of coframes with **identical metric**,

\[
e(u,v)=\exp(uB_{01})\exp(vR_{12})\bar e,
\]

\[
B_{01}=\begin{pmatrix}0&1&0\\1&0&0\\0&0&0\end{pmatrix},\qquad
R_{12}=\begin{pmatrix}0&0&0\\0&0&1\\0&-1&0\end{pmatrix}.
\tag{24}
\]

The parameters \((u,v)\) are field-space coordinates. At their origin the commuting coordinate variations satisfy

\[
\delta_1e=(e^1,e^0,0),\qquad\delta_2e=(0,e^2,-e^1).
\tag{25}
\]

Both preserve the metric FG gauge exactly. The second violates coframe normal adaptation. With the torsion-free spin connection transformed by the same Lorentz matrices, every member remains torsion free; the metric remains on shell.

Because the metric and its Hodge operator do not vary, \(C_g=0\) along the whole family and

\[
\delta\alpha(\delta_1,\delta_2)
=2\gamma*\big(\delta_1e_a\wedge\delta_2e^a\big)
=2\gamma*(e^0\wedge e^2)=2\gamma e^1.
\]

Consequently,

\[
\boxed{\delta(C_g-\alpha)(\delta_1,\delta_2)=-2\gamma e^1,\qquad
\int_{S_{r=R}}\delta(C_g-\alpha)(\delta_1,\delta_2)=-4\pi\gamma R\ne0.}
\tag{26}
\]

The displayed integral uses positive \(d\phi\) orientation; reversing the curve orientation reverses its sign, not its nonvanishing. At the reference corner, the individual corner pullbacks of \(\alpha(\delta_1)=2\gamma e^2\) and \(\alpha(\delta_2)=2\gamma e^0\) are both zero. Thus this example also demonstrates the danger of checking only the one-form values at a single configuration.

## 6. Executed symbolic checks and reproducibility

The complete runnable suite is [verification.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-wall-corner-20261030-2313-ec35c5d3bc2d.verification.py>). Its actual exclusive-written exports are [verification.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-wall-corner-20261030-2313-ec35c5d3bc2d.verification.json>) and [verification.txt:1–27](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-wall-corner-20261030-2313-ec35c5d3bc2d.verification.txt#L1-L27>).

Execution used Python 3.14.3 / SymPy 1.14.0 through Sage. **All 15 labelled checks passed with exact zero residuals.** The exports identify the exact script by SHA256.

The generic first-jet test has independent \(q_{00},q_{01},q_{11}\), all nine of their first derivatives, all six components of \(h\), and all eighteen first derivatives of \(h\). The domain is \(\det q\ne0\) algebraically, with \(\det q<0\) for the physical Lorentzian wall. Only the **background** is Gaussian: \(g_{\rho\rho}=1\), \(g_{\rho i}=0\) and their first derivatives vanish. No Gaussian restriction is imposed on \(h\). The EH normal potential is computed from covariant derivatives of lower \(h\), whereas \(\delta K\) is independently computed by varying the raw coordinate Christoffel expression and the normalized normal. Their full source-plus-divergence residual is zero as a rational symbolic identity.

Additional exact checks cover the intrinsic Lorentzian Hodge pairing, bulk/intrinsic Hodge compatibility, arbitrary coframe deformation matrix, both gauge restrictions, the nonzero Lorentz obstruction, and the AdS Einstein/source/extrinsic-curvature checks. These are algebraic checks, not random samples or numerical support.

The preserved suite is ordinary Python, deliberately executed without Sage preparsing. An exploratory invocation mixing Sage-preparsed scalars with positive-assumption SymPy symbols produced two inequivalent symbols printed with the same name; that tool-interoperability artifact was diagnosed with symbolic representations and eliminated by running the preserved Python file directly. The final exports are the successful rerun, not that preliminary ambiguous output. The MCP display of the final run truncated its returned module dictionary, but the persisted JSON/TXT exports above are complete and were read back.

To rerun without writing files:

```bash
sage --python '/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-wall-corner-20261030-2313-ec35c5d3bc2d.verification.py'
```

To persist a new run, pass `--output-prefix` with a new unique path; existing outputs are never overwritten.

## 7. Scope and remaining limitations

1. Equation (1) is a local covariant off-shell identity. The sign refers to the explicitly chosen integration-by-parts representative \(C_g=-\gamma\iota_b\epsilon_\Gamma\). As usual, \(C\to C+dY\) does not change \(dC\), and on a closed corner does not change its integrated variation. Global closed-form ambiguities or additional corner counterterms require separate specification.
2. Equations (2) and (22) are exact algebraic coframe identities. Torsion-freeness is not needed for them and does not by itself freeze the internal normal.
3. Equations (20)–(21) require the stated field-space restriction, or the more general fixed-internal-normal condition. They do not establish vanishing on the unrestricted metric-FG coframe space; (26) disproves that stronger claim even on shell.
4. The wall and the integrated corner are fixed embeddings. Moving embeddings introduce additional variation-of-pullback terms, outside this derivation. Null walls are also outside its assumptions.
5. Vanishing of this corner difference does not make arbitrary boundary variations admissible and does not imply zero symplectic flux: the source in (1) still requires the intended boundary conditions. Dirichlet \(\delta q_{ij}=0\) kills this source, but FG gauge alone does not.
6. Treating boundary Lorentz transformations as removable gauge rather than physical edge data is an additional phase-space decision. The gauge-restricted equality is not, by itself, a proof of unrestricted equivalence of gravitational formulations.
7. This was the requested independent derivation, with exact symbolic checks and counterexample search. No further fresh subagent review was available at this delegation depth; no independent-review claim beyond this derivation is made.
