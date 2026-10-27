---
paper id: 2610.28183v1
title: "Finite Spectral Recurrences for Loop Integrals in de Sitter and Anti-de Sitter Space"
authors:
  - "Bassett, Bruce A."
  - "Cacciatori, Sergio"
  - "Moschella, Ugo"
publication date: 2026-10-20
abstract: |-
  We introduce a method that does for loop integrals in de Sitter and anti-de Sitter space what integration-by-parts identities do in flat space. A local, coordinate-free propagator algebra common to both geometries yields exact finite-difference equations in spectral labels; with external points they become differential-difference equations, and at the AdS boundary recover known Witten-diagram relations. Acting line by line, they apply in principle to any diagram. We solve them for the two-loop watermelon, isolating its ultraviolet poles, and for one-loop two- and four-point functions.
comments: "1 figure"
url: https://arxiv.org/abs/2610.28183v1
summary: "Mass-label recurrences for regulated AdS/dS loop kernels, with independent integral, spectral and UV checks and explicit global boundary conditions."
tags: []
---

# Local mass shifts, global propagator choices

The reusable result is a finite-difference algebra for scalar propagators and loop diagrams on the unit sphere $S^d$ and Euclidean AdS $H^d$. The same local ladder produces a two-term recurrence for the two-loop watermelon and, after cutting a line, a differential-difference equation for a one-loop kernel. The physical solution still requires the geometry's boundary conditions and large-mass behavior. Equality of the recurrence does not mean equality of the amplitudes.

This is directly useful for AdS spectral calculations: the variable being shifted is the **mass label**, not a normal-mode frequency, and cutting converts the removed label squared into a Laplace/Casimir operator. The result supplies regulated bulk propagator products and loop kernels; it does not identify a Rindler Fock trace, an ordinary determinant, or a brick-wall/cone partition function.

