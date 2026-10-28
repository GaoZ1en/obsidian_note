# Appendix K. Collision flags, logarithmic symbols, physical tensors, and exact ranks

## K.1 The collision filtration is the pair spectral filtration

Let \(R=\mathbb C[V]\), the ring of translation-invariant polynomials in \(N\) labelled variables. For a fixed pair, use the relative coordinate \(\delta=z_i-z_j\), its pair center, and the remaining coordinates on \(V\). The homogeneous degree-\(P\) space has the descending filtration \(F_r=\delta^rR_{P-r}\). Formula (6.2) maps every \(F_r\) into itself and acts on \(F_r/F_{r+1}\) by \(C_r\). Because the Casimir is self-adjoint in a positive finite metric, each invariant \(F_r\) is reducing. The successive orthogonal layers therefore have precisely the distinct scalar eigenvalues \(C_r\). Descending induction proves (6.3), including multiplicities supplied by the remaining variables. This is a finite-dimensional spectral argument; no assertion about orthogonality in a Euclidean polynomial metric enters it.

The kernel of the positive residual allows exactly \(k\ge\ell+4\). In particular \(k\ge4\) for every pair, so \(\delta_{ij}^4\mid\Psi\). The collision factors are pairwise nonassociate irreducible linear polynomials. Repeated unique-factor divisibility gives \(\mathcal V_N^4\mid\Psi\), whether or not the collision hyperplanes intersect. The quotient \(F\) remains left and right primary, because the Vandermonde is translation invariant, and it remains Bose invariant because its fourth power is symmetric.

For pair \(ij\), write \(\mathcal V_N^4=\delta_{ij}^4B_{ij}\). The factor \(B_{ij}\) is coprime to \(\delta_{ij}\). A right pair projector commutes with multiplication by \(B_{ij}\). Thus

\[
\mathsf P^R_{ij,\ell}\Psi\in\delta_{ij}^{\ell+4}R
\quad\Longleftrightarrow\quad
\mathsf P^R_{ij,\ell}F\in\delta_{ij}^{\ell}R.
\tag{K.1}
\]

Cancellation here is cancellation of prime valuations, not division by a nonvanishing function on the entire collision arrangement. This establishes the exact quotient condition pair by pair.

## K.2 Why the physical tensor–Hom map is the required one

Fix a real basis \(f_\alpha\) of \(R_Q\). The physical Bargmann metric restricted to these primary polynomials is a positive real symmetric matrix \(\Gamma\). Complex conjugation of coefficients supplies a distinguished real structure. The associated complex bilinear pairing is \(B(u,v)=u^T\Gamma v\).

If \(F=\sum_{i,\alpha}C_{i\alpha}e_i\otimes f_\alpha\), identify it with the linear map \(\mathcal A:R_Q\to R_p\) having matrix \(C\Gamma\). For a right orthogonal spectral projector \(\mathsf P\), the tensor coefficients change to \(C\mathsf P^T\), and \(\mathsf P^T\Gamma=\Gamma\mathsf P\) makes the map change to \(\mathcal A\mathsf P\). Therefore (K.1), for each \(\ell\), says that \(\mathcal A\) maps the \(\ell\)-th pair spectral subspace into \(F_\ell\). Summing \(\ell\ge r\) gives (6.7). Conversely, an individual degree-\(\ell\) eigenspace lies in \(F_\ell\), so preservation of all flags implies (K.1). This proves equivalence in both directions.

An antilinear Riesz map would conjugate the input and is not the tensor–Hom identification used in this polynomial classification. A Euclidean bilinear pairing would replace \(\Gamma\) by \(I\), generally losing the projector intertwining. The counterexample (6.15) is an explicit failure of that replacement.

## K.3 From a finite homogeneous map to all ideal powers

Choose linear coordinates \(x_1,\ldots,x_{N-1}\) on \(V\). Every linear map \(\mathcal A:R_Q\to R_p\) has a unique normally ordered pure order-\(Q\) realization

\[
D_{\mathcal A}=\sum_{|\alpha|=Q}
\frac{\mathcal A(x^\alpha)}{\alpha!}\partial_x^\alpha.
\tag{K.2}
\]

Indeed \(\partial^\alpha x^\beta=\alpha!\delta_{\alpha\beta}\) for \(|\alpha|=|\beta|=Q\). Thus (K.2) agrees with \(\mathcal A\) on \(R_Q\), and its coefficient functions are uniquely determined.

In coordinates \((\delta,y_1,\ldots,y_{N-2})\) adapted to a collision, write

\[
D_{\mathcal A}=\sum_{a+|\beta|=Q}c_{a\beta}(\delta,y)
\partial_\delta^a\partial_y^\beta.
\tag{K.3}
\]

Apply this to \(\delta^ay^\beta\). Since its total degree is \(Q\), only the matching multi-index differentiates it nontrivially. Therefore flag preservation with \(r=a\) is exactly

\[
\delta^a\mid c_{a\beta}\qquad\hbox{for all }a,\beta.
\tag{K.4}
\]

