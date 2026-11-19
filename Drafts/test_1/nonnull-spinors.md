# Appendix: Killing spinors of the spacelike and timelike Hopf deformations

For either causal character of the anti-de Sitter fibre, a nonzero deformation preserves **exactly eight real Killing spinors**. The upper bound follows from two components of the supercurvature, and an explicit intertwiner constructs all eight spinors. In particular, neither argument requires a timelike duality or compactification of the time direction.

## Fields, frame and signs

Index the three group factors by $i=0,+,-$, in that order. On each factor choose an oriented seed orthonormal coframe $(h_i^1,h_i^2,\theta_i)$, with $B_i=h_i^1\wedge h_i^2$. The factor $i=0$ is Lorentzian, and the others are Riemannian. The fibre signs are $(\varepsilon_0,\varepsilon_+,\varepsilon_-)=(s,1,1)$, $s=\pm1$. Write $\eta_a=\pm1$ for the sign of a frame direction. Orient the Maurer–Cartan equations so that, for each cyclic ordering $(a,d,c)$ of the three axes in block $i$, the seed forms obey $de^c=\eta_c q_i e^a\wedge e^d$ (no sum); in particular $d\theta_i=\varepsilon_i q_i B_i$. The real constants satisfy $|q_i|=2/R_i>0$ and $q_0^2=q_+^2+q_-^2$. The two additional directions $x,y$ are Euclidean. With $g_{\rm h}$ containing the six horizontal directions **and** $dx^2+dy^2$, the fields are

$$
\begin{aligned}
g'&=G^{-1/3}\left(g_{\rm h}+G\sum_i\varepsilon_i\theta_i^2\right), &G&=(1+s\gamma^2)^{-1},\\
F'&=\sum_iq_i B_i\wedge\theta_i\wedge dx+s\gamma G\,d(\theta_0\wedge\theta_+\wedge\theta_-).
\end{aligned}
$$

Take $G>0$; for $s=-1$ this is $|\gamma|<1$. Apply the constant homothety $\hat g=G^{1/3}g'$, $\hat F=G^{1/2}F'$, which leaves the geometric Killing-spinor equation unchanged under the natural identification of orthonormal frames. Set

$$
k=\sqrt{G}>0,\qquad b=s\gamma k,\qquad k^2+s b^2=1.
$$

The new unit fibre coframes are $k\theta_i$; label their directions by $f_i$. The dual vector $e_{f_i}$ is $1/k$ times the seed fibre vector. For cyclic $(a,d,c)$ in one block the brackets are $[e_a,e_d]=C_{ad}{}^c e_c$, where

$$
C_{ad}{}^c=-q_i\eta_c m_c,\qquad m_h=1/k,\quad m_f=k.
$$

All different blocks commute. Use $\{\Gamma^a,\Gamma^d\}=2\eta^{ad}$, $\Gamma_a=\eta_a\Gamma^a$ in this frame, and $\not H=H_{a_1\ldots a_p}\Gamma^{a_1\ldots a_p}/p!$. Define

$$
\begin{gathered}
W_i=\Gamma^{h_i^1h_i^2 f_i},\qquad N=\sum_i q_iW_i,\qquad
X=\Gamma^x,\quad Y=\Gamma^y,\quad K=\Gamma^{f_0 f_+ f_-},\\
V=X+bK,\qquad U=-X+bK,\qquad J_a=\Gamma_a W_i\quad(a\text{ in block }i).
\end{gathered}
$$

In cyclic order $J_a=\Gamma^d\Gamma^c$, including on the Lorentzian block. Expanding the three terms in $d(\theta_0\wedge\theta_+\wedge\theta_-)$ gives $\not{\hat F}=N V$: right multiplication of $W_i$ by $K$ supplies precisely the sign from the position of $\theta_i$ in the triple and the sign $\varepsilon_i$ from $d\theta_i$. The algebra used below is

$$
N^2=0,\quad [N,K]=0,\quad \{N,X\}=\{N,Y\}=0,\quad K^2=-s,
\quad V^2=U^2=k^2,\quad VN=NU,\quad UN=NV.
$$

