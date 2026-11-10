# Spectral Geometry: Domains, Heat, and Dirac Spectra

DRAFT — bounded review recorded.

Spectral geometry asks which features of a specified geometric operator can be recovered from its eigenvalues. The operator includes its Hilbert space and domain: changing boundary conditions can change the spectrum without changing its differential expression. We develop this distinction through circle and interval problems and a fully evaluated round-sphere Dirac model, extracting heat coefficients and scale-dependent zeta determinants without claiming complete inverse geometry.

## 1. The Operator Includes Its Domain

All compact spectral examples below are **auxiliary Riemannian models**, not physical Lorentzian spacetimes. Physical four-dimensional conventions remain signature $(-,+,+,+)$, derivative-first connection slots, $T^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\Gamma^\rho{}_{\nu\mu}$, and $Q=-\nabla g$. The physical spinor dictionary remains $\{\gamma^a,\gamma^b\}=-2\eta^{ab}I$ and $\Omega=-\omega_{ab}\gamma^{ab}/4$. Introducing a positive-definite metric $h$ is not an assumed Wick rotation or a quantum prescription.

Let $M$ be a smooth closed manifold, meaning compact without boundary, of dimension $d$. A complex vector bundle $E$ of rank $q$ has a positive Hermitian fibre metric. Its Hilbert space and inner product are

$$\begin{align}
\mathcal H=L^2(M,E),\qquad \langle u,v\rangle=\int_M(u(x),v(x))_E\,\mathrm dV_h.
\end{align}$$

The inner product is antilinear in its first argument. The Sobolev space $H^k(M,E)$ consists of sections with square-integrable weak derivatives through order $k$, defined using smooth charts and bundle frames. On a compact manifold different smooth choices give equivalent norms.

A second-order expression $P$ is of Laplace type if its principal symbol is $|\xi|_h^2I$. Our symbol convention replaces $\partial_j$ by $i\xi_j$, so $-\partial_j^2$ has symbol $\xi_j^2$. Ellipticity means invertibility of the principal symbol for every nonzero real covector. A smooth, formally self-adjoint, nonnegative Laplace-type expression on a closed manifold has a self-adjoint realization with domain $H^2(M,E)$. Formal self-adjointness is an integration-by-parts identity on smooth sections; equality with the Hilbert adjoint, including its domain, is stronger.

This is the standard elliptic self-adjointness theorem [1,2]. Its compactness mechanism is informative: elliptic regularity bounds the resolvent from $L^2$ into $H^2$, and the Rellich compact embedding $H^2\to L^2$ makes that resolvent compact. Hence there is an orthonormal basis of smooth eigensections with real eigenvalues of finite multiplicity,

$$\begin{align}
0\leq\lambda_0\leq\lambda_1\leq\cdots,\qquad\lambda_j\longrightarrow\infty.
\end{align}$$

Compact resolvent alone would not imply heat-trace convergence for an arbitrary abstract operator; elliptic eigenvalue growth supplies that control here. Noncompactness also matters: $-\partial_x^2$ on $L^2(\mathbb R)$ is self-adjoint and elliptic but has continuous spectrum $[0,\infty)$ and no finite ordinary heat trace.

For the untwisted Levi-Civita spin Dirac operator, retain the Riemannian convention of [the spin chapter](<AST-07.md>):

$$\begin{align}
c(v)c(w)+c(w)c(v)=-2h(v,w)I,\qquad D=\sum_a c(e_a)\nabla^S_{e_a},\qquad D^2=\nabla^{S*}\nabla^S+\frac R4I. \tag{1}
\end{align}$$

The matrices $c(e_a)$ are skew-Hermitian; there is no extra $i$ in $D$. On a closed Riemannian spin manifold, $D$ is self-adjoint on $H^1(M,S)$, and its square has domain $H^2(M,S)$. Squaring the closed operator requires both $\psi\in H^1$ and $D\psi\in H^1$, which elliptic regularity identifies with $H^2$. We use (1), already derived in that chapter, rather than repeating the spin construction.

The Lorentzian Dirac symbol degenerates on nonzero null covectors. Its square is wave-type, not this nonnegative elliptic problem. Compactness of a spacetime does not remove its null characteristics. A spatial Dirac Hamiltonian on a chosen Cauchy surface, when available, is a different operator requiring additional time-evolution and domain choices.