Conversely, (K.4) implies that (K.3) preserves every power \((\delta)^r\) in the entire ring: applying \(a\) normal derivatives loses at most \(a\) powers, while \(c_{a\beta}\) restores at least \(a\). The original finite list \(0\le r\le Q\) has therefore furnished a genuine all-ideal-power differential operator. No unproved passage from first-order tangency to higher-order flags is being made.

The symbol in (K.2) is a normally ordered symbol. A product of vector-field symbols is converted to its pure order-\(Q\) differential operator after multiplication. Sequentially composing the variable-coefficient vector fields adds lower-order terms and generally gives a different tensor. For example, \(x^2\partial_x^2\) and \((x\partial_x)^2=x^2\partial_x^2+x\partial_x\) are not interchangeable in (K.2).

## K.4 A complete logarithmic frame, including multiple intersections

On \(V\), consider the vector fields

\[
v_a=\sum_i\left(Z_i^a-\frac1N\sum_jZ_j^a\right)\partial_{Z_i},
\qquad 1\le a\le N-1,
\tag{K.5}
\]

understood as tangent vectors to \(\sum Z_i=0\). Their symbols are (6.8). For a collision \(\delta_{ij}=Z_i-Z_j\),

\[
v_a(\delta_{ij})=Z_i^a-Z_j^a
=\delta_{ij}\sum_{r=0}^{a-1}Z_i^{a-1-r}Z_j^r.
\tag{K.6}
\]

They are tangent to every collision. In any linear coordinate basis of \(V\), their determinant is a nonzero constant times \(\mathcal V_N\). To prove this, augment the matrix by its constant column and compare with the \(N\times N\) Vandermonde matrix \((1,Z_i,\ldots,Z_i^{N-1})\). Subtracting the column means only changes it by elementary column operations. Restricting to the sum-zero tangent basis removes the constant direction with a nonzero constant determinant. The usual Vandermonde determinant then gives the claim.

Let \(K=\operatorname{Frac}R\). The symbols \(\theta_a\) form a \(K\)-basis of the cotangent-linear symbols. Hence every homogeneous order-\(Q\) symbol has a unique expansion

\[
\sigma_Q(D_{\mathcal A})=\sum_{|\nu|=Q}h_\nu(Z)\theta^\nu,
\qquad h_\nu\in R[\mathcal V_N^{-1}].
\tag{K.7}
\]

We now prove that the all-power condition removes every denominator. Localize \(R\) at one height-one prime \((\delta_{ij})\). This is a discrete valuation ring, and all other collision factors are units. Tangency says that the normal coefficient of each \(v_a\) is divisible by \(\delta_{ij}\). The determinant has valuation one. Relative to the basis \((\delta_{ij}\partial_{\delta_{ij}},\partial_{y_1},\ldots,\partial_{y_{N-2}})\), the change-of-frame determinant is therefore a unit. Thus the \(v_a\) form a basis of the full logarithmic tangent module at this localization.

Condition (K.4) says that the order-\(Q\) symbol lies in the symmetric \(Q\)-th power of that local module: each occurrence of the normal cotangent variable has its corresponding factor \(\delta_{ij}\). Expanding in the local \(v_a\)-basis therefore gives coefficients regular at \((\delta_{ij})\). Those coefficients are the unique \(h_\nu\) in (K.7). Repeating the argument at every collision prime makes every \(h_\nu\) regular at every possible denominator. Since (K.7) has no other denominators, unique factorization implies \(h_\nu\in R\).

This localization argument is precisely what controls multiple intersections. It does not assert without proof that taking a symmetric power commutes with intersecting logarithmic modules. The argument first restricts possible denominators using the explicit determinant, then removes them one prime at a time. The resulting polynomial coefficients are globally regular, including at every intersection.

The converse is immediate from (K.6): polynomial combinations of the symbol monomials \(\theta^\nu\) satisfy the local normal divisibility and hence all flags. This proves the full noninvariant symbol classification. Each \(\theta_a\) is \(S_N\)-invariant, so uniqueness of (K.7) makes a simultaneously Bose-invariant symbol have \(S_N\)-invariant coefficients. The invariant ring of the sum-zero permutation representation is \(\mathbb C[e_2,\ldots,e_N]\): the ordinary symmetric polynomial theorem gives generators \(e_1,\ldots,e_N\), and \(e_1=0\) on \(V\). These generators are algebraically independent. Counting their degrees together with \(\deg_Z\theta_a=a\) and \(\deg_\Xi\theta_a=1\) proves (6.9)–(6.10), including linear independence, support, and the unique first state.

## K.5 Physical reconstruction and the quadratic kernel

The reproducing kernel (6.11) is characterized by \(B(f,K_{\Delta,Q}(\cdot,w))=f(w)\). Substitution of \(\sum_at_aZ^{(a)}\) in its first argument is the symmetric \(Q\)-fold action of the logarithmic frame. Its coefficient of \(t^\nu\) is therefore the tensor corresponding to \(\theta^\nu\), up to the explicit nonzero multinomial factor fixed by the expansion. Multiplying by invariant \(e_r\) monomials and \(\mathcal V_N^4\) proves that (6.13) is a complete physical basis, not just a count of formal symbols. Every normalization can then be obtained from the original Bargmann inner product.

