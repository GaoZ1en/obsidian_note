---
paper id: 0712.0155v1
title: Quantum Gravity Partition Functions in Three Dimensions
authors: [Alexander Maloney, Edward Witten]
publication date: 2007-12-02T17:24
abstract: "We consider pure three-dimensional quantum gravity with a negative cosmological constant. The sum of known contributions to the partition function from classical geometries can be computed exactly, including quantum corrections. However, the result is not physically sensible, and if the model does exist, there are some additional contributions. One possibility is that the theory may have long strings and a continuous spectrum. Another possibility is that complex geometries need to be included, possibly leading to a holomorphically factorized partition function. We analyze the subleading corrections to the Bekenstein-Hawking entropy and show that these can be correctly reproduced in such a holomorphically factorized theory. We also consider the Hawking-Page phase transition between a thermal gas and a black hole and show that it is a phase transition of Lee-Yang type, associated with a condensation of zeros in the complex temperature plane. Finally, we analyze pure three-dimensional supergravity, with similar results."
comments: "71 pages, 6 figures"
pdf: "[[Attachments/Assets/Quantum Gravity Partition Functions in Three Dimensions (0712.0155v1).pdf]]"
url: https://arxiv.org/abs/0712.0155v1
tags: []
---

## Thermal AdS3 and Other Fillings

The metric of thermal AdS3, denoted $\displaystyle{M_{0,1}}$ which will be explained later, is given by

$$\begin{align}
\mathrm{d}s^{2}_{E} & =(1+r^{2})\mathrm{d}t^{2}_{E}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

with identification

$$\begin{align}
(t_{E},\phi)\sim(t_{E}+\beta,\phi+\theta) & \sim(t_{E},\phi+2\pi), & \beta>0
\end{align}$$

the topology is a solid torus, $\displaystyle{D^{2}\times S^{1}}$. We introduce the boundary coordinate

$$\begin{align}
w & =\dfrac{\phi+it_{E}}{2\pi}
\end{align}$$

with period $\displaystyle{1}$ and $\displaystyle{\tau=\dfrac{\theta+i\beta}{2\pi}}$. Therefore the boundary $\displaystyle{\Sigma _{\tau}=\mathbb{C}/(\mathbb{Z}+\tau \mathbb{Z})}$. Set

$$\begin{align}
q & =e^{2\pi i\tau}, & \bar{q} & =e^{-2\pi i\bar{\tau}}
\end{align}$$

for future convenience. Our goal is to compute the partition function of the theory on this boundary torus $\displaystyle{\Sigma _{\tau}}$, which is the only end of smooth, complete, orientable real Euclidean Einstein fillilngs. Cusps, conical or orbifold singularities are excluded. For a filling $\displaystyle{M}$, let $\displaystyle{Z[M]}$ include its classical weight and all perturbative metric fluctuations, the saddle expansion is

$$\begin{align}
Z & =\sum _{M}Z[M], & Z[M] & =e^{-I_{\mathrm{ren}}[M]}Z_{\mathrm{fluc}}[M]
\end{align}$$

we regulate the Euclidean action by

$$\begin{align}
I_{R} & =-\dfrac{1}{16\pi G}\int _{r\leqslant R}\mathrm{d}^{3}x\sqrt{ g }(\mathcal{R}+2)-\dfrac{1}{8\pi G}\int _{r=R}\mathrm{d}^{2}x\sqrt{ h }(K-1)
\end{align}$$

---

For the thermal AdS3, we have

$$\begin{align}
\mathcal{R} & =-6, & \sqrt{ g } & =r, & \sqrt{ h } & =R\sqrt{ 1+R^{2} }, & \sqrt{ h }K & =1+2R^{2}
\end{align}$$

and therefore

$$\begin{align}
I_{\mathrm{ren}} & =\lim_{ R \to \infty } I_{R}= -\dfrac{\beta}{8 G} \\
 & =-4\pi k\mathrm{Im}\tau
\end{align}$$

where $\displaystyle{k=\dfrac{1}{16G}}$.

---

In 3d gravity with negative cosmological constants, every solution $\displaystyle{M}$ under consideration is locally hyperbolic, with universal cover $\displaystyle{\mathbb{H}^{3}}$. Therefore

$$\begin{align}
M & =\mathbb{H}^{3}/\Gamma
\end{align}$$