## 2. Completely Solved Domains

### 2.1 A Circle with a Transition Phase

Take arclength $s\in[0,L]$ with endpoints identified. The expression $D_\alpha=-i\partial_s$ is self-adjoint on

$$\begin{align}
\operatorname{Dom}D_\alpha =\{u\in H^1([0,L]):u(L)=e^{2\pi i\alpha}u(0)\},\qquad0\leq\alpha<1. \tag{2}
\end{align}$$

The endpoint values are Sobolev traces. Indeed,

$$\begin{align}
\langle u,Dv\rangle-\langle Du,v\rangle=-i[\overline u v]_0^L.
\end{align}$$

The phase condition kills this form. Requiring it to vanish for all $u$ in (2) forces the same phase condition on the adjoint domain, proving self-adjointness. Imposing both $u(0)=u(L)=0$ on a first-order derivative is too restrictive: that realization is symmetric but not self-adjoint.

Solving the eigenvalue equation and normalizing gives

$$\begin{align}
u_n(s)=L^{-1/2}e^{2\pi i(n+\alpha)s/L},\qquad \nu_n=\frac{2\pi}{L}(n+\alpha),\qquad n\in\mathbb Z. \tag{3}
\end{align}$$

Fourier completeness, after multiplication by $e^{-2\pi i\alpha s/L}$, proves these form a full orthonormal basis. The two spin structures correspond to $\alpha=0$ and $1/2$ in a parallel spin frame. General $\alpha$ represents an additional flat unitary line twist, not additional spin structures.

The square $P_\alpha=-\partial_s^2$ has domain $H^2$ with **both** $u$ and $u'$ satisfying the phase condition. Gaussian Poisson summation, used as an analytic input, gives

$$\begin{align}
H_\alpha(t):=\operatorname{Tr}e^{-tP_\alpha} =\sum_{n\in\mathbb Z}e^{-4\pi^2t(n+\alpha)^2/L^2} =\frac L{\sqrt{4\pi t}}\sum_{k\in\mathbb Z} e^{-L^2k^2/(4t)}e^{2\pi ik\alpha}. \tag{4}
\end{align}$$

Every $\alpha$ therefore has the same power-law small-time heat coefficients, despite different spectra. Holonomy appears in the exponentially small winding terms. The periodic problem has one zero mode; the antiperiodic problem has none. Subtracting a zero mode changes a primed trace by $-1$, not the local coefficients of the full heat kernel.

### 2.2 An Interval: the Boundary Leaves a Constant

On $[0,L]$, three self-adjoint nonnegative realizations of $P=-\partial_x^2$ have domains

$$
\begin{aligned}
 \operatorname{Dom}P_{\mathrm D}&=\{u\in H^2:u(0)=u(L)=0\},\\
 \operatorname{Dom}P_{\mathrm N}&=\{u\in H^2:u'(0)=u'(L)=0\},\\
 \operatorname{Dom}P_{\mathrm{DN}}&=\{u\in H^2:u(0)=u'(L)=0\}.
 \end{aligned}
 \tag{5}
$$

Their boundary form is $[-\overline u v'+\overline {u'}v]_0^L$; the displayed conditions and the adjoint conditions coincide. Solving $u''+\lambda u=0$ gives the normalized modes

$$
\begin{array}{c|c|c}
 \text{domain}&\text{eigenfunction}&\lambda\\
 \mathrm D&\sqrt{2/L}\sin(n\pi x/L),\ n\geq1&(n\pi/L)^2\\
 \mathrm N&L^{-1/2},\ n=0&0\\
 \mathrm N&\sqrt{2/L}\cos(n\pi x/L),\ n\geq1&(n\pi/L)^2\\
 \mathrm{DN}&\sqrt{2/L}\sin((n+\tfrac12)\pi x/L),\ n\geq0&((n+\tfrac12)\pi/L)^2
 \end{array}
 \tag{6}
$$

Sine/cosine Fourier completeness supplies the complete bases, not just candidate eigenfunctions. Poisson summation yields

