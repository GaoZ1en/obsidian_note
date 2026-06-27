# problem 1

consider a susy theory with two chiral superfield $\displaystyle{\phi}$ and $\displaystyle{\phi _{H}}$ satisfying the following superpotential

$$\begin{align}
W & =\dfrac{1}{2}M\phi ^{2}_{H}+\dfrac{\lambda}{2}\phi _{H}\phi ^{2}
\end{align}$$

for the energy scale $\displaystyle{\mu< M}$, we can integrate out $\displaystyle{\phi _{H}}$ to obtain an effective superpotential $\displaystyle{W_{\text{eff}}}$. derive superpotential $\displaystyle{W_{\text{eff}}}$.

we also observe that the superpotential $\displaystyle{W}$ has three $\displaystyle{\mathrm{U}(1)}$ global symmetries:

$$\begin{align}
\begin{array}{c|ccc}
 & \mathrm{U}(1)_{A} & \mathrm{U}(1)_{B} & \mathrm{U}(1)_{R} \\
\hline\phi _{H} & 1 & 0 & 1 \\
\phi & 0 & 1 & \dfrac{1}{2} \\
M & -2 & 0 & 0 \\
\lambda & -1 & -2 & 0
\end{array}
\end{align}$$

use the holomorphy method to rederive the effective superpotential $\displaystyle{W_{\text{eff}}}$.

## solution

First integrate out the heavy chiral superfield at tree level. The F-term equation for $\phi _H$ is

$$\begin{align}
0=\frac{\partial W}{\partial \phi _H} &=M\phi _H+\frac{\lambda}{2}\phi ^2 ,
\end{align}$$

so

$$\begin{align}
\phi _H=-\frac{\lambda}{2M}\phi ^2 .
\end{align}$$

Substituting this solution into the superpotential gives

$$\begin{align}
W_{\text{eff}} &=\frac{1}{2}M\left(-\frac{\lambda}{2M}\phi ^2\right)^2 +\frac{\lambda}{2}\left(-\frac{\lambda}{2M}\phi ^2\right)\phi ^2 \\
&=\frac{\lambda ^2}{8M}\phi ^4-\frac{\lambda ^2}{4M}\phi ^4 \\
&=-\frac{\lambda ^2}{8M}\phi ^4 .
\end{align}$$

Now rederive its form from holomorphy. Treat $M$ and $\lambda$ as background chiral spurions with the charges shown in the table. A holomorphic term in the low-energy superpotential has the form

$$\begin{align}
W_{\text{eff}}\supset C M^a\lambda ^b\phi ^c .
\end{align}$$

It must be neutral under $\mathrm{U}(1)_A$ and $\mathrm{U}(1)_B$, and must have $R$-charge $2$. Hence

$$\begin{align}
-2a-b&=0, \\
-2b+c&=0, \\
\frac{c}{2}&=2 .
\end{align}$$

These equations give

$$\begin{align}
c=4,\qquad b=2,\qquad a=-1 .
\end{align}$$

Therefore holomorphy and the spurion symmetries fix the effective superpotential to be

$$\begin{align}
W_{\text{eff}}=C\frac{\lambda ^2}{M}\phi ^4 .
\end{align}$$

The direct tree-level matching above fixes

$$\begin{align}
C=-\frac{1}{8},
\end{align}$$

so

$$\begin{align}
W_{\text{eff}}=-\frac{\lambda ^2}{8M}\phi ^4 .
\end{align}$$

# problem 2

use the holomorphy and symmetries to show that the superpotential

$$\begin{align}
W & =\mu_{1}\phi+\mu_{2}\phi ^{2}+\dots+\mu _{n}\phi ^{n}+\dots
\end{align}$$

is not renormalized

## solution

Promote all couplings $\mu _n$ to background chiral spurions. Use the ordinary $\mathrm{U}(1)$ symmetry

$$\begin{align}
\phi\mapsto e^{i\alpha}\phi,\qquad \mu _n\mapsto e^{-in\alpha}\mu _n ,
\end{align}$$

so that each term $\mu _n\phi ^n$ is invariant. Also assign dimensions

$$\begin{align}
[\phi]=1,\qquad [\mu _n]=3-n .
\end{align}$$

The Wilsonian effective superpotential must be holomorphic in the chiral spurions and in $\phi$. Consider a general holomorphic monomial

$$\begin{align}
\prod _{n}\mu _n^{a_n}\phi ^p .
\end{align}$$

The $\mathrm{U}(1)$ symmetry requires

$$\begin{align}
p=\sum _n n a_n .
\end{align}$$

The superpotential has mass dimension $3$, so

$$\begin{align}
3&=\sum _n a_n(3-n)+p \\
&=\sum _n a_n(3-n)+\sum _n n a_n \\
&=3\sum _n a_n .
\end{align}$$

Thus

$$\begin{align}
\sum _n a_n=1 .
\end{align}$$

In perturbation theory the effective superpotential is regular as the couplings $\mu _n$ are taken to zero, so the exponents $a_n$ are non-negative integers. The condition $\sum _n a_n=1$ then implies that exactly one exponent is equal to $1$, and all the others vanish. Therefore the only allowed monomials are precisely

$$\begin{align}
\mu _n\phi ^n .
\end{align}$$

The effective superpotential can only have the same holomorphic form as the original one:

