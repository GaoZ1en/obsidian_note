# One-Loop Central Charge Normalization and Scheme Dependence

This note separates external one-loop quantization prescriptions from the metric/CPS derivation in [[Articles/Quantization in AdS/linearized gravity/higher perturbations of linearized gravity modes|higher perturbations of linearized gravity modes]]. The conclusions below have three different statuses:

1. the Giombi--Maloney--Yin and Cotler--Jensen formulas are source-derived statements in their specified prescriptions;
2. the finite coupling transformation is the project's scheme-dependence inference from the complete renormalized Einstein variational problem;
3. the comparison with the finite CPS moment-map term is established only at the one-loop central-cocycle order on the selected global-AdS vacuum orbit.

The central distinction is

$$\begin{align}
\boxed{
c_{\mathrm{phys}}
=\dfrac{3\ell}{2G_R(\mathsf S)}+\Delta c(\mathsf S),
}
\end{align}$$

where $c_{\mathrm{phys}}$ is invariant but the displayed split need not be.

## Giombi--Maloney--Yin: Descendants and the Identity Image

### Source-derived determinant

For thermal AdS$_3$, written as $X=\mathbb H^3/\mathbb Z$, the method-of-images trace separates as

$$\begin{align}
\operatorname{Tr}K_X
={}&\operatorname{vol}(X)K_{\mathbb H^3}(t;x,x)
+\sum_{n\neq0}\int_XK_{\mathbb H^3}(t;x,\gamma^nx).
\end{align}$$

The first term is the identity image. It is local, divergent, and proportional to the volume. Giombi--Maloney--Yin omit it after identifying it with a local coupling renormalization. The nonzero images give the nonlocal graviton/ghost determinant

$$\begin{align}
\log Z_{mathrm{desc}}
&=-\sum_{m=2}^{\infty}\log|1-q^m|^2, \\
\boxed{
Z_{mathrm{desc}}(q,\bar q)
&=\prod_{m=2}^{\infty}\dfrac1{|1-q^m|^2}.}
\end{align}$$

This descendant factor is insensitive to local finite counterterms. It is the scheme-independent one-loop spectral statement relevant here.

### Local identity-image finite part

For the traceless tensor, vector ghost, and trace mode, the identity-image contribution used by GYM is

$$\begin{align}
S^{(1)}_{\mathrm{id}}
=\dfrac12\operatorname{vol}(\mathbb H^3)
\int_0^{\infty}\dfrac{\mathrm dt}{t}\dfrac1{(4\pi t)^{3/2}}
\left[2e^{-t}(1+8t)-2e^{-4t}(1+2t)\right].
\end{align}$$

Gamma-function analytic continuation gives

$$\begin{align}
\dfrac{S^{(1)}_{\mathrm{id}}}{\operatorname{vol}(\mathbb H^3)}
&=\dfrac{\Gamma(-3/2)(1-8)+\Gamma(-1/2)(8-4)}{(4\pi)^{3/2}} \\
&=-\dfrac{13}{6\pi}.
\end{align}$$

This is an exact result in that analytic-continuation prescription. It is a local constant-density term on an Einstein background; by itself it is not a nonlocal determinant and does not establish logarithmic running.

## Cotler--Jensen Orbit Quantization

### Source-derived reduction

In the Chern--Simons description,

$$\begin{align}
S&=S_{\mathrm{CS}}[A]-S_{\mathrm{CS}}[\bar A]+S_{\mathrm{bdy}}, &
A&=\omega+\dfrac e\ell, &
\bar A&=\omega-\dfrac e\ell.
\end{align}$$

The temporal connection imposes flatness. Writing the spatial connection as $\widetilde A=g^{-1}\widetilde{\mathrm d}g$ produces a chiral WZW theory, and the Brown--Henneaux/Drinfeld--Sokolov constraints reduce it to a reparameterization field. For one chirality, with $F=\tan(\phi/2)$ and the local $PSL(2,\mathbb R)$ redundancy retained, the Euclidean action is