$$
\begin{aligned}
 H_{\mathrm D}(t)&=\frac L{\sqrt{4\pi t}}-\frac12
 +\frac L{\sqrt{\pi t}}\sum_{k=1}^\infty e^{-L^2k^2/t},\\
 H_{\mathrm N}(t)&=H_{\mathrm D}(t)+1,\\
 H_{\mathrm{DN}}(t)&=\frac L{\sqrt{4\pi t}}
 +\frac L{\sqrt{\pi t}}\sum_{k=1}^\infty(-1)^k e^{-L^2k^2/t}.
 \end{aligned}
 \tag{7}
$$

The constant is respectively $-1/2$, $+1/2$, or $0$. Relative to the leading $t^{-1/2}$ factor, this is a half-integer heat term. It comes from boundary conditions, not interior curvature. At $L=\pi$ and $t=0.1$, these full traces are approximately $2.302495608199$, $3.302495608199$, and $2.802495608199$. Removing the Neumann zero mode makes its positive spectrum and primed trace equal to the Dirichlet ones. Spectral data need a declared realization and zero-mode convention.

## 3. Counting and the Curvature Content of Heat

For nonnegative $P$, define $N_P(\Lambda)=\#\{j:\lambda_j\leq\Lambda\}$, including multiplicities and zero modes. For self-adjoint $D$, distinguish

$$\begin{align}
N_{|D|}(K)=\#\{j:|\nu_j|\leq K\},\qquad N_D^+(K)=\#\{j:0<\nu_j\leq K\}.
\end{align}$$

Then $N_{|D|}(K)=N_{D^2}(K^2)$. Positive-eigenvalue counting is not necessarily half of absolute-value counting unless a suitable symmetry and zero-mode treatment are known.

In the closed smooth Laplace-type setting, Weyl's theorem states

$$\begin{align}
N_P(\Lambda)\sim \frac{q\operatorname{Vol}(M)}{(4\pi)^{d/2}\Gamma(d/2+1)}\Lambda^{d/2}. \tag{8}
\end{align}$$

Here $\Lambda$ has units length$^{-2}$. The coefficient can be understood from phase space: each base point contributes $q$ times the volume of the cotangent ball $|\xi|^2\leq\Lambda$, divided by $(2\pi)^d$. Turning this into a counting theorem is an analytic input, not a consequence of checking a few eigenvalues. With known operator order and rank, the exponent gives dimension and the coefficient gives volume. Unknown rank leaves a rank-volume ambiguity.

Before applying a heat formula, fix its endomorphism sign. We write

$$\begin{align}
P=-\left[h^{ij}\left(\nabla_i\nabla_j-\Gamma^k{}_{ij}\nabla_k\right)+E\right] =\nabla^*\nabla-E, \tag{9}
\end{align}$$

where $\Gamma$ is Levi-Civita for $h$ and $\nabla$ is the bundle connection. The first lower $\Gamma$ slot is the derivative slot. In particular (1) gives $E=-RI/4$, not $+RI/4$.

The closed-manifold heat-kernel theorem [1,2] supplies a smooth kernel for $t>0$ and an asymptotic expansion

$$
H(t)=\operatorname{Tr}e^{-tP}\sim(4\pi t)^{-d/2}
 (A_0+tA_2+t^2A_4+\cdots),\qquad
 \begin{aligned}
 A_0&=\int_M q\,\mathrm dV_h,\\
 A_2&=\int_M\operatorname{tr}(E+RI/6)\,\mathrm dV_h.
 \end{aligned}
 \tag{10}
$$

It need not be a convergent series. There are no boundary half-powers in this setting. Smooth compact manifolds with boundary require elliptic boundary conditions and a different expansion; corners and nonlocal boundary conditions require further qualifications.

For the spin square the coefficient is therefore

$$\begin{align}
A_0=q\operatorname{Vol}(M),\qquad A_2=-\frac q{12}\int_M R\,\mathrm dV_h. \tag{11}
\end{align}$$

A negative contribution is consistent with a positive $R/4$ potential, which decreases the heat exponential. The volume and scalar curvature belong to the Riemannian metric defining the principal symbol. An additional bundle connection can enter $E$ and its own curvature; the base Levi-Civita scalar in (10) is not replaced by an arbitrary affine scalar.

One higher coefficient will calibrate the sphere. On a closed manifold, after integrated total divergences vanish,

$$\begin{align}
A_4=\frac1{360}\int_M\operatorname{tr}\left[ (5R^2-2|\operatorname{Ric}|^2+2|\operatorname{Riem}|^2)I +60RE+180E^2+30\Omega_{ij}\Omega^{ij}\right]\,\mathrm dV_h. \tag{12}
\end{align}$$

