---
paper id: 2609.38308v1
title: Bootstrapping Weakly Broken Gauge Theories in (A)dS
authors:
  - Daniel Baumann
  - Kurt Hinterbichler
  - Callum R. T. Jones
  - Nathan Meurrens
publication date: 2026-09-29T18:00
abstract: |-
  We develop a bootstrap approach for weakly broken gauge theories in (anti-)de Sitter space, focusing on cases in which the conservation of the dual boundary current is broken by a double-trace operator. Integrating the corresponding Ward identity, we derive pseudo-charge conservation identities that contain fixed nonlocal contributions as integrals of three-point functions. These identities impose consistency conditions on the space of allowed theories. As an illustrative example, we study Yang-Mills theory in AdS with symmetry-breaking boundary conditions for charged matter and show that the pseudo-charge conservation identities constrain the mixing between the two quantization sectors. We then apply the framework to the Higgs mechanism for gravity in two AdS spaces with a common boundary, coupled so that the corresponding stress tensors are not separately conserved. In this setting, the ordinary charge conservation identities recover the factorization into two independent CFTs, whereas the pseudo-charge conservation identities hold for arbitrary values of the symmetry-breaking parameter. Finally, for conformal gravity in de Sitter space, we constrain the interactions between the graviton and the partially massless spin-2 field, both in the minimal theory and in the presence of additional scalar or vector matter, finding agreement with the predictions of the corresponding bulk theories.
comments: "64 pages, 1 figure"
url: https://arxiv.org/abs/2609.38308v1
summary: "A calculable boundary-flux completion of current identities, with mixed-quantization representations, a coupled-AdS test, and explicit distributional and dS-sign boundaries."
tags: []
---

# Broken current identities retain a fixed nonlocal term

The immediately reusable construction is the integrated Ward identity for a current whose divergence is a double-trace operator. Large-$N$ factorization converts its bulk integral into a prescribed convolution acting on each external operator. This gives a **pseudo-charge identity**, not automatically a conserved charge or a Hamiltonian on a regional phase space. Its strongest application here is the reconstruction of mixing between standard and alternate scalar quantizations and of two stress tensors coupled through a common conformal boundary.

