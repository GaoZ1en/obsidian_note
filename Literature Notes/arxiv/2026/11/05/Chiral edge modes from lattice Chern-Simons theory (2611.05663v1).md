---
paper id: 2611.05663v1
title: Chiral edge modes from lattice Chern-Simons theory
authors:
  - Gordon W. Semenoff
publication date: 2026-11-03T21:48:29
abstract: |-
  A square-spatial-lattice Abelian Chern-Simons theory with continuous time is reduced on a cylinder to two boundary sectors of opposite chirality. The source identifies their lattice current algebra, compact Weyl formulation, global holonomy sectors and framing prescription.
comments: "5 pages; downloaded v1 PDF has 6 pages including supplement and references"
url: https://arxiv.org/abs/2611.05663v1
summary: "An explicit regulated boundary-reduction testbed, with finite-circle inverse and continuity-sign qualifications established in this note."
tags: []
---

# Boundary Reduction and Its Precise Usable Claim

The bulk Laurent-polynomial kernel and its inverse satisfy the stated gauge identities. The source supplies a useful action-to-edge-reduction construction. Its finite-even-circle canonical brackets require a zero/staggered-mode prescription, and the printed current in (18) has the wrong sign relative to (11), (15), (17) and (19). These qualifications prevent using the literal finite-lattice formulas as an already verified sewing model.

Reason codes: T1-boundary; T1-charge; T1-Wald-CPS; T2-model. Immediate use: compare the kernel of regional gauge transformations, boundary charge cocycle and surviving cross-region transporter at a fixed spatial regulator. All source equations below are **Source-derived** unless an explicit check is attached.

# Source Map and How to Read This Dense Letter

The entire pinned PDF and TeX were inspected. The main text uses run-in headings; it has no conventional numbered section hierarchy.

| Source cluster | Purpose and later dependencies |
|---|---|
| Introduction, pp. 1–2 | Continuous time and nonfactorized Hilbert space distinguish this model from the hypotheses of the quoted no-go results. |
| The lattice theory, pp. 1–2, (1)–(7) | Shifts, action, gauge condition, inverse, Gauss law and curve-intersection bracket. Input to every reduction. |
| Compact and non-compact theories, p. 2, (8) | Level quantization, local shift operator, odd-level spin structure. Input to global/edge representations. |
| The cylinder, pp. 2–3, (9)–(14) | Boundary gauge group, flatness solution, reduced action, global holonomies and edge Weyl algebra. |
| Edge charge and anomaly, pp. 3–4, (15)–(16) | Boundary orientation, site-averaged charge and current cocycle; compact charge is exponentiated. |
| Edge dynamics, p. 4, (17)–(19) | Added Hamiltonian, continuity equation and tangent dispersion. The current sign needs correction. |
| Discussion, pp. 4–5 | Width independence and scope of locality/factorization arguments. |
| Supplement, p. 5, (20)–(22) | General local deformation of the symplectic kernel, inverse and endpoint contact terms. |
| Acknowledgments/references, pp. 5–6 | Earlier construction and announced future treatment; not additional proved results. |

Essential route: (1)–(6) → (9)–(11) → (15)–(16). Technical reference: compact shifts and supplement. Read dynamics only after fixing the finite-mode domain and sign. Framing interpretation and comparisons with other lattice models are background, not independently certified no-go classifications.

# Square Lattice, Orientation and the Bulk Kernel

Time is continuous; the spatial spacing is fixed to one. Write

$$\begin{align}
s_i f(x)=f(x+\hat i),\qquad \hat s_i=s_i^{-1},\qquad d_i=s_i-1,\qquad \hat d_i=1-\hat s_i,\qquad \epsilon_{12}=1.
\end{align}$$

The forward link field is real in the noncompact theory. On a domain without an exposed boundary, summation by parts gives $d_i^T=-\hat d_i$. At an exposed boundary the surface terms must be retained. The source writes $A_{-i}(x)=-A_i(x+\hat i)$; the ensuing calculation uses forward links only and does not rely on this unusual reverse-link convention.

The action, classical-source coupling and continuity constraint are

$$\begin{align}
S_{CS}=\frac{k}{4\pi}\int dt\sum_x \left(A_i\kappa_{ij}\dot A_j-2A_0\epsilon_{ij}d_iA_j\right), \qquad S_I=\int dt\sum_x(A_0\rho+A_iJ_i), \qquad \dot\rho+\hat d_iJ_i=0.
\end{align}$$

