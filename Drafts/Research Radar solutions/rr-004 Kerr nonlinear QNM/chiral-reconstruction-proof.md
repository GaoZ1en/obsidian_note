# Outgoing uniqueness of the chiral Einstein residual

## Result and scope

**Within the stated outgoing analytic class, the chiral Hertz reconstruction satisfies the full sourced Einstein equation whenever its extreme curvature satisfies the sourced Teukolsky equation.** The proof does not truncate the angular dependence. It uses an explicit kernel calculation for the source operator, followed by two conservation equations.

This closes the local all-component implication left open by the [finite metric checks](hertz-metric-reconstruction.md). It is an injectivity theorem on a specified domain, not an existence or convergence theorem for an infinite angular Green-function sum.

Use signature $(+---)$, the curvature convention of the reconstruction note, $M=1$, and one complex DD channel. Let
$$
E=\delta G,\qquad F=-\tfrac12D^2G[h,h],\qquad D=Ek-F.
$$
The hypotheses are:

1. The parent is on shell, so $\nabla^aF_{ab}=0$, and the [null-plane identity](chiral-source-identity.md) gives $F\in\operatorname{Sym}^2W^\flat$, where $W=\operatorname{span}_{\mathbb C}(n,m)$.
2. The daughter is the chiral outgoing CCK reconstruction, and its linear extreme curvature obeys $O'T'k=S'F$.
3. The fields are differentiable to the orders used below on the exterior complex radial domain. At infinity, their Boyer--Lindquist mode amplitudes are outgoing, with finite algebraic/logarithmic factors and no incoming homogeneous terms. Choose a vertical end with $\operatorname{Re}\Omega>0$.

Then $D=0$ throughout that domain.

## 1. Why the residual has only three components

The operator identities
$$
S'E=O'T',\qquad E\overline{S'^\dagger}
=\overline{T'^\dagger}\,\overline{O'^\dagger}
$$
are identities of local differential operators. Here complex conjugation acts on the background operator and swaps the tetrad chirality; it does not impose reality on the daughter amplitude.