For \(Q=2\), write \(f_A(z)=z^TAz\), with \(A=A^T\) and \(A\mathbf1=0\). The physical monomial norms give

\[
B(f_A,f_B)=\frac2{\Delta^2}
\left[\operatorname{tr}(AB)-\frac1{\Delta+1}\sum_iA_{ii}B_{ii}\right].
\tag{K.8}
\]

To invert this form, use the invariant ansatz \(K=\lambda(I_3+bI_2+cI_1)\). Let \(H=I-\mathbf1\mathbf1^T/N\). As quadratic forms in \(z\), the three terms have coefficient matrices \(H\operatorname{diag}(W_i^2)H\), \(WW^T\), and \((\sum W_i^2)H\). In (K.8), the coefficient of \(\sum_iA_{ii}W_i^2\) cancels if \(b=\Delta+2/N\). The remaining unwanted coefficient of \(\operatorname{tr}(A)\sum W_i^2\) cancels if \(c=1/[N(N\Delta+1)]\). The coefficient of \(W^TAW\) is \(2\lambda b/\Delta^2\); setting it to one gives \(\lambda=\Delta^2/(2b)\). This proves (6.14) directly in the physical metric.

The Vandermonde example in (5.31) can be normalized by a short finite sum. At \(N=3,\Delta=2\), a monomial \(z_1^{a}z_2^{b}z_3^{c}\) has norm \(1/[(a+1)(b+1)(c+1)]\). The distinct symmetric orbits in \(\mathcal V_3^4\) are:

| Sorted exponents | Coefficient | Orbit size |
|:---:|---:|---:|
| \((8,4,0)\) | 1 | 6 |
| \((8,3,1)\) | -4 | 6 |
| \((8,2,2)\) | 6 | 3 |
| \((7,5,0)\) | -4 | 6 |
| \((7,4,1)\) | 12 | 6 |
| \((7,3,2)\) | -8 | 6 |
| \((6,6,0)\) | 6 | 3 |
| \((6,5,1)\) | -8 | 6 |
| \((6,4,2)\) | -22 | 6 |
| \((6,3,3)\) | 48 | 3 |
| \((5,5,2)\) | 48 | 3 |
| \((5,4,3)\) | -36 | 6 |
| \((4,4,4)\) | 90 | 1 |

Multiplying each squared coefficient by its orbit size and monomial norm, then summing, gives \(15158/49\). The 61-term expansion and this exact sum were recomputed for this note. This finite check verifies a particular normalization; the all-\(N\) kernel proof is K.1–K.4.

## K.6 Exact three-particle rank and the all-\(N\) coefficient asymptotic

For \(S_3\), the identity, transpositions, and three-cycles have traces on \(\operatorname{Sym}^P(V)\) equal to \(P+1,\epsilon_P,c_P\). Character averaging immediately gives (6.16). Extracting the \(y^Q\) coefficient from (6.10) gives (6.17), because \(h_Q(x,x^2)=\sum_{j=0}^Qx^{Q+j}\). The elementary count \(2a+3b=r\) gives the displayed formula for \(d_{\rm ch}(r)\). In the region \(P\ge2Q+8\), every argument \(P-12-Q-j\ge-4\); the same quasipolynomial formula equals zero at the possible negative values \(-4,-3,-2,-1\). Substituting it in (6.17) and summing its residues modulo 6 cancels all \(P\)-dependent and periodic terms in \(d_3-\kappa_3\), leaving (6.18). Counting the allowed bad pairs directly gives the same \(r_Q\). This proves full eventual positive rank, without choosing a numerical rank threshold.

For \(N\ge4\), take the \(y^Q\) coefficient in the Molien formula and expand near \(x=1\). Put \(t=1-x\), \(c_N=\binom N2\), \(L=L_{N,Q}\), and \(\tau=\tau_{N,Q}\). The identity contributes \(L/(N!t^{N-1})\). A transposition contributes \(\tau/[2N!t^{N-2}]\), and there are \(c_N\) such permutations. All other cycle types have lower pole order. Thus

\[
\sum_Pd_N(P,Q)x^P
=\frac{L}{N!t^{N-1}}+\frac{c_N\tau}{2N!t^{N-2}}+O(t^{-(N-3)}).
\tag{K.9}
\]

The kernel series at fixed \(Q\) is

\[
\frac{x^{J_N}h_Q(x,x^2,\ldots,x^{N-1})}{\prod_{r=2}^N(1-x^r)}.
\tag{K.10}
\]

By symmetry of \(h_Q\), \(h_Q(1,\ldots,1)=L\) and its derivative along these arguments is \((NQ/2)L\). Also

\[
\prod_{r=2}^N(1-x^r)^{-1}
=\frac1{N!t^{N-1}}\left(1+\frac{c_N}{2}t+O(t^2)\right).
\]

Consequently the kernel has the same leading pole as (K.9) and next coefficient \(L(c_N/2-J_N-NQ/2)/N!\). Since \(J_N=4c_N\), subtraction gives

\[
\sum_P(d_N-\kappa_N)x^P
=\frac{(7c_N+NQ)L+c_N\tau}{2N!}\,(1-x)^{-(N-2)}
+O((1-x)^{-(N-3)}).
\tag{K.11}
\]