Here $\Omega_{ij}=[\nabla_i,\nabla_j]$ in a coordinate frame. Its contraction is a matrix product, not a positive curvature norm; for a unitary connection its trace can be negative. A coefficient containing several curvature terms determines their integrated combination, not automatically each integral separately.

## 4. Round-Sphere Dirac Spectrum and Heat

### 4.1 An Actual Angular-Momentum Operator

Let $S^2_r$ have metric $h=r^2(\mathrm d\theta^2+\sin^2\theta\,\mathrm d\phi^2)$, $r>0$, and its unique spin structure. The full complex spinor bundle has rank two. It is trivial as a complex rank-two bundle, although its spin connection is not trivial. Use a global representation by $\mathbb C^2$-valued functions. The Pauli matrices are

$$
\sigma_1=\begin{pmatrix}0&1\\1&0\end{pmatrix},\qquad
 \sigma_2=\begin{pmatrix}0&-i\\i&0\end{pmatrix},\qquad
 \sigma_3=\begin{pmatrix}1&0\\0&-1\end{pmatrix}.
$$

They satisfy $(\sigma\cdot a)(\sigma\cdot b)=a\cdot b\,I+i\sigma\cdot(a\times b)$. With outward normal $n=x/r$ and a unit tangent vector $v$, set

$$\begin{align}
c(v)=-i\sigma\cdot(n\times v),\qquad \nabla^S_v=\partial_v+\frac i{2r}\sigma\cdot(n\times v). \tag{13}
\end{align}$$

These are smooth global objects. Differentiating $n$ gives $\partial_vn=v/r$. In the derivative of $c(w)$, the resulting normal term is canceled by the connection commutator, leaving $c(\nabla^h_vw)$; this checks Clifford compatibility using the Pauli identity. The connection is unitary and the Clifford action skew-Hermitian.

On a polar patch put $e_\theta=\partial_\theta n$ and $e_\phi=(\sin\theta)^{-1}\partial_\phi n$. The coordinate connection matrices are $A_\theta=i\sigma\cdot e_\phi/2$ and $A_\phi=-i\sin\theta\,\sigma\cdot e_\theta/2$. Contracting the connection with Clifford multiplication contributes $I/r$, because each of the two unit tangent directions contributes $I/(2r)$. Thus

$$\begin{align}
D=\frac1r\left[-i\sigma\cdot e_\phi\,\partial_\theta +i\sigma\cdot e_\theta\,\csc\theta\,\partial_\phi+I\right] =\frac1r(\sigma\cdot L+I),\qquad L=-i\,n\times\nabla_{\mathrm{unit}}. \tag{14}
\end{align}$$

Here $\nabla_{\mathrm{unit}}$ is the gradient on the unit sphere. To connect this operator explicitly to [the spin chapter](<AST-07.md>), use the local unitary map $\psi_{\mathrm{global}}=U\psi_{\mathrm{polar}}$ with

$$\begin{align}
U=e^{-i\phi\sigma_3/2}e^{-i\theta\sigma_2/2}e^{i\pi\sigma_3/4}.
\end{align}$$

It gives $U^{-1}A_\theta U+U^{-1}\partial_\theta U=0$ and $U^{-1}A_\phi U+U^{-1}\partial_\phi U=-i\cos\theta\,\sigma_3/2$. Therefore

$$\begin{align}
U^{-1}D(U\psi)=\frac1r\left[ i\sigma_1\left(\partial_\theta+\frac12\cot\theta\right) +i\sigma_2\csc\theta\,\partial_\phi\right]\psi.
\end{align}$$

This is precisely that chapter's polar operator. Since $U(\theta,\phi+2\pi)=-U(\theta,\phi)$, a single-valued global spinor has antiperiodic polar components. The domain remains $H^1$ on the smooth sphere, including extension through regular pole frames, not a cylinder with arbitrary pole conditions.

Decompose scalar functions into spherical harmonics of degree $\ell=0,1,\ldots$. Completeness of these harmonics is an analytic input. Each space has $L^2=\ell(\ell+1)$ and dimension $2\ell+1$. Couple it to $S=\sigma/2$ and put $J=L+S$. The $SU(2)$ Clebsch–Gordan theorem gives $j=\ell+1/2$ and, for $\ell\geq1$, $j=\ell-1/2$. Since