$$\begin{align}
S_E[\phi]
&=\dfrac{C}{24\pi}\int\mathrm d^2x
\left[\dfrac{(\bar\partial\phi')\phi''}{\phi'^2}
-(\bar\partial\phi)\phi'\right].
\end{align}$$

Cotler--Jensen call $C$ the bare central charge of this orbit action. Classically, in the corresponding convention,

$$\begin{align}
C&=6k=\dfrac{3\ell}{2G}.
\end{align}$$

The exceptional orbit is $\operatorname{Diff}(S^1)/PSL(2,\mathbb R)$, so the spatial modes $n=-1,0,1$ are removed. The one-loop torus calculation gives

$$\begin{align}
\partial_\tau\log Z_{1\text{-loop}}
&=-\dfrac{\pi iC}{12}
-\pi\sum_{n=2}^{\infty}n\cot(\pi n\tau).
\end{align}$$

In their zeta prescription,

$$\begin{align}
\sum_{n=2}^{\infty}n
&=\zeta(-1)-1=-\dfrac{13}{12},
\end{align}$$

and therefore

$$\begin{align}
\boxed{
Z_{\mathrm{CJ,chiral}}
=q^{-(C+13)/24}\prod_{n=2}^{\infty}\dfrac1{1-q^n}.}
\end{align}$$

The localization argument makes this exact for the specified orbit path integral, symplectic measure, and zeta prescription. Thus

$$\begin{align}
c_{\mathrm{CJ}}&=C+13
\end{align}$$

is not an invalid calculation. It is a precise result for that representative. The heat-kernel and orbit calculations assign the same finite part to the same local vacuum/Casimir factor; they are not two independent measurements of a residual shift relative to a separately calibrated physical Newton constant.

## Finite Einstein Coupling Redefinition

### Project inference from the variational problem

Restore the AdS radius and write the renormalized action used by the metric/CPS project as

$$\begin{align}
I_{\mathrm{ren}}[g]
=\dfrac1{16\pi G_R}
\left[
\int_M\sqrt{|g|}\left(R+\dfrac2{\ell^2}\right)
+2\int_{\Gamma}\sqrt{|\gamma|}\left(K-\dfrac1\ell\right)
\right].
\end{align}$$

A finite shift of $A_R=1/G_R$ must rescale the full bulk action together with its Gibbons--Hawking and AdS boundary completion:

$$\begin{align}
\delta I_{\mathrm{fin}}
=\dfrac{\delta A_R}{16\pi}
\left[
\int_M\sqrt{|g|}\left(R+\dfrac2{\ell^2}\right)
+2\int_{\Gamma}\sqrt{|\gamma|}\left(K-\dfrac1\ell\right)
\right].
\end{align}$$

At fixed physical radius, this is the correlated two-derivative coupling shift required by the Einstein equation. The boundary completion preserves the same Dirichlet/Brown--Henneaux allowed variations, symplectic corner prescription, and vacuum subtraction. Interpreted as a change of renormalized parameter with a compensating local counterterm at fixed bare theory, it is a scheme change; adding the same term while refusing to redefine the coupling would instead change the theory.

Because the Brown--Henneaux charges and their classical central term are linear in $A_R$,

$$\begin{align}
\delta c_{\mathrm{BH}}
&=\dfrac{3\ell}{2}\delta A_R.
\end{align}$$

Define a finite scheme transformation by

$$\begin{align}
\boxed{
\dfrac1{G_R'}&=\dfrac1{G_R}+\dfrac{2\sigma}{3\ell}, &
\Delta c'&=\Delta c-\sigma.}
\end{align}$$

Then

$$\begin{align}
\boxed{
c_{\mathrm{phys}}
=\dfrac{3\ell}{2G_R}+\Delta c
=\dfrac{3\ell}{2G_R'}+\Delta c'.}
\end{align}$$

The special choice $\sigma=13$ sends the CJ representative to a zero-residual-shift representative:

$$\begin{align}
\dfrac1{G_R'}&=\dfrac1{G_R}+\dfrac{26}{3\ell}, &
\Delta c'&=0.
\end{align}$$

The torus answer is unchanged:

$$\begin{align}
Z(\tau,\bar\tau)
&=\left|q^{-c_{\mathrm{phys}}/24}
\prod_{n=2}^{\infty}(1-q^n)^{-1}\right|^2.
\end{align}$$

Thus a scheme transformation moves only the allocation of the local vacuum factor; it does not alter $c_{\mathrm{phys}}$ or the descendant spectrum.

## Relation to the CPS Moment Map

The metric/CPS calculation permits the finite linear composite-charge term

$$\begin{align}
\delta H_{p,1}^{\mathrm{fin}}
&=-i\gamma_pz_{-p}, &
\gamma_p&=\dfrac{\Delta c}{24}p(p^2-1).
\end{align}$$

Under the action redefinition with parameter $\sigma$,

$$\begin{align}
\gamma_p^{(\delta G)}
&=\dfrac{\sigma}{24}p(p^2-1).
\end{align}$$

Therefore, at the one-loop central-cocycle order audited here,

$$\begin{align}
\boxed{
\text{finite Einstein/charge normalization}
\longleftrightarrow
\text{finite reduced quantum-moment-map normalization}.}
\end{align}$$

This is not an all-orders equality of off-shell functionals. It identifies the same one-parameter freedom only at the order and in the vacuum-orbit sector relevant to $\Delta c$.

## Claim Boundary

The established conclusions are:

- the scheme-independent nonlocal one-loop factor is $\prod_{n\geqslant2}|1-q^n|^{-2}$;
- CJ's $C+13$ is exact in their stated orbit/zeta prescription with bare/reference coefficient $C$;
- the full finite Einstein plus GHY plus AdS-boundary redefinition moves an arbitrary finite amount between $3\ell/(2G_R)$ and $\Delta c$ while preserving $c_{\mathrm{phys}}$ and the Brown--Henneaux variational problem;
- the current pure-gravity sources do not independently calibrate $G_R$ apart from the same charge, vacuum-energy, and thermodynamic normalization encoded by $c_{\mathrm{phys}}$.

It is not established that $+13$ is wrong, that the CJ orbit calculation is invalid, or that the CPS reference value $0$ is a unique scheme-independent theorem. A residual shift could become physically meaningful if a UV completion, quantized level, matter sector, defect observable, or another independent measurement supplied a scheme-independent definition of the Newton coupling and forbade the finite redefinition above.

The detailed source extraction, counterterm audit, and exact symbolic checks are preserved in [[Articles/Quantization in AdS/linearized gravity/archived/one-loop-central-charge-audits/scheme dependence audit of the AdS3 gravity +13 central charge shift|scheme dependence audit of the AdS3 gravity +13 central charge shift]].

## Primary Sources

1. S. Giombi, A. Maloney, X. Yin, “One-loop Partition Functions of 3D Gravity,” [arXiv:0804.1773](https://arxiv.org/abs/0804.1773).
2. J. Cotler, K. Jensen, “A theory of reparameterizations for AdS$_3$ gravity,” [arXiv:1808.03263](https://arxiv.org/abs/1808.03263).
3. M. Porrati, C. Yu, “Kac-Moody and Virasoro Characters from the Perturbative Chern-Simons Path Integral,” [arXiv:1903.05100](https://arxiv.org/abs/1903.05100), used as a comparison of finite-normalization conventions rather than as a competing physical residual shift.
