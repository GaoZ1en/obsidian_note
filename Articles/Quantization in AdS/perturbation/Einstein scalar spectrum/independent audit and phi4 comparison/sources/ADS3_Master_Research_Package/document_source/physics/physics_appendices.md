# Appendix A. Canonical constraint inverses and direct pair reconstruction

This appendix gives a complete finite canonical construction of each pair coefficient. Its inputs are the free scalar modes, the maximal/conformal constraints, the boundary flux condition, and the action-derived global Ward identity. It does not require a spacetime response kernel. The circle of modes used for compression is not an invariant subspace; recovering the primary coefficients requires the final invertible representation-theoretic step.

## A.1 Scalar and momentum inverses, including the global channels

For angular harmonic \(k\), let \(m=|k|\). The scalar constraint operator is
\[
L_m=-(y^2-1)\partial_y^2-2y\partial_y+\frac{m^2}{y^2-1}+2 .
\tag{A.1}
\]
For \(m\ge2\), choose
\[
p_m=z^m(y+m),\qquad
q_m=\frac{z^m(y+m)-z^{-m}(y-m)}{2m(m^2-1)},
\qquad z=\sqrt{\frac{y-1}{y+1}}.
\tag{A.2}
\]
They are respectively regular at the center and decaying at infinity,
\(q_m\sim1/(3y^2)\), and have Wronskian
\[
p_mq_m'-p_m'q_m=-\frac1{y^2-1}.
\]
The exceptional solutions are
\[
\begin{aligned}
p_0&=y,&q_0&=\frac y2\log\frac{y+1}{y-1}-1,\\
p_1&=\sqrt{y^2-1},&
q_1&=\frac{y}{2\sqrt{y^2-1}}
-\frac{\sqrt{y^2-1}}4\log\frac{y+1}{y-1}.
\end{aligned}
\tag{A.3}
\]
Thus \(L_mu_k=\rho_k/2\) has the prescribed solution
\[
u_k(y)=q_m(y)\int_1^y p_m(s)\frac{\rho_k(s)}2\,ds
+p_m(y)\int_y^\infty q_m(s)\frac{\rho_k(s)}2\,ds.
\tag{A.4}
\]
The Wronskian fixes the sign and normalization. For finite scalar-mode sources, both integrals converge on the stated domain. At non-global integer \(m\), the products \(p_mr^m\) and \(q_mr^m\) are finite polynomials:
\[
p_mr^m=(y-1)^m(y+m),\qquad
q_mr^m=\frac{(y-1)^m(y+m)-(y+1)^m(y-m)}
{2m(m^2-1)}.
\tag{A.5}
\]
The latter has degree \(m-2\), which is useful in the direct angular evaluator.

For the traceless momentum of Section 2, \(C_\pm=A\pm iB\) satisfy
\[
C_\pm'+\left(\frac2r\pm\frac{k}{ry}\right)C_\pm
=j_r\pm\frac{ij_\theta}{ry}.
\tag{A.6}
\]
A particular solution is
\[
C_\pm(r)=\frac{z^{\mp k}}{r^2}
\int_0^r s^2z(s)^{\pm k}
\left(j_r(s)\pm\frac{ij_\theta(s)}{s\sqrt{1+s^2}}\right)ds .
\tag{A.7}
\]
For \(k\ge2\), add \(cz^k/r^2\) to \(C_-\); for \(k\le-2\), add \(cz^{-k}/r^2\) to \(C_+\). These additions are center regular. Fix \(c\) by equality of the asymptotic coefficients of \(r^2C_+\) and \(r^2C_-\), which is exactly the zero-independent-boundary-momentum condition. For \(k=0,\pm1\), center regularity fixes the relevant homogeneous freedom and the matter charge is retained. This completes the spatial input for arbitrary external modes.

## A.2 Circular sources as finite coefficient lists

Put \(x=y^{-1}\); this differs from \(X=f^{-1}=x^2\) in Section 2. For angular momentum zero, remove the angular normalization and write
\[
R_n(x)=x^\Delta\sum_{i=0}^n a_{ni}x^{2i},\qquad
a_{ni}=\frac{(\Delta)_n}{n!}
\frac{(-n)_i(n+\Delta)_i}{(\Delta)_i\,i!},
\qquad \omega_n=\Delta+2n.
\tag{A.8}
\]
A signed leg \(a=(n,\varepsilon)\) has
\(\chi_a=-i\varepsilon\omega_nxR_n\); a creation leg has \(\varepsilon=-1\).
For \(a=(n,\varepsilon)\), \(b=(m,\eta)\), define
\[
\begin{aligned}
\rho_{ab}&=\frac12\left[
-\varepsilon\eta\omega_n\omega_mx^2R_nR_m
+x^2(1-x^2)R_n'R_m'+\mu R_nR_m\right]
=x^{2\Delta}\sum_h\rho_{ab,h}x^{2h},\\
Q_{ab}&=(-\varepsilon\eta\omega_n\omega_mx^2-\mu)R_nR_m
=x^{2\Delta}\sum_hq_{ab,h}x^{2h},\\
j_{y,ab}&=\frac14(\chi_a\partial_yR_m+\chi_b\partial_yR_n)
=ix^{2\Delta+2}\sum_hj_{ab,h}x^{2h}.
\end{aligned}
\tag{A.9}
\]
Their complete lists are
\[
\begin{aligned}
\rho_{ab,h}={}&\frac12\sum_{i+j=h}a_{ni}a_{mj}
[(\Delta+2i)(\Delta+2j)+\mu]\\
&-\frac12\sum_{i+j=h-1}a_{ni}a_{mj}
[(\Delta+2i)(\Delta+2j)+\varepsilon\eta\omega_n\omega_m],\\
q_{ab,h}={}&-\mu\sum_{i+j=h}a_{ni}a_{mj}
-\varepsilon\eta\omega_n\omega_m\sum_{i+j=h-1}a_{ni}a_{mj},\\
j_{ab,h}={}&\frac14\sum_{i+j=h}a_{ni}a_{mj}
[\varepsilon\omega_n(\Delta+2j)+\eta\omega_m(\Delta+2i)] .
\end{aligned}
\tag{A.10}
\]
Out-of-range coefficients are zero. Thus \(\rho,q\) stop at \(h=n+m+1\), and \(j\) at \(h=n+m\).

The zero-angular scalar identity
\[
L_0[y^{-s}]=-(s-2)(s+1)y^{-s}+s(s+1)y^{-s-2}
\tag{A.11}
\]
reduces every inverse to one common nonpolynomial function:
\[
U_\Delta(x)=\frac{\Delta}{4x}
\int_0^x\frac{t^2-t^{2\Delta}}{1-t^2}\,dt,\qquad
L_0U_\Delta=\frac{\Delta(\Delta-1)}2x^{2\Delta}.
\tag{A.12}
\]
It is regular at \(x=1\) and \(O(x^2)\) at \(x=0\).
Iteration of (A.11) gives
\[
L_0^{-1}[x^{2\Delta+2h}]
=\frac{\Delta-1}{\Delta+h-1}L_0^{-1}[x^{2\Delta}]
+\sum_{i=0}^{h-1}
\frac{x^{2\Delta+2i}}{2(2\Delta+2i+1)(\Delta+h-1)} .
\tag{A.13}
\]
Hence
\[
\begin{aligned}
u_{ab}&=\alpha_{ab}U_\Delta
+x^{2\Delta}\sum_i\beta_{ab,i}x^{2i},\\
\alpha_{ab}&=\sum_h\frac{\rho_{ab,h}}{\Delta(\Delta+h-1)},\\
\beta_{ab,i}&=\sum_{h>i}
\frac{\rho_{ab,h}}{4(2\Delta+2i+1)(\Delta+h-1)}.
\end{aligned}
\tag{A.14}
\]
The free energy inner product proves
\[
\alpha_{(n,\varepsilon)(m,\eta)}
=\frac2\Delta\int_1^\infty y\rho_{ab}(y)\,dy
=\frac{\omega_n}{\Delta}\delta_{nm}\delta_{\varepsilon,-\eta}.
\tag{A.15}
\]
Thus only diagonal number-preserving pairs retain the nonpolynomial response.

For circular momentum \(t^i{}_j=\operatorname{diag}(A,-A)\),
\[
A_{ab}(x)=\frac{ix^2}{1-x^2}
\sum_hj_{ab,h}F_{2\Delta+2h-1}(x),\qquad
F_a(x)=\frac{1-x^a}{a}-\frac{1-x^{a+2}}{a+2}.
\tag{A.16}
\]
This follows by integrating
\(\partial_yA+2yA/(y^2-1)=j_y\) from the center. There is no center-regular \(1/r^2\) homogeneous addition at angular momentum zero.

## A.3 All radial integrations and the nonpolynomial cancellation