For the chosen reconstruction, $Ek$ lies in $\operatorname{Sym}^2W^\flat$. One way to see the support of $\overline{T'^\dagger}$ is to write the curvature-extraction bivector as $n\wedge m$. Its formal adjoint differentiates products of this bivector. Every contracted differentiation direction lies in $W$, and $\nabla_XY\in W$ for $X,Y\in W$.

The latter property follows from integrability and maximal nullity. For $X,Y,Z\in W$, metric compatibility makes $g(\nabla_XY,Z)$ antisymmetric in $Y,Z$, while torsion freedom and $[X,Y]\in W$ make it symmetric in $X,Y$. These two symmetries force it to vanish. Since $W^\perp=W$, the claimed covariant-derivative support follows. Divergence terms change scalar coefficients but not the remaining tensor legs.

Consequently,
$$
D\in\operatorname{Sym}^2W^\flat,\qquad
\nabla^aD_{ab}=0,\qquad S'D=0.
$$
The conservation law uses the linearized Bianchi identity and the on-shell parent. The last equation uses the sourced curvature equation. None of these statements follows merely from a small numerical residual.

The operator conventions and their formal adjoints are those of [Casals et al., equations (14)--(20)](https://arxiv.org/html/2402.15468v2#S2.SS2), with the principal directions exchanged.

## 2. Explicit Kerr transport kernel

Use advanced coordinates $(v,r,z,\varphi^*)$, $z=\cos\theta$, and write
$$
\Gamma=r+iaz,\quad \bar\Gamma=r-iaz,\quad
\Sigma=\Gamma\bar\Gamma,\quad \Delta=r^2-2r+a^2.
$$
An unnormalized frame for $W$ is
$$
N=\partial_r,\qquad
M=ia(1-z^2)\partial_v-(1-z^2)\partial_z+i\partial_{\varphi^*}.
$$
It obeys $[N,M]=0$. In the Kinnersley normalization,
$$
n=-\frac{\Delta}{2\Sigma}N,\qquad
m=\frac{M}{\sqrt{2(1-z^2)}\,\Gamma}.
$$
On an angular patch away from the axis, write the tensor amplitude as
$$
D_{ab}=A N_aN_b+B(N_aM_b+M_aN_b)+C M_aM_b
$$
times $e^{-i\Omega v+im_Q\varphi^*}$. The physical tetrad component is
$$
C_{\rm NP}:=D_{\bar m\bar m}=2(1-z^2)\Gamma^2C.
$$

For this tensor support, the exact source operator is
$$
\boxed{
S'D=-\frac{\Delta^2}{4\Sigma^2}
\left(\partial_r+\frac6{\bar\Gamma}-\frac1\Gamma\right)
\left(\partial_r+\frac2{\bar\Gamma}-\frac1\Gamma\right)C_{\rm NP}.
}
$$
There are no $A$, $B$, angular-derivative, or mode-frequency terms in this advanced-coordinate expression. This is not an assumption based on a Newman--Penrose mnemonic. The saved component calculation evaluates
$$
S'D=Z'^{bc}Z'^{da}(\nabla_a+4B'_a)\nabla_bD_{cd},
\quad Z'=n\wedge\bar m,\quad
B'_a=-\rho'l_a+\tau'm_a,
$$
computing the optical scalars from their tetrad definitions and checking the displayed factorization for arbitrary functions $A(r,z),B(r,z),C(r,z)$.

Set
$$
C_{\rm NP}=\frac{\Gamma}{\bar\Gamma^2}\,c(r,z).
$$
Then $S'D=0$ reduces to
$$
c_{,rr}+\frac4{\bar\Gamma}c_{,r}=0,
$$
so
$$
C_{\rm NP}=\frac{\Gamma}{\bar\Gamma^2}
\left[c_0(z)+\frac{c_1(z)}{\bar\Gamma^3}\right].
$$
At fixed advanced coordinates these solutions are algebraic in $r$. In Boyer--Lindquist coordinates they carry the incoming phase
$$
e^{-i\Theta(r)},\qquad
\Theta'(r)=\frac{(r^2+a^2)\Omega-am_Q}{\Delta}.
$$
Conversely, a Boyer--Lindquist outgoing amplitude becomes proportional to $e^{2i\Omega r}$ times algebraic/logarithmic factors at fixed advanced coordinates. It decays exponentially on the chosen vertical end. The displayed nonzero algebraic kernel cannot have that decay. Hence $c_0=c_1=0$ and $C=0$.

## 3. Conservation removes the other two components

Direct connection identities are
$$
\nabla_NM=\frac{ia(1-z^2)}{\bar\Gamma}N+\frac1{\bar\Gamma}M,
\qquad
\nabla_aN^a=\frac{2r}{\Sigma}.
$$
Once $C=0$, the coefficient of $M$ in $\nabla_aD^{ab}$ gives
$$
B_{,r}+\left(\frac{2r}{\Sigma}+\frac2{\bar\Gamma}\right)B=0,
\qquad
B=\frac{b_0(z)}{\Sigma\bar\Gamma^2}.
$$
The same outgoing argument forces $b_0=0$. With $B=C=0$, the remaining equation is
$$
A_{,r}+\frac{2r}{\Sigma}A=0,\qquad
A=\frac{a_0(z)}{\Sigma},
$$
and outgoing decay forces $a_0=0$. Thus $D=0$.

The proof applies on each angular patch. Smoothness in the appropriate spin bundle extends the tensor identity across the axis. It requires no spherical triangle rule and no restriction to a finite angular expansion.

## 4. What this proves for the DD construction

The exact chiral source has the required tensor support and conservation. The outgoing fourth-order Hertz inverse fixes its incoming polynomial ambiguity. Therefore any sufficiently regular untruncated curvature response in the stated outgoing class reconstructs to a full Einstein response; no additional Einstein components can remain hidden in the kernel of $S'$.

This result separates two questions that the point checks alone could not distinguish:

- **Reconstruction implication:** proved above for the untruncated analytic class.
- **Existence in that class and convergence of its chosen angular representation:** not supplied by this injectivity proof. The numerical angular refinement remains numerical evidence for the constructed benchmark.

It also does not remove the metric/Teukolsky source current $j_S(u,F)$, which is different from the GHZ corrector.

Evidence: [source-operator factorization](verification/chiral-source-transport.wl), [conservation equations](verification/chiral-residual-transport.wl), and [kernel solutions](verification/chiral-transport-kernels.wl), with adjacent JSON outputs. The archived initial source-operator run accidentally reused the Kerr parameter $a$ as a summation index. The corrected run uses a distinct index and has an exactly zero factorization residual; only that corrected run supports the formula.

**Verified:** exact source-operator factorization for arbitrary Kerr coefficient functions; exact conservation transport equations and their kernels; the outgoing injectivity argument.

**Assumptions:** the stated chirality, on-shell parent, regularity, operator identity, and outgoing analytic boundary class; $\Delta\Sigma\Gamma\bar\Gamma\ne0$ in the open domain, with endpoints treated by the stated asymptotics.

**Not verified here:** existence and uniform angular estimates for the full sourced solution; the normalized metric-CPS source/residue map; other polarizations or direct--mirror channels.