$$\begin{align}
W_{\text{eff}}=\sum _n c_n\mu _n\phi ^n .
\end{align}$$

Matching to the weak-coupling limit fixes $c_n=1$. Therefore the perturbative Wilsonian superpotential is not renormalized:

$$\begin{align}
W_{\text{eff}}=W .
\end{align}$$

The Kähler potential can still be renormalized, so this statement is about the holomorphic Wilsonian superpotential.

# problem 3

the original Seiberg duality relate two UV theories with the following symmetries. Theory I:

$$\begin{align}
\begin{array}{c|c|cccc}
 & \mathrm{SU}(N) & \mathrm{SU}(F)_{1} & \mathrm{SU}(F)_{2} & \mathrm{U}(1)_{B} & \mathrm{U}(1)_{R} \\
\hline \Phi,Q & \square & \square & 1 & 1 & \dfrac{F-N}{F} \\
\bar{\Phi},\bar{Q} & \bar{\square} & 1 & \bar{\square} & -1 & \dfrac{F-N}{F}
\end{array}
\end{align}$$

Theory II:

$$\begin{align}
\begin{array}{c|c|cccc}
 & \mathrm{SU}(F-N) & \mathrm{SU}(F)_{1} & \mathrm{SU}(F)_{2} & \mathrm{U}(1)_{B} & \mathrm{U}(1)_{R} \\
\hline q & \square & \bar{\square} & 1 & \dfrac{N}{F-N} & \dfrac{N}{F} \\
\bar{q} & \bar{\square} & 1 & \square & -\dfrac{N}{F-N} & \dfrac{N}{F} \\
\mathrm{me\sin o} & 1 & \square & \bar{\square} & 0 & 2\dfrac{F-N}{F}
\end{array}
\end{align}$$

compute the following global symmetries' triangle anomaly coefficients to test the Seiberg duality:

1. $\displaystyle{\mathrm{U}(1)_{R}[\mathrm{SU}(F)_{1}]^{2}}$
2. $\displaystyle{\mathrm{U}(1)_{R}^{3}}$

## solution

Use the convention

$$\begin{align}
T(\square)=T(\bar{\square})=\frac{1}{2}
\end{align}$$

for the fundamental representation of $\mathrm{SU}(F)$. For a chiral superfield of $R$-charge $R_\Phi$, the corresponding Weyl fermion has $R$-charge

$$\begin{align}
R_{\psi_\Phi}=R_\Phi-1 .
\end{align}$$

### $\mathrm{U}(1)_R[\mathrm{SU}(F)_1]^2$

In theory I, only $Q$ is charged under $\mathrm{SU}(F)_1$. There are $N$ color copies, and

$$\begin{align}
R_{\psi_Q}=\frac{F-N}{F}-1=-\frac{N}{F}.
\end{align}$$

Thus

$$\begin{align}
\mathcal{A}^{(I)}_{R[SU(F)_1]^2} &=N\left(-\frac{N}{F}\right)T(\square) \\
&=-\frac{N^2}{2F}.
\end{align}$$

In theory II, the fields charged under $\mathrm{SU}(F)_1$ are $q$ and the meson $M$. For $q$ there are $F-N$ magnetic color copies, and

$$\begin{align}
R_{\psi_q}=\frac{N}{F}-1=-\frac{F-N}{F}.
\end{align}$$

For $M$ there are $F$ copies from the $\mathrm{SU}(F)_2$ index, and

$$\begin{align}
R_{\psi_M}=2\frac{F-N}{F}-1=\frac{F-2N}{F}.
\end{align}$$

Therefore

$$\begin{align}
\mathcal{A}^{(II)}_{R[SU(F)_1]^2} &=(F-N)\left(-\frac{F-N}{F}\right)T(\bar{\square}) +F\left(\frac{F-2N}{F}\right)T(\square) \\
&=-\frac{(F-N)^2}{2F}+\frac{F-2N}{2} \\
&=-\frac{N^2}{2F}.
\end{align}$$

So the two sides match:

$$\begin{align}
\mathcal{A}^{(I)}_{R[SU(F)_1]^2} =\mathcal{A}^{(II)}_{R[SU(F)_1]^2}.
\end{align}$$

### $\mathrm{U}(1)_R^3$

For the cubic $R$ anomaly, include all Weyl fermions carrying $R$-charge, including the gaugino. The gaugino has $R$-charge $1$.

In theory I,

$$\begin{align}
\mathcal{A}^{(I)}_{R^3} &=(N^2-1) +2NF\left(-\frac{N}{F}\right)^3 \\
&=N^2-1-\frac{2N^4}{F^2}.
\end{align}$$

Here $N^2-1$ is the contribution of the $\mathrm{SU}(N)$ gaugino, and the factor $2NF$ comes from $Q$ and $\bar{Q}$.

In theory II,

$$\begin{align}
\mathcal{A}^{(II)}_{R^3} &=((F-N)^2-1) +2(F-N)F\left(-\frac{F-N}{F}\right)^3 +F^2\left(\frac{F-2N}{F}\right)^3 \\
&=N^2-1-\frac{2N^4}{F^2}.
\end{align}$$

The three terms are the magnetic gaugino, the dual quarks $q,\bar{q}$, and the meson $M$, respectively. Therefore

$$\begin{align}
\mathcal{A}^{(I)}_{R^3} =\mathcal{A}^{(II)}_{R^3}.
\end{align}$$