Source: [official v1](https://arxiv.org/abs/2609.38308v1), complete PDF and TeX inspected. Unless explicitly labelled **Checked**, the reconstruction is **Source-derived**. Reasons: `T1-charge; T1-boundary; T2-spectral; T2-model`. The de Sitter results retain a normalization/continuation boundary described below.

## How to read this long paper

| Source tree; printed pages | Purpose and later use |
| --- | --- |
| 1, 3–5 | Motivation, embedding-space conventions and distinction between local and nonlocal charge actions. |
| 2.1, 6–12 | Bulk falloffs; boundary operators, Ward identities and charges; mixed boundary conditions; dS continuation and physical correlators. Essential. |
| 2.2, 12–15 | Double-trace breaking; semi-analytic conservation; depth-zero spin-two example. Essential. |
| 2.3, 15–17 | Integrate Ward identities, factorize, define transformed operators and bootstrap strategy. Essential. |
| 3.1, 17–19 | Unbroken Yang–Mills algebra and scalar representations. |
| 3.2, 19–22 | Split quantizations, block representation, SU(2) example and complex representations. Essential for AdS use. |
| 4.1, 22–24 | Two conserved stress tensors, charge diagonalization and CFT factorization. |
| 4.2–4.3, 24–29 | ACKK common-boundary deformation, primary broken stress tensor, diagonal and mixed Ward constraints. Essential. |
| 5.1, 29–33 | Conformal gravity, PM self-breaking, pseudo-charge action and cubic bootstrap. |
| 5.2–5.3, 33–38 | Minimal/extended scalar spectra and vector matter; necessary semi-local completion. |
| 6, 38–40 | Extensions to higher spin, other spectra, quantum corrections and systematic anomalous vertices. |
| A.1–A.2, 41–45 | Tensor reduction, evanescent integrals, scalar triangles and OPE regions. Technical reference. |
| B.1–B.2, 45–47 | Spin-four ansatz and semi-analytic versus fully conserved structures. |
| C.1–C.2, 47–50 | Distribution extensions and which contact terms survive the nonlocal transform. Essential caveat. |
| D.1–D.2, 50–54 | First-order conformal perturbation theory reproduces the ACKK identities. |
| E.1–E.3, 55–60 | Auxiliary-field conformal gravity, Maxwell coupling, scalar branches and fourth-order scalar. |
| References, 61–64 | Background; prior loop computation is cited rather than reproduced in this paper. |

Read 2.1 → 2.3 → 3 → 4 → D first for the current AdS/boundary work. Read C before using any convolution. Sections 5 and E form a second coherent example; A and B are calculation references. Every major section and appendix is covered below; this is a completed monograph reconstruction with explicitly limited independent checks.

# Dictionary, action and boundary variation

Bulk indices are $M,N$; boundary indices $mu,
u$; $a,b$ are Lie-algebra indices; $I$ and $\bar I$ label the two real scalar sectors. Set $L=1$ unless restoring it explicitly. Euclidean AdS has

$$
ds^2=u^{-2}(du^2+dx^\mu dx_\mu),\qquad
A_{\mu_1\ldots\mu_s}=u^{\Delta_--s}\alpha_{\mu_1\ldots\mu_s}
+u^{\Delta_+-s}\beta_{\mu_1\ldots\mu_s}+\cdots,
$$

$$
\Delta_\pm=\frac d2\pm\sqrt{\left(\frac d2+s-2\right)^2+m^2}.
$$

The last formula is for the paper's spinning-field mass convention; the scalar formula is $\Delta(\Delta-d)=m^2$, obtained by setting $s=2$ in that expression, not by inserting $s=0$. A conformal scalar in AdS$_4$ has $m^2=-2$ and dimensions $(1,2)$. Standard quantization fixes $\alpha$ and interprets $\beta$ as response; alternate quantization exchanges them through a Legendre transform. Both are allowed in the scalar BF window $-d^2/4<m^2<-d^2/4+1$. Endpoint/logarithmic cases need separate treatment. Gauge fields use Dirichlet boundary conditions throughout these examples.

For a schematic renormalized variation $\delta S_{\rm ren}=\int\beta\,\delta\alpha$, adding a boundary functional with the appropriate sign imposes $\beta=W'(\alpha)$. The overall source/response normalization must be fixed before identifying its coefficient with the paper's $g$. In two scalar sectors, $W=g\int\mathcal O_1\mathcal O_2$ is marginal at the leading large-$N$ order when $\Delta_1+\Delta_2=d$. This dimension count does not prove exact marginality at all orders.

With single-trace two-point functions normalized to unit magnitude, connected $n$-point functions scale as $N^{2-n}$. Negative norms are allowed in the nonunitary dS/conformal-gravity example; they cannot be removed by a real field rescaling. The Euclidean generating functional, analytically continued wavefunction, and Born-rule late-time correlators are different objects. Their signs and external-leg factors must not be identified silently.

For reproducible tensor conventions, let $x_{ij}=x_i-x_j$, $-2P_{ij}=x_{ij}^2$, and use null polarizations $z_i^2=0$. The source's embedding invariants give

$$
H_{ij}=x_{ij}^2(z_i\cdot z_j)-2(z_i\cdot x_{ij})(z_j\cdot x_{ij}),
\qquad
\langle\!\langle YY\rangle\!\rangle=
\frac{H_{12}^s}{(x_{12}^2)^{\Delta_Y+s}}.
$$

$V_i$ is the cyclic embedding-space vector invariant used in Section 1; coefficient tables below refer to that fixed basis, not arbitrary rescaled structures. The Thomas derivative is $D_z^\mu=(d/2-1+z\cdot\partial_z)\partial_z^\mu-\tfrac12z^\mu\partial_z^2$. A depth-$t$, spin-$s$ current has $\Delta=d-1+t$ and $s-t$ divergences. The corresponding charge has scaling dimension $s-1$.

# From a broken local Ward identity to a pseudo-charge

The essential chain in Sections 2.2–2.3 is

$$
\partial^{s-t}X=g\,B,\qquad
B=:\partial^k\mathcal O_i\,\partial^l\mathcal O_j:.
$$

In a correlator the distributional Ward identity contains contact terms at every insertion. Integrating over the boundary, with the infinity term absent under the stated decay prescription, gives

$$
0=\sum_a\langle\mathcal O_1\cdots[Q,\mathcal O_a]\cdots\mathcal O_n\rangle
-g\int d^dx\,\langle B(x)\prod_a\mathcal O_a\rangle.
$$

At leading factorized order, contract one factor in $B$ against an external insertion and leave the other in the remaining correlator. For example,

$$
\widetilde{\mathcal O}_j(x_a)=\int d^dx\,
\langle\partial^k\mathcal O_i(x)\mathcal O_i(x_a)\rangle
\partial^l\mathcal O_j(x),\qquad
[\widehat Q,\mathcal O_i]=[Q,\mathcal O_i]-g\widetilde{\mathcal O}_j.
$$

Derivatives and index contractions are those of the specified double trace. The transformed operator has dimension $\Delta_i+s-1$. Only for appropriate complementary scalar dimensions is this an ordinary shadow transform. The PM transform below is not one. The construction provides necessary correlator consistency conditions for the assumed spectrum and perturbative order; it is not a proof of a nonperturbative bulk completion.

## Semi-analytic conservation retains an anomalous cubic vertex

For depth-zero spin two in $d=3$, Bose symmetry and the three-dimensional Gram identity leave four structures with coefficients $c_1,\ldots,c_4$. Two divergences give three numerator coefficients:

$$
\begin{pmatrix}b_1\\b_2\\b_3\end{pmatrix}
=\begin{pmatrix}5&-5/2&1&0\\48&-12&-6&4\\72&-18&-18&9\end{pmatrix}
\begin{pmatrix}c_1\\c_2\\c_3\\c_4\end{pmatrix}.
$$

Full conservation imposes $b=0$ and leaves $c\propto(-1,6,20,60)$. Semi-analyticity only requires $b\propto(1,4,4)$: its numerator is $(H_{23}+2V_2V_3)^2$, whose zero cancels the $x_{23}$ singularity. It leaves a two-dimensional space, hence one additional class modulo fully conserved structures. A representative is $(-7,22,0,60)$, mapped to $-90(1,4,4)$. **Checked:** Sage gives ranks three and two for the full and semi-analytic conditions.

For $d>3$ the zero is too weak for the denominator. Equivalently, a double trace made of two such currents would need $k_1+k_2=3-d$ derivatives; nonnegative local derivative orders exclude it. This is a spectrum/locality argument, not a no-go theorem for arbitrary extra fields.

Appendix B repeats the construction for spin four. Fourteen initial structures yield in $d=5$ ten semi-analytic and nine fully conserved structures. In $d=3$, five Gram-evanescent structures are removed, leaving six semi-analytic versus four fully conserved structures. Thus the paper finds one and two anomalous classes respectively. These larger divergence matrices were not independently generated here. The spin-six pattern quoted at the end is a source claim and an invitation to a systematic classification, not a classification established by this note.

# Yang–Mills: the two quantizations assemble one representation

In the unbroken theory, current conservation and the integrated three-point Ward identities give

$$
[Q_a,J_b]=-f_{ab}{}^cJ_c,\qquad
[Q_a,\mathcal O_I]=(T_a)_I{}^J\mathcal O_J,\qquad
[T_a,T_b]=f_{ab}{}^cT_c.
$$

Lowering internal indices with the invariant nondegenerate two-point form makes $f$ totally antisymmetric and $T_a$ antisymmetric. Positivity is not needed for these algebraic statements. The source fixes $\langle J_a\mathcal O_I\mathcal O_J\rangle$ to $T_{aIJ}/(4\pi)$ times its conformal structure. The three-current identity gives the Jacobi identity.

Split the real representation into $V_1\oplus V_2$ for alternate and standard scalar quantizations. Boundary conditions break the generators that mix the summands:

$$
\partial_\mu J_a^\mu=g_a^{I\bar J}:\mathcal O_{1I}\mathcal O_{2\bar J}:,
\qquad \Delta_1=1,\quad\Delta_2=2.
$$

A generator $v^a$ is unbroken precisely when $v^ag_a=0$. The kernels and pseudo-actions are

$$
\widetilde{\mathcal O}_1(x)=\int\frac{d^3y\,\mathcal O_1(y)}{|x-y|^4},\qquad
\widetilde{\mathcal O}_2(x)=\int\frac{d^3y\,\mathcal O_2(y)}{|x-y|^2},
$$

$$
[\widehat Q_a,\mathcal O_1]=T_a\mathcal O_1-g_a\widetilde{\mathcal O}_2,
\qquad
[\widehat Q_a,\mathcal O_2]=\bar T_a\mathcal O_2-g_a^T\widetilde{\mathcal O}_1.
$$

Their integral definitions require a distributional prescription. Inserting these into the three identities with $J_b\mathcal O_1\mathcal O_1$, $J_b\mathcal O_2\mathcal O_2$ and $J_b\mathcal O_1\mathcal O_2$, the source's convolution coefficients reorganize with $G_a=\sqrt2\pi^2g_a$ into

$$
[T_a,T_b]-G_aG_b^T+G_bG_a^T=f_{ab}{}^cT_c,
$$
$$
[\bar T_a,\bar T_b]-G_a^TG_b+G_b^TG_a=f_{ab}{}^c\bar T_c,
$$
$$
T_aG_b-T_bG_a+G_a\bar T_b-G_b\bar T_a=f_{ab}{}^cG_c.
$$

These are exactly the blocks of

$$
[\mathbb T_a,\mathbb T_b]=f_{ab}{}^c\mathbb T_c,
\qquad \mathbb T_a=\begin{pmatrix}T_a&-G_a\\G_a^T&\bar T_a\end{pmatrix}.
$$

The minus sign in the upper-right block is important. It does not follow by reading off the two pseudo-actions as a local matrix on $(\mathcal O_1,\mathcal O_2)$: the kernels and their composition supply normalization and sign data. The source's transformed three-point coefficients, including $\pi^3g/2$, were visually confirmed on page 20; their full tensor convolution has not been independently recomputed.

For the adjoint SU(2) example, $(\mathbb T_a)_{bc}=-\epsilon_{abc}$ and the split is $1+2$. Then $G_1=(0,0)$, $G_2=(0,-1)$ and $G_3=(1,0)$. Generator 1 remains unbroken. **Checked:** exact Sage matrices satisfy all three cyclic commutators and these off-diagonal blocks. This is a finite representation benchmark, not a classification of all boundary conditions.

For equal-dimensional summands with compatible complex structure $\mathcal J=\left(\begin{smallmatrix}0&-1\\1&0\end{smallmatrix}\right)$, $[\mathbb T_a,\mathcal J]=0$ requires $\bar T_a=T_a$ and $G_a^T=G_a$. The Hermitian complex generators $\mathsf T_a=G_a-iT_a$ obey $[\mathsf T_a,\mathsf T_b]=-if_{ab}{}^c\mathsf T_c$ in the paper's convention. This explains how the split real description reconstructs a complex representation.

# Two stress tensors: factorization and its controlled breaking

## Conserved case

Take orthogonal $T,S$ with $c_T=c_S>0$, the latter equality obtained by a real rescaling. Translation acts diagonally and the second charge acts through

$$
[Q^\mu,\binom TS]=\mathcal A\,\partial^\mu\binom TS,
\qquad \mathcal A=\begin{pmatrix}0&1\\1&a\end{pmatrix},
\qquad \lambda_\pm=\frac{a\pm\sqrt{a^2+4}}2.
$$

Let $D=\sqrt{a^2+4}$. Projecting $T$ gives

$$
T^{(1)}=\frac12(1-a/D)T+S/D,\qquad
T^{(2)}=\frac12(1+a/D)T-S/D.
$$

They sum to $T$, are orthogonal, and have $c_{1,2}=c_T(1\mp a/D)/2>0$. **Checked:** Mathematica reproduces the eigenvalue polynomial, zero cross norm and both norms. The associated charges generate translations in independent sectors. The paper's CFT factorization conclusion also uses the unitary local-CFT/operator assumptions; matrix diagonalization alone does not establish Hilbert-space factorization or a gravitational tensor product.

## Coupled AdS spaces and the primary nonconserved tensor

The ACKK construction has two AdS theories sharing a conformal boundary and a deformation

$$
S_{\rm tot}=S_1+S_2+g\int d^dx\,\mathcal O_1\mathcal O_2,
\qquad \Delta_1+\Delta_2=d.
$$

Varying sector translations gives $\partial T^{(1)}=g(\partial\mathcal O_1)\mathcal O_2$ and $\partial T^{(2)}=g\mathcal O_1\partial\mathcal O_2$; their traces are $g\Delta_i\mathcal O_1\mathcal O_2$. Hence

$$
T=T^{(1)}+T^{(2)}-g\eta\mathcal O_1\mathcal O_2
$$

is conserved and traceless. Put $\hat c_i=c_i/\sqrt{c_1c_2}$ so $\hat c_1\hat c_2=1$. The orthogonal primary is

$$
S=\hat c_2T^{(1)}-\hat c_1T^{(2)}
+\frac g d(\hat c_1\Delta_2-\hat c_2\Delta_1)\eta\mathcal O_1\mathcal O_2,
$$

$$
\partial^\mu S_{\mu\nu}
=\frac{\hat g}{d}\big[\Delta_2(\partial_\nu\mathcal O_1)\mathcal O_2
-\Delta_1\mathcal O_1\partial_\nu\mathcal O_2\big],
\qquad \hat g=g(\hat c_1+\hat c_2).
$$

Starting instead with coefficients $g_1,g_2$, primarity requires $\Delta_1g_1+\Delta_2g_2=0$ and $\hat g=g_1-g_2$. The antisymmetric derivative combination is the vector absorbed by the relative graviton. Its mass is generated at order $g^2$; the diagonal graviton remains massless.

The pseudo-actions become

$$
[\widehat Q^\mu,\mathcal O_1]=a_1\partial^\mu\mathcal O_1+\hat g\partial^\mu\widetilde{\mathcal O}_2,
\quad
[\widehat Q^\mu,\mathcal O_2]=a_2\partial^\mu\mathcal O_2-\hat g\partial^\mu\widetilde{\mathcal O}_1.
$$

The spin-two action still uses $\mathcal A$. In the diagonal three-point identities, translation invariance turns the constraints into $\tilde n_i=a_in_i$ and $n_i+a\tilde n_i-a_i\tilde n_i=0$. Thus $a_i^2-aa_i-1=0$ for nonzero $n_i$. Matching ACKK gives $a_1=\hat c_2$, $a_2=-\hat c_1$, $a=\hat c_2-\hat c_1$.

For $\Delta_1\ne\Delta_2$, conservation forces $\langle T\mathcal O_1\mathcal O_2\rangle=0$, whereas

$$
\langle S\mathcal O_1\mathcal O_2\rangle=\tau\langle\!\langle S\mathcal O_1\mathcal O_2\rangle\!\rangle,
\qquad \tau=\frac{2\Delta_1\Delta_2\hat g}{(d-1)(\Delta_1-\Delta_2)}.
$$

Taking its divergence gives the primary breaking above. The transformed mixed identity is a sum of three derivatives of one structure with coefficients $\tau$, $\hat g\mathcal C_d\Delta_1n_2/(\Delta_2-\Delta_1)$, and $\hat g\mathcal C_d\Delta_2n_1/(\Delta_2-\Delta_1)$, where $\mathcal C_d=2\pi^{d/2}/\Gamma(d/2+1)$. They coincide for

$$
n_i=-\frac{\Gamma(d/2+1)}{(d-1)\pi^{d/2}}\Delta_i.
$$

Translation invariance then annihilates the sum. The equal-dimension case cannot be obtained by substituting into these singular formulas; it needs a separate degenerate analysis. The freedom in $\hat g$ means freedom **at the retained perturbative order**. Keeping selected $g^2$ terms while omitting the anomalous dimension of $S$ would be inconsistent.

Appendix D supplies a second derivation: expand $\langle\cdots\rangle_g=\langle\cdots\rangle_0-g\int\langle\cdots\mathcal O_1\mathcal O_2\rangle_0+O(g^2)$, factorize the four insertion channels, apply the undeformed Ward identities, and integrate derivatives by parts. Contact terms at the integrated point supply precisely the nonlocal scalar derivatives. Null-polarization projection removes trace terms, so the $O(g)$ trace improvements in $T,S$ must be restored using tracelessness afterward. This explains why a calculation only at separated points or only with projected tensors is insufficient.

# Conformal gravity and matter in dS

## Action, degrees of freedom and cubic constraints

The bulk action is $S=-\alpha^2\int\sqrt{-g}\,C^2/8$, with $\alpha=LM_{\rm Pl}$. Introducing $f_{MN}$ gives

$$
S=\alpha^2\int\sqrt{-g}\left[\frac{H^2}{2}(R-6H^2)
-(G_{MN}+3H^2g_{MN})f^{MN}+f_{MN}f^{MN}-f^2\right].
$$

Its algebraic equation yields $f_{MN}=R_{MN}/2-Rg_{MN}/12-H^2g_{MN}/2$. Substitution leaves $\alpha^2(R^2/12-R_{MN}R^{MN}/4)$, equal to $-\alpha^2 C^2/8$ modulo the four-dimensional Gauss–Bonnet term. **Checked:** invariant contraction algebra cancels every $H$ term. The metric shift and canonical rescaling in E.1 give $\mathcal L_{\rm FP,0}(h)-\mathcal L_{\rm FP,2H^2}(f)$: the relative wrong sign is essential. This is not a unitary theory of a second healthy graviton.

The spectrum is boundary $T$ of dimension 3 and PM $X$ of dimension 2. The proposed breaking is $\partial_\mu\partial_\nu X^{\mu\nu}=g:X_{\mu\nu}X^{\mu\nu}:$. The pseudo-action is

$$
[\widehat Q,X]=a_1T-2g\widetilde X,\quad
[\widehat Q,T]=a_2\mathcal D X,\quad
\mathcal D=\square-\frac23(z\cdot\partial)(\partial\cdot D_z),
$$

$$
\widetilde X^{\mu\nu}(x)=\int d^3y\,
\langle X_{\rho\sigma}(y)X^{\mu\nu}(x)\rangle X^{\rho\sigma}(y).
$$

The factor 2 counts two equivalent contractions. $\widetilde X$ has dimension 3 and is not the shadow of dimension-2 $X$. The mixed two-point identity gives $8a_2c_X=-a_1c_T$. The $TTT$ identity forces $\langle XTT\rangle=0$ on the nondecoupled branch. The $XXX$ and $XTT$ identities then fix the parity-even coefficients in the source's basis:

$$
n_{XXX}^{(1)}=\frac{2048}{135\pi^3}\frac{a_1}{g}n_{TTT}^{(1)},\qquad
n_{XXX}^{(2)}=\frac32n_{XXX}^{(1)},
$$
$$
n_{TXX}^{(1)}=4n_{TTT}^{(1)},\quad
n_{TXX}^{(4)}=-n_{TXX}^{(3)}=-\frac12n_{TXX}^{(2)}=-\frac29n_{TXX}^{(1)},\quad
n_{TTT}^{(2)}=-\frac94n_{TTT}^{(1)}.
$$

These full tensor-convolution solutions remain **Source-derived**. They imply absence of an $fhh$ cubic vertex and the relative $hhh,hff,fff$ couplings of E.1. The word “unique” is restricted to the assumed spectrum, parity-even ansatz and order, not all interacting PM theories.

## Anomalous dimension: a sign boundary that cannot be dropped

The paper reports $\Delta_X=2+\gamma_X$, $\gamma_X=g^2/4$ and $g=\sqrt3/(\pi M_{\rm Pl})$. For spin two in dS, $m^2/H^2=\Delta(3-\Delta)$, so $\delta m^2/H^2=-\gamma_X-\gamma_X^2$: a positive anomalous dimension lowers the PM mass. This last implication is **Checked**.

An independent Euclidean component calculation gives a more precise convention diagnostic. With $I_{ij}=\delta_{ij}-2x_ix_j/r^2$ and

$$
\langle X_{ij}(x)X_{kl}(0)\rangle=
\frac{c_X}{r^{2\Delta}}\left[\frac12(I_{ik}I_{jl}+I_{il}I_{jk})-\frac13\delta_{ij}\delta_{kl}\right],
$$

four Cartesian derivatives give

$$
\langle\partial_i\partial_jX_{ij}(x)\,
\partial_k\partial_lX_{kl}(0)\rangle
=\frac{8c_X}{3}(\Delta-3)(\Delta-2)(2\Delta-1)(2\Delta+1)r^{-2\Delta-4}.
$$

At $\Delta=2+\gamma$ this is $-40c_X\gamma/r^8$. Wick contraction gives $\langle:X^2:(x):X^2:(0)\rangle=10c_X^2/r^8$. For a **real Euclidean** breaking coefficient this implies $\gamma=-c_Xg^2/4$. Thus $c_X=-1$ produces the stated positive answer, whereas $c_X=+1$ gives its negative. A complex rescaling also changes the coupling. The source discusses the wavefunction sign in footnote 18 and elsewhere uses $c_X=c_T=1$ to present the two-point algebra. This note has not reconstructed the continuation mapping of the composite operator, coupling phase and Born-rule correlator needed to join those conventions. **Blocked:** that complete sign dictionary is missing from the present reconstruction; the dS positive-sign claim remains Source-derived, not an independently verified consequence of unit-positive Euclidean correlators. This does not obstruct the separate AdS representation and ACKK checks.

## Scalar and vector spectra

Adding a dimension-2 scalar allows $g':\mathcal O_2^2:$ in the breaking. With an additional dimension-3 scalar, the most general action used is

$$
[\widehat Q,\mathcal O_2]=a_3\mathcal O_3-2g'\widetilde{\mathcal O}_2,
\qquad [\widehat Q,\mathcal O_3]=a_4\square\mathcal O_2.
$$

The two-point identity uses $\square r^{-4}=12r^{-6}$ in three dimensions and gives $a_4=-n_{\mathcal O_3}a_3/(12n_{\mathcal O_2})$. With norms $(+1,-1)$, $a_4=a_3/12$. The source's extended branch has $g'=g/3$, $n_{X\mathcal O_2\mathcal O_2}=12a_1n_{T\mathcal O_2\mathcal O_2}/(\pi^3g)$, $n_{X\mathcal O_2\mathcal O_3}=3a_1n_{T\mathcal O_2\mathcal O_2}/a_3$, $n_{X\mathcal O_3\mathcal O_3}=0$, and $n_{T\mathcal O_3\mathcal O_3}=-3n_{T\mathcal O_2\mathcal O_2}/2$. A distinct minimal branch sets $a_3=a_4=0$ and gives $g'=g/6$, with coefficient $6a_1/(\pi^3g)$ instead of 12. The extra scalar is not forced in that branch.

For a conserved dimension-2 vector, add $g'':J_\mu J^\mu:$ and $[\widehat Q,J]=-2g''\widetilde J$. The source solves the $XJJ$ and $TJJ$ identities only after retaining

$$
\langle T_{\mu\nu}(x_1)J_\rho(x_2)J_\sigma(x_3)\rangle_c
=\delta^{(3)}(x_{12})K_{\mu\nu\rho\alpha}\langle J^\alpha(x_2)J_\sigma(x_3)\rangle+(2\leftrightarrow3),
$$
$$
K_{\mu\nu\rho\sigma}=B\left(\frac2d\eta_{\mu\nu}\eta_{\rho\sigma}
-\eta_{\mu\rho}\eta_{\nu\sigma}-\eta_{\mu\sigma}\eta_{\nu\rho}\right).
$$

It obtains $g''=3g$, $n_{XJJ}^{(1)}=n_{XJJ}^{(2)}=(64\pi/7)(g/a_1)n_{TJJ}^{(1)}$, $n_{TJJ}^{(2)}=6n_{TJJ}^{(1)}/7$, and $B=-2\pi n_{TJJ}^{(1)}/21$. **Checked:** xAct verifies the trace and first-pair symmetry of $K$. Its null projection is $-2Bz_\rho z_\sigma$, so it survives traceless polarization and its convolution contributes at separated points. The paper explicitly leaves the direct bulk computation of $g''=3g$ open; its abstract's broad agreement language must not erase that qualification.

The reported anomalous dimensions are $g^2/4+g'^2/20$ and $g^2/4+3g''^2/20$. **Checked, conditional:** Wick multiplicities $(10,2,6)$ for $X^2,\mathcal O_2^2,J^2$, divided by the descendant coefficient of magnitude 40, give these magnitudes. Their signs inherit the continuation issue above.

## Bulk scalar branches and what the boundary spectrum means

E.2 couples Maxwell's Weyl-invariant $-F^2/4$ action and obtains $hAA$ and $fAA$ vertices with opposite overall signs, but different curvature terms. The diagonal PM coupling is possible for the massless vector. No independent on-shell cubic gauge-variation audit was done here.

E.3 uses $\mathcal L_\phi=-\tfrac12(\nabla\phi)^2-R\phi^2/12+\lambda\phi^4$. On dS, $R=12H^2$ gives constant solutions $\phi_0=0$ and $\phi_0=\pm H/\sqrt{2\lambda}$, independently checked. The nonzero real branch requires $\lambda>0$ and has an upside-down potential. Its Stueckelberg combination

$$
\widetilde f_{MN}=f_{MN}-\frac{\sqrt{2\lambda}}H(\nabla_M\nabla_N+H^2g_{MN})\varphi
$$

is invariant under $\delta f_{MN}=-(\nabla_M\nabla_N+H^2g_{MN})\sigma$, $\delta\varphi=-H\sigma/\sqrt{2\lambda}$. In unitary gauge, $\delta m^2=-H^2/(6\alpha^2\lambda)$; the critical point $12\alpha^2\lambda=1$ has vanishing graviton kinetic coefficient, so the diagonalization cannot be used there. The trivial branch has a conformal scalar with mass $2H^2$ and the minimal scalar spectrum above.

The extended branch comes from a fourth-order Weyl-invariant scalar,

$$
S_\psi=\int\sqrt{-g}\left[F(\psi)C^2+\tfrac12(\square\psi)^2
-(R^{MN}-Rg^{MN}/3)\nabla_M\psi\nabla_N\psi\right].
$$

Introducing an auxiliary scalar and diagonalizing yields one massless wrong-sign scalar and one conformal scalar. The PM diagonal conformal-scalar vertex is doubled relative to the minimal model, an off-diagonal PM coupling is present, and the diagonal massless-scalar PM coupling vanishes. $F'(0)$ permits additional four-derivative scalar–tensor–tensor couplings outside the displayed consistency constraints. These action-level statements explain the spectra used in Section 5; they do not imply that arbitrary $F$ has been bootstrapped in full.

# Distributional integrals and their audit

Appendix A reduces tensor triangles by decomposing the loop position in the plane of $x_{12},x_{13}$, its orthogonal normal and the evanescent directions in $d=3-2\epsilon$. Odd normal powers vanish. Even powers introduce dimension-shifted integrals with

$$
\frac{\Omega_{d-3}}{\Omega_{d+2k-3}}
=\frac{\Gamma(k-\epsilon)}{\pi^k\Gamma(-\epsilon)}
=-\frac{(k-1)!}{\pi^k}\epsilon+O(\epsilon^2).
$$

An $O(\epsilon)$ numerator cannot be dropped in the presence of a $1/\epsilon$ pole. For the conformal triangle, $a_1+a_2+a_3=d$ and analytic continuation from its convergence domain gives

$$
\int\frac{d^dx}{|x-x_1|^{2a_1}|x-x_2|^{2a_2}|x-x_3|^{2a_3}}
=\pi^{d/2}\prod_i\frac{\Gamma(d/2-a_i)}{\Gamma(a_i)}
\frac1{|x_{12}|^{d-2a_3}|x_{13}|^{d-2a_2}|x_{23}|^{d-2a_1}}.
$$

For $d=3,a_i=1$ the coefficient is $\pi^3$. The general Appell $F_4$ series converges only when the sum of two distance ratios is below one, incompatible with a nondegenerate Euclidean triangle. The paper instead expands in soft and hard integration regions before performing tensor bubbles. The soft region scales as $|x_{12}|^{d-2a_1-2a_2}$, whereas the hard region is analytic in $x_{12}$; both are needed away from uniqueness. Region poles can cancel and leave logarithms.

For the bubble with numerator $(q\cdot x)^n$, its coefficient of $(q^2)^r(q\cdot p)^{n-2r}$ is

$$
c_r=\frac{\pi^{d/2}(-1)^n n!}{4^rr!(n-2r)!}
\frac{\Gamma(b_1+b_2-d/2-r)\Gamma(d/2+r-b_2)\Gamma(d/2+n-r-b_1)}
{\Gamma(b_1)\Gamma(b_2)\Gamma(d+n-b_1-b_2)},
$$

with the corresponding power of $p^2$ fixed by scaling. Combine denominators with a Feynman parameter, shift $x$, integrate the even Gaussian moments, then perform the beta integral: this independently reproduces all coefficients for $n=0,1,2,3,4$ (nine zero residuals). It checks the reduction building block, not every regulated three-point convolution.

**Failed, bounded wording in A.2:** the paragraph after the region expansions says the soft series diverges whenever $d-2a_i$ is a nonpositive integer or $d-2a_1-2a_2$ is a nonnegative integer. Gamma poles require the respective integers to be **even**, and denominator zeros/cancellations must still be examined. For example $d=3,a_1=2,a_2=1/3$ gives $d-2a_1=-1$ but a finite analytically continued soft prefactor $-5.698218757764056\ldots$. This concerns the meromorphic region formula: the original unregulated integral may still require distributional extension for power divergences. The repair is to test actual Gamma arguments against $0,-1,-2,\ldots$ before inferring poles or logarithms. No main bootstrap result is rejected on this wording issue.

Appendix C makes extension ambiguities concrete. A distribution of scaling degree $\omega$ in $d$ dimensions may acquire local derivatives of delta functions of order at most $\lfloor\omega-d\rfloor$ while preserving the scaling-degree bound. Restricting to exactly $|\alpha|=\omega-d$ additionally requires appropriate homogeneity; the same-degree condition alone is insufficient. The borderline degree-$d$ examples here admit delta terms. Scalar $TOO$ completions are pure trace in the relevant projected channel; $TXX,TTT$ contact terms are not transformed in the particular pure-gravity identities; $TJJ$ contains the nontrivial $K$ above. Whether a contact term matters is therefore decided by the actual integral and tensor projection, not by separated external points alone.

# Translation into the vault's boundary and CPS work

The useful object is a **balance identity with an explicit response kernel**. A region with leakage has a nonzero integrated current divergence. Keeping the resulting convolution is analogous to keeping a flux term in a regional Hamiltonian balance. It does not by itself supply a presymplectic form, an integrable Hamiltonian, a Peierls bracket, or a gluing theorem. Those require the action variation, boundary conditions and causal response of the particular Lorentzian system.

For alternate-quantization calculations, the $V_1\oplus V_2$ block representation is a concrete check on which boundary conditions preserve a generator. For common-boundary sewing, the ACKK primary $S$ provides a test of retaining trace improvements and distinguishing diagonal from relative translations. Its common conformal boundary is not automatically a finite timelike interface with independently specified initial/final caps. For response-operator algebra, the $TJJ$ completion is a warning that convolution and discarding contact terms do not commute.

## Equation ledger and derivation dependencies

| Source location | Input → output | Evidence here |
| --- | --- | --- |
| 2.1–2.3 | Falloffs + mixed variation → broken current → factorized convolution | Source-derived; dimensions and elementary integrations reconstructed |
| 2.2, B | Semi-analytic condition → anomalous cubic classes | Spin-two matrix Checked; spin-four/six counts Source-derived |
| (3.12)–(3.22) | Transformed three-point identities → block Lie representation | Block multiplication and SU(2) Checked; convolution coefficients Source-derived |
| 4.1 | Positive stress-tensor norms → orthogonal sector tensors | Matrix/norm calculation Checked; full factorization conditional |
| 4.2–4.3, D | Coupled action → primary relative tensor → pseudo-action and $n_i$ | Algebra reconstructed; full CPT tensor integrals Source-derived |
| (5.2)–(5.8) | PM breaking → anomalous dimension and two-point charge relation | Descendant magnitude Checked; dS sign dictionary Blocked |
| 5.1–5.3, C | Tensor ansatz + regulated transforms/contact terms → cubic coefficients | Source-derived; contact trace and scalar Laplacian Checked |
| A | Feynman parameters/regions → regulated convolution algorithm | Bubble coefficients and dimension shift Checked; pole wording Failed and repaired |
| E | Auxiliary action and scalar vacua → spectra and cubic interpretation | Auxiliary elimination/vacua Checked; full cubic variation Source-derived |

## Verification record and remaining boundary

**Verified:** Sage 10.9 exact spin-two ranks/kernel and SU(2) representation; Mathematica stress-tensor projectors, primary coefficient condition, scalar Laplacian, four-derivative spin-two two-point function, Wick multiplicities, mass-dimension expansion, auxiliary elimination, scalar constant vacua, dimension-shift Gamma limit for $k=1,\ldots,4$, and nine bubble-coefficient residuals; xAct trace and symmetry of the semi-local tensor. The formulas above specify the inputs and exact outputs. For the descendant check, Cartesian derivatives were taken before setting $x=(1,0,0)$; rotational covariance and homogeneity restore the displayed radius dependence.

**Assumptions:** leading large $N$, weak breaking at the source's stated order; renormalized composite operators; fixed conformal-structure normalization; nondegenerate scalar dimensions in the mixed ACKK formulas; decay/regularization for integrated Ward identities; Euclidean signs retained until an explicit dS continuation; nonunitary matter allowed where stated.

**Not verified:** the complete regulated tensor-convolution systems fixing every Section 5 coefficient; full spin-four/six classification; all cubic bulk gauge variations; a nonperturbative completion, finite-region Hamiltonian realization, quantum sewing or all-orders exact marginality. These are source-dependent or outside the claim, not consequences of the finite algebra checks. **Blocked:** the precise dS composite/coupling continuation needed for the positive anomalous-dimension sign is not closed here. **Failed:** the overbroad integer-pole criterion in A.2, repaired locally above. No unavailable CAS or unrecovered source-download blocker remains.

**Source and file audit:** all sections and appendices inspected in official v1 TeX and PDF; pages 20 and 30 rendered and visually checked for block signs, factors and anomalous-dimension conventions. An initial PDF SSL EOF recovered on retry; source retrieval succeeded. Markdown/frontmatter/math-delimiter/hygiene checks and a Pandoc parse were run before the queue advanced. No older note, profile, PDF attachment or commit was created or changed.