The energy measure becomes \(dx/x^3\). The momentum integral is
\[
\int_0^1\frac{xF_a(x)F_b(x)}{(1-x^2)^2}\,dx
=\frac1{(a+2)(b+2)(a+b+2)}.
\tag{A.17}
\]
To derive it, integrate with
\(\partial_x(1-x^2)^{-1}=2x(1-x^2)^{-2}\) and
\(F_a'=-x^{a-1}(1-x^2)\). The lower boundary contribution
\(-2/[a(a+2)b(b+2)]\) is essential. Here \(a,b>1\), so all original integrals converge.

For the scalar terms introduce
\[
Z_h=\int_0^1x^{2\Delta+2h-3}U_\Delta(x)\,dx,\qquad
S_U=\int_0^1x^{-3}U_\Delta(x)^2dx .
\]
Differentiating the integral in (A.12), then integrating by parts, gives
\[
\begin{aligned}
(2\Delta+2h-1)Z_{h+1}-(2\Delta+2h-3)Z_h
&=\frac{\Delta}{8}
\left(\frac1{\Delta+h}-\frac1{2\Delta+h-1}\right),\\
S_U&=\frac{\Delta}{8}
\left(\frac{\Delta-1}{8}-Z_0-Z_1\right).
\end{aligned}
\tag{A.18}
\]
The coefficient of \(Z_0\) cancels in every complete resonant circular matrix element. Here is the all-label argument.

Off-diagonal elements have no nonzero \(\alpha\): matching one creation and annihilation radial label forces the other labels to match by energy conservation. For a diagonal pair put
\[
\rho_n=\rho_{(n,-)(n,+)},\quad Q_n=Q_{(n,-)(n,+)},\quad
\alpha_n=\omega_n/\Delta,\quad v_n=u_{(n,-)(n,+)}-\alpha_nU_\Delta .
\]
Initially take \(\Delta>3/2\), so the following intermediate moments converge separately. Self-adjointness of \(L_0\), paired with \(1,y^2\), gives
\[
\int_1^\infty y^2(Q_n+8v_n)\,dy
=\int_1^\infty[y^2(Q_n-\rho_n)+\rho_n]\,dy
+\alpha_n\int_1^\infty(y^2-1)\rho_0\,dy .
\tag{A.19}
\]
The first integral is zero. Multiply the free radial equation
\[
-\partial_y[y(y^2-1)R_n']
+(\mu y-\omega_n^2/y)R_n=0
\]
by \((y^2-1)R_n'\) and integrate; the result is twice that first integral. The boundary terms vanish at the center and are \(O(y^{3-2\Delta})\) at infinity. Therefore
\[
T_n:=\int_1^\infty y^2(Q_n+8v_n)\,dy
=\alpha_n\frac{2\Delta(\Delta-1)}
{(2\Delta-3)(2\Delta-1)} .
\tag{A.20}
\]
By (A.18), the coefficient of \(Z_0\) in \(Z_h\) is
\((2\Delta-3)/(2\Delta+2h-3)\), and that in \(S_U\) is
\(-\Delta(\Delta-1)/[2(2\Delta-1)]\).
The two complementary nonlocal pairings have total coefficient
\[
-(2\Delta-3)(\alpha_nT_m+\alpha_mT_n)
+\frac{4\Delta(\Delta-1)}{2\Delta-1}\alpha_n\alpha_m=0.
\tag{A.21}
\]
Repeated-leg multiplicities multiply this zero and cause no exception.

The original complete integrals and their fixed-order \(\Delta\) derivatives have integrable bounds on compact subintervals of \(\Delta>1\). They are real analytic there. The final rational expression below has no pole on that interval. Hence equality on \(\Delta>3/2\) extends to all \(\Delta>1\); the divergent intermediate moments in (A.20) are never used literally below that threshold.

We may therefore replace the moments *in a complete resonant element* by
\[
\widehat Z_0=0,\qquad
\widehat Z_h=\frac{\Delta}{8(2\Delta+2h-3)}
\sum_{a=0}^{h-1}\left(\frac1{\Delta+a}-\frac1{2\Delta+a-1}\right)
\quad(h\ge1),
\tag{A.22}
\]
\[
\widehat S_U=\frac{\Delta}{8}
\left(\frac{\Delta-1}{8}-\widehat Z_1\right).
\]
This is an algebraic cancellation in the complete matrix, not a finite-part prescription and not deletion of the physical function \(U_\Delta\).

For two source pairs define the evaluated rational pairing
\[
\begin{aligned}
\mathcal B(ab;cd)={}&
-2\sum_{h,j}\frac{j_{ab,h}j_{cd,j}}
{(2\Delta+2h+1)(2\Delta+2j+1)(4\Delta+2h+2j)}\\
&-\alpha_{ab}\sum_hq_{cd,h}\widehat Z_h
-\sum_{i,h}\frac{\beta_{ab,i}q_{cd,h}}
{4\Delta+2i+2h-2}\\
&-4\left[
\alpha_{ab}\alpha_{cd}\widehat S_U
+\alpha_{ab}\sum_j\beta_{cd,j}\widehat Z_j
+\alpha_{cd}\sum_i\beta_{ab,i}\widehat Z_i
+\sum_{i,j}\frac{\beta_{ab,i}\beta_{cd,j}}
{4\Delta+2i+2j-2}
\right].
\end{aligned}
\tag{A.23}
\]
Its three lines integrate \(2A_{ab}A_{cd}\), \(-u_{ab}Q_{cd}\), and
\(-4u_{ab}u_{cd}\). The sign of the momentum term comes from \(i^2=-1\).

## A.4 Circular compression and invertible primary extraction

Let \(T\) denote the total radial sum, so that the total chiral levels of a circular pair are \((T,T)\). Define
\[
|r;T\rangle=
\frac{b^\dagger_{r,0}b^\dagger_{T-r,0}|0\rangle}
{\sqrt{1+\delta_{2r,T}}},
\quad 0\le r\le\lfloor T/2\rfloor,
\qquad
\mathsf M^{(T)}_{rs}=\langle r;T|W|s;T\rangle.
\]
Every quadratic factor in a four-leg circular density pairing has zero angular harmonic, so the connected \(D_m^\dagger D_m\) term is absent here. Contractions creating one-body terms are excluded by the four-leg extraction, not assumed to vanish.

For legs
\[
(a_1,a_2,a_3,a_4)
=((r,-1),(T-r,-1),(s,+1),(T-s,+1)),
\]
the matrix is
\[
\boxed{
\mathsf M^{(T)}_{rs}
=\frac{32}{\sqrt{(1+\delta_{2r,T})(1+\delta_{2s,T})}}
\sum_{\substack{A\subset\{1,2,3,4\}\\|A|=2}}
\mathcal B(a_A;a_{A^c}).
}
\tag{A.24}
\]
The six subsets use four distinct leg slots even when physical labels coincide.
The coefficient \(32\) is \(16\pi\), times the four ordered source polarizations, times \(2\pi/(2\pi)^2\). All source coefficients, all integrals, and all Bose factors have now been specified by finite rational operations.

Construct the orthogonal chiral matrix \(U^{(T)}\) from (4.4):
\[
\sum_{p=0}^T U^{(T)}_{pk}|p,T-p\rangle
=\frac{(L_+^{(1)}+L_+^{(2)})^{T-k}}
{\sqrt{(T-k)!(2\Delta+2k)_{T-k}}}
\sum_{p=0}^k v_p^{(k)}|p,k-p\rangle.
\tag{A.25}
\]
Put \(s_r=\sqrt{2/(1+\delta_{2r,T})}\) and
\(C_{r;k\ell}=s_rU^{(T)}_{rk}U^{(T)}_{r\ell}\).
The global Ward identity and pair multiplicity one imply the compression relation
\[
\mathsf M^{(T)}
=\sum_{\substack{0\le k,\ell\le T\\k+\ell\ {\rm even}}}
C_{;k\ell}C_{;k\ell}^{T}\gamma_{k\ell}.
\tag{A.26}
\]

Starting from \(T=0\), subtract all already known terms with \(k,\ell<T\).
For the remaining matrix \(\mathsf M_{\rm new}^{(T)}\), define
\[
\mathsf D_T=\operatorname{diag}_r U^{(T)}_{rT},
\qquad
(\mathsf O_T)_{ra}=s_rU^{(T)}_{ra},
\qquad a=T,T-2,\ldots .
\]
Paired-row orthogonality gives \(\mathsf O_T^T\mathsf O_T=I\).
Every \(U^{(T)}_{rT}=v_r^{(T)}\) is nonzero at \(\Delta>1\).
Therefore
\[
\boxed{
\mathsf O_T^T\mathsf D_T^{-1}\mathsf M_{\rm new}^{(T)}
\mathsf D_T^{-1}\mathsf O_T
=\operatorname{diag}_{a=T,T-2,\ldots}
\bigl[(2-\delta_{aT})g_{a,T-a}\bigr].
}
\tag{A.27}
\]
The factor two comes from the ordered pair labels \((T,a),(a,T)\) when \(a<T\). Equation (A.27) is an invertible reconstruction. To obtain \(g_{n,s}\), it suffices to compute through \(T=n+s\). Off-diagonal entries of (A.27) are required to vanish; the implementation checks them rather than dropping them.

**Proposition PHY-07 (direct canonical finite evaluation).**
Equations (A.8), (A.10), (A.14), and (A.22)–(A.27) determine every finite-label connected pair coefficient in the canonical boundary prescription by a finite sequence of rational operations, with free algebraic normalization factors if an orthonormal basis is used. All denominators in the rational evaluator are nonsingular for \(\Delta>1\).

For an explicit ground-state check, the mixed-sign scalar response is \(U_\Delta\); the same-sign scalar response is
\(-\Delta y^{-2\Delta}/[4(2\Delta+1)]\), and the same-sign momentum is \(\pm iM\), where
\[
M(y)=\frac{\Delta^2}{2(y^2-1)}
\left[\frac{1-y^{1-2\Delta}}{2\Delta-1}
-\frac{1-y^{-2\Delta-1}}{2\Delta+1}\right].
\]
The two same-sign partitions sum to
\(-\Delta^2(2\Delta-3)/[8(4\Delta^2-1)]\); the four mixed-sign partitions sum to
\(-\Delta^2(\Delta-1)/[2(2\Delta-1)]\).
Equations (A.17)–(A.18) evaluate both, including
\(4\int_1^\infty yM^2dy=\Delta^3/[4(2\Delta+1)^2]\).
The repeated-pair Bose factor makes the overall coefficient \(16\), giving
\[
g_{0,0}=-\frac{2\Delta^2(8\Delta^2-2\Delta-7)}
{(2\Delta-1)(2\Delta+1)}.
\tag{A.28}
\]
This equals (4.24) and is a direct constraint integral.

## A.5 Independent angular exchange

For arbitrary external signed legs \(a_1=(I,-),a_2=(J,-),a_3=(K,+),a_4=(L,+)\), let \(k_A\) be the angular sum of a two-leg subset. With the angular normalization removed define
\[
I_m(a,b)=\int_1^\infty p_m(y)\rho_{ab}(y)\,dy .
\]
Four-leg extraction of the density anticommutator gives
\[
\boxed{
\mathsf X_{IJ;KL}
=-\frac8{\sqrt{(1+\delta_{IJ})(1+\delta_{KL})}}
\sum_{\substack{|A|=2\\|k_A|\ge2}}
\frac{I_{|k_A|}(a_A)I_{|k_A|}(a_{A^c})}{k_A^2-1}.
}
\tag{A.29}
\]
The angular selection rule has performed the entire internal graviton sum.
Only finitely many \(|k_A|\) occur at fixed external labels. Combining (A.29) with the full angular inverses (A.4), (A.7) gives the independent matrix (4.25).

## A.6 What de Donder accessibility does and does not supply

The original response notes also contain a useful conditional gauge construction. It is separate from the canonical constraint inverse and from the time-averaged response bridge. Define
\[
C_\nu[q]=\nabla^\mu q_{\mu\nu}-\tfrac12\nabla_\nu q,
\qquad \mathcal Q\xi_\nu=(\Box-2)\xi_\nu .
\]
The curvature identity on AdS gives
\(C[q+\mathcal L_\xi g_0]=C[q]+\mathcal Q\xi\).
Proper vectors obey \(\xi^r=O(r^{-1})\), \(\xi^a=O(r^{-4})\), with differentiated falloffs.

**Proposition PHY-14 (conditional finite-time gauge construction).** Suppose a smooth scalar-sourced Einstein response admits a complete log-free asymptotic power expansion with differentiated remainder bounds, has the stated regular center and reflecting boundary domain, and the auxiliary positive-mass wave problems below have smooth solutions in that domain. If
\(\Delta>1\) and \(\Delta\ne\Delta_{\mathrm{dD}}=(1+\sqrt5)/2\), it has a smooth proper log-free de Donder representative on every fixed finite time interval. This assertion contains no uniform infinite-time bound.

**Construction and proof.** In a boundary collar, set
\[
\eta^r=\frac{\sqrt f}{2}\int_r^\infty\sqrt{f(s)}q_{rr}(s,x)\,ds,
\qquad
\eta^a=\int_r^\infty g_0^{ab}(s)
\left[q_{rb}(s,x)+\frac{\partial_b\eta^r(s,x)}{f(s)}\right]ds.
\tag{A.30}
\]
Differentiation puts \(q_c=q+\mathcal L_\eta g_0\) in radial gauge. Cut off \(\eta\) near the center. The sourced radial Einstein constraints, whose matter terms are subleading for \(\Delta>1\), give
\[
b_{tt}=b_{\theta\theta},\qquad
\partial_tb_{\theta\theta}=\partial_\theta b_{t\theta},\qquad
\partial_tb_{t\theta}=\partial_\theta b_{tt}
\]
for its order-one tangential coefficients. They cancel the possible leading \(r^{-2}\) tangential and \(r^{-3}\) radial terms of \(C[q_c]\). The remaining exponents belong to
\(\mathcal S=\{4+2n\}\cup\{2\Delta+2n\}\), \(n\ge0\).

For covector coefficients \(\xi_a=a_{a,s}r^{-s}\), \(\xi_r=a_{r,s}r^{-s-1}\), the leading gauge operator gives
\[
a_{r,s}=\frac{\widehat F_{r,s}}{s^2-2s-4},\qquad
a_{a,s}=\frac{\widehat F_{a,s}-2\partial_aa_{r,s}}{s^2-4}.
\tag{A.31}
\]
The hats subtract the contributions already found at smaller exponents. The positive indicial roots are \(2\) and \(1+\sqrt5\). All \(s\in\mathcal S\) exceed two; the second root occurs in this set only at \(n=0,\Delta=\Delta_{\mathrm{dD}}\). Away from it, (A.31) recursively fixes every power coefficient. A smooth asymptotic Borel lift, cut off near the center, yields \(\xi_{\rm as}\) with a remainder
\(F=-C[q_c]-\mathcal Q\xi_{\rm as}\) decaying with all derivatives faster than any inverse power.

It remains to solve an exact wave equation, not just a formal boundary expansion. Put
\[
(\mathcal Pv)_\nu=\nabla^\mu(\nabla_\mu v_\nu-\nabla_\nu v_\mu)-4v_\nu.
\]
Then \(\mathcal Qv=\mathcal Pv+\nabla(\nabla\cdot v)\),
\(\nabla\cdot\mathcal Pv=-4\nabla\cdot v\), and
\(\mathcal Q\nabla u=\nabla(\Box-4)u\).
Solve \(\mathcal Pv=F\) and \((\Box-4)u=\nabla\cdot F\) with the assumed normalizable reflecting realization. These equations have positive mass squared four. For the vector, eliminating its time component gives the positive energy
\[
\frac12\int_\Sigma N\sqrt\sigma
\left[e_ie^i+\tfrac12f_{ij}f^{ij}+4v_iv^i
+\tfrac14(D_ie^i)^2\right].
\]
The prescribed positive spatial realization and its Duhamel solution are the analytic input; symbolic indicial calculations do not prove their smooth asymptotic domain by themselves. With those hypotheses,
\(\zeta=v+\nabla u/4\) satisfies \(\mathcal Q\zeta=F\). Thus
\(q^{\rm dD}=q+\mathcal L_{\eta+\xi_{\rm as}+\zeta}g_0\)
has \(C[q^{\rm dD}]=0\) everywhere on the chosen interval. The fast homogeneous vector and scalar branches preserve the stipulated proper falloffs. \(\square\)

The exceptional mass has a real log-free gauge obstruction for generic sources. In de Donder gauge,
\[
(\Box-4)q^{\rm dD}=2T,
\qquad
T=-\Delta(2\Delta-3)\beta(t,\theta)^2r^{-2\Delta}+\cdots .
\tag{A.32}
\]
At \(\Delta_{\mathrm{dD}}\), the indicial coefficient \(s(s-2)-4\) at \(s=2\Delta_{\mathrm{dD}}\) vanishes, while
\(-\Delta_{\mathrm{dD}}(2\Delta_{\mathrm{dD}}-3)=(\sqrt5-3)/2\ne0\).
A nonzero resonant source coefficient therefore requires a logarithmic trace; a pure-power response cannot match it. The original polar-areal response can remain smooth at this mass. This is a restriction of the requested log-free de Donder representative, not a pole of the pair spectrum.

Finally, an arbitrary off-shell Brown–Henneaux field does not satisfy the leading radial Einstein constraints used above. A concrete smooth example is
\[
q_{t\theta}=A(t)\frac{r^4}{(1+r^2)^2},\qquad A'\not\equiv0,
\quad C_\theta=-\frac{A'(t)r^4}{(1+r^2)^3}.
\]
For the angular average \(a(t,r)=\langle\xi_\theta\rangle\), the gauge equation becomes
\[
(1+r^2)a_{rr}+(r-r^{-1})a_r
-\frac{a_{tt}}{1+r^2}-4a
=\frac{A'(t)r^4}{(1+r^2)^3}.
\tag{A.33}
\]
The proper leading power \(r^{-2}\) is homogeneous. Matching the source forces
\(a=-A'r^{-2}\log r/4+\cdots\), and hence
\((\mathcal L_\xi g_0)_{r\theta}=A'r^{-3}\log r-A'r^{-3}/4+\cdots\),
which violates the differentiated Brown–Henneaux bound. A residual solution cannot change this inhomogeneous equation. This explicit obstruction is why an on-shell gauge-accessibility argument does not authorize an off-shell TT or de Donder truncation before the canonical variation.

# Appendix B. One-body quantum subtraction in the common regulator

This appendix proves the subtraction statement used in Section 3.4. It keeps distinct the finite algebra of normal ordering, the convergence of boundary-oscillator sums, the short-time scalar trace, and the local counterterms. The final statement concerns fixed external modes; no estimate uniform in external excitation is required or claimed.

## B.1 The seagull and energy-weighted cubic cancellation

Restore the independent gravitational momentum as
\(t=\tau_g/\kappa+t_\phi\). Let
\(Lu_\phi=\rho/2\), \(Lu_{\tau_g}=\tau_g:\tau_g/2\).
Expansion of the constraint gives the contact
\[
V_{p^2\phi^2}
=\int_\Sigma y\sqrt{\bar\sigma}\,
(-u_{\tau_g}\chi^2+\mu u_{\tau_g}\phi^2
-8u_\phi u_{\tau_g}-2u_\phi\tau_g:\tau_g).
\tag{B.1}
\]
The last term comes from the momentum prefactor \(e^{-2\Psi}\).
With boundary Abel parameter \(0<\alpha<1\), and \(t=z^2\) only inside the next display, the executed sums are
\[
\begin{aligned}
W_\alpha(t)&=\langle\tau_g:\tau_g\rangle_\alpha
=\frac{3\alpha^2(1-t)^4}{8\pi(1-\alpha t)^4},\\
U_\alpha(t)&=\langle u_{\tau_g}\rangle_\alpha\\
&=\frac1{32\pi}\left[
\frac{2+\alpha-2(-1+\alpha+3\alpha^2)t
+\alpha(-3+2\alpha+4\alpha^2)t^2}{(1-\alpha t)^2}
-\frac{2(\alpha^2-1)(1+t)}{\alpha(t-1)}
\log\frac{1-\alpha t}{1-\alpha}\right],\\
\alpha_{\rm emb}
&=-\langle\eta\eta''\rangle_\alpha
=\frac{-(\alpha+\alpha^{-1})\log(1-\alpha)/2-1/2-\alpha/4}
{4\pi}.
\end{aligned}
\tag{B.2}
\]
Here \(LU_\alpha=W_\alpha/2\), with regular/fast conditions, and the embedding contributes \(\alpha_{\rm emb}H_0\). Symmetric displacement–momentum contractions vanish by Weyl ordering.

Use angular-normalization-stripped \(R_I(y)\), let \(Lu_I=\rho_I/2\), and note
\[
\int_1^\infty y\rho_I\,dy=\omega_I/2,\qquad
u_I=\frac{\omega_I}{12y^2}+o(y^{-2}).
\]
The full regulated contact is
\[
\frac{s_I^{\rm grav}(\alpha)}{16\pi}
=2\int_1^\infty y
\left[U_\alpha\left(-\frac{\omega_I^2}{y^2}+\mu\right)R_I^2
-u_I(8U_\alpha+2W_\alpha)\right]dy
+\alpha_{\rm emb}\omega_I .
\tag{B.3}
\]
Its limit cannot be obtained by inserting the pointwise limits of (B.2).
Split \(u_I=\omega_I/(12y^2)+v_I\) first. The identity
\[
\int_1^\infty\frac{U_\alpha}{y}\,dy
=\frac14\int_1^\infty\frac{W_\alpha}{y}\,dy
-\int_1^\infty\frac{U_\alpha}{y^3}\,dy
\]
and
\(W_\alpha(y)=6\alpha^2/\{\pi[(1-\alpha)y+1+\alpha]^4\}\)
evaluate the nonuniform tail. The remaining \(v_I\) integral is dominated.
The result is
\[
\begin{aligned}
s_I^{\rm grav}={}&
3\int_1^\infty y(-\omega_I^2/y^2+\mu)R_I^2dy
-8\int_1^\infty\rho_Idy\\
&+8\int_1^\infty y\log\frac{y+1}{2}\rho_Idy+4\omega_I.
\end{aligned}
\tag{B.4}
\]

The energy-weighted double commutator is evaluated by the density generator
\(E_f=\int\sqrt{\bar\sigma}\,f\rho\).
Its associated spatial vector is \(v^i=y\bar D^if-f\bar D^iy\).
For \(f=p_me^{im\theta}\), \(\bar D_iv^i=0\).
The two required summed kernels are
\[
\sum_{m\ge2}N_m^2(v\cdot\bar Df^*)
=\frac{y-1+4y\log[(y+1)/2]}{16\pi},
\quad
\sum_{m\ge2}N_m^2p_m[(y^2-1)\partial_yv^y-yv^y]
=\frac{3y(y-1)^2}{32\pi},
\]
where \(N_m=[8\pi m(m^2-1)]^{-1/2}\).
They give
\[
\begin{aligned}
s_I^{\rm cc,E}
=\int_1^\infty\left[
-2\left(y-1+4y\log\frac{y+1}{2}\right)\rho_I
+3y(y-1)^2
\left((R_I')^2-\frac{j_I^2R_I^2}{(y^2-1)^2}\right)
\right]dy .
\end{aligned}
\tag{B.5}
\]

The logarithms cancel in (B.4)+(B.5). The remaining integrand is the integrated virial derivative obtained by multiplying
\[
-\partial_y[y(y^2-1)R_I']
+\left(\mu y+\frac{j_I^2y}{y^2-1}
-\frac{\omega_I^2}{y}\right)R_I=0
\]
by \(-2(y-1)R_I'\). Its boundary primitive is
\[
(y-1)\left[
y(y^2-1)(R_I')^2
-\left(\mu y+\frac{j_I^2y}{y^2-1}
-\frac{\omega_I^2}{y}\right)R_I^2
\right].
\tag{B.6}
\]
It vanishes at the center and is \(O(y^{2-2\Delta})\) at infinity.
The free norm accounts for the \(4\omega_I\) term. Thus
\(s_I^{\rm grav}+s_I^{\rm cc,E}=0\) for all fixed \(I,\Delta>1\).

The use of a common regulator is justified independently. Write the density as
\(\mathcal E_m=\sum A^m_{KL}b_K^\dagger b_L+
\frac12\sum(B^m_{KL}b_Kb_L+C^m_{KL}b_K^\dagger b_L^\dagger)\).
Its individual vacuum-subtracted coefficients are
\[
\begin{aligned}
c^E_{I;mJ}=16\pi N_m^2\bigl[
(\omega_I-\omega_J)(|A^m_{JI}|^2+|A^m_{IJ}|^2)
-(\omega_I+\omega_J)(|B^m_{IJ}|^2+|C^m_{IJ}|^2)\bigr],\\
c^F_{I;mJ}=-16\pi mN_m^2
(|A^m_{JI}|^2+|A^m_{IJ}|^2+|B^m_{IJ}|^2+|C^m_{IJ}|^2).
\end{aligned}
\tag{B.7}
\]
At fixed \(m\), the generated Cauchy data are in the free-energy form domain:
their asymptotics are \(O(y^{-\Delta})\), \(O(y^{-\Delta-1})\), with integrable energy weight \(y^{1-2\Delta}\). Parseval therefore performs the scalar completeness sum. For the remaining \(m\)-sum, positive kernels
\[
\begin{aligned}
\mathscr A_m&=z^{2m}\left[
m(my+1)+\frac{m^2(y+m)(y^2+2my+1)}{y^2-1}\right],\\
\mathscr B_m&=m(m^2-1)yz^{2m}(y+m)
\end{aligned}
\]
have the summed bounds displayed before (B.5). Their products with
\(|\rho_I|\) and \((R_I')^2+j_I^2R_I^2/(y^2-1)^2\) have integrable tails
\(O(y^{1-2\Delta}\log y)\).
Only finitely many \(c^E\) can be positive, those with \(\omega_J<\omega_I\), so convergence of the signed sum proves absolute convergence.
For \(\omega_J\ge2\omega_I\), angular support
\(m<\omega_I+\omega_J\) gives \(|c^F|\le3|c^E|\); the remainder is finite.
Hence both arrays are absolutely summable.
For \(r_I=e^{-\tau\omega_I/2}\), dominated convergence now proves
\[
r_I^2\sum_{m,J}\alpha^m(r_J^2-1)c^E_{I;mJ}\longrightarrow0,
\qquad
\sum_{m,J}(\alpha^m-1)e^{-\tau\omega_J}c^F_{I;mJ}
\longrightarrow0
\tag{B.8}
\]
along every path \(\tau\downarrow0,\alpha\uparrow1\).

## B.2 Partial-trace normalization and all-external reconstruction

Let the unsymmetrized four-leg kernel be
\[
\mathcal V_{IJ;KL}=\langle0|b_Jb_IWb_K^\dagger b_L^\dagger|0\rangle .
\]
It equals \(\sqrt{(1+\delta_{IJ})(1+\delta_{KL})}\mathsf M_{IJ;KL}\);
as an operator on labelled tensors it is twice the physical pair operator extended by zero on the antisymmetric subspace. Thus the Weyl trace is
\[
T_R=\frac12\operatorname{Tr}_2[(1\otimes R)\mathcal V].
\tag{B.9}
\]
The factor \(1/2\) is fixed, including on identical modes.
For finite-support \(R\), the exact intertwining identity yields
\[
[T_R,q_\chi]=-\frac12\operatorname{Tr}_2
[(1\otimes[q_\chi,R])\mathcal V].
\tag{B.10}
\]
This exposes the regulator defect instead of replacing a divergent partial trace by a cyclic trace at \(R=1\).

Use two independent positive chiral times:
\[
R_{P,Q}(t_L,t_R)=e^{-t_L(\Delta/2+P)-t_R(\Delta/2+Q)},\qquad
T_{p,q}=\frac12\sum_{P,Q\ge0}R_{P,Q}
\mathcal V_{(p,q)(P,Q);(p,q)(P,Q)} .
\]
The closed pair coefficient grows at most quadratically in pair energy, so for fixed external labels all relevant matrix elements and every fixed number of thermal derivatives grow polynomially in \(P+Q\). Exponential damping justifies the cutoff limit of (B.10) at positive \(t_L,t_R\), including disappearance of the last-shell terms.

On diagonal sequences define
\[
\begin{aligned}
(\mathscr Lf)_p
&=(p+1)(\Delta+p)(f_{p+1}-f_p)
+p(\Delta+p-1)(f_{p-1}-f_p),\\
\mathscr D_t
&=2(\cosh t-1)
\left(\partial_t^2+\frac\Delta2(1-\frac\Delta2)\right)
+2\sinh t\,\partial_t .
\end{aligned}
\tag{B.11}
\]
The adjoint Casimir transfers through the positive-time trace and gives
\(\mathscr L_pT=\mathscr D_{t_L}T\),
\(\mathscr L_qT=\mathscr D_{t_R}T\).
The thermal identity is checked by applying \(\mathscr L\) to
\(e^{-t(\Delta/2+P)}\): the result divided by this exponential is
\((P+1)(\Delta+P)(e^{-t}-1)+P(\Delta+P-1)(e^t-1)\), exactly (B.11).

Define the finite Newton polynomial
\[
\mathcal P_p(z)
=\sum_{k=0}^p
\frac{\binom pk}{k!(\Delta)_k}
\prod_{r=0}^{k-1}[z-r(r+1)] .
\tag{B.12}
\]
Then
\[
\boxed{
T_{p,q}(t_L,t_R)
=\mathcal P_p(\mathscr D_{t_L})
\mathcal P_q(\mathscr D_{t_R})T_{0,0}(t_L,t_R).
}
\tag{B.13}
\]
For a proof, write \(A_{p,k}=\binom pk/[k!(\Delta)_k]\) and
\(F_k=\prod_{r<k}[z-r(r+1)]\). Since
\(zF_k=F_{k+1}+k(k+1)F_k\), the recurrence reduces to
\[
(p+1)(\Delta+p)(A_{p+1,k}-A_{p,k})
+p(\Delta+p-1)(A_{p-1,k}-A_{p,k})
=A_{p,k-1}+k(k+1)A_{p,k}.
\tag{B.14}
\]
The ratios
\((p+1)/(p+1-k)\), \((p-k)/p\), and
\(k^2(\Delta+k-1)/(p-k+1)\) reduce it to a rational identity.
The \(k=0\) row is zero, and the top row is
\((p+1)(\Delta+p)A_{p+1,p+1}=A_{p,p}\).
The positive forward coefficient proves uniqueness, first in \(p\) and then in \(q\).

The Hartree kernel is the labelled distinguishable crossed pairing, with the required factor one half. It obeys the same Ward transfer separately; the exchange kernel, as its difference from the total trace, does too. Angular-current terms of the Hartree pairing are retained before the isotropic trace. They vanish for a ground external mode but not for arbitrary unequal chiral times.

## B.3 The directly evaluated ground exchange

Write \(d=\Delta\) in this subsection. For internal chiral labels \(P,Q\), let
\(L=P+Q\), \(w=d+L\), \(a=P-Q\). The result obtained from the original scalar and momentum constraints is
\[
X_{P,Q}
=-\frac{4d(d)_P(d)_Q\Gamma(L-1)}
{P!Q!(2d-1)_{L+3}}\,
\mathcal P_d(w,a),\qquad L\ge2,
\tag{B.15}
\]
\[
\mathcal P_d(w,a)
=(d-1)w^4-2d(d^2-d-1)w^2+d^3(d-2)(d+1)
-(2d-1)a^2[w^2+d(d+1)].
\tag{B.16}
\]
The physical lowest rows, evaluated with their center conditions, are
\[
X_{0,0}=-\frac{2d^2(4d^2-5)}{4d^2-1},
\qquad
X_{1,0}=X_{0,1}=\frac{4d^2}{4d^2-1}.
\tag{B.17}
\]
The derivation from the constraints, including the finite six-coefficient current and the global-channel limits, is supplied in Appendix B.7. Thus (B.15) is an evaluated dynamical input with a proof below, not an assumption of a vanishing self-energy.

At each \(L\), the weights \(b_k=(d)_k(d)_{L-k}/[k!(L-k)!]\) obey
\[
\sum_{k=0}^Lb_k=\frac{(2d)_L}{L!},\qquad
\frac{\sum_k(2k-L)^2b_k}{\sum_kb_k}
=\frac{L(L+2d)}{2d+1}.
\tag{B.18}
\]
They follow by differentiating
\((1-qz)^{-d}(1-q/z)^{-d}\).
Substituting them into (B.15) gives the constant high-shell sum
\(-4d^2(2d-3)/(4d^2-1)\). The absolute shell sum is uniformly bounded, because its positive prefactor is
\[
\frac{4d}{(2d-1)L(L-1)(L+2d)(L+2d+1)}
\]
and the numerator grows at most as \(L^4\).
For \(q=e^{-\tau}\), the completed sum is therefore
\[
s^{\rm X}_{00}(q)=q^d\left[
-\frac{2d^2(4d^2-5)}{4d^2-1}
+\frac{8d^2q}{4d^2-1}
-\frac{4d^2(2d-3)}{4d^2-1}\frac{q^2}{1-q}\right].
\tag{B.19}
\]
Its expansion is a simple pole plus \(O(\tau)\); the constant is zero.

That isotropic result alone does not suffice for (B.13), which differentiates away from \(t_L=t_R\). Put
\(\tau=(t_L+t_R)/2\), \(\eta=(t_L-t_R)/2\).
The beta identity
\[
\frac{\Gamma(L-1)}{(2d-1)_{L+3}}
=\frac{\Gamma(2d-1)}{\Gamma(2d+3)}
\int_0^\infty e^{-(d+L)s}[2\sinh(s/2)]^{2d+2}ds
\tag{B.20}
\]
and the binomial generating function give
\[
\begin{aligned}
\mathcal G_d(u,\eta)
&=[4\sinh((u+\eta)/2)\sinh((u-\eta)/2)]^{-d},\\
\mathcal J_d(\tau,\eta)
&=\int_0^\infty[2\sinh(s/2)]^{2d+2}
\bigl[\mathcal G_d(s+\tau,\eta)-e^{-d(s+\tau)}
-2de^{-(d+1)(s+\tau)}\cosh\eta\bigr]ds,\\
s_{00}^{\rm X}(t_L,t_R)
&=X_{0,0}e^{-d\tau}
+2X_{0,1}e^{-(d+1)\tau}\cosh\eta
-\frac{\mathcal P_d(-\partial_\tau,\partial_\eta)}
{(d+1)(4d^2-1)}\mathcal J_d(\tau,\eta).
\end{aligned}
\tag{B.21}
\]
At \(\tau>|\eta|\), the subtraction removes the \(L=0,1\) rows and the integral decays as \(e^{-s}\) at infinity, with every fixed derivative needed here.

Split it at a fixed small \(s_0>0\). The outer part is analytic near \((\tau,\eta)=0\), so its constant is direction independent. In the inner part set
\((s,\tau,\eta)=\epsilon(z,t,v)\), \(t>|v|\). Its leading measure-weighted kernel is
\[
\epsilon^3\frac{z^{2d+2}}{[(z+t)^2-v^2]^d}\,dz
\]
and its relative corrections have degrees \(2,4,\ldots\). The cancellation of the \(d\)-dependent powers is exact:
\(\epsilon^{2d+2}\epsilon^{-2d}\epsilon=\epsilon^3\).
Subtract a sufficient number of large-\(z\) terms before integrating each coefficient to \(s_0/\epsilon\). The removed terms match the outer Taylor series; marginal terms give logarithms. The remaining nonanalytic degrees are \(3,5,7,\ldots\). Since \(\mathcal P_d\) contains derivative orders zero, two, and four, the exchange has only odd nonanalytic degrees \(-1,1,3,\ldots\); none is zero or a negative even degree. The potential degree-three logarithm has a polynomial coefficient of degree three, annihilated by the fourth-order term. In particular, no \((\log\epsilon)/\epsilon\) remains.

The degree-zero term is consequently direction independent and is zero by (B.19). This endpoint expansion, after the stated subtractions, is differentiable to every fixed order on compact subcones \(t>|v|\). Under common scaling,
\[
\mathscr D_t=(t^2\partial_t^2+2t\partial_t)
+\text{terms raising degree by }2,4,\ldots .
\tag{B.22}
\]
Thus every fixed polynomial in the two \(\mathscr D\)'s preserves the parity of homogeneous degree and never lowers it. There is no negative even or zero exchange term to produce a constant. Equations (B.13), (B.21) therefore prove
\[
s^{\rm X}_{p,q}(\tau,\tau)=-C_{p,q}/\tau+o(1)
\tag{B.23}
\]
for every fixed external pair \(p,q\), at every \(d>1\).

## B.4 The pole is exactly a local kinetic matrix element

The leading gamma-ratio limit of (B.15), including the full angular range, gives the positive-time ground pole function
\[
\mathcal C_{00}(t_L,t_R)
=\frac{4d\Gamma(2d-1)}{\Gamma(d)^2}
\int_0^1
\frac{x^{d-1}(1-x)^{d-1}
[(d-1)-(2d-1)(2x-1)^2]}
{xt_L+(1-x)t_R}\,dx .
\tag{B.24}
\]
It is homogeneous of degree \(-1\), and appears with a minus sign in the exchange. The beta weight is integrable; fixed-\(P\) or fixed-\(Q\) rows decay as the other index to \(-d\), so \(d>1\) excludes an additional endpoint pole.

On degree \(-1\), the Euler operators satisfy \(E_R=-1-E_L\), so
\(E_L(E_L+1)=E_R(E_R+1)\). After the reconstruction this gives
\[
\mathscr L_pC_{p,q}=\mathscr L_qC_{p,q}.
\tag{B.25}
\]
An entire initial row is evaluated without fitting. For \(z=t_L/t_R\), let
\(D_z=z^2\partial_z^2+2z\partial_z\). The identity
\[
[D_z-k(k+1)]
\frac{z^k}{(1-x+xz)^{2k+1}}
=-(2k+2)(2k+1)x(1-x)
\frac{z^{k+1}}{(1-x+xz)^{2k+3}}
\tag{B.26}
\]
proves that the \(k\)-th Newton product on the denominator in (B.24), evaluated at \(z=1\), is
\((-1)^k(2k)![x(1-x)]^k\).
The beta integral then leaves two terminating Vandermonde sums. Their values are
\((d+1)_p/(d+3/2)_p\), and the first weighted moment divided by that value is
\(-p/[2(d+p)]\). Consequently
\[
C_{p,0}=
\frac{4d}{(2d-1)(2d+1)}
\frac{(d+1)_p}{(d+3/2)_p}
\left[d(2d-3)-\frac{(d-1)p}{d+p}\right].
\tag{B.27}
\]

Now define \(M_{\nu,pq}=\int_1^\infty y^{-\nu}R_{pq}(y)^2dy\).
The free radial mode is, up to a phase, the matrix element of
\[
U(\rho)=e^{\rho(K_+-K_-)},\qquad y=\cosh\rho ,
\]
in \(D^+_{d/2}\). For \(p\ge q\), disentangling the group exponential gives
\[
\langle p|U|q\rangle
=\sqrt{\frac{q!\Gamma(d+p)}{p!\Gamma(d+q)}}\,
(\tanh\rho)^{p-q}y^{-d}
P_q^{(p-q,d-1)}(2y^{-2}-1).
\tag{B.28}
\]
Its finite Jacobi expansion verifies the formula directly. The adjoint Casimir commutes with the group action; transferring it between the two rank-one projectors proves pointwise
\(\mathscr L_pR_{pq}^2=\mathscr L_qR_{pq}^2\).
Thus \((4\mu+2)M_{0,pq}+2M_{2,pq}\) satisfies (B.25).
On the initial row,
\[
M_{0,p0}=\frac1{2d-1}\frac{(d)_p}{(d+1/2)_p},
\qquad
M_{2,p0}=\frac1{2d+1}\frac{(d)_p}{(d+3/2)_p}.
\tag{B.29}
\]
Their combination equals (B.27). The positive forward coefficient in (B.25) determines the next row uniquely, proving
\[
C_I=(4\mu+2)M_{0,I}+2M_{2,I}
\tag{B.30}
\]
for all fixed external modes. This matches the globally summed pole, including its boundary region, to one local operator.

At fixed scalar momentum, the Legendre transform of (3.16) gives
\[
H_{\rm ct,X}=\frac{2G}{\tau}
\int_\Sigma\sqrt{\bar\sigma}\,
(\chi^2-|\bar D\phi|^2).
\tag{B.31}
\]
The free radial equation gives its one-particle matrix element \(GC_I/\tau\). The extra \(M_2\) term is the effect of the position-dependent kinetic coefficient and is not reproduced by an arbitrary constant mass subtraction. The scalar boundary variation is
\(O(G\tau^{-1}y^{1-2d})\), which vanishes at fixed \(\tau>0\).

## B.5 Exact Hartree cancellation before inversion

The free addition kernel at imaginary-time separation is
\[
W(y;\tau)=\frac{e^{-(d-1)\ell}}{4\pi\sinh\ell},\qquad
\cosh\ell=1+2y^2\sinh^2(\tau/2).
\tag{B.32}
\]
It is the summed free covariance; differentiation computes the complete regulated stress rather than a fixed-radius asymptotic truncation.
Let \(b=\sinh(\tau/2)\), \(\lambda=d-1\), and
\[
F(y)=f_\lambda(by),\qquad
f_\lambda(s)=
\frac{e^{-2\lambda\operatorname{arsinh}s}}
{8\pi s\sqrt{1+s^2}}.
\]
In the orthonormal normal/radial/angular frame the covariance components are
\[
\begin{aligned}
C_\chi&=\frac{(1+b^2)F''+b^2F'/y}{4b^2},\\
C_r&=\frac{b^2(y^2-1)F''+[b^2(y^2-1)-1]F'/y}{4b^2},\\
C_\theta&=-\frac{F'}{4b^2y},\\
\rho_\tau&=\tfrac12(C_\chi+C_r+C_\theta+\mu F),\\
p_{r,\tau}&=\tfrac12(C_\chi+C_r-C_\theta-\mu F),\\
p_{\theta,\tau}&=\tfrac12(C_\chi-C_r+C_\theta-\mu F),\\
Q_\tau&=p_{r,\tau}+p_{\theta,\tau}=C_\chi-\mu F .
\end{aligned}
\tag{B.33}
\]
The differential equation
\[
(1+b^2y^2)F''+(5b^2y+2/y)F'-4\mu b^2F=0
\]
implies exact conservation of this regulated stress, including
\[
p_{r,\tau}'+\frac{\rho_\tau+p_{r,\tau}}y
+\frac{y}{y^2-1}(p_{r,\tau}-p_{\theta,\tau})=0.
\]

The linear metric functional (3.17) has independent lapse and conformal variations
\[
\rho_{\rm ct}=-\rho_\tau,\qquad Q_{\rm ct}=-Q_\tau .
\tag{B.34}
\]
Therefore the Hartree source and counterterm source vanish before the regular/fast constraint inverse is applied. Their scalar one-body insertions cancel identically at every positive regulator. This retains any finite contribution from \(y\sim1/\tau\) automatically.

For reference, extracting the Hartree finite part without this cancellation would give
\[
\operatorname{FP}s_I^{\rm H}
=-\frac{\mu}{3}[(d-1)\omega_I+\mu] .
\tag{B.35}
\]
Its mode dependence is real and would not be canceled by subtracting the ground energy alone. The exact source-level subtraction is the reason it does not survive in the physical answer.

## B.6 Matched limit and the physical gap

Every external scalar leg, including counterterm legs, has the same factor
\(r_I=e^{-\tau\omega_I/2}\). Combining the proved pieces yields
\[
\frac{\delta E_I^{\rm scalar+ct}}G
=e^{-\tau\omega_I}
\left[s_I^{\rm H}+s_I^{\rm X}-s_I^{\rm H}
+\frac{C_I}{\tau}\right]
\longrightarrow0 .
\tag{B.36}
\]
The contact/completeness differences vanish by (B.8); all remaining pure-gravity terms are vacuum constants or annihilate the gravitational vacuum by the degree and rotation argument of Section 3.
The only finite scalar quadratic freedom left in this prescription is the common mass insertion. Fixing the physical gap removes it and proves (3.18). The proof uses a prescribed local perturbative chart and regulator; it does not establish regulator independence or a nonlinear metric completion of the tadpole functional at all orders.

## B.7 Constraint proof of the arbitrary ground-external exchange

For completeness, we give the finite algebra behind (B.15). It is longer than the thermal argument because a particular momentum response and its homogeneous boundary correction must be combined before the common scalar Green inverse disappears. The construction below specifies every coefficient; no unknown response is left in the final answer.

Use \(d=\Delta\), \(\mathfrak f=y^2-1\), \(w=d+2n+a\), initially \(a>1\), and the unnormalized internal radial function
\[
R=y^{-d}(1-y^{-2})^{a/2}
P_n^{(d-1,a)}(1-2y^{-2}),\qquad
\mathcal N^2=\frac{(d+n)_a}{(n+1)_a}.
\]
Then
\[
R''=P_RR'+Q_RR,\quad
P_R=-\frac{3y^2-1}{y\mathfrak f},\quad
Q_R=\frac{a^2}{\mathfrak f^2}+\frac{\mu}{\mathfrak f}
-\frac{w^2}{y^2\mathfrak f},
\quad
L_a=-\partial_y(\mathfrak f\partial_y)+2+\frac{a^2}{\mathfrak f}.
\tag{B.37}
\]
Let \(U\) be the regular/fast solution of
\[
L_aU=S_0=y^{-d}
\left(\frac{\mu}{4}R-\frac{d\mathfrak f}{4y}R'\right),
\qquad
U=\frac{E_0}{6y^2}+o(y^{-2}).
\tag{B.38}
\]
Write \(\mathcal D=w^2+d(d+1)\). For a frequency sign \(t=\pm1\), the scalar response is
\[
u_t=\gamma_tU+y^{-d}f_{s,t}R,\quad
\gamma_t=1-\frac{t(2d+1)w}{\mathcal D},\quad
f_{s,t}=-\frac{tdw}{4\mathcal D}.
\tag{B.39}
\]
Its source is \(y^{-d}(s_{R,t}R+s_DR')\), where
\[
s_{R,t}=\frac{\mu}{4}-\frac{tdw}{4y^2},
\qquad s_D=-\frac{d\mathfrak f}{4y}.
\]

The plus momentum response takes the form
\[
T^{\rm part}_{t,+}
=\alpha_t\left[
\frac{y^2+ay+a^2-1}{\mathfrak f}U-(y+a)U'\right]
+y^{-d}(f_tR+g_tR').
\tag{B.40}
\]
All its coefficients are the following rational functions:
\[
Z_t=d(d-2)(d+1)t-(2+d^2)w-(d-1)tw^2+w^3,
\]
\[
\alpha_t=
-\frac{(d^2-w^2)Z_t
+a^2(2d-1)[(2d+1)w+t(d+1-2w^2)]}
{a(a^2-1)(2d-1)\mathcal D},
\tag{B.41}
\]
\[
\begin{aligned}
g_t&=g_{1,t}+yg_{2,t},\\
g_{1,t}&=\frac{d}{4(a^2-1)(2d-1)\mathcal D}
\bigl\{a^2(2d-1)[(d+1)t+w]
+d(d+1)(d^2-3d+1)t\\
&\hspace{18mm}+d(-1+d-d^2)w-(d^2-1)tw^2+(d+1)w^3\bigr\},\\
g_{2,t}&=\frac{d}{4a(a^2-1)(2d-1)\mathcal D}
\bigl\{dZ_t+a^2[w(w^2+d^2+3d-1)\\
&\hspace{38mm}+t((1-d)w^2-d^3+2d^2+2d-1)]\bigr\},\\
f_t&=\frac{d[-t+\alpha_t(y+a)]}{4y}
-g_t'+\left(\frac d y-P_R-\frac{2y+a}{\mathfrak f}\right)g_t.
\end{aligned}
\tag{B.42}
\]
For the minus particular solution replace \(a\) by \(-a\) in these coefficients, keeping \(R,U\) fixed. Add \(\alpha_tE_0z^a/\mathfrak f\) to obtain the physical minus solution. Substitution into the first-order equations reduces, using (B.37)–(B.38), to
\[
T_{t,\sigma}'+\frac{2y+\sigma a}{\mathfrak f}T_{t,\sigma}
=-\frac{d}{4y^{d+1}}
\left[tR'-\left(\frac wy+\frac{\sigma ta}{\mathfrak f}\right)R\right].
\tag{B.43}
\]
The homogeneous addition is exactly the boundary flux condition, not a disposable integration constant.

After integrating the response squares by parts, the only remaining term involving the Green inverse is
\(\int U(KR+LR')dy\).
Set \(\theta_t=td\), \(\beta_t=8a\alpha_t/(a^2-1)\).
The target is completely specified by
\[
y^dK=k_1y+k_{-1}y^{-1}+k_{-3}y^{-3},\qquad
y^dL/\mathfrak f=l_0+l_{-2}y^{-2},
\tag{B.44}
\]
\[
\begin{aligned}
k_1&=\sum_t\{32\mu d\gamma_t
-\beta_t[(\mu+3-d)\theta_t+d(d-3)w]\},\\
k_{-1}&=\sum_t\{16\gamma_t[a^2d-2\mu d+(2-d)\theta_tw-dw^2]\\
&\hspace{17mm}-\beta_t[(1-\mu-d+2a^2d)\theta_t
+d(3-2a^2-2d)w-\theta_tw^2]\},\\
k_{-3}&=\sum_t\{16\gamma_tw[(d+2)\theta_t+dw]
-\beta_tw[d(d+2)+\theta_tw]\},\\
l_0&=\sum_t\{-16\gamma_t(\mu+d^2)
+\beta_t[(d-2)\theta_t+dw]\},\\
l_{-2}&=\sum_t\{16\gamma_t[d(d+2)+\theta_tw]
-\beta_t[(d+2)\theta_t+dw]\}.
\end{aligned}
\tag{B.45}
\]

For any \(L_au=S\), differentiate
\[
\mathscr C_a[u]
=\mathfrak f^2[(y^2-a^2)(u')^2-2yuu']
+[\mathfrak f^2+a^2\mathfrak f+a^2(a^2-1)]u^2 .
\]
The equation cancels the unsourced terms and leaves
\[
\mathscr C_a[u]'
=2y\mathfrak f Su-2\mathfrak f(y^2-a^2)Su'.
\]
Consequently, with
\(\mathscr F_a[S]=2y\mathfrak f S+
2\partial_y[\mathfrak f(y^2-a^2)S]\),
\[
\int_1^\infty U\mathscr F_a[S_0]dy=E_0^2/4.
\tag{B.46}
\]
The center primitive is zero and the fast primitive is \(E_0^2/4\).
The extra integration-by-parts boundary is \(O(y^{2-2d})\).

Seek
\[
KR+LR'=L_aG+\eta\mathscr F_a[S_0],\qquad
G=y^{-d}[(c_0y^3+c_1y+c_2/y)R
+\mathfrak f(b_0y^2+b_1)R'] .
\tag{B.47}
\]
This is a fixed six-dimensional coefficient problem, not a fit at a finite number of \(n\)'s.
Define
\[
B_p=2-\mu-p(p-1),\quad C_p=w^2+p(p+1),\quad D_p=2p+1,
\]
\[
\begin{aligned}
F_1&=\frac d2[a^2(2d^2-6d+3)+2d^2-7d+w^2+6],\\
F_{-1}&=\frac d2[a^4-a^2(2\mu+w^2)-w^2],
&F_{-3}&=\frac{da^2w^2}{2},\\
G_0&=-d(d-1)(a^2+\tfrac12),
&G_{-2}&=\frac{a^2d(d+2)}2 .
\end{aligned}
\]
The coefficient vector is defined by the explicit linear system
\[
\begin{pmatrix}
1&0&0&-d&0&d/2\\
C_{d-3}&B_{d-1}&0&(2d-3)(a^2-w^2-\mu)&(2d-1)\mu&F_1\\
0&C_{d-1}&B_{d+1}&(2d-1)w^2&(2d+1)(a^2-w^2-\mu)&F_{-1}\\
0&0&C_{d+1}&0&(2d+3)w^2&F_{-3}\\
0&D_{d-1}&0&C_{d-1}&B_{d+1}&G_0\\
0&0&D_{d+1}&0&C_{d+1}&G_{-2}
\end{pmatrix}
\begin{pmatrix}c_0\\c_1\\c_2\\b_0\\b_1\\\eta\end{pmatrix}
=\begin{pmatrix}0\\k_1\\k_{-1}\\k_{-3}\\l_0\\l_{-2}\end{pmatrix}.
\tag{B.48}
\]
The first row removes the highest power; the other rows match the three \(R\)-powers and two \(R'\)-powers. The additional highest \(R\)-row is dependent after (B.37). The determinant is
\[
\tfrac12a^2(a^2-1)^2d(2d-3)(2d-1)
[w^2-(d+2)^2][w^2+d(d+1)] .
\]
For the target (B.45), both apparent factors \(2d-3\) and \(w^2-(d+2)^2\) cancel in the rational solution. Solve generically and cancel before specializing. Integration of (B.47) gives
\[
\int U(KR+LR')dy=\int GS_0dy+\eta E_0^2/4 .
\tag{B.49}
\]
Its Green boundary vanishes because \(G=O(r^a)\) at the center and \(G=O(y^{3-2d})\) at infinity; \(G\) need not itself obey the fast-response boundary condition.

The remaining endpoint cancels only with the physical homogeneous momentum.
Let \(J_m=\int_1^\infty z^ay^{-m}Rdy\), \(J=J_{d+1}\).
The free radial equation gives
\[
[m(m-2)-\mu]J_{m-1}+a(1-2m)J_m+(w^2-m^2)J_{m+1}=0,
\]
and hence
\[
\frac{J_d}{J}=\frac{w^2-d^2}{a(2d-1)},\qquad
\frac{J_{d+2}}J=
\frac{a(2d+1)-(2d-1)J_d/J}{w^2-(d+1)^2},\qquad
\frac{E_0}{J}=\frac{d(a^2-1)\mathcal D}{2[w^2-(d+1)^2]}.
\tag{B.50}
\]
The homogeneous, cross, boundary-frequency, and integration-by-parts contributions are
\[
\begin{aligned}
\frac{X_{\rm bdry}}{\mathcal N^2}
=\frac1{a^2-1}\sum_t\bigl\{
&-4d\alpha_tE_0[(w-t(d-1))J_d
+2a(w-td)J+(w-t(d+1))J_{d+2}]\\
&+4\alpha_t^2E_0^2-8\gamma_t^2E_0^2\bigr\}.
\end{aligned}
\]
The sixth solution of (B.48) has the factored form
\[
\eta=\frac{16}{a^2-1}
\sum_t\left[\alpha_t^2+
\frac{4(w+td)}a\alpha_t\gamma_t+2\gamma_t^2\right].
\]
Substitution of (B.50), followed by collection of \(t=\pm1\), gives identically
\[
X_{\rm bdry}/\mathcal N^2+\eta E_0^2/4=0 .
\tag{B.51}
\]
Thus no uncomputed center or asymptotic coefficient survives.

It remains to integrate a local quadratic polynomial. To specify it without a large expanded numerator, set
\[
f_{t,+}=f_t,\quad g_{t,+}=g_t,\quad
f_{t,-}=f_t|_{a\mapsto-a},\quad
g_{t,-}=g_t|_{a\mapsto-a},
\]
\[
A_\sigma=\frac{4d\mathfrak f(y^2-2\sigma ay+1)}{a^2-1},
\quad b_{R,t\sigma}=-\frac w{y^2}-\frac{\sigma ta}{\mathfrak f y},
\quad b_{D,t}=\frac t y.
\]
The local coefficients are
\[
\begin{aligned}
V_{20}&=\sum_t\left[
-64d\mathfrak f\frac{f_{s,t}}y s_{R,t}
+32\left(\frac{dtw}y+\mu y\right)f_{s,t}
+\sum_\sigma A_\sigma f_{t,\sigma}b_{R,t\sigma}\right],\\
V_{11}&=\sum_t\left[
64\mathfrak f f_{s,t}\left(s_{R,t}-\frac d y s_D\right)
+\sum_\sigma A_\sigma(f_{t,\sigma}b_{D,t}+g_{t,\sigma}b_{R,t\sigma})\right],\\
V_{02}&=\sum_t\left[
64\mathfrak f f_{s,t}s_D+\sum_\sigma A_\sigma g_{t,\sigma}b_{D,t}\right].
\end{aligned}
\]
With \(\nabla_d f=f'-2df/y\), remove \(RR'\) and \((R')^2\) using the free equation:
\[
\mathcal V(y^{-2})=\frac1y\left[
V_{20}-\tfrac12\nabla_dV_{11}
+\frac{V_{02}}{\mathfrak f}
\left(\frac{w^2}{y^2}-\frac{a^2}{\mathfrak f}-\mu\right)
+\tfrac12\nabla_d\left(\nabla_dV_{02}
-\frac{2y}{\mathfrak f}V_{02}-\frac{V_{02}}y\right)\right].
\tag{B.52}
\]
All center poles cancel, leaving degree two in \(v=y^{-2}\).
Define
\[
\mathcal T_j(v)=\frac d8v^j[(j+d-1)v-j],
\]
\[
\begin{aligned}
\mathcal U_k(v)=\frac d8v^k\big[
&
-k(3d+2k-4)
+(a^2-d+2d^2-4k+7dk+4k^2-w^2)v
\\&-(2(d+k)^2-w^2)v^2\big].
\end{aligned}
\]
The current contribution completes the weight
\[
\mathcal W(v)=\frac{\mathcal V(v)}2+
\frac{c_0\mathcal T_0+c_1\mathcal T_1+c_2\mathcal T_2
+b_0\mathcal U_0+b_1\mathcal U_1}{v}
=W_0+W_1v+W_2v^2 .
\tag{B.53}
\]
The displayed numerator is divisible by \(v\), so no negative moment appears.

Let
\[
\mathcal J_j=\int_0^1v^{2d-2+j}(1-v)^a
[P_n^{(d-1,a)}(1-2v)]^2dv .
\]
Rodrigues' formula and a terminating balanced Saalschütz sum give
\[
\mathcal J_0=\frac{(d)_n^2\Gamma(2d-1)\Gamma(2n+a+1)}
{(n!)^2\Gamma(2d+2n+a)}.
\]
Equivalently, this follows by expanding both finite Jacobi polynomials and integrating their beta moments. Applying the three-term Jacobi multiplication recurrence once and twice gives, for \(D_0=d^2-w^2\),
\[
\frac{\mathcal J_1}{\mathcal J_0}
=\frac{(2d-1)(D_0+a^2)}{2dD_0},
\]
\[
\frac{\mathcal J_2}{\mathcal J_0}
=\frac{(2d-1)[(2d+1)(D_0+a^2)^2
+4d(d+1)D_0+4d(2d+1)a^2]}
{4d(d+1)D_0[(d+1)^2-w^2]} .
\tag{B.54}
\]
These identities can be obtained uniformly from the bilinear moment
\[
\int_0^1v^{2d-2}(1-v)^aP_nP_m\,dv
=\frac{(-1)^{n+m}\Gamma(d+n)\Gamma(d+m)\Gamma(2d-1)\Gamma(n+m+a+1)}
{n!m!\Gamma(d+n-m)\Gamma(d-n+m)\Gamma(2d+n+m+a)}.
\]
Reciprocal gamma functions specify the continuous interpretation at exceptional parameters.
Substitution of (B.48), (B.52), and (B.53) into (B.54) gives the rational identity
\[
W_0+W_1\frac{\mathcal J_1}{\mathcal J_0}
+W_2\frac{\mathcal J_2}{\mathcal J_0}
=-\frac{4d\,\mathcal P_d(w,a)}
{(w^2-d^2)[w^2-(d+1)^2]} .
\tag{B.55}
\]
Every entry of this identity has been specified by fixed-size rational arithmetic and differentiation. Its denominator factors are nonzero at \(a\ge2,n\ge0,d>1\).
Multiplication by \(\mathcal N^2\mathcal J_0\) gives (B.15).

The global \(a=0,1\) channels require an assembled limit, not singular substitution into an individual momentum response. Continue \(a\) at fixed \(n\ge1\), \(w=d+2n+a\). The scalar inverse has the regular limit (A.3). For the momentum primitive write the physical center numerator as \(B(x,a)\), and the non-global numerator as \(B(x,a)+\delta(a)\). Their pairing difference is
\[
2\delta(a)I(a)+\frac{8\delta(a)^2}{a^2-1},\qquad
I(a)=\int_0^1 32x(1-x)^{a-2}(1+x)^{-a-2}B(x,a)\,dx .
\tag{B.56}
\]
The homogeneous-square term is continued from \(a>1\), not separately integrated for \(a\le1\).
At zero, \(\delta(a)=O(a)\), while the actual source gives the center derivative
\(A_-'(1,a)=atd\,2^{a-1}P_n^{(d-1,a)}(-1)\).
Thus the potential Mellin singularity in \(I\) is \(a\int u^{a-1}du\), which is bounded. The physical square has a uniformly integrable expansion
\(a^2u^a+O(au^{a+1})+O(u^{a+2})\).
At one,
\[
\delta(1)=\frac d2[t(d+1)-w]
\int_0^1x^{2d-1}(1-x^2)
P_n^{(d-1,1)}(1-2x^2)dx=0
\]
by Jacobi orthogonality for \(n\ge1\). Hence \(\delta(a)=O(a-1)\), and both terms in (B.56) vanish. The scalar boundary charge vanishes in these global limits, removing the boundary-frequency contribution as well. These facts extend the assembled answer to \(a=0,1\), \(n\ge1\).

For \(n=0,a=0,1\), use the center conditions directly. A useful inverse is
\[
U_p(y)=\frac{y\operatorname{atanh}(1/y)-1
-y\int_0^{1/y}t^p(1-t^2)^{-1}dt}{p-2},
\qquad L_0U_p=y^{-p}.
\]
With \(U=d(d-1)U_{2d}/2\), the scalar responses are
\[
\begin{array}{c|cc}
(n,a)&u_-&u_+\\ \hline
(0,0)&U&-d\,y^{-2d}/[4(2d+1)]\\
(0,1)&-\sqrt{\mathfrak f}\,U'/(2d)&
-d\sqrt{\mathfrak f}\,y^{-2d-1}/[4(2d+1)] .
\end{array}
\tag{B.57}
\]
The momentum is the center-integrated solution of (B.43). Inserting these into
\[
\frac{X_{n,a}}{\mathcal N^2}
=32\sum_t\int_1^\infty y
\left[
\left(\frac{tdw}{y^2}+\mu\right)y^{-d}Ru_t
-4u_t^2+\sum_\sigma T_{t,\sigma}^2
\right]dy
\]
gives (B.17). For the first row, scalar self-adjointness reduces the minus contribution to
\(-4d^2(d-1)/(2d-1)\), and the plus scalar/momentum contribution to
\(-2d^2(2d-3)/(4d^2-1)\); their sum is the first value in (B.17).
The second row follows by integration by parts in \(U'\), with \(\mathcal N^2=d\). It is independently checked by the already evaluated pair integrals:
\[
X_{0,0}=g_{0,0}-x_{00}/2,\qquad
X_{0,1}=g_{0,0}/2-(x_{00}+x_{10})/4 .
\]
These use the direct canonical ground and boundary-row values, and finish the derivation of all rows required in (B.19).

# Appendix C. Local source normalization and the Einstein–Casimir equation

## C.1 The local tensor source and its finite spin support

Use the polarized free stress
\[
T_{\mu\nu}[a,b]
=\nabla_{(\mu}a\nabla_{\nu)}b
-\frac12g_{\mu\nu}(\nabla a\cdot\nabla b+\mu ab).
\]
The off-shell linearized Einstein identity (4.13) follows by varying
\(G_{\mu\nu}-g_{\mu\nu}\), commuting background covariant derivatives with
\(R_{\mu\nu}=-2g_{\mu\nu}\), and collecting the trace reversal and
\(\nabla_{(\mu}C_{\nu)}\) terms. The same operator \(\mathcal C\) is the quadratic Casimir of tensor Lie derivatives along the two global AdS algebras.
On the common Hessian domain, the stress conservation identity removes the proper-gauge term after integration by parts. For a crossed pairing
\[
\mathcal X[a,b;c,d]
=-2\kappa^2\langle T[a,c],k[T[b,d]]\rangle_{\rm res},
\]
this gives
\[
(\mathcal C_{\rm cross}-2)\mathcal X
=\kappa^2\langle\mathcal K\rangle_{\rm res},\qquad
\mathcal K=T[a,c]:T[b,d]
-\operatorname{tr}T[a,c]\operatorname{tr}T[b,d].
\tag{C.1}
\]

Put \(F=ab\), \(J=a\,db-b\,da\), and use tildes for the outgoing pair.
Since \(dJ=2\,da\wedge db\), direct expansion of the four gradients gives
\[
\mathcal K=
\frac12(\nabla a\cdot\nabla b)
(\nabla\widetilde a\cdot\nabla\widetilde b)
-\frac1{16}dJ:d\widetilde J
-\frac{\mu}{4}(dF\cdot d\widetilde F+J\cdot\widetilde J)
-\frac{3\mu^2}{2}F\widetilde F .
\tag{C.2}
\]
For example,
\(dF\cdot d\widetilde F+J\cdot\widetilde J
=2(a\widetilde a\,db\cdot d\widetilde b
+b\widetilde b\,da\cdot d\widetilde a)\);
this fixes the mixed mass coefficient without an on-shell guess.
On free external legs,
\(\nabla a\cdot\nabla b=(\Box-2\mu)F/2\).

A local analytic primary is determined by its center tensor value: the two lowest-weight differential equations recursively determine its Taylor coefficients from that value. If the center value is zero, their first-order transport equations give the zero solution in a neighborhood, and analyticity extends it throughout the connected interior. A scalar fiber has rotation weight zero, a vector fiber weights at most one, and a rank-two fiber weights at most two. Thus the scalar/vector decomposition (C.2) supports only the diagonal and adjacent pair-label bands. The annihilation stress has only spin zero and spin two after Bose projection.

For \(h=\Delta+n\), normalized primary source shapes are
\[
F_n=\frac{(-1)^n}{2\pi}e^{-2iht}f^{-h},
\qquad
J_n=A_1W^{(2h+1,1)},
\tag{C.3}
\]
where
\[
W^{(E,s)}
=e^{-iEt+is\theta}r^sf^{-E/2}
\left(dt-d\theta+\frac{i\,dr}{rf}\right)^{\otimes s}.
\tag{C.4}
\]
These are smooth in center Cartesian coordinates, transverse, and satisfy
\(\Box W^{(E,s)}=[E(E-2)-s]W^{(E,s)}\); the rank-two tensor is also traceless.
The norm follows without an infinite sum. The one-form in (C.4) obeys
\(v\cdot v^*=2/(r^2f)\), so
\[
\int_0^\infty r\,dr\int_0^{2\pi}d\theta\,
W^{(E,s)}:W^{(E,s)*}
=\frac{\pi2^s}{E+s-1},
\qquad
\int|F_n|^2=\frac1{4\pi(2h-1)}.
\tag{C.5}
\]

## C.2 All-label source amplitudes from free Clebsch–Gordan coefficients

Write \(c_a^{(K)}=v_a^{(K)}\) from (4.4). Their squared coefficients are
\[
(c_a^{(K)})^2=
\frac{\binom Ka(\Delta)_K^2}
{(\Delta)_a(\Delta)_{K-a}(2\Delta+K-1)_K}.
\tag{C.6}
\]
The scalar primary \((n,n)\) at the center receives only \(p=q=a\) modes. Each radial mode has center amplitude
\((-1)^a/\sqrt{2\pi}\), so the product amplitude is
\((-1)^n\sum_a(c_a^{(n)})^2/(2\pi)=(-1)^n/(2\pi)\).
The lowest-weight equations then give the full \(F_n\) in (C.3).

For the vector primary \((n+1,n)\), the center derivative pairs \(j=0\) with \(j=1\). The latter has gradient amplitude
\((-1)^a\sqrt{(a+1)(\Delta+a)}/\sqrt{2\pi}\).
The lowering recurrence converts the two terms in \(a\,db-b\,da\) into the same normalized sum. The ratio
\[
\left(\frac{c_a^{(n+1)}}{c_a^{(n)}}\right)^2
(n+1-a)(\Delta+n-a)
=\frac{h(n+1)(2\Delta+n-1)}{2(2h-1)}
=:\rho_1^2
\tag{C.7}
\]
is independent of \(a\), by direct cancellation of rising factorials.
Consequently
\[
|A_1|^2=\frac{\rho_1^2}{\pi^2}
=\frac{h(n+1)(2\Delta+n-1)}
{2\pi^2(2h-1)} .
\tag{C.8}
\]

For the spin-two identical-particle annihilation source \((n+2,n)\), only the two \(j=1\) gradients contribute to the center weight-two tensor. The analogous identity is
\[
\begin{aligned}
\rho_2^2&=
\left(\frac{c_{a+1}^{(n+2)}}{c_a^{(n)}}\right)^2
(a+1)(\Delta+a)(n-a+1)(\Delta+n-a)
\\&=\frac{h(h+1)(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{4(2h-1)(2h+1)}
.
\end{aligned}
\tag{C.9}
\]
Including the identical-particle \(\sqrt2\) factor gives
\[
|A_2|^2=\frac{\rho_2^2}{2\pi^2}
=\frac{h(h+1)(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{8\pi^2(2h-1)(2h+1)} .
\tag{C.10}
\]
Thus every source amplitude is fixed by free normalization, independently of an interacting spectrum.

In the scalar channel, \(J=0\), \(\Box F=4C_nF\), and
\(\nabla a\cdot\nabla b=(2C_n-\mu)F\). Integrating the \(dF\) term in (C.2) gives
\[
\int\mathcal K=(C_n-\mu)(2C_n+\mu)\int|F_n|^2 .
\]
In the vector channel, \(F=0\) and
\(\nabla_\mu(dJ)^{\mu\nu}=4h^2J^\nu\), so
\(\int dJ:dJ^*=-8h^2\int J\cdot J^*\). Hence
\[
\int\mathcal K=\frac{2h^2-\mu}{4}\int J_n\cdot J_n^* .
\tag{C.11}
\]
Multiplication by \(16\pi\) and (C.5), (C.8) gives exactly (4.16). All integrations use the same vanishing center/spatial and averaged temporal fluxes as Proposition PHY-04.

## C.3 From the tensor Casimir to the discrete recurrence

Free preparation blocks are
\[
p_n=\frac{(\Delta)_n^2}{n!(2\Delta+n-1)_n},
\qquad
\mathsf k_h(z)=z^h{}_2F_1(h,h;2h;z).
\tag{C.12}
\]
Their normalization is the primary norm already proved in (4.4). The crossed differential Casimir is
\[
D_t=z(1-z)^2\partial_z^2
+(z-1)(2\Delta+z-1)\partial_z+\frac{\Delta^2}{z}-\Delta .
\tag{C.13}
\]
The required exact action is
\[
D_t\mathsf k_h
=(\Delta-h)^2\mathsf k_{h-1}
+\frac{\mu-h(h-1)}2\mathsf k_h
+\frac{h^2(\Delta+h-1)^2}{4(2h-1)(2h+1)}\mathsf k_{h+1}.
\tag{C.14}
\]
Here is an arbitrary-coefficient proof. Write
\(\mathsf k_h=\sum_{q\ge0}b_q(h)z^{h+q}\),
\(b_q(h)=(h)_q^2/[(2h)_q q!]\).
Acting on \(z^p\), (C.13) gives
\[
(p-\Delta)^2z^{p-1}
+(-2p^2+2\Delta p-\Delta)z^p+p^2z^{p+1}.
\]
The coefficient of \(z^{h-1+q}\) on the left of (C.14) is therefore
\[
(h+q-\Delta)^2b_q
+[-2(h+q-1)^2+2\Delta(h+q-1)-\Delta]b_{q-1}
+(h+q-2)^2b_{q-2}.
\]
Use the ratios
\[
\begin{aligned}
\frac{b_{q-1}}{b_q}
&=\frac{q(2h+q-1)}{(h+q-1)^2},\\
\frac{b_{q-2}}{b_q}
&=\frac{q(q-1)(2h+q-2)(2h+q-1)}
{(h+q-2)^2(h+q-1)^2},\\
\frac{b_q(h-1)}{b_q(h)}
&=\frac{(h-1)^2(2h+q-2)(2h+q-1)}
{(h+q-1)^2(2h-2)(2h-1)},\\
\frac{b_{q-2}(h+1)}{b_q(h)}
&=\frac{2h(2h+1)q(q-1)}
{h^2(h+q-1)^2}.
\end{aligned}
\tag{C.15}
\]
After a common denominator, the coefficient difference is identically zero. The \(q=0,1\) endpoints follow by omitting negative-index terms. This proves (C.14), not just a finite Taylor check.

In the expansion \(\sum_np_nx_n\mathsf k_{\Delta+n}\), collecting the coefficient of \(\mathsf k_{\Delta+n}\) gives
\[
(n+1)^2p_{n+1}/p_n=a_n,\qquad
\text{the reverse coefficient}=c_n,\qquad
\frac{\mu-C_n}{2}=-a_n-c_n .
\]
The finite-time secular energy insertion is
\(-T e^{-E_0T}\delta H\). In the free preparation variables it is the coefficient multiplying \(\log(z\bar z)\), with \(z\bar z=e^{-2T}\).
When a Casimir derivative hits the logarithm it produces nonlogarithmic terms, so the logarithmic coefficient is transported by (C.14) alone. Applying this in both chiralities to (C.1) proves (4.14)–(4.16).
This use of free preparation blocks introduces neither an interacting CFT spectrum nor a high-spin extrapolation.

## C.4 Explicit annihilation responses and the exceptional point

For an identical scalar primary, \(F_n^{\rm id}=\sqrt2F_n\) and
\(\tau^\mu{}_\mu=-(C_n+\mu)F_n^{\rm id}\).
Define
\[
\mathcal D_{\mu\nu}S
=\nabla_\mu\nabla_\nu S-g_{\mu\nu}(\Box-2)S,
\qquad
S_n=\frac{C_n+\mu}{2(4C_n-3)}F_n^{\rm id}.
\]
Then
\[
\tau_{n,0}=\mathcal DS_n,\qquad
k[\tau_{n,0}]=-gS_n .
\tag{C.16}
\]
Indeed \(\operatorname{tr}\mathcal DS=-2(\Box-3)S\), and direct variation gives
\(\mathcal E^{(1)}[g\psi]=-\mathcal D\psi/2\).
The normalized annihilation coefficient is
\[
g^{\rm ann}=-8\pi\int r\,dr\,d\theta\,
k[\tau]_{\mu\nu}\tau^{*\mu\nu}.
\tag{C.17}
\]
With \(\int|F_n^{\rm id}|^2=1/[2\pi(2h_n-1)]\), this gives (4.19).

At \(n=0\),
\[
\frac{C_0+\mu}{2(4C_0-3)}
=\frac{\Delta}{2(2\Delta+1)}
\]
after cancellation. At \(\Delta=3/2\) this ratio is \(3/16\), so \(S_0\) and its tensor stress may be nonzero. Its trace is zero, and therefore its pairing with the conformal response is zero. This is the precise removable-limit statement; zero trace must not be used to discard the entire tensor source.

For spin two, \(\tau_{n,2}=A_2W^{(2h_n+2,2)}\). It is transverse and traceless, so
\[
\mathcal E^{(1)}q=-\tfrac12(\Box+2)q,\qquad
k[\tau_{n,2}]=-\frac{\tau_{n,2}}{4h_n(h_n+1)} .
\tag{C.18}
\]
Equations (C.5), (C.10), and (C.17) give (4.20).
No local analytic rank-two primary exists with center weight above two, so higher-spin annihilation sources vanish. Odd spins are removed by Bose parity. These steps finish the pair coefficient calculation in (4.21).

# Appendix D. Formal transfer, the resolvent, and the limits of the argument

The results in this appendix explain the relation between classical elimination and quantum perturbation theory. They concern specified variational and operator domains. They are ancillary to the first-order physical completeness theorem: none supplies an all-order scalar-only Hilbert space or an all-order energy expansion for the AdS theory.

## D.1 Stationary tree transfer with all boundary data retained

Write the action of a theory on a fixed variational domain as
\[
S[x,y;\varepsilon]
=S_x[x]+\tfrac12\langle y,Ky\rangle+I[x,y;\varepsilon].
\tag{D.1}
\]
Here \(x\) contains the retained variables, sources, and independent physical boundary data. The bilinear pairing includes the action's spatial and temporal boundary completion. Use \(\mathcal G\) for the chosen inverse of \(K\), reserving \(G\) for Newton's constant.

**Proposition PHY-09 (formal stationary tree transfer).** Assume that:

1. \(K\) is reciprocal and invertible on the chosen complement, with specified inverse \(\mathcal G\).
2. \(I_y\) raises a complete filtration, such as positive coupling degree or nonlinear field degree, so that recursive coefficients at each degree involve only previously determined coefficients.
3. Every recursive source lies in the inverse's domain. True kernel data and on-shell cohomology are retained in \(x\), or their homogeneous values are fixed and the remaining kernel equations are retained and satisfied. Fixing a complement does not authorize discarding a nonzero kernel equation.
4. Each graph pairing exists at the asserted level. One may state the theorem at finite regulator and separately prove any continuum limit needed for fixed external legs.

Then there is a unique formal solution
\[
y_*=-\mathcal G I_y[x,y_*;\varepsilon],
\qquad S_{\rm red}[x]=S[x,y_*[x]].
\tag{D.2}
\]
The vertices of \(S_{\rm red}\) are precisely connected trees whose internal edges carry eliminated variables. Combining these vertices with retained propagators gives all full-theory trees with retained external legs, with the same coefficients.

**Proof.** Let \(F^r\) denote the filtration. If two candidates agree modulo \(F^r\), their right sides in (D.2) agree modulo \(F^{r+1}\). Starting at the common zeroth term gives existence degree by degree and proves uniqueness by induction. Expanding a Taylor coefficient of \(I_y\) attaches its uncontracted \(y\)-slots to solutions already constructed; \(-\mathcal G\) attaches the root edge. Induction therefore produces every rooted eliminated-edge tree and no cycle. Taylor factorials are retained throughout this expansion.

To verify the unrooted factors without a diagrammatic guess, differentiate the reduced action:
\[
\delta_x S_{\rm red}
=S_x^{\rm full}[x,y_*]\,\delta x
+S_y^{\rm full}[x,y_*]\,\delta_xy_*
=S_x^{\rm full}[x,y_*]\,\delta x.
\tag{D.3}
\]
The complete stationary boundary condition is needed in the last equality. The remaining expression is the rooted-tree expansion with one external \(x\)-leg marked. Integration with respect to \(x\) divides by the number of equivalent choices of the marked leg, recovering the action's symmetry factors. The common vacuum normalization fixes the \(x\)-independent integration constant.

Now take any full tree with only retained external legs. Partition its vertices into the maximal connected components joined by eliminated edges. Each component is a tree of the type just generated. Contracting these components produces a tree made from reduced vertices and retained edges. Expanding each reduced vertex recovers the original tree uniquely. This contraction–expansion bijection proves equality of all retained-external tree kernels.

If \(y=(u,v)\), successive and joint elimination agree whenever both use the same domain and have unique formal solutions. After eliminating \(u\), equation (D.3) says that the remaining \(v\)-equation is exactly the original \(v\)-equation evaluated at \(u_*\). The successive solution is therefore a joint solution, and uniqueness identifies them. This proves associativity beyond the linear Schur-complement case. \(\square\)

The assumptions impose no large-mass hierarchy. The effective action may be nonlocal in time. For an observable \(O[x,y]\), introduce \(S+\eta O\), perform the same elimination, and differentiate in \(\eta\). A single insertion becomes \(O[x,y_*]\); multiple derivatives generate the required induced contact terms. Endpoint wavefunctionals and the boundary energy must be transported by this rule. Equality of reduced actions does not identify two different choices of external observable.

To call this transfer a quasi-isomorphism of the complete field complex requires an additional statement: no physical on-shell cohomology has been removed. The boundary gravitons of this note are physical external states. The scalar response graph in Section 3.6 selects a branch used to calculate scalar external amplitudes; it does not quotient those states from the theory.

## D.2 From an action to a Hamiltonian and a projected resolvent

When the reduced action admits a local first-order description, it induces its own symplectic potential and two-form. If \(\iota\) is an invariant symplectic embedding into the full phase space, then
\[
H_{\rm red}=\iota^*H,\qquad \Omega_{\rm red}=\iota^*\Omega.
\tag{D.4}
\]
Indeed, contracting the pulled-back two-form with the tangent reduced vector field gives \(-\delta\iota^*H\). Reusing the original bracket is justified only if the pullback has been proved to equal it. Section 3.6 establishes exactly that equality through the required order for the paired response graph.

**Proposition PHY-10 (Feshbach–Schur identity and state reconstruction).** Let \(H\) be a specified self-adjoint Hamiltonian, \(P\) an orthogonal model projection, and \(Q=1-P\). Assume the block products have a common domain. If both inverses exist, then, as an operator on \(P\mathcal H\),
\[
P(E-H)^{-1}P=[E-K_P(E)]^{-1},
\qquad
K_P(E)=PHP+PHQ(E-QHQ)^{-1}QHP.
\tag{D.5}
\]
At a spectral point, where the full resolvent does not exist, suppose only that \(E-QHQ\) is invertible. Then the Schur kernel and full eigenkernel are isomorphic under
\[
\psi_P\longmapsto
\psi=\psi_P+(E-QHQ)^{-1}QHP\psi_P.
\tag{D.6}
\]

**Proof.** Apply \(P\) and \(Q\) to \((E-H)\psi=\eta_P\). The \(Q\)-equation solves for \(\psi_Q=(E-QHQ)^{-1}QHP\psi_P\); substitution into the \(P\)-equation gives \([E-K_P(E)]\psi_P=\eta_P\). This proves (D.5) in the resolvent region. Taking \(\eta_P=0\) proves (D.6) and its inverse \(\psi\mapsto P\psi\). If a full eigenvector had \(P\psi=0\), the invertible \(Q\)-block would force it to vanish, so the correspondence is injective and preserves multiplicity.

For real \(E\) in this domain, differentiation of the inverse gives
\(\partial_E(E-QHQ)^{-1}=-(E-QHQ)^{-2}\). Orthogonality of \(P\) and \(Q\) then yields
\[
\|\psi\|^2
=\langle\psi_P,[1-\partial_EK_P(E)]\psi_P\rangle.
\tag{D.7}
\]
Thus the energy derivative also fixes the pole residue and state norm. \(\square\)

For \(H=H_0+\varepsilon V_1+\varepsilon^2V_2\), choose \(P\) to include the entire free degenerate block and assume \(PV_1P=0\). Expanding (D.5) gives
\[
K_P(E_0)=E_0P+\varepsilon^2
\left[PV_2P+PV_1Q(E_0-QH_0Q)^{-1}QV_1P\right]
+O(\varepsilon^3),
\tag{D.8}
\]
the degenerate OFPT operator used in Section 3.2. At finite regulator, the normal-form transformation gives an energy-independent representation of the same block. A true resonance belongs in \(P\), not in the inverse of the \(Q\)-block.

For one eliminated oscillator of frequency \(\Omega\), the two time orderings combine as
\[
\frac1{2\Omega}
\left(\frac1{\nu-\Omega}+\frac1{-\nu-\Omega}\right)
=\frac1{\nu^2-\Omega^2}.
\tag{D.9}
\]
This is the harmonic inverse of the wave Hessian, with the same frequency prescription on both sides. Contacts from the common Legendre transform must accompany this identity. In the present Einstein calculation the stronger numerator identity \(F_m=mD_m+[H_\phi,D_m]\) cancels each relevant divisor before these two time orderings are combined.

## D.3 An all-order formal statement about the leading Weyl symbol

**Proposition PHY-11 (leading-symbol normal-form correspondence).** Work in a finite oscillator Weyl algebra, with quadratic \(H_0\). Suppose that the quantum input symbols and generators have no negative powers of \(\hbar\), and that their leading \(\hbar^0\) input agrees with the classical Hamiltonian. Fix the same resonant projector, homological inverse on its complement, and resonant-generator convention in the classical and quantum recursions. Then, to every formal coupling order, the leading Weyl symbol of the quantum normal form equals the classical normal form.

**Proof.** If \(\Lambda\) is the Poisson bidifferential operator, the Weyl product is
\(A\star B=A\exp(i\hbar\Lambda/2)B\). Its normalized commutator is
\[
\frac{A\star B-B\star A}{i\hbar}
=\{A,B\}+O(\hbar^2).
\tag{D.10}
\]
All odd terms above first order vanish when one entry is quadratic, so
\[
\frac{H_0\star A-A\star H_0}{i\hbar}
=\{H_0,A\}
\tag{D.11}
\]
is exact. At coupling order one, the two homological equations therefore have the same leading input, inverse, and resonant part. Assume equality below order \(r\). Every source term at order \(r\) is built from lower-order symbols and nested normalized brackets. Equation (D.10) and the induction hypothesis identify its leading coefficient with the classical source. The common inverse and generator convention then give the same order-\(r\) generator and resonant term. Induction proves the assertion. \(\square\)

The statement is about a formal leading symbol. It proves neither convergence in coupling nor an infinite-Fock-space unitary limit. Projection onto an oscillator vacuum introduces contractions. These lower-degree quantum terms can contribute at the same coupling order to fixed-occupation energies as the classical quartic symbol. Their treatment in this AdS theory is precisely the separate work of Appendix B.

## D.4 Explicit failure checks and the perturbative remainder

The following calculations delimit the assumptions of Propositions PHY-04 and PHY-09–11. They are included because the older reports discuss general equivalence as well as the first-order AdS result.

### D.4.1 Dynamic response and a genuine resonance

Consider two oscillators with
\[
H=\frac{p^2+\omega^2q^2}{2}
+\frac{P^2+\Omega^2Q^2}{2}+\varepsilon Qq^2.
\tag{D.12}
\]
Write \(q=(b+b^\dagger)/\sqrt{2\omega}\), \(Q=(a+a^\dagger)/\sqrt{2\Omega}\). Starting in \(|n,0\rangle\), the second-order coefficient is exactly
\[
e_n=-\frac1{8\Omega\omega^2}
\left[\frac{(2n+1)^2}{\Omega}
+\frac{n(n-1)}{\Omega-2\omega}
+\frac{(n+1)(n+2)}{\Omega+2\omega}\right].
\tag{D.13}
\]
The three terms are the allowed intermediate scalar occupations \(n,n-2,n+2\), each with one mediator quantum. Taking the second finite difference isolates the connected pair coefficient:
\[
e_n=e_0+n(e_1-e_0)+\lambda_{\rm dyn}n(n-1),\qquad
\lambda_{\rm dyn}=-\frac1{4\omega^2}
\left(\frac2{\Omega^2}+\frac1{\Omega^2-4\omega^2}\right).
\tag{D.14}
\]
Static minimization instead gives \(Q=-\varepsilon q^2/\Omega^2\), hence the quartic \(-\varepsilon^2q^4/(2\Omega^2)\) and pair coefficient \(-3/(4\Omega^2\omega^2)\). This agrees only at the leading order of an additional large-\(\Omega\) expansion. The discrepancy follows by subtracting the two rational functions.

At \(\Omega=2\omega\), a nonzero matrix element
\[
\langle n-2,1|\varepsilon Qq^2|n,0\rangle
=\frac{\varepsilon\sqrt{n(n-1)}}{2\omega\sqrt{2\Omega}}
\tag{D.15}
\]
lies inside the free degenerate space. Enlarging the retained block gives an order-\(\varepsilon\) splitting. Omitting this state and assigning a finite part to (D.13) would change the problem. Adding the same stabilizing potential \(\varepsilon^2q^4/\Omega^2\) to both descriptions makes the classical potential bounded below and does not remove their difference or the cubic resonance.

### D.4.2 Symplectic and quantum changes of coordinates

A normal-mode branch \(Q=cq,\ P=cp\) in a linear two-oscillator system has
\(\Omega_{\rm red}=(1+c^2)dp\wedge dq\) and
\(H_{\rm red}=(1+c^2)(p^2+\nu^2q^2)/2\).
Hamilton's equations with this pulled-back form give \(\ddot q=-\nu^2q\). The original \(dp\wedge dq\) would instead give frequency \((1+c^2)\nu\). This elementary calculation establishes why (D.4) is necessary even before quantization.

There is also a distinct quantum issue. Let \(q=f(Q)\), \(J=f'(Q)>0\), and \(p=P/J\). The unitary map from \(L^2(dq)\) to \(L^2(dQ)\) is \(\psi\mapsto J^{1/2}\psi\circ f\). Acting with it on \(-\hbar^2\partial_q^2/2\) gives
\[
T_{\rm exact}=-\frac{\hbar^2}{2}
\left[J^{-2}\partial_Q^2-2J^{-3}J'\partial_Q
-\frac{J''}{2J^3}+\frac{5(J')^2}{4J^4}\right].
\tag{D.16}
\]
Direct Weyl quantization of \(P^2/(2J^2)\) gives the same first two coefficients but constant coefficient
\(-J''/(2J^3)+3(J')^2/(2J^4)\) inside the square brackets. Subtraction yields
\[
T_{\rm exact}-T_{\rm Weyl}
=\frac{\hbar^2(J')^2}{8J^4}.
\tag{D.17}
\]
For \(f(Q)=Q+\epsilon Q^3\), this is
\(9\hbar^2\epsilon^2Q^2/[2(1+3\epsilon Q^2)^4]\).
Thus an exact unitary coordinate transformation preserves the theory, while a new application of a coordinate-dependent Weyl rule can add a finite quantum term. Equation (D.16), obtained by differentiating \(J^{-1/2}\psi\) twice, proves the stated coefficient directly.

### D.4.3 Gaussian integration, loops, and reciprocity

For an eliminated variable with quadratic kernel \(K[x]\), the classical solution may be \(y_*=0\), while Gaussian integration produces
\((i\hbar/2)\operatorname{Tr}\log K[x]\) in the Lorentzian effective action. This follows by diagonalizing a finite regulated quadratic form and multiplying its Gaussian integrals. An oscillator with frequency \(\sqrt{\Omega^2+\varepsilon x^2}\) makes the missing \(x\)-dependent zero-point energy explicit.

If instead \(K\) is independent of \(x\), the coupling is linear \(\langle J[x],y\rangle\), and the measure and initial/final state functionals are matching Gaussians with the same covariance, mean, and temporal prescription, translation by \(-K^{-1}J\) completes the square. Apart from an \(x\)-independent determinant, the exact effective action is
\[
S_{\rm eff}=S_x-\tfrac12\langle J,K^{-1}J\rangle.
\tag{D.18}
\]
The common nonzero mean may first be shifted into the background. Subsequent quantum calculations with this generally nonlocal action include retained and mixed loops. For non-Gaussian endpoint states, the logarithm of their characteristic functional has higher cumulants; a fourth cumulant generates a \(J^4\) term. Equal two-point covariance alone therefore does not establish (D.18).

Reciprocity is equally concrete. If \(\mathcal G_R^*=\mathcal G_A\), direct variation gives
\[
\frac{\delta}{\delta J}
\tfrac12\langle J,\mathcal G_RJ\rangle
=\tfrac12(\mathcal G_R+\mathcal G_A)J.
\tag{D.19}
\]
A retarded right inverse alone does not define a single-copy variational action whose derivative is the retarded response. A doubled in-in construction can describe causal response; it is a different specified variational construction.

### D.4.4 The paired graph has a higher-order obstruction in a toy model

Take complex oscillators with \(\{b,b^*\}=-i\), \(H_\phi=\omega b^*b\), and a pair of frequency-\(m\) mediators. Put
\[
\begin{gathered}
m=4\omega,\qquad D=b^2+\beta b^*b,\quad \beta\ne0,\\
F_+=mD+\mathscr LD,\quad F_-=mD^*+\mathscr LD^*,
\quad \mathscr L=i\{H_\phi,\cdot\}.
\end{gathered}
\tag{D.20}
\]
Use the cubic Hamiltonian
\(V=a_+^*F_++F_+^*a_++a_-^*F_-+F_-^*a_-\)
and its eliminating generator
\(S=a_+^*D-D^*a_++a_-^*D^*-Da_-\).
The normalized commutator symbol is \([A,B]_{\rm cl}=i\{A,B\}\). Since \([H_0,S]_{\rm cl}=V\), direct Baker–Campbell–Hausdorff expansion gives
\[
H'=H_0+\frac{\kappa^2}{2}[S,V]_{\rm cl}
+\frac{\kappa^3}{3}[S,[S,V]_{\rm cl}]_{\rm cl}
+O(\kappa^4).
\tag{D.21}
\]
Extracting the coefficient of \(a_+^*b^4\) from the displayed polynomials gives \(-16\omega\beta\). This monomial is resonant, since
\((m+\mathscr L)b^4=0\). Its conjugate has the same real coefficient. The same expansion also has coefficient \(+16\omega\beta\) multiplying the nonresonant monomial \(a_-^*b^{*4}\); that second coefficient is a separate polynomial check, not part of the resonant obstruction. The rerun record accompanying this note verifies the cubic residual, quartic symbol, and both displayed third-order coefficients exactly.

The corresponding order-\(\kappa^3\) graph equation has source \(16\omega\beta b^4\) in the kernel of its homological operator. No bounded stationary correction can solve it while preserving the chosen leading graph. At \(\omega=\beta=1\), the \(a_+^*b^4\) matrix element between \(|4,0,0\rangle\) and \(|0,1,0\rangle\) is \(-16\sqrt{24}\). This follows from the ladder factors and the calculated polynomial coefficient; the present run did not independently repeat the full third-order OFPT sum from the older package.

The example is not an AdS counterexample and does not violate Proposition PHY-09. A larger resonant block, or a different allowed choice of leading homogeneous data, changes the graph problem. It rules out inferring an all-order extension of this particular paired graph from its order-\(\kappa^2\) success. For the AdS theory the relevant next test is the actual resonant coefficient
\[
\mathcal R\left(V_5+[S,V_4]+\tfrac13[S,[S,V_3]]\right)_{g\phi^4}
\tag{D.22}
\]
together with the simultaneously transported charges. That higher-order calculation has not been established here.

### D.4.5 Why the final remainder is \(o(G)\)

Even a coupling-reflection symmetry of the full spectrum does not make every branch analytic in \(G\). For example,
\[
H(\kappa)=E_0I+\kappa^2\lambda I+\kappa^3v\sigma_x,
\qquad
H(-\kappa)=\sigma_zH(\kappa)\sigma_z
\tag{D.23}
\]
has eigenvalues \(E_0+\kappa^2\lambda\pm\kappa^3v\).
They share their first \(G\)-coefficient because \(\kappa^2=16\pi G\), but their remainder can be of order \(G^{3/2}\). Therefore the fixed-label claim throughout this note is
\(E=E_0+Gg+o(G)\). Proving an \(O(G^2)\) remainder would require additional higher-order information. These failure checks establish precise limits, rather than modifying the complete first-order scalar block already proved in Section 3.3.

### D.4.6 A sufficient next-order Ward condition

For completeness, the first independent audit supplies a precise conditional way to improve the remainder. Suppose the *complete quantum* normal form and non-global charges of the same renormalized theory obey
\[
\begin{gathered}
\widetilde H=H_0+\kappa^2W_2+\kappa^3W_3+\cdots,\\
\widetilde Q_s=\kappa^{-1}c_sa_s+q_{0,s}+\kappa q_{1,s}
+\kappa^2q_{2,s}+\cdots,\\
[H_0,a_s]=sa_s,\quad c_s\ne0 .
\end{gathered}
\tag{D.24}
\]
Assume \(W_2\) is resonant and commutes with every leading gravitational oscillator and its adjoint, including all lower-degree quantum terms. Assume also the next-order identity
\[
(\operatorname{ad}H_0-s)q_{2,s}
+[W_2,q_{0,s}]+[W_3,c_sa_s]=0
\tag{D.25}
\]
and compatibility with gravitational parity under \(\kappa\mapsto-\kappa\).

**Proposition PHY-12 (conditional absence of the third-order splitting).** Under these additional assumptions, on a fixed finite free-energy block satisfying ordinary analytic matrix perturbation hypotheses, a branch whose order-\(\kappa^2\) correction is \(\lambda\) has no order-\(\kappa^3\) splitting within its \(\lambda\)-eigenspace.

**Proof.** The order-zero Ward equation makes \(q_{0,s}\) a free weight-\(s\) operator. Project (D.25) to that weight:
\[
c_s[\mathcal RW_3,a_s]=-[W_2,q_{0,s}].
\tag{D.26}
\]
Take \(P_\lambda\) to be the common \(W_2\)-eigenprojection on the algebraic direct sum of free-energy spaces with that eigenvalue. It must be formed before restricting to a single free-energy block: a truncated ladder is not a gravitational oscillator representation. The assumed commutant property gives \([P_\lambda,a_s]=0\), while
\(P_\lambda[W_2,q_{0,s}]P_\lambda=0\). Thus
\(P_\lambda\mathcal RW_3P_\lambda\) commutes with every gravitational creation and annihilation operator. On the irreducible gravity Fock factor it is the identity tensor an operator on the scalar multiplicity space. Gravitational parity makes this compressed term odd, while every such identity tensor is even. The compressed term is therefore zero. Mixing between distinct \(\lambda\)'s starts contributing at order \(\kappa^4\), since the order-\(\kappa^3\) matrix element is squared over an order-\(\kappa^2\) gap. This proves the stated conditional conclusion. \(\square\)

Section 3.3 establishes the commutant property of the degree-four symbol and the invariance of the zero-graviton scalar sector under the lower-degree terms. Those facts do not establish the stronger commutant hypothesis in Proposition PHY-12: a gravitational number operator annihilates the gravitational vacuum but does not commute with its creation operator. Nor has the required next-order quantum charge, including counterterm metric completions and the removal of the common regulator, been constructed here. The proposition is retained as an exact sufficient condition and a concrete future calculation, with none of these extra inputs asserted for the full AdS theory.