where $\displaystyle{\Gamma}$ is a discrete torsionless subgroup of the isometry group of $\displaystyle{\mathbb{H}^{3}}$ acting freely and properly discontinuously, and the boundary $\displaystyle{\Sigma _{\tau}}$ is recovered as the quotient of the conformal boundary by $\displaystyle{\Gamma}$:

$$\begin{align}
\Sigma _{\tau} & =U/\Gamma
\end{align}$$

where $\displaystyle{U \subset \partial \mathbb{H}^{3}\simeq \mathbb{\mathbb{CP}}^{1}}$ is the domain of discontinuity of $\displaystyle{\Gamma}$ on which it acts freely and properly discontinuously. Therefore we can classify the fillings by the covering $\displaystyle{U\to \Sigma _{\tau}}$, which is classified by the choice of domain $U$ and the discrete group $\Gamma$ acting on it. Since $\displaystyle{\Sigma _{\tau}=U/\Gamma}$ is a regular covering, we have the exact sequence

$$\begin{align}
1\to \pi _{1}(U)\xrightarrow{p _{*}}\pi _{1}(\Sigma _{\tau})=\mathbb{Z}^{2}\to \Gamma\to1
\end{align}$$

and therefore

$$\begin{align}
\Gamma \cong \mathbb{Z}^{2}/p_{*}\pi _{1}(U)
\end{align}$$

the subgroup $\displaystyle{p_{*}\pi _{1}(U)}$ is a subgroup of $\mathbb{Z}^2$, so it has rank zero, one, or two.

- rank zero. $\displaystyle{\Gamma \cong \mathbb{Z}^{2}}$, which means $\displaystyle{U}$ is the universal cover of $\displaystyle{\Sigma}$, and so is isomorphic to $\displaystyle{\mathbb{C}}$. This case corresponds to cusp geometry, which is not allowed.
- rank one. Torsionfree condition of $\displaystyle{\Gamma}$ requires $\displaystyle{p_{*}\pi _{1}(U)}$ is generated by a primitive cycle $\displaystyle{m=c\tau+d}$ with $\displaystyle{\mathrm{gcd}(c,d)=1}$. choose integers $\displaystyle{a,b}$ such that $\displaystyle{ad-bc=1}$, and let $\displaystyle{l=a\tau+b}$. the corresponding covering space is $$\begin{align}U & \simeq \mathbb{C}/(m\mathbb{Z})\simeq \mathbb{C}^{*}, & \Gamma & \simeq(\mathbb{Z}m+\mathbb{Z}l)/\mathbb{Z}m\simeq \mathbb{Z}\end{align}$$ in the coordinate $\displaystyle{z=e^{2\pi iw/m}}$, the generator of $\displaystyle{\Gamma}$ acts as $$\begin{align}Z & \mapsto q'z, & q' & =e^{2\pi il/m}, & |q'|<1.\end{align}$$ Thus $\displaystyle{\Gamma}$ is generated by a loxodromic isometry of $\displaystyle{\mathbb{H}^{3}}$, and the quotient $\displaystyle{\mathbb{H}^{3}/\Gamma}$ is a smooth solid torus, with contractible meridian $m=c\tau+d$.
- rank two. In this case $\displaystyle{U}$ is a finite cover of $\displaystyle{\Sigma}$, and therefore is a Riemann surface with genus $\displaystyle{1}$, which is not isomorphic to an open subset of $\displaystyle{\mathbb{\mathbb{CP}}^{1}}$, leaving this case impossible.

Therefore, all the admissible fillings are solid tori, distinguished by their contractible boundary cycles $\displaystyle{m=c\tau+d}$. Choose intgeers $\displaystyle{(a,b)}$ satisfying $\displaystyle{ad-bc=1}$, and define

$$\begin{align}
\gamma & =\begin{pmatrix}
a & b \\
c & d
\end{pmatrix}\in \mathrm{PSL}(2,\mathbb{Z})
\end{align}$$

in the boundary coordinate $\displaystyle{w'=w/m}$, the two periods become $\displaystyle{1}$ and $\displaystyle{\tau'=\gamma \tau=\dfrac{a\tau+b}{c\tau+d}}$. The corresponding filling, denoted $\displaystyle{M_{c,d}}$, can be constructed as