Indeed, $W_0^2=1$, $W_+^2=W_-^2=-1$, and distinct $W_i$ anticommute. Since $\{W_0,N\}=2q_0\ne0$, $\ker N=\operatorname{im}N$ has real dimension $16$ in the $32$-component Majorana module.

## Two supercurvature obstructions

Our flux sign convention for the eleven-dimensional gravitino connection is

$$
\mathcal D_a=e_a+\Omega_a+T_a,\qquad
T_a=-\Gamma_a\not{\hat F}/24+\not{\hat F}\Gamma_a/8.
$$

Here $\Omega_a=\omega_{dc}(e_a)\Gamma^d\Gamma^c/4$ with summation over $d,c$ and $\omega_{dc}(e_a)=\langle e_d,\nabla_a e_c\rangle$. Koszul's formula gives $2\langle\nabla_a e_d,e_c\rangle=-q_i(m_c-m_a+m_d)$ for cyclic $(a,d,c)$. Thus $\Omega_a=q_i(m_d+m_c-m_a)J_a/4$. In particular the full connection matrices $A_a=\Omega_a+T_a$ are

$$
\begin{aligned}
A_h&={\Gamma_hNV\over12}+{q_i\over4}J_h(k-V),\\
A_f&={\Gamma_f N(X-2bK)\over12}+{q_i\over4}J_f(2/k-k+U),\\
A_y&={YNV\over12},\qquad A_x={N(2-bXK)\over12}.
\end{aligned}
$$

The subscripts $h,f$ in these formulas refer to block $i$. A horizontal $J_h$ commutes with $X$ and anticommutes with $K$; $J_f$ commutes with both. All the $J_a$ commute with $N$. The connection matrices are constant in the group frame, so $\mathcal R_{ad}=[A_a,A_d]-C_{ad}{}^c A_c$.

**First obstruction.** For any fibre $f=f_i$, $\{N,\Gamma_f\}=2q_i J_f$, hence $N\Gamma_f N=2q_i J_fN$. The spin connection $\Omega_f$ commutes with $A_y$. Writing $L=X-2bK$, the terms from $[\Gamma_f N L/12,A_y]$ and $[q_iJ_fU/4,A_y]$ combine to give

$$
\mathcal R_{fy}=-{q_i\over144}YJ_fN\big[2VL+3(V^2+VU)\big]
=-{q_i k^2\over72}YJ_fN.
$$

The last equality uses $V+U=2bK$. Since $YJ_f$ is invertible, **every Killing spinor belongs to $\ker N$**. The restriction of the entire connection to this subbundle is legitimate: $N$ is constant in our frame, $J_a$ commutes with it, and $V,U,XK$ preserve its kernel. The leading terms with $N$ in $A_h,A_f$ vanish there; so do $A_x,A_y$.

**Second obstruction.** Choose a fibre $f_i$ and a horizontal axis $h_j$ in a different block. Their frame vectors commute, as do $J_{f_i}$ and $J_{h_j}$. Put $d=2/k-k$. On $\ker N$, $U J_{h_j}=-J_{h_j}V$ gives

$$
\begin{aligned}
\mathcal R_{f_i h_j}\big|_{\ker N}
&={q_iq_j\over16}J_{f_i}J_{h_j}
\big[(d-V)(k-V)-(k-V)(d+U)\big]\\
&=-{bq_iq_j\over8}J_{f_i}J_{h_j}(k-V)K.
\end{aligned}
$$

For $b\ne0$, all prefactors are invertible, and $K^{-1}VK=U$. Thus the allowable initial values lie in

$$
E=\ker N\cap\ker(U-k).
$$

Because $U^2=k^2>0$, $U$ diagonalizes over the reals with eigenvalues $\pm k$. The invertible matrix $Y$ preserves $\ker N$ and anticommutes with $U$, exchanging its two eigenspaces. It follows that $\dim_{\mathbb R}E=8$. This is an upper bound at **every** nonzero $\gamma$ with $G>0$, not only at generic parameter values.

## Intertwiner and existence