It remains to check other roots of unity, since otherwise (K.11) would prove only an averaged asymptotic. At a primitive \(m\)-th root with \(m\ge2\), a cycle product has pole order at most \(\lfloor N/m\rfloor\), as does the kernel denominator. For \(N\ge5\), the corresponding coefficient power is at most \(N-4\). At \(N=4,x=-1\), the only possible double pole in the Molien sum is cycle type \((2,2)\); its coefficient is \(h_Q(1,-1,-1)/16\). The kernel has coefficient \(h_Q(-1,1,-1)/16\) at the same double pole, and \(x^{J_4}=1\) there. Symmetry of \(h_Q\) makes them equal. The double pole cancels. Therefore coefficient extraction in (K.11) gives precisely (6.19) with an \(O(P^{N-4})\) unaveraged error.

# Appendix L. Low pair channels, inverse systems, and complete protected eigenspaces

## L.1 The Fischer representation and the exact primary quotient

The map (6.31) is an isometry because the norm of \(x^p/(\Delta)_p\) is \(p!/(\Delta)_p\). Acting on monomials verifies

\[
\partial_z\mapsto x\partial_x^2+\Delta\partial_x,
\qquad z^2\partial_z+\Delta z\mapsto x.
\tag{L.1}
\]

The tensor map is permutation equivariant. Its positive scalar product is an algebraic Fischer product; it is not asserted to be integration in the product Gamma measure for arbitrary homogeneous polynomials. The Gamma–Laguerre relation for actual primaries was proved in G.5.

In this realization, with \(D_{ij}=\partial_i-\partial_j\),

\[
C_{ij}=-x_ix_jD_{ij}^2+\Delta(x_i-x_j)D_{ij}+\Delta(\Delta-1).
\tag{L.2}
\]

At pair sum \(s=x_i+x_j\) and ratio \(u=x_i/s\), \(D_{ij}s=0,D_{ij}u=1/s\). The pair-homogeneous eigenvectors are \(s^TJ_k(u)\), where \(J_k\) is the degree-\(k\) Jacobi polynomial, with distinct eigenvalue \(C_k\). Therefore absence of \(k>r\) is exactly the root-derivative condition (6.32). Spectator monomials and pair total degrees form a direct sum, so they cannot conceal a higher channel by cancellation.

Let \(\mathscr K_{m,P}\) be the homogeneous degree-\(P\) common kernel of all \(D_{ij}^m\). Both \(S=\sum x_i\) and \(B=\sum(x_i\partial_i^2+\Delta\partial_i)\) preserve it by (6.33). Since \(S^\dagger=B\),

\[
\mathscr K_{m,P}
=(\mathscr K_{m,P}\cap\ker B)
\mathbin{\oplus^\perp}S\mathscr K_{m,P-1}.
\tag{L.3}
\]

Indeed a vector orthogonal to \(S\mathscr K_{m,P-1}\) has lowering orthogonal to all of \(\mathscr K_{m,P-1}\), while its lowering lies in that space; it must vanish. Multiplication by \(S\) is injective. The root derivatives act only on sum-zero coordinates, so \(\mathscr K_m=\mathbb C[S]\otimes\mathscr D_{m-1,N}\). This proves the physical primary identification with the inverse system on \(S=0\). The orthogonal projector in (5.8), transported through (L.1), gives an explicit inverse to restriction. No assertion that ordinary coordinate centering is the physical projector is needed.

## L.2 Cubic root powers: matching upper and lower bounds

In the differential-operator algebra choose \(u_i=t_i-t_N\), \(1\le i\le n=N-1\). The cubic root-power ideal is generated by \(u_i^3\) and \((u_i-u_j)^3\). Its quotient obeys

\[
u_i^3=0,\qquad u_i^2u_j=u_iu_j^2,\qquad u_i^2u_j^2=0.
\tag{L.4}
\]

The last identity follows by multiplying the middle relation by \(u_i\). Every surviving monomial is square-free or has one doubled index, and that doubled index can be moved to any element of its nonempty support. Consequently a spanning count has Hilbert polynomial

\[
(1+t)^n+t((1+t)^n-1)=(1+t)^N-t.
\tag{L.5}
\]

This is only an upper bound until independence is proved. For a matching lower bound, let \(M_P\) be the permutation representation on \(P\)-subsets of \([N]\), realized by square-free monomials in \(N\) variables. Each is annihilated by every cubic root derivative, because its degree along a root direction is at most two. If \(SG\) is multiaffine, then for every \(i\), \(\deg_{x_i}(SG)=1+\deg_{x_i}G\le1\), forcing \(G\) to be constant. Restriction to \(S=0\) therefore removes only the invariant line \(\mathbb C S\) at degree one. These explicit inverse-system polynomials attain (L.5) in every degree. Equality proves completeness and the \(S_N\)-module description

\[
\mathscr D_{2,N,P}\cong
\begin{cases}V,&P=1,\\M_P,&P\ne1,\end{cases}
\tag{L.6}
\]