$$\begin{align}
\sigma\cdot L=J^2-L^2-S^2,\qquad S^2=\frac34I,
\end{align}$$

we obtain

$$
\begin{array}{c|c|c}
 j&r\nu&2j+1\\
 \ell+\tfrac12&\ell+1&2\ell+2\\
 \ell-\tfrac12,\ \ell\geq1&-\ell&2\ell
 \end{array}
 \tag{15}
$$

For example the second eigenvalue follows from $(\ell-\tfrac12)(\ell+\tfrac12)-\ell(\ell+1)-3/4+1=-\ell$. Branch dimensions add to $2(2\ell+1)$; at $\ell=0$ there is just the dimension-two positive branch. No harmonic-spinor subspace is lost. Together with harmonic completeness this proves the full spectrum

$$\begin{align}
\operatorname{spec}D=\{\pm n/r:n=1,2,\ldots\},\qquad \operatorname{mult}(\pm n/r)=2n. \tag{16}
\end{align}$$

There are no zero modes, consistently with (1) and positive scalar curvature. Multiplication by $\sigma\cdot n$ anticommutes with (14), providing spectral symmetry. The lowest positive eigenspinors are constant functions in this trivialization; normalized representatives are $(4\pi r^2)^{-1/2}v$ for unit constant vectors $v\in\mathbb C^2$.

For a nonnegative cutoff K, with $m=\lfloor rK\rfloor$, the exact counts are

$$\begin{align}
N_D^+(K)=m(m+1),\qquad N_{|D|}(K)=2m(m+1). \tag{17}
\end{align}$$

At $rK=2$ these are $6$ and $12$. Equivalently $D^2$ has eigenvalue $n^2/r^2$ of multiplicity $4n$. Hence $N_{D^2}(\Lambda)\sim2r^2\Lambda$, agreeing with $q\operatorname{Area}/(4\pi)=2r^2$ in Weyl's law.

### 4.2 Calibrating the Heat Coefficient Twice

With $u=t/r^2$, the full trace is the convergent exact series

$$\begin{align}
H_{D^2}(t)=4\sum_{n=1}^\infty n e^{-un^2}. \tag{18}
\end{align}$$

Apply Euler–Maclaurin to $f(x)=xe^{-ux^2}$. It is smooth and rapidly decreasing for fixed $u>0$; the standard remainder estimates, or the Mellin expansion of this Gaussian sum, justify the resulting small-$u$ asymptotics. The consequential terms are

$$\begin{align}
\int_0^\infty f(x)\,\mathrm dx=\frac1{2u},\quad f(0)=0,\quad f'(0)=1,\quad f'''(0)=-6u,\quad f^{(5)}(0)=60u^2,
\end{align}$$

$$\begin{align}
\sum_{n=1}^\infty f(n)\sim\int_0^\infty f(x)\,\mathrm dx-\frac{f(0)}2 -\sum_{k\geq1}\frac{B_{2k}}{(2k)!}f^{(2k-1)}(0).
\end{align}$$

Using $B_2=1/6$, $B_4=-1/30$, $B_6=1/42$ and multiplying by four gives

$$\begin{align}
H_{D^2}(t)=\frac2u-\frac13-\frac u{30}-\frac{u^2}{126}+O(u^3) \quad(u\downarrow0). \tag{19}
\end{align}$$

This is a finite-order asymptotic statement, not convergence of an infinite Bernoulli series.

Independently, the metric gives $R=2/r^2$, $|\operatorname{Ric}|^2=2/r^4$, $|\operatorname{Riem}|^2=4/r^4$, and area $4\pi r^2$. The connection (13) has $F_{\theta\phi}=i\sin\theta\,\sigma\cdot n/2$. Consequently

$$\begin{align}
E=-\frac I{2r^2},\qquad\Omega_{ij}\Omega^{ij}=-\frac I{2r^4}.
\end{align}$$

Equations (10)–(12) give

$$\begin{align}
A_0=8\pi r^2,\qquad A_2=-\frac{4\pi}3,\qquad A_4=-\frac{2\pi}{15r^2}. \tag{20}
\end{align}$$