At $b=0$ let $E_0=\ker N\cap\ker(X+1)$. The undeformed connection on $E_0$ has $A_a^{(0)}=q_iJ_a/2$ for each group axis and vanishes along $x,y$. It is flat: for cyclic $(a,d,c)$ in one block, $[J_a,J_d]=-2\eta_c J_c$, and the $J$'s in different blocks commute. These matrices therefore obey $[A_a^{(0)},A_d^{(0)}]=C^{(0)c}_{ad}A_c^{(0)}$. Every initial value in $E_0$ gives a local seed Killing spinor.

Define the constant matrix in the respective group frames

$$
a={b\over1+k},\qquad S=\sqrt{\frac{1+k}{2}}\,(1+aK).
$$

It is real and invertible since $1+s a^2=2/(1+k)>0$. The identities $sab=1-k$ and $ak-b=-a$ imply that $S E_0=E$. On $E$, $V=2bK-U$ gives

$$
A_h={q_i\over2}J_h(k-bK),\qquad A_f={q_i\over2k}J_f,\qquad A_x=A_y=0,
$$

where the equality is understood as an action on elements of $E$. Now $J_h(k-bK)S=S J_h$ and $J_f S=S J_f$. Multiplying the fibre equation by $k$ to use the **same vector field** as in the seed, all four types of Killing-spinor equations intertwine. Thus $\epsilon'=S\epsilon_0$ for the eight independent local seed spinors with initial values in $E_0$ constructs every Killing spinor of the nonzero deformation. At $\gamma=0$ the second curvature obstruction disappears: the complementary $X=+1$ subspace of $\ker N$ has vanishing connection matrices and supplies another eight spinors, restoring the seed's sixteen.

## Odd brackets

Use the eleven-dimensional Majorana bilinear for which a Clifford one-blade is skew-adjoint and a three-blade self-adjoint. In particular $K$ is self-adjoint. For any two spinors in $E_0$, the coordinate-vector Dirac current is unchanged under $S$ in the hatted metric. For a horizontal Clifford generator, anticommutation with $K$ gives $(1+aK)\Gamma^h(1+aK)=(1+s a^2)\Gamma^h$. For a fibre generator the corresponding product is $\Gamma^f(1-s a^2+2aK)$. The matrix $\Gamma^f K$ commutes with $X$, so its bilinear between two $X=-1$ spinors vanishes by skew-adjointness of $X$. Since $1-s a^2=k(1+s a^2)$, the normalization of $S$ leaves a factor $k$ in the fibre current; the hatted fibre vector $e_f=e_f^{(0)}/k$ cancels it. Finally $\ker N=\operatorname{im}N$ is totally isotropic for the Majorana pairing because $N$ is self-adjoint and $N^2=0$. Both $X$ and $Y$ preserve this kernel, so neither flat direction contributes to the currents.

The intertwiner has constant components in left-invariant frames, hence is equivariant for the surviving group action by left translations. Together with the current calculation, this identifies the odd-generated Killing superalgebra with the surviving seed copy of $\mathfrak d(2,1;\alpha)$ with the same $\alpha$ (up to the usual factor-label conventions). Returning from $\hat g$ to $g'$ introduces only a common constant normalization of the odd generators, not a relative change in their three even brackets. This argument identifies the odd-generated algebra, not all additional even isometries.

**Verification and scope.** As an independent exact-arithmetic check of the component algebra, take $(q_0,q_+,q_-)=(5,3,4)$ and $(s,k,b)=(1,3/5,4/5)$ or $(-1,5/3,4/3)$. In each case the full Clifford product, with blades represented as signed bit masks and rational coefficients, gives $\mathcal R_{ad}(1+U/k)N=0$ for all $55$ pairs. The three unrestricted $\mathcal R_{fy}$ and all twelve different-block $\mathcal R_{f_i h_j}$ acting on $\operatorname{im}N$ agree with the displayed formulas. These are checks at two sample points; the all-parameter result is the preceding analytic argument. The count is local, or global on the simply connected group covers with the lifted spin structure. On another quotient one must separately impose spinor monodromy. The singular limiting metrics and the null-fibre branch are not included.