with \(M_P=0\) outside \(0\le P\le N\). The normal forms in the operator algebra were used only for an upper bound; their independence was established by actual inverse-system vectors.

## L.3 Quartic root powers and the full representation

The quartic generators imply

\[
u_i^4=0,\qquad2u_i^3u_j-3u_i^2u_j^2+2u_iu_j^3=0.
\tag{L.7}
\]

Multiplying the second relation by \(u_i,u_j\) gives the two equations \(-3A+2B=0\), \(2A-3B=0\) for \(A=u_i^3u_j^2,B=u_i^2u_j^3\). Their determinant is five, so \(A=B=0\) in characteristic zero. Also

\[
u_i^2u_j^2=\frac23(u_i^3u_j+u_iu_j^3).
\tag{L.8}
\]

Three square factors vanish after using this identity, and a cube together with any square vanishes. Hence every monomial is spanned by a square-free monomial, one squared index with the remaining exponents one, or one cubed index with the remaining exponents one. For support size \(s\) these types have counts \(1,s,s\), in degrees \(s,s+1,s+2\). The upper Hilbert polynomial is

\[
(1+t)^n+(t+t^2)nt(1+t)^{n-1}=(1+nt^2)(1+t)^n.
\tag{L.9}
\]

Let \(R_j\) be the permutation representation on marked \(j\)-subsets \((A,i)\), \(i\in A\). Define \(\mathcal E_P=M_P\oplus R_{P-1}\), realized by square-free monomials and monomials with one squared variable. Each has root degree at most three and therefore belongs to the quartic inverse system. If \(SG\in\mathcal E_P\), its degree in every variable is at most two, hence \(G\) is multiaffine. Conversely \(SM_{P-1}\subset\mathcal E_P\). Thus restriction has the exact equivariant sequence

\[
0\longrightarrow M_{P-1}\xrightarrow{\times S}
M_P\oplus R_{P-1}\longrightarrow\mathscr D_{3,N,P}\longrightarrow0.
\tag{L.10}
\]

Its image dimension is

\[
\binom NP+(P-2)\binom N{P-1},
\tag{L.11}
\]

which equals the independent upper bound (L.9), including endpoints with the usual zero-binomial convention. This proves (L.10) and the complete quartic classification. Over characteristic zero, the sequence splits as a representation. For \(j=P-1\) in its valid range, the marked-subset representation contains the induced permutation representation of \(S_j\), which splits as \(\mathbf1\oplus V_j\). One can therefore write the positive direct sum

\[
\mathscr D_{3,N,P}\cong M_P\oplus
\operatorname{Ind}_{S_j\times S_{N-j}}^{S_N}(V_j\boxtimes\mathbf1),
\tag{L.12}
\]

with \(V_1=0\). The character subtraction in (L.10) consequently describes an actual vector space, not negative-dimensional formal pieces.

## L.4 Bose intersections and all finite endpoints

The trivial representation occurs once in \(M_P\), \(0\le P\le N\), except that the degree-one quotient is \(V\) and has no invariant. This gives the chiral series in (6.36). For \(Q=1\), the right primary is exactly \(V\). The multiplicity of \(V\) in an induced subset module equals the dimension of its stabilizer-fixed vectors. A fixed vector is constant on each nonempty stabilizer block and has one total-sum constraint. Hence

\[
[V:M_j]=\mathbf1_{1\le j\le N-1},\qquad
[V:R_j]=\mathbf1_{j\ge2}+\mathbf1_{j\le N-1},\quad1\le j\le N.
\tag{L.13}
\]

Substituting (L.13) in (L.6) and (L.10) yields exactly the two \(Q=1\) generating functions in (6.36). In particular the quartic space has one ladder at \(P=1,\ldots,N-1\) and one at \(P=3,\ldots,N+1\). This includes \(N=2\), where only \(P=1,3\) survive. No stable-\(N\) assumption is used.

Explicit inverse-system representatives can also be given. Put \(\eta_i=y_i-N^{-1}\sum_jy_j\), and

\[
A_P=\sum_i\eta_ix_i e_{P-1}(x_{\widehat i}),\qquad
B_P=\sum_i\eta_ix_i^2e_{P-2}(x_{\widehat i}).
\tag{L.14}
\]

After restriction modulo \(S\) and the physical homogeneous primary projection, these are a complete basis on their respective ladders. At \(P=2\), \(A_2=-B_2\); at \(P=N,N+1\), use \(B_P\), with \(B_{N+1}=(\prod_i x_i)\sum_i\eta_ix_i\). For independence in the overlap, suppose a linear combination before restriction equals \(SG\). The restriction-kernel argument makes \(G\) multiaffine. Its invariant right-standard component is proportional to

\[
D_{P-1}=\sum_{|C|=P-1}\left(\sum_{i\in C}\eta_i\right)x_C.
\]

The square-free part of \(SD_{P-1}\) is \((P-1)A_P\), while the coefficient at a squared marked variable \((C,i)\) is \(\sum_{j\in C}\eta_j\). The corresponding coefficient in \(B_P\) is \(\eta_i\). For \(2\le|C|\le N-1\) these are independent linear forms on \(\sum\eta_i=0\). Hence the relation is trivial in the overlap. The endpoint identities stated above are the only exceptions. The physical quotient isomorphism (L.3) preserves this independence.