For $A_4$ the expression inside the trace of (12), in units $r^{-4}$, is $(24-60+45-15)I=-6I$. Its trace is $-12$, not $-6$. Substitution into $(4\pi t)^{-1}(A_0+tA_2+t^2A_4)$ reproduces the first three terms of (19). The incorrect convention $E=+R/4$ would instead give the constant $+5/3$, not $-1/3$.

Numerical evaluation of the full series illustrates the next coefficient:

| $u$ | $H_{D^2}$ | $(H_{D^2}-2/u+1/3+u/30)/u^2$ |
|---|---:|---:|
| $0.1$ | $19.663251056681$ | $-0.008227665220$ |
| $0.01$ | $199.666332536892$ | $-0.007964412685$ |
| $0.001$ | $1999.666633325394$ | $-0.007939286978$ |

The final column approaches $-1/126=-0.007936507937\ldots$. Summing through $n=400$ suffices for these digits: beyond $400$, $xe^{-ux^2}$ decreases, and the omitted positive tail is at most $2u^{-1}e^{-160000u}$. This controls a numerical sum, not the general heat theorem.

## 5. Zeta Functions and Determinants with Units

Let $b_0=\dim\ker P$. Exclude zero modes and choose a reference inverse length $\mu>0$. Initially for $\operatorname{Re}s>d/2$, define

$$\begin{align}
Z_{P/\mu^2}(s)=\sum_{\lambda_j>0}(\lambda_j/\mu^2)^{-s} =\frac{\mu^{2s}}{\Gamma(s)}\int_0^\infty t^{s-1}(H(t)-b_0)\,\mathrm dt. \tag{21}
\end{align}$$

The integral follows by integrating each exponential in the convergence half-plane. Meromorphic continuation uses small-time heat subtraction and convergence at large time; for smooth closed Laplace-type problems it is regular at zero. This continuation theorem [1,2] does not justify differentiating the original divergent series there. Define

$$\begin{align}
\log\det{}'_\zeta(P/\mu^2)=-Z'_{P/\mu^2}(0). \tag{22}
\end{align}$$

This is not an ordinary infinite product or a finite-cutoff determinant. Changing $\mu$ to $\mu'$ changes its logarithm by $-2Z_{P/\mu^2}(0)\log(\mu'/\mu)$; the reference scale cannot generally be suppressed.

### 5.1 The Sphere

The exact spectrum reduces its zeta function to the Riemann zeta function:

$$\begin{align}
Z_{D^2/\mu^2}(s)=4(r\mu)^{2s}\zeta_{\mathrm R}(2s-1),\qquad\operatorname{Re}s>1.
\end{align}$$

Its continuation gives

$$\begin{align}
Z_{D^2/\mu^2}(0)=-\frac13,\qquad \log\det_\zeta(D^2/\mu^2)=\frac23\log(r\mu)-8\zeta'_{\mathrm R}(-1). \tag{23}
\end{align}$$

The value at zero matches the heat constant, since there are no zero modes. At $r\mu=1$ the logarithm is $1.323369149603607\ldots$ and the determinant is $3.756054793895184\ldots$. Increasing $r$ by a factor $a$ at fixed $\mu$ changes the logarithm by $(2/3)\log a$. This is an evaluated spectral invariant, not a gravitational path-integral prediction.

### 5.2 The Circle

For the periodic circle, removing its zero mode gives

$$\begin{align}
Z_{P_0/\mu^2}(s)=2\left(\frac{L\mu}{2\pi}\right)^{2s}\zeta_{\mathrm R}(2s),\qquad Z(0)=-1,\qquad\det{}'_\zeta(P_0/\mu^2)=(L\mu)^2. \tag{24}
\end{align}$$

For $0<\alpha<1$, no zero mode occurs, and

$$\begin{align}
Z_{P_\alpha/\mu^2}(s)=\left(\frac{L\mu}{2\pi}\right)^{2s} [\zeta(2s,\alpha)+\zeta(2s,1-\alpha)].
\end{align}$$

The Hurwitz-zeta values $\zeta(0,a)=1/2-a$ and $\zeta'(0,a)=\log\Gamma(a)-\tfrac12\log(2\pi)$ give $Z(0)=0$. Applying $\Gamma(\alpha)\Gamma(1-\alpha)=\pi/\sin(\pi\alpha)$ to its derivative yields

$$\begin{align}
\det_\zeta(P_\alpha/\mu^2)=4\sin^2(\pi\alpha),\qquad \det_\zeta(P_{1/2}/\mu^2)=4. \tag{25}
\end{align}$$