$$\begin{align}
M_{c,d} & =\mathbb{H}^{3}/\braket{ g_{\gamma} }
\end{align}$$

where, in the upper-half-space coodinates of $\displaystyle{\mathbb{H}^{3}}$,

$$\begin{align}
g_{\gamma}:(z,u)\mapsto (q'z,|q'|u),\qquad q'=e^{2\pi i\gamma \tau}
\end{align}$$

the cycle $\displaystyle{c\tau+d}$ is contractible in $\displaystyle{M_{c,d}}$, whereas $\displaystyle{a\tau+b}$ generates its fundamental group. Since the replacement

$$\begin{align}
(a,b)\to(a+nc,b+nd)
\end{align}$$

leaves $\displaystyle{M_{c,d}}$ unchanged. Thus the distinct fillings are labeled by

$$\begin{align}
\Gamma _{\infty}\backslash\mathrm{PSL}(2,\mathbb{Z}),\quad \Gamma _{\infty}=\braket{ T }
\end{align}$$

## Partition Function

For the reference filling, heat kernel method gives the 1-loop contribution to the partition function, which

$$\begin{align}
Z_{0,1}(\tau,\bar{\tau}) & =|q|^{-2k}\prod ^{\infty}_{n=2} \dfrac{1}{|1-q^{n}|^{2}}
\end{align}$$

for a general filling $\displaystyle{M_{c,d}}$, the partition function is obtained by acting with the corresponding element $\displaystyle{\gamma \in \mathrm{PSL}(2,\mathbb{Z})}$ on $\displaystyle{Z_{0,1}}$ as

$$\begin{align}
Z_{c,d}(\tau,\bar{\tau}) & =Z_{0,1}(\gamma \tau,\gamma \bar{\tau})
\end{align}$$

for convenience, we introduce the Dedekind eta function as

$$\begin{align}
\eta(\tau) & =q^{1/24}\prod_{n=1}^{\infty}(1-q^{n})
\end{align}$$

we write

$$\begin{align}
Z(\tau,\bar{\tau}) & =\sum _{\Gamma _{\infty}\backslash \mathrm{PSL}(2,\mathbb{Z})}Z_{c,d}(\gamma \tau,\gamma \bar{\tau}) \\
 & =\dfrac{1}{\sqrt{ \mathrm{Im}\tau }|\eta(\tau)|^{2}}\sum _{c,d}\left.\left(\sqrt{ \mathrm{Im}\tau }|\bar{q}q|^{-k+1/24}|1-q|^{2}\right)\right|_{\gamma}
\end{align}$$

introducing the Poincaré series

$$\begin{align}
E(\tau;\kappa,\mu) & =\sqrt{ \mathrm{Im}\tau }\sum _{c,d}|c\tau+d|^{-1}\exp\left(2\pi \kappa \mathrm{Im}\gamma \tau+2\pi \mu \mathrm{Re}\gamma \tau\right)
\end{align}$$

then the partition function can be written in terms of the Poincaré series as

$$\begin{align}
Z(\tau,\bar{\tau}) & =\dfrac{1}{\sqrt{ \mathrm{Im}\tau }|\eta(\tau)|^{2}}\left(E(2k-1/12,0)+E(2k+2-1/12,0) \\
-E(2k+1-1/12,1)-E(2k+1-1/12,-1)\right)
\end{align}$$

here we omit the $\displaystyle{\dfrac{1}{2}}$ factor in the definition of the Poincaré series.

---

Here are some details

## The Modular Sum and Its Regulator

### A Common Form for All Summands

Insert these weights into the filling sum of Section 1.2, with the labels obtained in Section 2.2:

$$\begin{align}
Z_{\mathrm{geom}}\;\text{(formally)} =\sum_{\gamma\in\Gamma_\infty\backslash PSL(2,\mathbb Z)} \left|\chi_{\mathrm{vac}}(\gamma\tau)\right|^2.
\end{align}$$

The nonchiral seed is invariant under $\tau\mapsto\tau+1$, even for noninteger $k$: the left and right vacuum phases cancel. Thus the left-coset quotient neither omits nor duplicates fillings. A modular change of the boundary marking permutes these cosets.

To analyze convergence, first separate a common oscillator denominator using the Dedekind eta function:

$$\begin{align}
\eta(\tau)=q^{1/24}\prod_{n=1}^{\infty}(1-q^n), \qquad Z_{0,1}= \frac{|q|^{-2k+1/12}|1-q|^2}{|\eta(\tau)|^2}.
\end{align}$$

For $\gamma=\left(\begin{smallmatrix}a&b\\c&d\end{smallmatrix}\right)$,

$$\begin{align}
\operatorname{Im}(\gamma\tau)=\frac{y}{|c\tau+d|^2}, \qquad |\eta(\gamma\tau)|^2=|c\tau+d|\,|\eta(\tau)|^2.
\end{align}$$

Hence $F(\tau)=\sqrt y\,|\eta(\tau)|^2$ is modular invariant. Multiplying each summand by $F$ leaves only a transformed numerator. Put $\kappa_0=2k-1/12$. The untransformed numerator is

$$\begin{align}
FZ_{0,1} =\sqrt y\,e^{2\pi\kappa_0y}|1-q|^2 =\sqrt y\,\bigl[&e^{2\pi\kappa_0y} +e^{2\pi(\kappa_0-2)y}\\
&-e^{2\pi(\kappa_0-1)y+2\pi ix} -e^{2\pi(\kappa_0-1)y-2\pi ix}\bigr].
\end{align}$$

All four terms belong to the family of Poincaré series

$$\begin{align}
E(s;\kappa,\mu) =\sum_{\gamma\in\Gamma_\infty\backslash PSL(2,\mathbb Z)} \bigl[\operatorname{Im}(\gamma\tau)\bigr]^s \exp\!\left[2\pi\kappa\operatorname{Im}(\gamma\tau) +2\pi i\mu\operatorname{Re}(\gamma\tau)\right].
\end{align}$$

Here $\kappa\in\mathbb R$ and $\mu\in\mathbb Z$. The integer condition on $\mu$ makes the term independent of the upper-row ambiguity $\gamma\tau\mapsto\gamma\tau+n$. The four numerator terms have $(\kappa,\mu)=(\kappa_0,0),(\kappa_0-2,0),(\kappa_0-1,1),(\kappa_0-1,-1)$, with signs $+,+,-,-$.

The shifts are fixed by the factors $q,\bar q,q\bar q$. MW v1 (3.7), PDF p. 24, prints positive shifts instead, inconsistent with its seed (3.4) and definition (3.6). We retain the negative shifts derived above; no change to the vacuum seed is being made.

### What the Analytic Continuation Must Define

At fixed $\tau$, write $v_\gamma=\operatorname{Im}(\gamma\tau)$. For large $(c,d)$, $v_\gamma$ is of order $(c^2+d^2)^{-1}$. The exponential in $E$ is bounded in magnitude in this region, so absolute convergence follows for $\operatorname{Re}s>1$. The required value $s=1/2$ has a large-label absolute magnitude of order $(c^2+d^2)^{-1/2}$ and is outside that domain.

The four-term combination also diverges before regularization; this does not follow merely from divergence of its separate terms. To see it directly, restrict the original positive filling sum to $d=2$ and odd $c>0$. Take $a=(c+1)/2$, $b=1$, so that $ad-bc=1$. Then $\gamma\tau\to1/2$, and

$$\begin{align}
FZ_{c,2} =\sqrt{v_\gamma}\,e^{2\pi\kappa_0v_\gamma}
|1-e^{2\pi i\gamma\tau}|^2 \sim\frac{4\sqrt y}{c|\tau|}.
\end{align}$$

This positive subseries diverges harmonically. A prescription for the sum, rather than a rearrangement of its terms, is therefore necessary.

We use the prescription of analytically continuing $E(s;\kappa,\mu)$ from $\operatorname{Re}s>1$ to $s=1/2$. This specifies the continuation of an already fixed family, rather than the freedom to add arbitrary finite terms. There is also a convergent differential equation that the answer must satisfy. With

$$\begin{align}
\mathscr D=-y^2(\partial_x^2+\partial_y^2), \qquad g_s=y^s e^{2\pi\kappa y+2\pi i\mu x},
\end{align}$$

direct differentiation gives

$$\begin{align}
\bigl(\mathscr D+s(s-1)\bigr)g_s =\left[-4\pi s\kappa y+4\pi^2(\mu^2-\kappa^2)y^2\right]g_s.
\end{align}$$