For arbitrary right degree \(Q\), the same full module descriptions still give exact intersection counts. For valid nonempty block sizes \(b_1,\ldots,b_s\), define

\[
Z_{b_1,\ldots,b_s}(y)=\frac{1-y}
{\prod_{\nu=1}^s\prod_{j=1}^{b_\nu}(1-y^j)}.
\tag{L.15}
\]

The denominator is the ring of polynomials invariant under the Young subgroup; the numerator removes the one global sum variable, which is invariant and a nonzero divisor. Frobenius reciprocity gives, for cubic cutoff and \(P\ne1\), \(Z_{P,N-P}\); at \(P=1\), it gives \(Z_{1,N-1}-Z_N\). For quartic cutoff it gives

\[
Z_{P,N-P}+Z_{1,P-2,N-P+1}-Z_{P-1,N-P+1}.
\tag{L.16}
\]

Invalid representation terms are zero; a zero-size block is omitted only in a term whose representation exists. Coefficient extraction in \(y\) gives the exact Bose intersection dimension. At \(Q\ge2\), this is an intersection theorem, not automatically an eigenspace theorem: the physical kernel must separately be affine on every additional right channel. This condition is precisely what is automatic in the chiral and \(Q=1\) applications, and is not automatic in general.

## L.5 Projected seeds, covectors, and the critical scalar quotient

In the stable occupation algebra, let \(a_{pq}\) be a formal creation variable, \(a_{00}=1\), and define centered generators

\[
c_{pq}=\sum_{i=0}^p\sum_{j=0}^q
\binom pi\binom qj(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij}.
\tag{L.17}
\]

These are formal occupation products, rather than pointwise products of averaged \(N\)-body wavefunctions. At \(P+Q\le N\), they supply independent primary coordinates. The two coefficient functionals

\[
\ell_1=[a_{10}^{P-1}a_{11}],\qquad
\ell_2=[a_{10}^{P-2}a_{21}]
\tag{L.18}
\]

act on \(c_{p1}\prod_i c_{a_i0}\), \(p+\sum_i a_i=P\), by

\[
\ell_1=(-1)^{P+1}p\prod_i(1-a_i),\qquad
\ell_2=(-1)^P\binom p2\prod_i(1-a_i).
\tag{L.19}
\]

Expanding (L.17) proves these formulas directly: obtaining \(a_{11}\) or \(a_{21}\) uses the indicated term from the right-carrying factor, while every chiral factor contributes its \(a_{10}\)-power coefficient \(1-a_i\). On \(c_{P,1}\) and \(c_{1,1}c_{P-1,0}\), the determinant is \(\binom P2(2-P)\), nonzero for \(P\ge3\). This proves independence of the two restricted covectors and of their physical Gram-dual states.

For a primary coordinate Gram \(\Gamma\), those vectors are \(v_i=\Gamma^{-1}\ell_i^\dagger\). The projected seeds (6.22) are proportional to them, with proportionality factors equal to the averaged seed norms

\[
\|T_1\|^2=\frac{(P-1)!}{\Delta^{P+1}(N)_{\underline P}},\qquad
\|T_2\|^2=\frac{2(P-2)!}{\Delta^P(\Delta+1)(N)_{\underline{P-1}}}.
\tag{L.20}
\]

These follow by counting the distinct occupation orbit and multiplying its one-particle norms. If \(L\) has rows \(\ell_1,\ell_2\), the orthogonal projector onto their selected eigensubspace is

\[
\Gamma^{-1}L^\dagger(L\Gamma^{-1}L^\dagger)^{-1}L.
\tag{L.21}
\]

For a generic abstract kernel obeying (6.25), this may be only part of a larger accidentally coincident eigenspace. For the Einstein critical kernel, the positive-defect and inverse-system classification proves it is the complete minimum eigenspace in the overlap range.

The same information can be packaged as a scalar quotient. Define an evaluation map by

\[
\mathcal E(c_{a0})=(1-a)(-t)^a,
\quad
\mathcal E(c_{p1})=p(-t)^{p-1}u
+\binom p2(-t)^{p-2}(v+2tu),
\tag{L.22}
\]

and extend multiplicatively on the \(Q=1\) algebra. More precisely, for a homogeneous \(f\) of left degree \(P\),

\[
\mathcal E(f)=(\ell_1(f)+2\ell_2(f))t^{P-1}u+\ell_2(f)t^{P-2}v.
\]

This fixes the triangular coordinate change between the two functionals and the displayed \((u,v)\) basis. With \(\mathcal D=t\partial_t+u\partial_u+2v\partial_v\), the image has \(\mathcal D=P\). At the critical mass,

\[
\mathcal E W_N=
\left[\binom N2 a+N\left(\sigma_{11}+\frac{\sigma_{20}}2(\mathcal D-1)\right)
+K\mathcal D(\mathcal D-1)\right]\mathcal E,
\tag{L.23}
\]

where