Equal local heat coefficients therefore do not imply equal global determinants. The limit $\alpha\to0$ in (25) is zero, not (24): an eigenvalue becomes zero, whereas (24) explicitly removes it.

The positive-operator determinant of $D^2$ forgets signs of Dirac eigenvalues. Defining a determinant of $D$ requires a spectral cut or phase prescription. Spectral asymmetry is measured by the continued eta function

$$\begin{align}
\eta_D(s)=\sum_{\nu_j\ne0}\operatorname{sign}(\nu_j)|\nu_j/\mu|^{-s}.
\end{align}$$

The sphere's paired spectrum makes it zero, but writing $\sqrt{\det D^2}$ still does not specify a branch prescription for $\det D$. No fermionic measure, anomaly cancellation, or quantum effective action has been supplied.

## 6. Geometric Information Versus Inverse Uniqueness

Three inputs differ: a differential operator with coefficients and multiplication by functions carries local information; its complete kernel $K(t;x,y)$ records how eigensections sit over points; its eigenvalue list gives only the trace. With a located orthonormal eigenbasis,

$$\begin{align}
K(t;x,y)=\sum_j e^{-t\lambda_j}u_j(x)\otimes u_j(y)^*,\qquad H(t)=\int_M\operatorname{tr}K(t;x,x)\,\mathrm dV_h.
\end{align}$$

The second factor in the kernel is a fibre dual. Eigenvalues alone do not provide these evaluations. Changing basis within an eigenspace preserves its summed projection kernel, but forgetting all evaluations loses much more. Abstract unitary equivalence of diagonal operators need not come from an isometry of manifolds.

Weyl and heat coefficients give genuine invariants: dimension and volume under the qualifications of (8), integrated scalar curvature for the specified spin square, and higher integrated combinations. They do not give pointwise curvature by removing an integral sign. Nonisometric closed Riemannian manifolds can have identical scalar-Laplacian spectra; Sunada's general constructions are established existence inputs [4], not a pair constructed or checked here. Inverse uniqueness in a restricted geometric class requires a separate theorem with that class and its hypotheses specified.

There is also a local distinction between spectral and operator data. In our Riemannian convention, the Leibniz rule gives

$$\begin{align}
[D,f]=c(\mathrm df),\qquad [D,f][D,g]+[D,g][D,f]=-2h^{-1}(\mathrm df,\mathrm dg)I.
\end{align}$$

This uses the multiplication representation of functions, not just the numbers in $\operatorname{spec}D$. Recovering geometry from such enriched data is a different inverse problem; full noncommutative spectral-triple theory is left to AST-18.

A finite eigenvalue cutoff can approximate a heat trace when its tail is bounded. It cannot establish equality of full spectra, completeness of an ansatz, or a global inverse-geometry theorem. Neither a fitted spectral dimension nor an angular-momentum multiplicity selects a gauge group, generations, or a quantum spacetime theory. The results here concern specified self-adjoint realizations, complete model spectra using explicit analytical inputs, and the heat and determinant information they carry.

## References and Analytical Inputs

[1] P. B. Gilkey, *Invariance Theory, the Heat Equation, and the Atiyah–Singer Index Theorem*, 2nd ed., CRC Press, 1995. Smooth closed Laplace-type heat coefficients and zeta continuation; our endomorphism sign is fixed in (9).

[2] N. Berline, E. Getzler, and M. Vergne, *Heat Kernels and Dirac Operators*, Springer, 1992. Elliptic Dirac operators and closed-manifold heat analysis. Fourier completeness, Gaussian Poisson summation, Euler–Maclaurin asymptotics, and Riemann/Hurwitz-zeta special values are additional classical inputs used at their displayed steps.

[3] H. B. Lawson and M.-L. Michelsohn, *Spin Geometry*, Princeton University Press, 1989. Spin Dirac constructions, the Lichnerowicz identity, and spherical models. The $SU(2)$ angular-momentum addition rule is the general Clebsch–Gordan theorem, not a consequence of checking finitely many representations.

[4] T. Sunada, “Riemannian coverings and isospectral manifolds,” *Annals of Mathematics* **121** (1985), 169–186. Existence of isospectral nonisometric geometries, not inverse uniqueness.