Sources: [official v1 abstract](https://arxiv.org/abs/2610.28183v1), [official PDF](https://arxiv.org/pdf/2610.28183v1), and the complete official TeX `AAAfinite.tex`. All five technical blocks, the introduction, conclusions and disclosure were read. There are no appendices. Pages 1–5 were rendered to inspect every main formula and Figure 1; page 6 contains the remaining bibliography. Source results below are **Source-derived** unless explicitly marked **Checked**. Return to [[2026_10_21_overview]].

## Source map and notation

| Source block | Equations | Function in the argument |
|---|---|---|
| A local mass ladder | (1)–(8) | Normalized propagators, meromorphic shifts, tadpole and bubble |
| The watermelon | (9)–(16), unnumbered UV expansion | Primitive, five relations, one-label recurrence, physical solution and poles |
| Arbitrary finite-loop bananas and multivertex topologies | (17), equal-mass basketball formula | Finite-current ansatz; one explicit higher-loop special case; Mercedes construction deferred |
| Cutting a line: external bulk points | (18)–(23) | Operator substitution, contact source, spectral multiplier and tree decomposition |
| AdS boundary points: Witten diagrams | (24)–(25) | Channel conformal Casimir and the boundary limit |
| Conclusions and disclosure | — | Scope and claimed generality; the AI-use statement is not mathematical verification |

The paper is short but formula-dense. Read (1)–(8) and (18)–(25) first for applications; (9)–(16) supply the nontrivial scalar solution. The higher-loop paragraph is a statement of a construction with substantial coefficients omitted, not a ready-to-run general reduction algorithm.

$$
\sigma=\begin{cases}+1&S^d,\\-1&H^d,\end{cases}
\qquad h=\frac{d-1}{2},\quad a=h-1,\quad
\mu_q=h^2-q^2,\quad\kappa_q=a^2-q^2,\quad m_q^2=\sigma\mu_q.
$$

Here $d$ is the **bulk** dimension and $\kappa_q$ is a spectral polynomial, unrelated to a gravitational coupling. The invariant separation is $z=\cos r$ on $S^d$ and $z=\cosh r$ on $H^d$. All displayed formulas initially use radius one. On AdS, the falloff dimension is $\Delta=h+q$, so $m^2L^2=q^2-h^2$. On dS, principal-series labels are $q=i\nu$. Integer shifts generally leave the physical mass range; the relations apply to a meromorphic family of labels.

The sphere Green function is even in $q$. The chosen AdS Green function is not: $q$ and $-q$ have the same mass squared but different asymptotic falloffs. One must specify the branch/boundary condition before identifying two amplitudes by their masses. The source uses the maximally analytic Schwinger functions and discusses the AdS range $q>-1$ before meromorphic continuation.

## Propagators, the ODE and the tadpole ladder

With the delta distribution normalized against the invariant measure,

$$
(-\nabla^2+\sigma\mu_q)G_q^\sigma(X,Y)=\delta(X,Y),
$$

and

$$
\begin{aligned}
G_q^+(z)&=\frac{\Gamma(h+q)\Gamma(h-q)}{(4\pi)^{h+1/2}\Gamma(h+1/2)}
{}_2F_1\left(h+q,h-q;h+\frac12;\frac{1+z}{2}\right),\\
G_q^-(z)&=\frac{\Gamma(h+q)}{2\pi^h\Gamma(q+1)}(2z)^{-h-q}
{}_2F_1\left(\frac{h+q}{2},\frac{h+q+1}{2};q+1;z^{-2}\right).
\end{aligned}
$$

Away from coincidence, $\nabla^2=\sigma[(1-z^2)\partial_z^2-dz\partial_z]$, so both satisfy

$$
(1-z^2)G_q''-(2h+1)zG_q'-(h^2-q^2)G_q=0.
$$

The contiguity relations are

$$
\begin{aligned}
(q-h+1)G_{q+1}&=(q+h)zG_q-(1-z^2)G_q',\\
(q+h-1)G_{q-1}&=(q-h)zG_q+(1-z^2)G_q'.
\end{aligned}
$$

Their sum expresses multiplication by $z$ as a finite shift, while their difference provides the primitive used below. Poles at exceptional labels must be treated by limits of the meromorphic identities, not by dividing by zero and dropping a solution.

For $\Re d<2$, coincidence is initially regular and

$$
T_q^\sigma=G_q^\sigma(1)
=\frac{\Gamma(1-d/2)}{(4\pi)^{d/2}}
\begin{cases}
\dfrac{\Gamma(h+q)\Gamma(h-q)}{\Gamma(1/2+q)\Gamma(1/2-q)},&\sigma=+1,\\[1ex]
\dfrac{\Gamma(h+q)}{\Gamma(1-h+q)},&\sigma=-1.
\end{cases}
$$

Continue this expression in $d$ to define the dimensionally regulated tadpole. The ladder gives

$$
(q-h)(q-h+1)T_{q+1}^\sigma=(q+h)(q+h-1)T_{q-1}^\sigma.
$$

**Checked:** Mathematica reduces the two Gamma-function ratios in this recurrence to one. Direct 40-digit evaluations of the two hypergeometric ladders and ODE at $h=0.7$, $(q,z)=(0.3i,0.2)$ on the sphere and $(1.3,1.4)$ on AdS give numerical zero residuals. The initial exact-expression evaluation emitted a precision-exhaustion warning while cancelling zero; these are finite numerical checks, not a general special-function proof.

## Green identity evaluates the two-line bubble

Define the anchored diagram

$$
\mathcal I_M^\sigma(q_1,\ldots,q_M)=\int dY\prod_{j=1}^MG_{q_j}^\sigma(X,Y).
$$

The volume of the second vertex is integrated, while $X$ is fixed. A full vacuum graph would carry the remaining volume and coupling/symmetry factors separately.

For two lines, integrate $G_{q_1}\nabla^2G_{q_2}-G_{q_2}\nabla^2G_{q_1}$. On the compact sphere there is no outer surface. On $H^d$, $\Re(q_1+q_2)>0$ is the source's sufficient condition for dropping the outer flux. In a common coincidence-convergent domain, the Green equations then yield

$$
\sigma\mathcal I_2^\sigma(q_1,q_2)
=\frac{T_{q_1}^\sigma-T_{q_2}^\sigma}{q_1^2-q_2^2}.
$$

The contact terms are essential: the divergent self-contractions are continued consistently before taking the tadpole difference. For the same analytic branch and coinciding labels, use the derivative with respect to $q^2$. On AdS, setting $q_1=-q_2$ is not automatically this coincident-resolvent limit because the boundary conditions can differ.

The corresponding operator identity is

$$
G_r^\sigma\circ G_s^\sigma
=\sigma\frac{G_r^\sigma-G_s^\sigma}{r^2-s^2}.
$$

Both identities are for compatible Green-function domains. A finite radial boundary would add its Wronskian flux.

## The watermelon current and its five independent relations

For three lines, the useful primitive is itself a spectral shift:

$$
Q_q^\sigma=\frac{G_{q-1}^\sigma-G_{q+1}^\sigma}{2q}
=\frac{(2h-1)zG_q^\sigma-(1-z^2)(G_q^\sigma)'}{\kappa_q},
\qquad \partial_zQ_q^\sigma=-G_q^\sigma.
$$

**Checked:** substituting the ODE into the derivative of the second expression gives exactly $-G_q$. At initially regular coincidence, $Q_q(1)=(2h-1)T_q/\kappa_q$; this is the origin of the tadpole factors in the current flux.

For $\{i,j,k\}=\{1,2,3\}$, the source constructs

$$
\mathcal C_{ij|k}=[\sigma(1-z^2)]^{h+1/2}
(G_{q_j}G_{q_i}'-G_{q_i}G_{q_j}')Q_{q_k}.
$$

The bracketed radial factor is nonnegative on either real Euclidean domain. Differentiate, reduce second derivatives with the ODE, and integrate the remaining total derivative with its contact flux. Let $\mathsf D_m$ replace line $G_{q_m}$ by $Q_{q_m}$, and let $\mathcal J=\int dY\,zG_{q_1}G_{q_2}G_{q_3}$. The relations are

$$
\left[\kappa_i\mathsf D_i-\kappa_j\mathsf D_j+(\kappa_i-\kappa_j)\mathsf D_k\right]\mathcal I_3^\sigma
=\frac{2h-1}{\sigma\kappa_k}(T_j-T_i)T_k,
$$

$$
\mathcal J=\frac{(q_k+a)\mathcal I_3(\mathbf q-\mathbf e_k)
+(q_k-a)\mathcal I_3(\mathbf q+\mathbf e_k)}{2q_k},
\qquad 4(h-1)\mathcal J=\sum_m\kappa_m\mathsf D_m\mathcal I_3.
$$

There are two independent oriented-current equations, two equalities between the three representations of $\mathcal J$, and the final equation: five equations for six shifted neighbors. Their homogeneous null vector is

$$
P_k^\pm=\prod_{\epsilon,\epsilon'=\pm1}(a\pm q_k+\epsilon q_i+\epsilon'q_j)
=\lambda-2a(a\pm q_k)\frac{\partial\lambda}{\partial\kappa_k},
$$

where $\lambda=\sum_m\kappa_m^2-2\sum_{m<n}\kappa_m\kappa_n$ is the Källén polynomial. A row supported only on the $k$th pair must be orthogonal to this null vector. This selects the scalar recurrence

$$
\begin{aligned}
P_k^-\mathcal I_3^\sigma(\mathbf q+\mathbf e_k)
-P_k^+\mathcal I_3^\sigma(\mathbf q-\mathbf e_k)
=2\sigma q_k(2h-1)\left[
2T_iT_j-(T_i+T_j)T_k
+\frac{\kappa_i-\kappa_j}{\kappa_k}(T_i-T_j)T_k\right].
\end{aligned}
$$

**Checked:** Mathematica constructs the $5\times6$ coefficient matrix directly from these five equations, annihilates the displayed $P$ symbolically, verifies the Källén factorization, and solves for the row combination giving the full inhomogeneous source for both $\sigma=\pm1$. A nonsingular rational test point gives rank five, establishing generic rank five together with the symbolic null vector. Degenerate labels and dimensions require separate limiting equations.

## Solving the recurrence needs asymptotic data

Fix $k$, and abbreviate

$$
B_{\epsilon_1\epsilon_2}=\frac{h+q_k+\epsilon_1q_i+\epsilon_2q_j}{2},
\qquad H(q_k)=\prod_{\epsilon_1,\epsilon_2=\pm1}\frac{\Gamma(B_{\epsilon_1\epsilon_2})}{\Gamma(B_{\epsilon_1\epsilon_2}-a)}.
$$

Gamma shifts give the required ratio $H(q_k+1)/H(q_k-1)=P_k^+/P_k^-$. The homogeneous solution is $H(q_k)p(q_k)$ with $p(q_k+2)=p(q_k)$. This is a genuine undetermined function on the complex label plane; it becomes a constant only along a fixed step-two lattice.

The source fixes it using the large-$|m_k^2|$ asymptotic of the integral, matching a flat sunset with two massless lines:

$$
b_h=\frac{\Gamma(h-1/2)^2\Gamma(3/2-h)\Gamma(2-2h)}{(4\pi)^{2h+1}\Gamma(h+1/2)},
\quad\frac{\mathcal I_3^\sigma}{H}\longrightarrow 2^{4a}b_hs_k^\sigma,
\quad s_k^-=1,\quad s_k^+=-\frac{\sin\pi(h+q_k)}{\sin\pi(h-q_k)}.
$$

The AdS limit is heavy-mass; on the sphere the same label lattice is tachyonic and its standing-wave factor remembers compactness. This global selection is additional to the local recurrence.

Set $\bar T_k=T_{q_k+1}^\sigma$, $\bar\kappa_k=a^2-(q_k+1)^2$. The closed solution, source (16), is

$$
\begin{aligned}
\mathcal I_3^\sigma={}&2^{4a}b_hs_k^\sigma H(q_k)
-\frac{\sigma(q_k+1)(2h-1)}{8\prod_\epsilon B_\epsilon}
\left[2T_iT_j\mathcal F_1-(T_i+T_j)\bar T_k\mathcal F_2
+\frac{\kappa_i-\kappa_j}{\bar\kappa_k}(T_i-T_j)\bar T_k\mathcal F_3\right],\\
\mathcal F_1={}&{}_6F_5\left(\begin{matrix}B_\epsilon-a,\ (q_k+3)/2,\ 1\\B_\epsilon+1,\ (q_k+1)/2\end{matrix};1\right),\\
\mathcal F_2={}&{}_8F_7\left(\begin{matrix}B_\epsilon-a,\ (q_k+3)/2,\ (q_k+2+a)/2,\ (q_k+3+a)/2,\ 1\\B_\epsilon+1,\ (q_k+1)/2,\ (q_k+1-a)/2,\ (q_k+2-a)/2\end{matrix};1\right),\\
\mathcal F_3={}&{}_8F_7\left(\begin{matrix}B_\epsilon-a,\ (q_k+3)/2,\ (q_k+1+a)/2,\ (q_k+2+a)/2,\ 1\\B_\epsilon+1,\ (q_k+1)/2,\ (q_k+2-a)/2,\ (q_k+3-a)/2\end{matrix};1\right).
\end{aligned}
$$

Each $B_\epsilon$ denotes all four sign choices. The summation excesses of these unit-argument series are respectively $2+4a$, $1+2a$, and $3+2a$; they are positive near $d=4$ away from exceptional denominator parameters. The source derives the particular solution by telescoping along the lattice and then continues it meromorphically. This does not license termwise substitution at a parameter pole without taking the combined expression's limit.

## UV poles: what is held fixed matters

For the sphere, the paper writes $d=4-2\varepsilon$ **at fixed $q_i$**, and

$$
\mathcal I_3^+=\frac1{256\pi^4}\left(\frac{C_{-2}}{\varepsilon^2}+\frac{C_{-1}}{\varepsilon}+C_0\right)+O(\varepsilon),
\quad C_{-2}=\frac12\sum_iq_i^2-\frac38,
$$

$$
C_{-1}=\frac{17}{8}+\frac12\sum_iq_i^2
-(\log4\pi+1-\gamma_E)\left(\frac34-\sum_iq_i^2\right)
+\sum_i\left(\frac14-q_i^2\right)\left[\psi(1/2+q_i)+\psi(1/2-q_i)\right].
$$

The $\Gamma$ factors expose the poles; the remaining series are regular near four dimensions. **Checked numerically:** at $\mathbf q=(0.17,0.23,0.31)$, evaluating the full formula at five $\varepsilon$ values from $10^{-2}$ to $1/1600$ and extrapolating $256\pi^4\varepsilon^2\mathcal I_3$ gives $C_{-2}=-0.2860500000374$ versus $-0.28605$, and $C_{-1}=-2.46101315011$ versus $-2.46101326595$. This tests two pole coefficients at one label triple; it is not a symbolic all-mass Laurent expansion.

For a fixed dimensionless physical mass $m_i^2L^2$ instead, $q_i^2=h^2-\sigma m_i^2L^2$ changes with $\varepsilon$. Since $h=3/2-\varepsilon$, each $q_i^2=q_{i,0}^2-3\varepsilon+O(\varepsilon^2)$. The double-pole coefficient consequently contributes an extra $-9/(2\varepsilon)$ for three fixed masses. One must account for this before interpreting the quoted simple pole. Dimensional scales and coupling conventions can add further scheme-dependent terms; none are silently inserted here.

**Blocked for a source-to-source finite-part comparison:** the paper explicitly does not print $C_0$, and its effective-potential companion is listed as “in preparation.” Formula (16) permits expansion, but no explicit companion expression, counterterm scheme or complete renormalized $O(N)$ potential is available in this source to verify. The note therefore does not report a completed renormalized effective potential.

## Higher-loop bananas and the basketball boundary

For $M$ lines, the proposed current spans $2^M$ patterns, selecting either $G_i$ or $G_i'$ on each line, with polynomial coefficient functions. Reduction by the ODE gives a finite coefficient problem. For four lines the source reports 16 polynomials containing 40 coefficients and a five-term single-label recurrence,

$$
\sum_{r=-2}^{2}\ell_{2r}(h,\mathbf q)\mathcal I_4^\sigma(\mathbf q+2r\mathbf e_k)
=\sigma\sum_{i=1}^4s_i(h,\mathbf q)\prod_{j\ne i}T_{q_j}^\sigma.
$$

The $\ell_{2r},s_i$ are not supplied. At equal masses a usable special relation is printed. Let $\mathsf Z$ act on the **fourth** label while the other three stay at their original value $q$:

$$
\mathsf Z_qf(q)=\frac{q-a}{2q}f(q+1)+\frac{q+a}{2q}f(q-1),
$$

$$
[(\alpha-\beta)\mathsf Z_q+\beta\mathsf Z_q^3]\mathcal I_4^\sigma(q,q,q,q)
=24\sigma(2h-1)^3(T_q^\sigma)^3,
$$

$$
\begin{aligned}
\alpha&=(2h-2)(6h-5)[12q^2-8h^3+12h^2+8hq^2-6],\\
\beta&=(2h-3)[4q^2-(2h-3)^2][16q^2-(2h-3)^2].
\end{aligned}
$$

Composing $\mathsf Z$ shifts its own coefficients at every step. It is not the cube of coefficients evaluated once at the original $q$. By the ladder, the left side equals the radial integral of $[(\alpha-\beta)z+\beta z^3]G_q^4$.

**Checked numerically:** at $d=2.4$, the sphere $q=0.17$ and AdS $q=1.3$ radial integrals match this relation after keeping the explicitly computed omitted $r<10^{-12}$ contribution; relative residuals are approximately $1.1\times10^{-13}$ and $2.4\times10^{-13}$. Without that UV-tail correction they are about $5\times10^{-9}$, as expected for the slow $r_{\rm UV}^{8-3d}$ convergence. This is a test of the printed equal-mass relation only.

**Blocked:** the general basketball coefficients and the Mercedes operator-valued shift equations/contact graph are omitted, with details promised elsewhere. The statement that arbitrary multivertex graphs admit the described finite system remains Source-derived. No missing coefficient was invented to turn this into an implemented general solver.

## Cutting a line produces an operator equation

Remove label $w$ from the watermelon and define $K_{u,v}^\sigma(X,Y)=G_u^\sigma(X,Y)G_v^\sigma(X,Y)$. The useful operator is

$$
\mathscr Q=h^2-\sigma\nabla^2,\qquad (\mathscr Q-w^2)G_w^\sigma=\sigma\delta.
$$

Write the polynomial coefficients explicitly as

$$
p_u^\pm(t)=[(a\pm u+v)^2-t][(a\pm u-v)^2-t],
\qquad
S_u^\sigma(t)=2T_v^\sigma+\frac{T_u^\sigma}{\kappa_u}(u^2+v^2-a^2-t).
$$

Then source (18) is the distributional identity

$$
p_u^-(\mathscr Q)K_{u+1,v}^\sigma-p_u^+(\mathscr Q)K_{u-1,v}^\sigma
=2\sigma u(2h-1)S_u^\sigma(\mathscr Q)\delta.
$$

**Checked:** treating $G_u,G_v$ and their first derivatives as independent jets and reducing all higher derivatives by their ODEs, Mathematica gives identically zero for the left side away from coincidence. This verifies the local fourth-order differential expression, not its delta-function normalization. The independent bubble integrals and spectral projections below test the normalization in finite cases; the fully distributional continuation remains source-dependent.

Attach one external line at each vertex:

$$
C_{u,v}^\sigma(x,y)=\int dX\,dY\,G_r^\sigma(x,X)K_{u,v}^\sigma(X,Y)G_s^\sigma(Y,y).
$$

Move $\mathscr Q$ to $x$ by Green identity with the same boundary conditions. The contact term collapses one vertex, and the resolvent identity gives

$$
p_u^-(\mathscr Q_x)C_{u+1,v}^\sigma-p_u^+(\mathscr Q_x)C_{u-1,v}^\sigma
=\frac{2u(2h-1)}{r^2-s^2}[S_u^\sigma(r^2)G_r^\sigma-S_u^\sigma(s^2)G_s^\sigma].
$$

The two factors of $\sigma$ have cancelled. For two external lines at each vertex, let $f(X)=G_{r_1}(x_1,X)G_{r_2}(x_2,X)$, $g(Y)=G_{s_1}(Y,y_1)G_{s_2}(Y,y_2)$, $F=\int fKg$, and $D=\int fg$. Isometry invariance identifies $\nabla_X^2f$ with the pair Casimir $\mathcal C_{12}f$, so $\mathscr Q_{12}=h^2-\sigma\mathcal C_{12}$ and

$$
p_u^-(\mathscr Q_{12})F_{u+1,v}^\sigma-p_u^+(\mathscr Q_{12})F_{u-1,v}^\sigma
=2\sigma u(2h-1)S_u^\sigma(\mathscr Q_{12})D^\sigma.
$$

Here the $\sigma$ remains because a four-leg contact is not evaluated by a two-resolvent identity.

## Spectral multiplier and the reduction to tree diagrams

The invariant convolution kernel commutes with $\mathscr Q$. At spectral value $t=w^2$, source (21) gives

$$
\widehat K_{u,v}^\sigma(w^2)
=-\frac{\sigma(u+1)(2h-1)}{8\prod B_\epsilon}
\left[2T_v^\sigma\mathcal F_1-\bar T_u\mathcal F_2
-\frac{\kappa_v-\kappa_w}{\bar\kappa_u}\bar T_u\mathcal F_3\right],
$$

using the previous $B,\mathcal F$ with $k=u,(i,j)=(v,w)$. It is the coefficient of $T_w$ in the particular watermelon solution. Extracting such a coefficient is not, by itself, a general argument that every homogeneous solution has vanished; the source's propagator choice and spectral inversion supply that selection. Direct projections provide a useful independent test.

On $S^d$,

$$
t_\ell=(\ell+h)^2,\quad
P_\ell(z)={}_2F_1(-\ell,\ell+2h;d/2;(1-z)/2),
$$

$$
\mathcal N_\ell=
\frac{(2\ell+d-1)\Gamma(\ell+d-1)\Gamma((d+1)/2)}{2\pi^{(d+1)/2}\Gamma(d)\ell!},
\quad
C_{u,v}^+(z)=\sum_{\ell\geq0}\frac{\mathcal N_\ell\widehat K_{u,v}^+(t_\ell)P_\ell(z)}{(t_\ell-r^2)(t_\ell-s^2)}.
$$

$\mathcal N_\ell$ is harmonic multiplicity divided by $\operatorname{Vol}(S^d)$; $P_\ell(1)=1$. For four points, $F^+=\sum_\ell\widehat K(t_\ell)E^{(\ell)}$, where $E^{(\ell)}$ is the tree diagram with internal harmonic projector $\mathcal N_\ell P_\ell$.

On $H^d$, the source deforms the spectral inversion onto poles at $w_n=h+u+v+2n$. With $\rho_n=-\operatorname{Res}_{t=w_n^2}\widehat K^-_{u,v}(t)$,

$$
K^-_{u,v}=\sum_{n\geq0}\rho_nG^-_{w_n},\qquad
C^-_{u,v}=\sum_{n\geq0}\rho_nG^-[r^2,s^2,w_n^2],\qquad
F^-_{u,v}=\sum_{n\geq0}\rho_nE^-_{w_n}.
$$

$G^-[r^2,s^2,w_n^2]$ is the second divided difference, equivalently the triple convolution; coincident labels are derivative limits. $E^-_{w_n}$ is a tree exchange. These poles are two-particle thresholds of the product kernel, not a discretization of the entire $H^d$ Laplacian spectrum.

**Checked numerically:** at $d=2.4$, $u=0.17,v=0.23$, direct spherical Gegenbauer projections for $\ell=0,1,2$ give $0.3671959267730475$, $0.1300171146042510$, $0.0702134662441294$, matching (21) within $2.9\times10^{-20}$ with the specified UV cutoff. For AdS at $u=1.3,v=1.1$, the first threshold residue tends to $\rho_0=0.2484001856656205$, independently predicted from the large-$r$ coefficients $A(q)=\Gamma(h+q)/(2\pi^h\Gamma(q+1))$ as $A(u)A(v)/A(h+u+v)$. A symmetric $w-w_0=\pm10^{-4}$ estimate differs by $4.5\times10^{-10}$. The whole infinite contour deformation and all residues were not independently reconstructed.

## Boundary limit and what transfers to AdS quantization

Take the four external points to the AdS boundary with the usual bulk-to-boundary scaling, replacing the legs by $\mathcal E_i$ of dimensions $\Delta_i$. Set $f=\mathcal E_1\mathcal E_2$, $g=\mathcal E_3\mathcal E_4$, $W=\int fK^-g$, and $D=\int fg$. The boundary conformal Casimir has eigenvalue

$$
c_{\delta,\ell}=\delta(\delta-2h)+\ell(\ell+2h-2),
\qquad\mathscr Q_{12}=h^2+\mathcal C_{12}.
$$

The sign is fixed by $\sigma=-1$. The Witten-diagram recurrence is

$$
p_u^-(\mathscr Q_{12})W_{u+1,v}-p_u^+(\mathscr Q_{12})W_{u-1,v}
=-2u(2h-1)S_u^-(\mathscr Q_{12})D.
$$

For scalar exchange, $h^2+\delta(\delta-2h)=(\delta-h)^2$, matching the spectral label. The source states agreement with earlier Witten/Mellin relations after matching normalizations and removing a regulated boundary two-point factor. This note does not independently transcribe that earlier calculation. Boundary limits must be taken in a common convergence domain or with compatible counterterms; the bare identity is not automatically an identity between arbitrarily renormalized diagrams.

For AdS3, $d=3$, $h=1$, $a=0$. The propagator ladder survives, but Gamma factors in the closed watermelon representation and the five-relation system can become singular or degenerate; use the combined dimensionally continued expression before taking this limit. For alternate quantization, change the Green-function branch consistently and retain the relevant outer flux. A finite radial cutoff or brick wall changes the Green identity and is not covered by simply importing the whole-$H^d$ formula.

## Regulators and independent checks

The radial checks kept

$$
\mathcal I_{M,\epsilon_r,R}^\sigma
=\Omega_{d-1}\int_{\epsilon_r}^{R}dr\,s_\sigma(r)^{d-1}\prod_jG_{q_j}^\sigma(r),
\quad\Omega_{d-1}=\frac{2\pi^{d/2}}{\Gamma(d/2)},\quad
s_+=\sin r,\quad s_-=\sinh r.
$$

They used $d=12/5$, $\epsilon_r=10^{-12}$, $R=\pi$ on the sphere and $R=35$ on AdS, 45-digit working precision and 22-digit numerical integration goals. The label triples were $(0.17,0.23,0.31)$ and $(1.3,1.1,0.8)$ respectively. These dimensions lie in the UV-convergent domains of the tested three- and four-line integrals; the AdS labels also make the outer tails exponentially small.

The bubble relative differences were $7.8\times10^{-20}$ and $7.1\times10^{-19}$. The inhomogeneous watermelon recurrence residuals were $8.6\times10^{-18}$ and $1.5\times10^{-16}$. The closed formula gives $0.0834793406341447090$ and $0.0102355176760691896$, whereas the cutoff integrals give $0.0834793406341440087$ and $0.0102355176760684894$. Their common difference of about $7.0\times10^{-16}$ is the omitted short-distance tail, not an asserted 22-digit equality of unregulated integrals.

In general $G(r)\sim c_dr^{2-d}$, $c_d=\Gamma(d/2-1)/(4\pi^{d/2})$. Thus the omitted $M$-line tail begins at $\Omega_{d-1}c_d^M\epsilon_r^{2M-(M-1)d}/[2M-(M-1)d]$. For the weighted basketball it is multiplied by $\alpha$, which produces the explicitly retained correction reported above. The numerical cutoffs were not identified with the dimensional regulator $\varepsilon$ or a physical wall.

For radius $L$, $G_L=L^{2-d}G_1$ and $\mathcal I_{M,L}=L^{2M-(M-1)d}\mathcal I_{M,1}$ at fixed dimensionless labels. Restoring a renormalization scale or coupling requires its stated convention. No cutoff was silently subtracted in this note.

**Verified:** symbolic primitive and tadpole shift algebra; the five-relation null vector, generic rank and full source elimination; the opened-kernel off-coincidence differential identity; direct finite-domain bubble/watermelon/basketball tests; closed watermelon values; three spherical spectral projections; the first AdS threshold residue; a finite-label numerical test of both four-dimensional pole coefficients.

**Assumptions:** scalar maximally analytic Euclidean Green functions; the stated branch and boundary conditions; common convergence domain before continuation; generic nonexceptional labels; explicit compact/AdS endpoint conditions; fixed $q_i$ in the printed UV coefficients. No Lorentzian in-in prescription, nonvacuum state or finite-region boundary condition is inferred.

**Not independently verified:** the global asymptotic selection theorem for arbitrary complex labels; all-mass symbolic Laurent coefficients; the distributional contact identity in full generality; all AdS residues and contour bounds; the previous Witten/Mellin normalization match; arbitrary multivertex closure. **Blocked** items are specifically the unprinted general basketball/Mercedes coefficients and missing explicit $C_0$/companion scheme. The available paper has nevertheless been fully reconstructed; these are source boundaries, not unfinished source reading. No failed identity was found in the tested cases.