For $A_i\mapsto A_i+d_i\chi$, $A_0\mapsto A_0+\dot\chi$, the bulk condition is $\hat d_i\kappa_{ij}=\epsilon_{ij}d_i$. With $u=s_1$, $w=s_2$,

$$
\kappa=\frac12
\begin{pmatrix}
w^{-1}-w&-1+u+w^{-1}+uw^{-1}\\
1-u^{-1}-w-u^{-1}w&u-u^{-1}
\end{pmatrix},
$$

$$
\kappa^{-1}=\frac12
\begin{pmatrix}
u-u^{-1}&1-u-w^{-1}-uw^{-1}\\
-1+u^{-1}+w+u^{-1}w&w^{-1}-w
\end{pmatrix}.
$$

**Checked:** Mathematica gives $\det\kappa=1$, $\kappa\kappa^{-1}=1$, $\kappa(u,w)+\kappa(u^{-1},w^{-1})^T=0$, and the exact gauge-condition residual zero. This proves identities of commuting shift symbols; it does not prove invertibility of every boundary-truncated matrix.

Varying $A_0$ gives $kB/(2\pi)=\rho$, where $B=\epsilon_{ij}d_iA_j$. The north-east plaquette attached to a charge fixes the framing. Canonical quantization gives

$$\begin{align}
[A_i(x),A_j(y)]=\frac{2\pi i}{k}\kappa^{-1}_{ij}\delta_{xy},\qquad \left[\sum_CA,\sum_{C'}A\right]=\frac{2\pi i}{k}\nu(C,C').
\end{align}$$

The second formula is the source's signed curve-intersection prescription. Closed planar curves have zero homological intersection. The claimed spin is $h_\rho=\rho^2/(2k)$ and a full framing rotation gives $e^{i\pi\rho^2/k}$. A full knot/framing-invariance construction is deferred by the paper itself.

# Compactness and Global Data

In the noncompact theory $k\ne0$ is real. Torus holonomies satisfy $[a_1,a_2]=2\pi i/k$ and admit an $L^2(\mathbb R)$ representation. Compact holonomies are angles with period $2\pi$; the source's periodicity argument yields integer $k$. For positive level the torus dimension is $k$; with orientation reversed the corresponding counting is $|k|$.

The local unitary (8) shifting $A_1(x)$ by $2\pi$ has six neighboring link coefficients $\pm k/2$. It is periodic as an ordinary bosonic link function for even $k$. Odd $k$ requires the source's transparent charge-$k$ fermion and spin structure. This is additional global quantization data, not a consequence of a real Poisson matrix alone.

# Cylinder Flatness, Reduction and the Transporter

Take $x\sim x+N$ ($N=L_1$), rows $y=0,\ldots,L$, $L\ge1$. Multipliers exist on plaquette base rows $0,\ldots,L-1$; the source sets $A_0(x,L)=0$ and restricts gauge redundancies to $\chi(x,0)=\chi(x,L)=0$. Removing the unused top multiplier could alternatively be viewed as excluding it from the integration domain; its absence does not itself establish a physical boundary condition on an independent field.

Gauge fixing makes $A_2$ independent of $y$. In the sourceless bulk,

$$\begin{align}
A_1(x,y)=A_1(x,0)+y d_1A_2(x),\qquad A_1(x,0)=a+d_1\chi_0,\qquad A_1(x,L)=a+d_1\chi_L.
\end{align}$$

Thus the two horizontal holonomies coincide and

$$\begin{align}
A_2=b+\frac{\chi_L-\chi_0}{L},\qquad b=A_2^{(0)}.
\end{align}$$

Substitution into (1), with the specified boundary prescription and zero spatial means for the two $\chi$ fields so that $b$ is their separate zero mode, gives the source's (11):

$$\begin{align}
S_{red}=\frac{k}{4\pi}\int dt\sum_x \left(\chi_0D\dot\chi_0-\chi_LD\dot\chi_L\right) +\frac{kLN}{2\pi}\int dt\,a\dot b, \qquad D=\frac{s_1-s_1^{-1}}2.
\end{align}$$

**Checked:** a direct Sage pullback of the zero-extended open-cylinder kernel at $N=6,L=2$, restricted to zero-mean $\chi_0,\chi_L$, reproduces the two $D,-D$ blocks, their vanishing mixed block and the $LN$ global block exactly. Without fixing the means a rank-two residual records double-counting with $b$. This is finite evidence; arbitrary-width boundary reduction remains source-derived.

The global bracket is $[a,b]=-2\pi i/(kLN)$. Hence the wrapping holonomy $Na$ and transverse line $Lb+\chi_L-\chi_0$ have bracket $-2\pi i/k$. The transverse Wilson operator factors into the global shift and two boundary vertex factors. It is reusable sewing data: equal edge charges alone do not remove the cross-region transporter.

The source describes a compact diagonal sector sum $\bigoplus_j\mathcal H_j\otimes\bar{\mathcal H}_j$, $j\bmod k$. On a finite lattice these are Weyl representations, not infinite-dimensional continuum Kac–Moody modules. The exact compact edge dimensions and their dependence on even $k$ require more data than the order of one exchange phase. No dimension formula is independently established here.

# Local Edge Algebra and the Finite-Circle Obstruction

On the infinite line, put $F(r)=\operatorname{sgn}(r)[1-(-1)^r]/2$. It obeys $DF=\delta$ as a difference identity. The source uses

$$\begin{align}
[\chi_0(x),\chi_0(y)]=\frac{2\pi i}{k}F(x-y), \qquad [\chi_L(x),\chi_L(y)]=-\frac{2\pi i}{k}F(x-y).
\end{align}$$

The oriented bottom charge (15) and current algebra (16) are

$$\begin{align}
q=-\frac{k}{2\pi}\left(a+D\chi_0\right),\qquad [q_x,q_y]=-\frac{ik}{2\pi}D_{xy}.
\end{align}$$

The top orientation reverses both signs; distinct edges commute locally. Differencing $F$ reproduces the link bracket and, by the central Baker–Campbell–Hausdorff identity, the source's exchange phase

$$\begin{align}
e^{iA_x}e^{iA_y} =\exp\!\left[\frac{4\pi i}{k}(-1)^{x-y}\operatorname{sgn}(x-y)\right] e^{iA_y}e^{iA_x}.
\end{align}$$

**Checked:** for $r\ne0$, the finite difference is $2F(r)-F(r+1)-F(r-1)=-2(-1)^r\operatorname{sgn}(r)$. This verifies the phase on the infinite-line domain. Compact $q$ itself is not a global angle-independent operator: only its exponentiated version is available, as the source states.

**Failed — literal finite-even-circle canonical relation.** For finite even $N$, $D$ has both constant and staggered kernels. A commutator with a finite sum of differences cannot equal $-i\delta_{xy}$ because its sum over $x$ is zero. If both kernels are removed, the correct inverse must satisfy

$$\begin{align}
DG=P,\qquad P_{xy}=\delta_{xy}-\frac{1+(-1)^{x-y}}N.
\end{align}$$

Sage exact rational matrices at $N=6,8,10$ give rank $N-2$, $DG=P$, and $G_{1,0}=2/3,3/4,4/5$ respectively, whereas (12) gives $F(1)=1$. Thus the printed claim for even $L_1$ and $|x-y|<L_1/2$ is not the zero/staggered-projected finite-circle inverse. A different global completion would need to be specified and shown compatible with (11). Differentiated current central terms may survive the projector because $DP=D$; this failure does not by itself refute the continuum current cocycle.

# Dynamics: Tangent Branch and the Current-Sign Failure

For the noncompact bottom edge the source adds

$$\begin{align}
H=\frac{kv}{4\pi}\sum_x A_1(x,0)^2.
\end{align}$$

With $K=d_1^Td_1=2-s_1-s_1^{-1}$, the Euler–Lagrange equation from (11) is $D\dot\chi_0=vK\chi_0$. Using $\chi\sim e^{ipx-i\omega t}$ on $p\ne0,\pi$ gives

$$\begin{align}
\omega(p)=v\frac{4\sin^2(p/2)}{\sin p}=2v\tan(p/2).
\end{align}$$

**Checked:** exact trigonometric equality, $\omega'=v\sec^2(p/2)$, and $\omega=vp+vp^3/12+O(p^5)$. Positivity requires $kv>0$ for this Hamiltonian, with chirality tied to the selected orientation. At finite even $N$ the $p=\pi$ mode is excluded/singular, not a propagating infinite-frequency mode whose quantization has already been completed.

**Failed — source (18), visually confirmed on PDF p. 4.** Let $C=(1+s_1^{-1})/2$, so $Cd_1=D$. From $q=-k(a+Cd_1\chi_0)/(2\pi)$ and the equation above,

$$\begin{align}
\dot q=-\frac{kv}{2\pi}K\chi_0.
\end{align}$$

The printed $j_+=kvA_1/(2\pi)$ gives $\hat d_1j_+=-kvK\chi_0/(2\pi)$, so

$$\begin{align}
\dot q+\hat d_1j_+=-\frac{kv}{\pi}K\chi_0\ne0.
\end{align}$$

Changing the current to $j_-=-kvA_1/(2\pi)$ makes the residual zero and yields $j_-\simeq vq$, consistent with $\omega\simeq vp$. Mathematica reproduced both residuals as Laurent polynomials. The note preserves the printed source claim as a failed claim and uses the sign-corrected equation only as an independent consequence under the stated conventions.

The compact Hamiltonian must be periodic, for example a cosine; the quadratic free dispersion is not a compact global result. Source arguments for anomaly protection and nonlinear gaplessness require locality, conserved charge, a ground state, and a thermodynamic limit. A finite-dimensional finite-size Weyl representation does not by itself prove a gapless thermodynamic spectrum. Also a local charge Hamiltonian gives a $\sin p$ dispersion with a zone-edge return, so the current cocycle alone does not prove the stronger assertion of net chirality for every Hamiltonian over the whole Brillouin zone.

# Supplement: Deformations Are Endpoint Contact Terms

Let $\epsilon=\left(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\right)$ and

$$\begin{align}
\Delta=T(\epsilon\hat d)(\epsilon d)^T, \qquad \kappa'=\kappa+\Delta, \qquad \kappa'^{-1}=\kappa^{-1}+T d\hat d^T,
\end{align}$$

where $T(s^{-1})=-T(s)$ is a local odd Laurent kernel. The source obtains $\det\kappa'=1$ and an action change $-k\sum BT\dot B/(4\pi)$. On Gauss law this becomes $-\pi\sum\rho T\dot\rho/k$. Brackets of open curves shift only through their endpoint divergences; closed-curve brackets do not shift. The supplement's uniqueness of the strictly nearest-site inverse is a support argument, distinct from uniqueness among all local inverses.

**Checked:** Mathematica verified the gauge residual, determinant and deformed inverse for arbitrary commuting $u,w,T$. An initial trial gave a nonzero residual because it assigned the opposite sign to $\Delta$; recomputing the displayed epsilon outer product resolved that check-setup error. It is not a source failure. General support-classification and all framed-knot amplitudes remain Source-derived.

# Translation into Regional CPS and Evidence Log

The reusable chain is regulated action → Gauss constraint → quotient by gauge functions vanishing at physical boundaries → boundary presymplectic form → oriented charge cocycle, together with a surviving global conjugate pair. To sew two regions one would still need to specify compactness/spin structure, matching of holonomies, the transverse transporter and the treatment of the finite-mode kernel. The paper does not independently construct a tensor-factorized regional Hilbert space or a universal quantum sewing map.

- **Verified:** bulk kernel, inverse, gauge identity, antisymmetry, general-deformation determinant/inverse; infinite-line link/Weyl phase; finite $N=6,8,10$ kernel/projector test; tangent-dispersion algebra; explicit continuity residual and its sign correction.
- **Assumptions:** $k\ne0$; fixed lattice spacing; source boundary prescription; sourceless flat bulk for reduction; commuting Laurent shifts for bulk checks; even periodic $N$ for finite checks; noncompact quadratic Hamiltonian on $p\ne0,\pi$; $kv>0$ for positive energy.
- **Source-derived:** general boundary-truncated pullback of (1) to (11) beyond the stated finite check, compact/spin implementation, sector classification, support uniqueness and anomaly/framing interpretation. These were reconstructed, not independently proved in all generality.
- **Failed:** finite-circle literal canonical delta relation and current sign in (18), with explicit source locations above. Do not rely on their literal finite-lattice consequences.
- **Blocked:** certifying a complete finite compact cylinder representation requires a specified zero/staggered-mode completion and spin/global quotient; the paper does not give enough implementation data to complete that check here.
- **Not verified:** exact compact edge dimensions, general interacting gaplessness and all knot invariants.

Sources: [pinned abstract](https://arxiv.org/abs/2611.05663v1), [pinned PDF](https://arxiv.org/pdf/2611.05663v1), [pinned TeX](https://arxiv.org/src/2611.05663v1). Text extraction supplied navigation; rendered pp. 3–4 confirmed (11)–(19) including the failed signs/domain; CAS evidence and all retrieval artifacts are outside the vault. Overview: [[2026_11_05_overview]].