\[
a=\frac{13\Delta_*-20}{4},\quad
\sigma_{20}=\frac{3(17\Delta_*-36)}{32},\quad
\sigma_{11}=-\frac{215\Delta_*-124}{16},\quad
K=\frac{3(4-9\Delta_*)}{32}.
\tag{L.24}
\]

There is an all-degree proof without enumerating incoming many-body matrix rows. The affine-support lemma makes the physical Gram duals of both coefficient functionals eigenvectors with the same coefficient (6.24), so self-adjointness makes the functionals left eigenvectors. Formula (L.19) identifies their entire evaluation image. Substitution of the four Einstein values at \(\Delta_*\) gives (L.23)–(L.24). Conversely the second functional can satisfy this displayed scalar quotient for a general four-channel kernel only if the fourth channel has the affine value. One local coefficient testing the incompatible incoming source is

\[
K_{10,21;30,01}=\frac{3\Delta\mathcal R}{4(2\Delta+1)(2\Delta+3)}.
\tag{L.25}
\]

Here \(K\) is expressed in averaged unordered-orbit coordinates. It is obtained by the finite differential Casimir interpolation (5.6) on pair degree \((3,1)\); no higher pair channel can enter. Its prefactor is nonzero throughout \(\Delta>1\), so the unwanted row vanishes precisely when \(\mathcal R=0\). Equivalently, the nonzero second seed in the two-particle \((3,1)\) primary has value \(\gamma_{31}\), and equality to (6.24) forces the same relation. This proves the condition for the specified quotient/families, without asserting necessity for unrelated spectral coincidences.

## L.6 From positive defects to the complete minimum, and the scope of counterexamples

Subtract the affine operator (6.20) pairwise. The exact remainders (6.30), together with their strictly increasing plateaus, prove that the residual is positive in the chiral sector for all \(\Delta>1\), and in \(Q=1\) for \(1<\Delta\le\Delta_*\). Its zero support is exactly the cubic or quartic low-channel support already classified. The norm-sum argument (6.1) therefore turns the full inverse-system intersections into complete lowest eigenspaces. No extra state with that same energy can occur in the block, because it too would have to lie in every pair zero-defect space. This proves the multiplicity theorem, not just an exhibited set of eigenstates.

For \(\Delta>\Delta_*\), the negative \(31\) remainder supplies the stated two-particle counterexample to the proposed lower bound. At a generic mass, (6.37) separately shows why the full low-channel span need not be invariant: the exact covector \((-78,15,-20)\) annihilates \(v_1,v_2\) but has value \(19200\) on \(Wv_2\). The determinant is consequently nonzero. This is compatible with a protected one-dimensional eigenline.

A proposed nonchiral extension with disjoint unit left and right excitations has pair support \(00,20,02,11\). For a reflection-symmetric kernel, one affine pair-Casimir polynomial would require \(\gamma_{11}-\gamma_{00}=2\Delta(\gamma_{20}-\gamma_{00})/(2\Delta+1)\). For Einstein gravity the difference is

\[
-\frac{12\Delta^2(10\Delta^2+9\Delta-5)}{(2\Delta-1)(2\Delta+1)(2\Delta+3)}<0.
\tag{L.26}
\]

This rules out that affine-support proof for this seed. It does not prove that the seed can never be an eigenvector through another mechanism. Similarly the fifth-power inverse-system counterexample in Chapter 6 rules out the proposed small spanning family, not the existence of a more complicated higher-cutoff classification. The cubic and quartic results above are proved directly for the root-only ideals; no zonotopal theorem is extrapolated beyond its stated range [Lenz].

# Appendix O. Exact algebraic obstructions and their limited conclusions

## O.1 Finite-field certificates and radical formulas

The Galois statement in Chapter 6 uses the following standard finite-field criterion [Milne]. For an integral primitive polynomial whose leading coefficient and discriminant are nonzero modulo a prime, the degrees of its distinct irreducible factors modulo that prime are the cycle lengths of some element of its Galois group over \(\mathbb Q\). An irreducible reduction of full degree also proves irreducibility over \(\mathbb Q\). These hypotheses are checked exactly for (6.56) at 23 and 17 by finite polynomial arithmetic in the retained certificate. The degrees are \(5\) and \((2,3)\).

The group argument can be finished without a classification table. A transitive action of prime degree admits no nontrivial block size, so is primitive. Cubing the \((2,3)\)-cycle element gives a transposition. Draw a graph whose edges are all conjugates of that transposition. Its connected components are permuted by the group and form a block system. Primitivity makes the graph connected. Transpositions along the edges of a connected graph generate every permutation: along a path, conjugation produces a transposition of its endpoints, and arbitrary transpositions generate the symmetric group. Hence the original Galois group is \(S_5\), which is not solvable. The corresponding roots cannot all be expressed by radicals over \(\mathbb Q\). The proof says nothing against exact algebraic representation or root isolation.

The retained package also contains a degree-six physical example at \(N=4,(P,Q)=(4,2),\Delta=2\), with its exact finite-field certificate. It is supplementary evidence of algebraic complexity; the quintic already proves the obstruction needed here. It is not used to infer a universal Galois group for every finite block or every mass.

## O.2 Differential construction of the proposed labelled residues