The operator is invariant under hyperbolic isometries, including the modular transformations. Acting on each image and setting $s=1/2$ therefore gives

$$\begin{align}
\left(\mathscr D-\frac14\right)E(\tfrac12;\kappa,\mu) =\sum_\gamma \left[-2\pi\kappa v_\gamma +4\pi^2(\mu^2-\kappa^2)v_\gamma^2\right] v_\gamma^{1/2} e^{2\pi\kappa v_\gamma+2\pi i\mu\operatorname{Re}(\gamma\tau)}.
\end{align}$$

The right-hand side is absolutely convergent: its leading large-label bound is now $(c^2+d^2)^{-3/2}$, summable on the two-dimensional lattice. More generally the differentiated series converges for $\operatorname{Re}s>0$. The identity first holds for $\operatorname{Re}s>1$ and continues wherever $E(s)$ does.

Thus analytic continuation will produce a solution of this convergent equation. The equation alone does not select a unique solution without asymptotic information; we retain the continuation from the original convergent series as the prescription. The following Fourier construction implements it [MW §3.1, (3.11)–(3.15), PDF pp. 25–27].

## Evaluating the Continuation

### From Filling Labels to Fourier Coefficients

Separate the identity image $(c,d)=(0,1)$ from $E$. For every other image, decompose the lower row as

$$\begin{align}
d=d'+nc,\qquad c>0,\qquad d'\in(\mathbb Z/c\mathbb Z)^*,\qquad n\in\mathbb Z.
\end{align}$$

The determinant condition gives $ad'\equiv1\pmod c$, and it also gives the useful identity

$$\begin{align}
\gamma\tau=\frac ac-\frac1{c(c\tau+d)}.
\end{align}$$

Writing $t=n+x+d'/c$, a nonidentity summand is consequently

$$\begin{align}
\frac{y^s}{c^{2s}(t^2+y^2)^s}
\exp\!\left[\frac{2\pi i\mu a}{c} +\frac{2\pi(\kappa y-i\mu t)}{c^2(t^2+y^2)}\right].
\end{align}$$

The sum over $n$ is now a periodization of a function on the real line. Use the Fourier convention

$$\begin{align}
\widehat f(\nu)=\int_{\mathbb R}e^{2\pi i\nu t}f(t)\,dt, \qquad \sum_{n\in\mathbb Z}f(n+\alpha) =\sum_{\nu\in\mathbb Z}e^{-2\pi i\nu\alpha}\widehat f(\nu).
\end{align}$$

For $\alpha=x+d'/c$, Poisson summation supplies the phase $e^{-2\pi i\nu x}e^{-2\pi i\nu d'/c}$. Combining the latter with $e^{2\pi i\mu a/c}$ yields the finite arithmetic sum