Let \(w_k\) be arbitrary pair values on odd \(k\), while the even values are prescribed by the chiral Einstein kernel. On three-particle translation-invariant homogeneous polynomials of degree \(T\), use \(x=z_1-z_3,y=z_2-z_3\), so \(\partial_1=\partial_x,\partial_2=\partial_y,\partial_3=-\partial_x-\partial_y\). Formula (5.5) gives explicit \((T+1)\times(T+1)\) Casimir matrices. Spectral interpolation gives

\[
w_{ij}=\sum_{k=0}^Tw_k
\prod_{\substack{0\le r\le T\\r\ne k}}\frac{C_{ij}-C_rI}{C_k-C_r}.
\tag{O.1}
\]

This is a complete labelled primary space, including pair-odd channels. Let

\[
\Omega_{ij}=w_{ij}+\beta C_{ij}+\alpha I.
\tag{O.2}
\]

A nonzero common rescaling of \(w\) can be divided out, so (O.2) covers that freedom. The scalar \(\alpha\) drops out of the commutator. The three-site Casimir identity makes \(C_{13}+C_{23}\) diagonal in the pair-\(12\) basis. Therefore its off-diagonal part is independent of \(\beta\).

## O.3 Generic Casimir shifts

The \(02\) difference of shifted residues is \(c-2\beta(2\Delta+1)\), where \(c\) is (6.39). Unless

\[
\beta=\beta_*=
\frac{\Delta(2\Delta^2+7\Delta+2)}{(2\Delta-1)(2\Delta+1)(2\Delta+3)},
\tag{O.3}
\]

the degree-\(2,3\) \(02\) commutator equations from (O.1) force

\[
\begin{aligned}
w_1&=-\frac{2\Delta^2(\Delta+1)(16\Delta^2+6\Delta-19)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)},\\
w_3&=-\frac{2\Delta(16\Delta^4+26\Delta^3+7\Delta^2+6\Delta+6)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)}.
\end{aligned}
\tag{O.4}
\]

Substitution in the degree-four \(02\) entry gives the unshifted nonzero value

\[
\frac{3\Delta^2(\Delta+2)(\Delta+3)(\Delta+4)(3\Delta+5)(2\Delta^2+7\Delta+2)}
{(2\Delta-1)^2(2\Delta+3)^2(2\Delta+5)^2}>0.
\tag{O.5}
\]

For the shifted residues this is multiplied by \([c-2\beta(2\Delta+1)]/c\), nonzero in the present case. Equations (O.4)–(O.5) are finite rational consequences of (O.1): expand in \(x^{T-r}y^r\), interpolate the distinct \(C_k\), change to the pair-\(12\) eigenbasis generated by (F.1), and take the indicated entries. The construction fixes their normalization and supplies an independent executable route to each entry.

## O.4 The exceptional shift is also impossible

At \(\beta_*\), residues 0 and 2 coincide, so the previous \(02\) test is identically inconclusive. This exceptional branch needs a separate argument. Their difference from residue 4 is

\[
\Omega_0-\Omega_4=\Omega_2-\Omega_4
=-\frac{2\Delta(\Delta+4)}{2\Delta-1}\ne0.
\tag{O.6}
\]

At degree four, the \(04\) and \(24\) conditions form a linear system for \(w_1,w_3\) with determinant \(-3\Delta/(2\Delta+3)\ne0\). With \(D_4=(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)\), they force

\[
\begin{aligned}
w_1&=-\frac{\Delta^2(\Delta+1)(64\Delta^3+182\Delta^2-25\Delta-194)}{D_4},\\
w_3&=-\frac{\Delta(64\Delta^5+262\Delta^4+277\Delta^3+81\Delta^2+80\Delta+60)}{D_4}.
\end{aligned}
\tag{O.7}
\]

These values also make shifted odd residues 1 and 3 coincide, so a shorter degree-three odd test does not close the argument. At degree five the \(04\) equation has coefficient \((\Delta+1)(3\Delta+8)/[8(2\Delta+5)(2\Delta+7)]\ne0\) on \(w_5\), and forces

\[
w_5=-\frac{\Delta(64\Delta^5+230\Delta^4-75\Delta^3-1239\Delta^2-1800\Delta-640)}{D_4}.
\tag{O.8}
\]

After substitution, the \(24\) entry of \(w_{13}+w_{23}\) remains \(3\Delta(\Delta+1)(\Delta+4)(3\Delta+8)/[(2\Delta-1)(2\Delta+3)(2\Delta+5)]>0\). Multiplying by (O.6) gives

\[
[\Omega_{12},\Omega_{13}+\Omega_{23}]^{T=5}_{24}
=-\frac{6\Delta^2(\Delta+1)(\Delta+4)^2(3\Delta+8)}
{(2\Delta-1)^2(2\Delta+3)(2\Delta+5)}<0.
\tag{O.9}
\]

At \(\Delta=2\) this is \(-64\). All denominators and the displayed uniqueness coefficients are nonzero throughout the physical interval. The argument is therefore pointwise for every \(\Delta>1\), rather than a generic calculation that might miss an isolated mass. It closes precisely the residue ansatz (O.2). It does not classify all possible commuting many-body algebras.