$$\begin{align}
S(A,B;c) =\sum_{d'\in(\mathbb Z/c\mathbb Z)^*} \exp\!\left[\frac{2\pi i}{c}\left(Ad'+B(d')^{-1}\right)\right], \qquad (A,B)=(-\nu,\mu).
\end{align}$$

This is the Kloosterman sum; the inverse residue occurs because $a\equiv(d')^{-1}\pmod c$. At $c=1$ its value is one.

Expand the remaining exponential before performing its integral:

$$\begin{align}
\exp\!\left[\frac{2\pi(\kappa y-i\mu t)}{c^2(t^2+y^2)}\right] =\sum_{r=0}^{\infty}\frac{(2\pi)^r}{r!c^{2r}} \frac{(\kappa y-i\mu t)^r}{(t^2+y^2)^r}.
\end{align}$$

Set $t=yT$ in each term. The measure, numerator and denominator leave $y^{1-r-s}$. Define the integral and the Dirichlet series that remain:

$$\begin{align}
I_{r,\nu}(s;\kappa,\mu) &=\frac{(2\pi)^r}{r!} \int_{-\infty}^{\infty} \frac{e^{2\pi i\nu yT}(\kappa-i\mu T)^r} {(1+T^2)^{r+s}}\,dT,\\
\mathcal K_{A,B}(w) &=\sum_{c=1}^{\infty}\frac{S(A,B;c)}{c^{2w}}.
\end{align}$$

We have obtained, initially for $\operatorname{Re}s>1$,

$$\begin{align}
E(s;\kappa,\mu) &=y^s e^{2\pi\kappa y+2\pi i\mu x} +\sum_{\nu\in\mathbb Z}e^{-2\pi i\nu x}\, \mathcal E_\nu(s;\kappa,\mu),\\
\mathcal E_\nu(s;\kappa,\mu) &=\sum_{r=0}^{\infty}y^{1-r-s} I_{r,\nu}(s;\kappa,\mu) \mathcal K_{-\nu,\mu}(r+s).
\end{align}$$

This is the Fourier expansion of MW (3.16)–(3.24), PDF pp. 28–29, with the identity image kept separately and the Fourier sign fixed above.

Only the $r=0$ term needs a new continuation at $s=1/2$. For $r\ge1$, the integrand behaves at worst as $|T|^{-r-1}$, and $|S(A,B;c)|\le c$ makes the arithmetic series at $w=r+1/2$ absolutely convergent. The sum over $r$ is also controlled near this point. Set $A=\max(|\kappa|,|\mu|)$ and $\sigma=\operatorname{Re}s>0$. Since $|\kappa-i\mu T|\le A\sqrt{1+T^2}$,

$$\begin{align}
|I_{r,\nu}(s)| &\le\frac{(2\pi A)^r}{r!} \int_{\mathbb R}(1+T^2)^{-\sigma-r/2}\,dT \le C_\sigma\frac{(2\pi A)^r}{r!},\\
|\mathcal K_{-\nu,\mu}(s+r)| &\le\zeta(2\sigma+2r-1)\le\zeta(2\sigma+1),\qquad r\ge1.
\end{align}$$

Here $C_\sigma=\int_{\mathbb R}(1+T^2)^{-\sigma-1/2}\,dT$ is finite for $\sigma>0$ and bounds all the displayed integrals. At fixed $y>0$, the remaining factors $y^{-r}$ therefore give an exponential-series bound. The $r\ge1$ part continues normally through $s=1/2$; it can be evaluated by direct substitution. We now continue the exceptional $r=0$ term.

### The Zero Fourier Mode

For $\nu=0$, expand the polynomial in $T$; odd powers integrate to zero. The even-power beta integral gives, for $r\ge1$,

$$\begin{align}
I_{r,0}(s;\kappa,\mu) =\frac{(2\pi)^r}{r!}
\sum_{j=0}^{\lfloor r/2\rfloor} \binom r{2j}\kappa^{r-2j}(-1)^j\mu^{2j} \frac{\Gamma(j+\tfrac12)\Gamma(r+s-j-\tfrac12)}{\Gamma(r+s)}.
\end{align}$$

Indeed, the integral of $T^{2j}(1+T^2)^{-r-s}$ is $B(j+1/2,r+s-j-1/2)$. At $s=1/2$ all gamma factors in this finite sum are regular. The exceptional integral is

$$\begin{align}
I_{0,0}(s) =\int_{\mathbb R}(1+T^2)^{-s}\,dT =\sqrt\pi\,\frac{\Gamma(s-1/2)}{\Gamma(s)},
\end{align}$$

which has a pole at $s=1/2$.

For the seed labels required here, the arithmetic factors are elementary:

$$\begin{align}
S(0,0;c)=\varphi(c),\qquad S(0,\pm1;c)=\mu_{\mathrm M}(c),\\
\mathcal K_{0,0}(w)=\frac{\zeta(2w-1)}{\zeta(2w)}, \qquad \mathcal K_{0,\pm1}(w)=\frac1{\zeta(2w)}.
\end{align}$$

The function $\varphi$ counts invertible residues. In the second finite sum, inversion permutes those residues, so their primitive-root sum is the Möbius function $\mu_{\mathrm M}$, distinguished from the seed label $\mu$. The Dirichlet identities follow by multiplying by $\zeta(2w)$ and using $\sum_{d\mid n}\varphi(d)=n$ and $\sum_{d\mid n}\mu_{\mathrm M}(d)=\delta_{n,1}$.

Continue the product of the integral and the arithmetic factor, not the integral alone. For $s=1/2+\epsilon$,

$$\begin{align}
\Gamma(\epsilon)=\frac1\epsilon+O(1),\qquad \zeta(1+2\epsilon)=\frac1{2\epsilon}+O(1),\qquad \zeta(2\epsilon)=-\frac12+O(\epsilon).
\end{align}$$

It follows that the complete $r=0$ contribution has the finite limits

$$\begin{align}
\lim_{s\to1/2}y^{1-s}I_{0,0}(s)\mathcal K_{0,0}(s) &=-\sqrt y,\\
\lim_{s\to1/2}y^{1-s}I_{0,0}(s)\mathcal K_{0,\pm1}(s) &=2\sqrt y.
\end{align}$$

The pole of the integral is canceled by the zero of the continued arithmetic factor. These limits, together with the finite beta sums for $r\ge1$, specify the entire zero Fourier coefficient.

For example, the first regular term is obtained directly:

$$\begin{align}
I_{1,0}(\tfrac12;\kappa,\mu) =2\pi\kappa\int_{\mathbb R}(1+T^2)^{-3/2}\,dT =4\pi\kappa.
\end{align}$$

Using $\mathcal K_{0,0}(3/2)=\zeta(2)/\zeta(3)$ and $\mathcal K_{0,\pm1}(3/2)=1/\zeta(3)$ yields

$$\begin{align}
\mathcal E_0(\tfrac12;\kappa,0) &=-\sqrt y+\frac{2\pi^3\kappa}{3\zeta(3)}y^{-1/2} +O(y^{-3/2}),\\
\mathcal E_0(\tfrac12;\kappa,\pm1) &=2\sqrt y+\frac{4\pi\kappa}{\zeta(3)}y^{-1/2} +O(y^{-3/2}).
\end{align}$$

This explicitly performs the singular part of the continuation [MW §3.3, (3.26)–(3.44), PDF pp. 30–33].

### The Nonzero Fourier Modes

For $\nu\ne0$, the oscillatory integral has a regular Bessel representation. Introduce the Fourier kernel with $p=r+s$ and $\omega=2\pi\nu y$. Initially for $\operatorname{Re}p>1/2$,

$$\begin{align}
\mathcal B_p(\omega) &=\int_{\mathbb R}\frac{e^{i\omega T}}{(1+T^2)^p}\,dT\\
&=\frac{\sqrt\pi}{\Gamma(p)} \int_0^\infty a^{p-3/2}e^{-a-\omega^2/(4a)}\,da\\
&=\frac{2\sqrt\pi}{\Gamma(p)} \left(\frac{|\omega|}{2}\right)^{p-1/2} K_{p-1/2}(|\omega|).
\end{align}$$

The middle equality follows by writing $(1+T^2)^{-p}$ as a gamma integral and doing the Gaussian $T$ integral; the last is the integral representation of the modified Bessel function $K$. For $\omega\ne0$, the Bessel expression continues regularly to $p=1/2$.

Multiplication by $\kappa-i\mu T$ inside the Fourier integral is the operation $\kappa-\mu\partial_\omega$ on this kernel. Hence every needed integral is given by the finite derivative

$$\begin{align}
I_{r,\nu}(s;\kappa,\mu) =\left. \frac{(2\pi)^r}{r!} (\kappa-\mu\partial_\omega)^r\mathcal B_{r+s}(\omega) \right|_{\omega=2\pi\nu y}.
\end{align}$$

In particular, put $b=2\pi|\nu|y$ and use $\partial_b(b^\alpha K_\alpha(b))=-b^\alpha K_{\alpha-1}(b)$. The first two integrals are

$$\begin{align}
I_{0,\nu}(\tfrac12)&=2K_0(b),\\
I_{1,\nu}(\tfrac12;\kappa,\mu) &=4\pi b\left[\kappa K_1(b)+\mu\,\operatorname{sgn}(\nu)K_0(b)\right].
\end{align}$$

The $r=0$ integral is finite, unlike the zero-mode $I_{0,0}$. Higher orders are fixed by the same differentiation identity; when $\mu=0$, the formula retains the factor $\kappa^r$ required by the defining integral. Our normalization follows that integral, MW (3.24), rather than the printed nonzero-mode formulas (3.48) and (3.51), which omit this factor.

The arithmetic factor can also be evaluated explicitly for $\mu=0$. For $N=|\nu|>0$, the Ramanujan-sum identity gives

$$\begin{align}
S(-\nu,0;c) &=\sum_{d\mid\gcd(c,N)}d\,\mu_{\mathrm M}(c/d),\\
\mathcal K_{-\nu,0}(w) &=\frac{\sigma_{1-2w}(N)}{\zeta(2w)}, \qquad \sigma_\alpha(N)=\sum_{d\mid N}d^\alpha.
\end{align}$$

The second identity follows by putting $c=db$ in the first and summing the Möbius factor over $b$. At $w=1/2$ the denominator has a pole while the divisor sum is finite. Therefore the $r=0$ contribution vanishes for these nonzero Fourier modes. All $r\ge1$ terms follow from the Bessel kernel and the convergent Dirichlet series above.

For $\mu=\pm1$ and $\nu\ne0$, the remaining exceptional factor is $\mathcal K_{-\nu,\mu}(s)$ at $s=1/2$. It has no elementary zeta quotient. Here we use the arithmetic input invoked in MW §3.4, PDF pp. 34–35: the Kloosterman–Selberg Dirichlet series has a spectral meromorphic continuation, and is regular at $s=1/2$ for these nonzero indices on $PSL(2,\mathbb Z)$. In the cited spectral description, a possible cusp-form pole at this point would require a Laplace eigenvalue $1/4$, which this modular surface does not have. We use both this local regularity and the Fourier reconstruction of the continued $r=0$ automorphic series as spectral-theory inputs; they do not follow just from the elementary bound on individual Kloosterman sums. The higher-$r$ part is analytic by the estimates in Section 5.1.

Thus no pole remains: its finite continued value multiplies $I_{0,\nu}(1/2)$. For $r\ge1$ the arithmetic sums already converge, so the displayed finite-derivative formula and the defining sums determine all nonzero Fourier coefficients. Their Bessel factors have exponential decay for large $y$, whereas the zero mode supplies the inverse powers computed in Section 5.2.

### Collecting the Four Seeds

Write $\mathcal C_\nu(\kappa,\mu;y)$ for the continued coefficient $\mathcal E_\nu(1/2;\kappa,\mu)$. Explicitly,

$$\begin{align}
\mathcal C_\nu(\kappa,\mu;y) ={}&\lim_{s\to1/2} \left[y^{1-s}I_{0,\nu}(s)\mathcal K_{-\nu,\mu}(s)\right]\\
&+\sum_{r=1}^{\infty}y^{1/2-r} I_{r,\nu}(\tfrac12;\kappa,\mu) \mathcal K_{-\nu,\mu}(r+\tfrac12).
\end{align}$$

The first line is $-\sqrt y$ for $(\nu,\mu)=(0,0)$, $2\sqrt y$ for $(0,\pm1)$, zero for $\nu\ne0$, $\mu=0$, and $2\sqrt y\,K_0(2\pi|\nu|y)\mathcal K_{-\nu,\mu}(1/2)$ for $\nu\ne0$, $\mu=\pm1$. The other terms are the convergent integrals and sums already evaluated above.

The full continued seed, including its identity image, is now

$$\begin{align}
E(\tfrac12;\kappa,\mu) =\sqrt y\,e^{2\pi\kappa y+2\pi i\mu x} +\sum_{\nu\in\mathbb Z}e^{-2\pi i\nu x} \mathcal C_\nu(\kappa,\mu;y).
\end{align}$$

Insert these functions into the four-term numerator obtained in Section 4.1 and divide by $F$. This gives

$$\begin{align}
\boxed{\begin{aligned}
Z_{\mathrm{geom}}(\tau,\bar\tau) =\frac1{\sqrt y\,|\eta(\tau)|^2}\Bigl[ &E(\tfrac12;\kappa_0,0) +E(\tfrac12;\kappa_0-2,0)\\
-&E(\tfrac12;\kappa_0-1,1) -E(\tfrac12;\kappa_0-1,-1)\Bigr], \qquad \kappa_0=2k-\frac1{12}.
\end{aligned}}
\end{align}$$

The identity images recombine into $Z_{0,1}$; the remaining terms are the continued Fourier coefficients just constructed. The function satisfies the convergent differentiated equation of Section 4.2. Modular invariance, valid by permutation of the cosets for $\operatorname{Re}s>1$, is preserved by continuation. This is the regularized sum over the specified smooth real fillings, with their full perturbative weights, rather than a definition of additional nonperturbative sectors.

---
