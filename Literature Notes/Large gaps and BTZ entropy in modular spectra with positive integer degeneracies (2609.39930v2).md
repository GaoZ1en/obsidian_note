---
paper id: 2609.39930v2
title: Large gaps and BTZ entropy in modular spectra with positive integer degeneracies
authors: [Chi-Ming Chang, Reiko Liu, Wen-Jie Ma]
publication date: 2026-09-30T15:14
abstract: "We construct modular-invariant torus partition functions with a unique vacuum, discrete energy levels and positive integer degeneracies by recursively repairing the Maloney--Witten--Keller modular completion of the Virasoro vacuum. Exact modular repairs and finite moment matching discretize successive spectral bands while preserving earlier levels and controlling convergence. For $c_L=c_R=c$ and $a=(c-1)/12$, the construction realizes primary dimension gaps $Δ_1=(1+κ)a$ for sufficiently small fixed $κ>0$, and $Δ_1=a+δ$ for any fixed $δ\\ge0$, at every sufficiently large real $c$. Every nonvacuum primary satisfies $h,\\bar h\\ge(c-1)/24$. In the fixed-$δ$ family, spectra can be chosen whose densities of states, smoothed with a fixed nonnegative normalized smooth kernel of compact support, match the correspondingly smoothed prediction of a single perturbative BTZ saddle through every fixed finite order in $1/c$. The count includes all spins and Virasoro descendants. Its logarithm reproduces the Bekenstein--Hawking entropy and its corrections at every fixed positive $E/c$, where $E=Δ-c/12$. This includes $0<E<c/12$, where thermal AdS dominates the canonical ensemble."
comments: "47 pages + appendices"
pdf: "[[Attachments/Assets/Large gaps and BTZ entropy in modular spectra with positive integer degeneracies (2609.39930v2).pdf]]"
url: https://arxiv.org/abs/2609.39930v2
tags: []
---

# Constructing Large-Gap Modular Spectra with Integer Multiplicities and Computing BTZ State Counts

Summing the Virasoro vacuum over the modular group gives a modular-invariant torus partition function, but its nonvacuum spectrum is generally continuous and includes negative weights. We seek to preserve modular invariance while replacing this spectrum with a discrete one of positive integer multiplicities, with the first nonvacuum primary at a prescribed energy.

Simply replacing the continuous density with discrete energy levels breaks modular invariance. Summing the new levels over the modular group in turn introduces additional spectral contributions into the low-energy region already treated. We therefore begin with a local problem: how can a prescribed spectral change be realized within one energy band while confining all other changes to higher energies? Once such a modular repair is available, finite moment matching can be used to choose discrete levels with integer multiplicities whose high-energy response is sufficiently small. Applying this operation band by band produces a discrete spectrum; the moments preserved along the way then determine its smoothed state density.

We use the normalization of [Chang–Liu–Ma, arXiv:2609.39930v2](https://arxiv.org/abs/2609.39930v2). All equation and proposition numbers refer to the [v2 PDF](</Users/koishi/Documents/Note/Attachments/Assets/Large gaps and BTZ entropy in modular spectra with positive integer degeneracies (2609.39930v2).pdf>), whose PDF page numbers agree with its printed page numbers.

## 1. The Spectrum to Be Constructed

### 1. From Virasoro Characters to Primary Measures

Take both the left and right central charges to be $c>1$. A primary has weights $(h,\bar h)$, dimension $\Delta=h+\bar h$, and spin $J=h-\bar h$. Write $\tau=x+iy$ and $q=e^{2\pi i\tau}$, and set

$$\begin{align}
a=\frac{c-1}{12},\qquad e:=\widehat E=\Delta-a,\qquad E=\Delta-\frac c{12}=e-\frac1{12},\qquad J=h-\bar h.
\end{align}$$

The variable $e$, denoted by $\widehat E$ in the paper, is the energy variable that arises naturally after removing Virasoro descendants; $E$ is the physical energy on the cylinder. We restrict all nonvacuum primaries to the uncensored region:

$$\begin{align}
e\ge |J|\quad\Longleftrightarrow\quad h,\bar h\ge\frac a2.
\end{align}$$

The two conditions are equivalent because $h=(e+a+J)/2$ and $\bar h=(e+a-J)/2$. In particular, $(e,J)=(0,0)$ is still the threshold for a nonvacuum primary, with physical energy $E=-1/12$; the vacuum is retained separately.

For each spin, collect the primary energies and their multiplicities into a measure $\mu_J$. Removing the common eta factor from the characters gives the reduced partition function

$$\begin{align}
F(\tau)=\sqrt y\,|\eta(\tau)|^2 Z(\tau) =F_{\rm vac}(\tau)+\sqrt y\sum_{J\in\mathbb Z}e^{2\pi ixJ} \int_{[|J|,\infty)}e^{-2\pi ye}\,d\mu_J(e),
\end{align}$$

where $\tau=x+iy$ and $F_{\rm vac}=\sqrt y\,e^{2\pi ay}|1-q|^2$. The corresponding Virasoro characters are

$$\begin{align}
\chi_0=\frac{q^{-a/2}(1-q)}{\eta},\qquad \chi_h=\frac{q^{h-a/2}}{\eta}\quad(h>0).
\end{align}$$

Each nonvacuum character pair thus contributes only $\sqrt y\,e^{-2\pi ye+2\pi ixJ}$. Since $\sqrt y|\eta|^2$ is itself modular invariant, it suffices to construct a modular-invariant $F$; dividing by this factor at the end recovers $Z$.

The desired nonvacuum spectrum is an atomic measure with positive integer weights,

$$\begin{align}
\mu_J=\sum_{\alpha:J_\alpha=J}d_\alpha\delta_{e_\alpha},\qquad d_\alpha\in\mathbb Z_{>0},\quad e_\alpha\ge|J_\alpha|,
\end{align}$$

such that every finite energy band contains finitely many levels counted with multiplicity, and, for every $\beta>0$,

$$\begin{align}
\sum_\alpha d_\alpha e^{-\beta e_\alpha}<\infty.
\end{align}$$

We further require a unique vacuum and $Z(-1/\tau)=Z(\tau)=Z(\tau+1)$. Integer spin ensures $T$ invariance, while $S$ invariance relates low- and high-energy data. Denote the class of spectra satisfying these conditions by $\mathcal U_c$. This construction concerns torus spectral data; the OPE data and other ingredients of a full CFT are not part of the definition. (Definition 2.1, pp. 7–9.)

### 2. Gaps and the Smoothed State Count

The construction below yields two types of gaps (Theorem 2.2):

- There is a sufficiently small but nonzero range $0<\kappa<\kappa_0$ such that, for every fixed $\kappa$ and every sufficiently large **real** $a$, there exists $Z\in\mathcal U_{12a+1}$ whose smallest nonvacuum primary dimension is **exactly** $(1+\kappa)a$.
- For every fixed $\delta\ge0$ and every sufficiently large real $a$, there exists $Z\in\mathcal U_{12a+1}$ whose smallest nonvacuum primary dimension is **exactly** $a+\delta$.

To attain the gap exactly, we first clear a low-energy band $0\le e\le B$, insert the prescribed first level, and leave it unchanged thereafter. This first level may contain finitely many spins satisfying $|J|\le e_*$, with a positive integer total multiplicity bounded by a fixed constant $M_*$. For a fixed offset, take $e_*=\delta<B$; for a proportional gap, take $e_*=B=\kappa a$. The latter case requires control of how the cost of the modular repair grows with $B$, so the parameter estimates treat the two cases separately.

After constructing the spectrum, we will also compute the smoothed state count for families with fixed $B$. Fix $\phi\in C_c^\infty(\mathbb R)$ with $\phi\ge0$ and $\int\phi=1$, and define

$$\begin{align}
N_\phi(E)=\sum_s d_s\phi(E_s-E)
\end{align}$$

where $s$ runs over all states, including all spins and Virasoro descendants. The smoothing kernel has fixed width, so it measures the number of states in a finite energy window. We will show that, at $E=\lambda c$ with $\lambda\in K\Subset(0,\infty)$, $N_\phi$ agrees with the identically smoothed single perturbative BTZ contribution up to a relative error $O_P(c^{-P})$ for every fixed order $P$. One and the same family of spectra satisfies all these finite-order estimates. (Proposition 2.3, Lemma 6.1, pp. 10, 37–41.)

## 2. Realizing an Arbitrary Spectral Change Within an Energy Band

Fix $B>0$, and let $\nu$ be a finite signed spectral change to be realized within $0<e\le B$. We seek a modular-invariant function $\mathcal D_B[\nu]$ whose spectrum in this band is exactly $\nu$, with no change at the origin and with all remaining response supported at $e>B$. The measure $\nu$ may have a negative part, since replacing an existing spectrum requires subtracting the old measure first.

### 1. Additional Spectral Contributions from the Modular Sum

For a positive-energy uncensored seed $(e',J')$, first define, for $\operatorname{Re}s>1$,

$$\begin{align}
P_{e',J'}(\tau;s)=\sum_{\gamma\in\Gamma_\infty\backslash PSL_2(\mathbb Z)} (\operatorname{Im}\gamma\tau)^s \exp[-2\pi e'\operatorname{Im}\gamma\tau+2\pi iJ'\operatorname{Re}\gamma\tau],
\end{align}$$

where $\Gamma_\infty$ is the subgroup generated by translations. Taking the quotient avoids counting the same integer-spin term repeatedly. In its domain of convergence, the sum is automatically modular invariant. We use the canonical meromorphic continuation of Keller–Maloney and evaluate it at $s=1/2$ to obtain $P_{e',J'}$. This continuation theorem and its Fourier–Laplace expansion are taken as analytic inputs.

Define

$$\begin{align}
d\omega_J(e)=\frac{de}{\sqrt{e^2-J^2}}\quad(e>|J|),
\end{align}$$

so that, for a finite signed seed $\sigma$ supported in a bounded uncensored energy band and having no atom at the origin, the completed spectrum is

$$\begin{align}
\sigma+(Q\sigma)d\omega+t(\sigma)\delta_{(0,0)},\qquad t(\sigma)=\sum_{J'}c_{J'}\int d\sigma_{J'},
\end{align}$$

where $c_0=-1$ and $c_{J'}=2d(|J'|)$ ($J'\ne0$, with $d(n)$ the number of positive divisors of $n$). The first term is the seed we inserted; the second is the continuous spectrum produced by the other modular images; the third is an atom at $(e,J)=(0,0)$. Thus choosing $\sigma=\nu$ directly does not suffice: the continuous response $Q\nu$ generally returns to the low-energy band, and the weight at the origin changes as well.

The continuous response is computed by the integral operator $(Q\sigma)_J(e)=\sum_{J'}\int Q_{J,J'}(e,e')d\sigma_{J'}(e')$, where

$$\begin{aligned}
Q_{J,J'}(e,e')={}&2\mathbf1_{JJ'\ne0}\,\mathcal Z_{J,J'}(1/2)\\
&+2\sum_{m\ge1}\frac{S(J,J';m)}m \left[ \cos\!\left(\frac{2\pi}{m}\sqrt{(e'+J')(e+J)}\right)
\cos\!\left(\frac{2\pi}{m}\sqrt{(e'-J')(e-J)}\right)-1 \right],
\end{aligned}$$

Here $S(J,J';m)=\sum_{d\ ({\rm mod}\ m),\ (d,m)=1}\exp[2\pi i(Jd+J'd^{-1})/m]$ is the Kloosterman sum, and $\mathcal Z_{J,J'}(s)=\sum_m S(J,J';m)m^{-2s}$ at $s=1/2$ is again understood through the continuation above. The term $-1$ makes the bracket $O(m^{-2})$ on compact complex-energy regions, allowing direct control of the remaining sum over $m$. (Eqs. (3.4)–(3.8), pp. 16–17; Appendix A.1.)

The joint estimate needed below is

$$\begin{align}
|Q_{J,J'}(e,e')|\le C\log(2+B)\sqrt{ee'},\qquad 0<e'\le B,\quad |J'|\le e',\quad |J|\le e.
\end{align}$$

This bound holds simultaneously for all input and output spins, which will allow us to sum over spin. Its arithmetic part follows from the following estimates. Appendix A.2 first uses the bounded difference between $P_{1,1}$ and the modular theta function to obtain $|\mathcal Z_{J,1}(1/2)|\le C\sqrt{|J|}$. The Selberg identity

$$\begin{align}
\mathcal Z_{J,J'}(s)=\sum_{\ell\mid\gcd(|J|,|J'|)} \ell^{1-2s}\mathcal Z_{JJ'/\ell^2,1}(s)
\end{align}$$

then gives $|\mathcal Z_{J,J'}(1/2)|\le C\sqrt{|JJ'|}\,\sigma_{-1}(\gcd(|J|,|J'|))$, after which one uses $\sigma_{-1}(n)\le1+\log n$. Combining this with the estimate for the cosine terms yields the kernel bound above.

### 2. Making the Low-Energy Feedback Equation Invertible

We may add a constant to a modular-invariant function. We use this freedom to modify $Q$ so that the sum of the direct term and the feedback has a positive quadratic form, and then solve the low-energy-band equation. Specifically, set

$$\begin{align}
g_J(e)=\delta_{J0}\sqrt e,\quad m_g(\sigma)=\int\sqrt{e'}\,d\sigma_0(e'),\quad R=Q+12g\otimes g,
\end{align}$$

and define the modified completion

$$\begin{align}
\mathcal C[\sigma]=\sum_{J'}\int P_{e',J'}\,d\sigma_{J'}+\frac{12}{\sqrt2}m_g(\sigma).
\end{align}$$

In the spectral representation, a constant corresponds to a continuous density in the $J=0$ spin sector, because

$$\begin{align}
\sqrt y\int_0^\infty \varepsilon^{-1/2}e^{-2\pi y\varepsilon}\,d\varepsilon=\frac1{\sqrt2}.
\end{align}$$

Adding $12m_g(\sigma)/\sqrt2$ therefore adds exactly $12g\,m_g(\sigma)$ to the continuous response, giving

$$\begin{align}
\mu_{\mathcal C[\sigma]}=\sigma+(R\sigma)d\omega+t(\sigma)\delta_{(0,0)}.
\end{align}$$

The coefficient of the atom at the origin remains $t(\sigma)$; we will treat it separately below.

First consider a density $f\,d\omega$ in the low-energy band. After completion, its density in that band is $f+R_Bf$, so the operator to be inverted is

$$\begin{align}
H_B=\bigoplus_{|J|<B}L^2((|J|,B),d\omega_J),\qquad R_Bf=(R[f\,d\omega])_{\le B},\quad P_B=I+R_B.
\end{align}$$

The symmetry of the kernel and the bound above show that $R_B$ is bounded and self-adjoint: its Hilbert–Schmidt norm is controlled by $\int e\,d\omega_J(e)$ over finitely many spin sectors. What remains is to establish a strictly positive lower bound for $P_B$. For $B\ge2$,

$$\begin{align}
\langle f,P_Bf\rangle\ge e^{-CB}\|f\|_{H_B}^2, \qquad\|P_B^{-1}\|\le e^{CB}.
\end{align}$$

The proof has two steps. A positive kernel on the modular surface first gives $P_B\ge0$; analyticity of the response outside the band then strengthens nonnegativity to the quantitative lower bound above. (Proposition 3.1; Appendix B.1–B.2, pp. 54–59.)

**A positive kernel on the modular surface and the energy-space pairing.** On the modular surface, take

$$\begin{align}
u(z,w)=\frac{|z-w|^2}{4\operatorname{Im}z\operatorname{Im}w},\qquad A_s(z,w)=\sum_{\gamma\in PSL_2(\mathbb Z)}\frac14[1+u(z,\gamma w)]^{-s}.
\end{align}$$

Define the sum first for $\operatorname{Re}s>1$, and then use the same canonical meromorphic continuation. The pre-trace theorem decomposes this kernel into eigenmodes of the hyperbolic Laplacian. For an eigenvalue $1/4+r^2$, the corresponding weight is the Selberg transform

$$\begin{align}
h_s(r)=\frac{\pi\Gamma(s-1/2+ir)\Gamma(s-1/2-ir)}{\Gamma(s)^2}.
\end{align}$$

At $s=1/2$, the weight for real $r\ne0$ is $\pi/[r\sinh(\pi r)]>0$. The nonconstant discrete eigenvalues for the modular group are strictly greater than $1/4$ (Appendix B.1 proves this spectral fact). In the continuous spectrum, the singularity at $r=0$ is canceled by the two factors of the nonholomorphic Eisenstein series $\operatorname{Eis}(z,1/2+ir)=O(r)$. The remaining constant mode contributes $-6$, so

$$\begin{align}
\mathscr K(z,w)=A_{1/2}(z,w)+6
\end{align}$$

is a positive kernel: its pairing with any finite combination of spatial test functions is a sum of nonnegative spectral weights times squared absolute values of mode coefficients. (Eqs. (B.3)–(B.5), pp. 54–55.)

To transfer this positivity to energy space, choose finitely many spins and heights $y_\ell>0$, and define

$$\begin{align}
p_J(e)=\sum_\ell\alpha_{J\ell}e^{-2\pi y_\ell e},\qquad p_0(0)=\sum_\ell\alpha_{0\ell}=0.
\end{align}$$

Take the horizontal Fourier transform of $\mathscr K$ and divide out the two $\sqrt y$ factors:

$$\begin{align}
\mathscr B_{JJ'}(y,y')=\frac1{\sqrt{yy'}} \int_0^1\!\int_0^1e^{-2\pi iJx}e^{2\pi iJ'x'} \mathscr K(x+iy,x'+iy')\,dx\,dx'.
\end{align}$$

Positivity of the kernel gives $\sum\bar\alpha_{J\ell}\alpha_{J'm}\mathscr B_{JJ'}(y_\ell,y_m)\ge0$. On the other hand, the Fourier–Laplace formulas (B.6)–(B.7) for the spatial kernel give the explicit map from the spatial representation to the energy representation:

$$\begin{align}
\frac1{\sqrt{y'}}\int_0^1e^{2\pi iJ'x'}A_{1/2}(z,x'+iy')\,dx' =\int_{|J'|}^\infty e^{-2\pi y'e'}P_{e',J'}(z)d\omega_{J'}(e') +\frac{\delta_{J'0}}2\partial_s\operatorname{Eis}(z,1/2).
\end{align}$$

We use this identity as part of the analytic continuation formulas above; its integral coefficient is exactly one at $s=1/2$. The additional zero-spin term is independent of the input height and vanishes because $\sum_m\alpha_{0m}=0$. Using the completed spectrum of a seed, the output Fourier coefficient is

$$\begin{align}
\frac1{\sqrt y}\int_0^1 e^{-2\pi iJx}P_{e',J'}(x+iy)\,dx =\delta_{JJ'}e^{-2\pi ye'} +\int_{|J|}^\infty e^{-2\pi ye}Q_{J,J'}(e,e')d\omega_J(e) +\delta_{J0}c_{J'}.
\end{align}$$

The final term vanishes because the output satisfies $p_0(0)=0$. The first two terms give, respectively, the squared norm of the direct seed and the double integral against $Q$. The spatial constant $6$ contributes

$$\begin{align}
6\left|\sum_\ell\frac{\alpha_{0\ell}}{\sqrt{y_\ell}}\right|^2 =12\left|\int_0^\infty\sqrt e\,p_0(e)d\omega_0(e)\right|^2,
\end{align}$$

since $\int_0^\infty e^{-2\pi ye}de/\sqrt e=1/\sqrt{2y}$. The full nonnegative pairing is therefore exactly

$$\begin{align}
\sum_J\int|p_J(e)|^2d\omega_J(e) +\sum_{J,J'}\iint\overline{p_J(e)}
R_{J,J'}(e,e')p_{J'}(e')\,d\omega_J(e)d\omega_{J'}(e')\ge0.
\end{align}$$

This proves the required positivity and fixes the coefficient in $R$ to be $12$. (Eqs. (B.6)–(B.9), pp. 55–56.)

These exponential sums are not yet arbitrary functions in the band. To extend the result, work on a fixed finite set of spins with the norm

$$\begin{align}
\|f\|_X=\|f\|_{\oplus_JL^2(d\omega_J)} +\sum_J\int\sqrt e\,|f_J(e)|d\omega_J(e).
\end{align}$$

For a fixed finite spin set $S$, the kernel estimate reads $|R_{J,J'}(e,e')|\le C_S\sqrt{ee'}$, so the quadratic form is continuous in this norm. For a smooth compactly supported function in the zero-spin sector, first divide by $e^{-e}(1-e^{-e})$, then regard the quotient as a function of $e^{-e}$ and approximate it by polynomials. Multiplying back gives exponential sums satisfying $p_0(0)=0$. In nonzero-spin sectors, dividing by $e^{-e}$ suffices, since the measure is integrable at the edge. First pass to the limit in the $X$ norm, then use boundedness of $P_B$ to extend from smooth functions to $H_B$. This gives $\langle f,P_Bf\rangle\ge0$. (Eq. (B.10), pp. 56–57.)

**From nonnegativity to a strictly positive lower bound.** Let $\|f\|_{H_B}=1$ and $\delta_f=\langle f,P_Bf\rangle$. If $\delta_f$ is small, positivity forces the completed function to be small on a larger band as well. Specifically, extend $f$ by zero to $H_{3B}$. Using $P_{3B}\ge0$ and $\|P_{3B}\|\le CB^3$ gives

$$\begin{align}
\|P_{3B}f\|^2\le CB^3\delta_f.
\end{align}$$

On $2B<e<3B$, the direct term $f$ vanishes, so this bounds the analytic response outside the band. To propagate this control back to the low-energy band, define, for each $|J|<B$,

$$\begin{align}
F_J(z)=(Q[f\,d\omega])_J(Bz^2) +12\delta_{J0}\sqrt B\,z\langle g,f\rangle, \qquad H_0(z)=F_0(z)/z,\quad H_J(z)=F_J(z)\ (J\ne0).
\end{align}$$

The power series of the cosine kernel shows that $F_J$ is entire. Since $F_0(0)=0$, the singularity of $H_0$ at the origin is removable. The complex-growth bound for the kernel gives $|H_J(z)|\le M=e^{CB}$ for $|z|<1000$. On the real interval $[\sqrt2,\sqrt3]$, the larger-band estimate just obtained gives

$$\begin{align}
\sum_{|J|<B}\int_{\sqrt2}^{\sqrt3}|H_J(t)|^2dt\le CB^3\delta_f.
\end{align}$$

The analytic propagation lemma used here states that, if an analytic function $H$ is bounded by $M$ in the large disk above, then

$$\begin{align}
\sup_{0\le t\le1}|H(t)| \le14M^{2/3}\left(\int_{\sqrt2}^{\sqrt3}|H(t)|^2dt\right)^{1/6}.
\end{align}$$

This follows by truncating the Taylor series, applying a polynomial extrapolation bound between the two real intervals, and optimizing the truncation order; the fixed disk supplies a geometrically decaying truncation error. (Lemma B.1, pp. 57–58.)

Returning to the energy integrals, only $t\ge\sqrt{|J|/B}$ lies in the physical low-energy band for nonzero spin, and $\int_{|J|}^B d\omega_J=\operatorname{arcosh}(B/|J|)\le\log(2B)$. For zero spin, use

$$\begin{align}
\int_0^B|F_0(\sqrt{e/B})|^2\frac{de}{e} =2\int_0^1t|H_0(t)|^2dt.
\end{align}$$

Apply the propagation bound in each spin sector and sum, absorbing the polynomial factors from the finite number of sectors, to obtain

$$\begin{align}
\|R_Bf\|\le e^{CB}\delta_f^{1/6},\qquad \|P_Bf\|\le CB^{3/2}\delta_f^{1/2}.
\end{align}$$

Finally, $1=\|f\|\le\|P_Bf\|+\|R_Bf\|$ rules out arbitrarily small $\delta_f$ and gives $\delta_f\ge e^{-CB}$, completing the proof of quantitative invertibility.

For $0<B<2$, extend the function by zero to $H_2$; the same positive lower bound gives invertibility. We retain the exponential cost for $B\ge2$ so that later we can allow $B=\kappa a$ to grow with the central charge.

### 3. Solving for a Seed Measure with Atoms

Return now to a general finite measure $\nu$. Let $\mathcal M_B$ be the space of finite signed measures on $0<e\le B$, allowing atoms at the upper endpoint and at spin edges $e=|J|>0$. We modify only the continuous part of the seed, writing $\sigma=\nu-u_Bd\omega$. Requiring the completed spectrum in the low-energy band to equal $\nu$ gives

$$\begin{align}
\nu-u_Bd\omega+\big[R\nu-R(u_Bd\omega)\big]_{\le B}d\omega=\nu, \qquad P_Bu_B=(R\nu)_{\le B}.
\end{align}$$

Thus define

$$\begin{align}
\mathcal R_B\nu=[(R\nu)d\omega]_{\le B},\quad u_B=P_B^{-1}(R\nu)_{\le B},\quad \mathcal I_B[\nu]=\nu-u_Bd\omega.
\end{align}$$

For this solution to remain in the space of finite measures, we must also verify that $u_Bd\omega$ has finite total variation. In nonzero-spin sectors, $d\omega_J$ is integrable over the low-energy band; in the zero-spin sector, however, $d\omega_0=de/e$. The equation being solved gives

$$\begin{align}
u_Bd\omega=\mathcal R_B\nu-(R_Bu_B)d\omega.
\end{align}$$

The factor $\sqrt e$ in the kernel bound makes $\mathcal R_B\nu$ at most of order $e^{-1/2}de$ at the origin. Likewise, Cauchy–Schwarz gives $|(R_Bu_B)_J(e)|\le C_B\sqrt e\,\|u_B\|_{H_B}$, so the second term is integrable as well. Consequently, $\mathcal I_B[\nu]$ is a finite measure and satisfies

$$\begin{align}
(I+\mathcal R_B)\mathcal I_B[\nu]=\nu,\qquad \|\mathcal I_B[\nu]\|_{\rm TV}\le C_B\|\nu\|_{\rm TV},\quad C_B\le e^{CB}\ (B\ge2).
\end{align}$$

For the homogeneous equation $\sigma+\mathcal R_B\sigma=0$, the kernel bound first shows that $\sigma$ has an $H_B$ density; invertibility of $P_B$ then gives $\sigma=0$. The solution is therefore unique. Since we subtract only a density from $\nu$, every atom in the seed retains exactly its position and weight in $\nu$. (Eqs. (3.16)–(3.18), (B.16)–(B.19), pp. 18–19, 59–60.)

### 4. Adjusting the Zero-Energy Threshold Separately

The measure $w=\mathcal I_B[\nu]$ solves all positive-energy conditions in the low-energy band, but $\mathcal C[w]$ still has the threshold atom $t(w)\delta_{(0,0)}$ at the origin. To cancel it, we construct another modular-invariant function $\mathcal A_B$ whose positive-energy spectrum in the low-energy band vanishes and whose weight at the origin is one. Subtracting $t(w)\mathcal A_B$ will then leave the positive-energy spectrum just obtained unchanged.

First place a unit seed outside the band. Its spectrum in the low-energy band is $[R_{\cdot,J'}(\cdot,e')d\omega]_{\le B}$, which can be subtracted using the inverse $\mathcal I_B$ just constructed. After clearing the band, the remaining weight at the origin is

$$\begin{align}
\zeta_B(e',J')=c_{J'}-t\!\left(\mathcal I_B\big[[R_{\cdot,J'}(\cdot,e')d\omega]_{\le B}\big]\right).
\end{align}$$

In the zero-spin sector, $G_B(z)=\zeta_B(Bz^2,0)$ is entire. At $z=0$, the feedback kernel vanishes, leaving $c_0=-1$, so $G_B(0)=-1$. By uniqueness for analytic functions, it cannot vanish identically on $[\sqrt2,\sqrt3]$. Rather than selecting a single nonzero point, we therefore take a seed over the whole distant interval:

$$\begin{align}
N_B=\int_{2B}^{3B}\zeta_B(e',0)^2\frac{de'}{e'}>0, \qquad d\psi_{B,0}(e')=\mathbf1_{[2B,3B]}\frac{\zeta_B(e',0)}{N_B}\frac{de'}{e'}.
\end{align}$$

Set

$$\begin{align}
v_B=\mathcal I_B[\mathcal R_B\psi_B],\qquad \theta_B=\psi_B-v_B,\qquad \mathcal A_B=\mathcal C[\theta_B].
\end{align}$$

Then

$$\begin{align}
[\theta_B+(R\theta_B)d\omega]_{\le B}=0,\qquad t(\theta_B)=\frac1{N_B}\int_{2B}^{3B}\zeta_B(e',0)^2\frac{de'}{e'}=1.
\end{align}$$

This is the required $\mathcal A_B$. Normalization by the integral of the square ensures that the coefficient at the origin is exactly one. The same analytic propagation estimate as before gives $N_B\ge e^{-CB}$ and controls $\|\theta_B\|_{\rm TV}$ and the related quantities by bounds of order $e^{CB}$. (pp. 19–21, 60–61.)

### 5. The Full Modular Repair and Small Responses from Vanishing Moments

Combining the positive-energy inverse with the threshold correction, define

$$\begin{align}
\boxed{\quad \mathcal D_B[\nu]=\mathcal C[\mathcal I_B\nu] -t(\mathcal I_B\nu)\mathcal A_B. \quad}
\end{align}$$

It satisfies

$$\begin{align}
[\mu_{\mathcal D_B[\nu]}]_{0<e\le B}=\nu,\qquad \mu_{\mathcal D_B[\nu]}(\{(0,0)\})=0.
\end{align}$$

Any spectral change in the low-energy band can now be realized by a modular-invariant function. We next control its high-energy cost. Write the spectrum outside the band as $r_{B,J}[\nu](e)d\omega_J$. If $w=\mathcal I_B\nu$ and $\sigma=w-t(w)\theta_B$, then

$$\begin{align}
r_{B,J}[\nu](e)=-t(w)\delta_{J0}\rho_{\psi_B}(e)+(R\sigma)_J(e),\qquad e>B.
\end{align}$$

Here $\rho_{\psi_B}$ is the density of $\psi_B$ with respect to $d\omega_0$: it comes from the distant seed itself, whereas the other term comes from the continuous response of the modular completion. Together they satisfy

$$\begin{align}
|r_{B,J}[\nu](e)|\le C_B\|\nu\|_{\rm TV}\sqrt e.
\end{align}$$

After multiplication by $e^{-\beta e}$, this bound is integrable when summed over energies and spins, so a single modular repair has a well-defined thermal transform. For an infinite sequence of repairs to converge, we also need a small factor that decays from step to step. This factor will come from vanishing moments of the spectral change.

Suppose $\nu$ is supported in a single spin sector $j$, within the interval $(L,V]$, and satisfies

$$\begin{align}
\int (e-|j|)^{r/2}d\nu(e)=0,\qquad r=0,\ldots,k,\quad k\ge1.
\end{align}$$

The zeroth moment gives $t(\nu)=0$; if $j=0$, the first moment also gives $m_g(\nu)=0$. Using $(I+\mathcal R_B)\mathcal I_B=I$ and setting $v=\mathcal I_B\mathcal R_B\nu$, we have $w=\nu-v$ and $t(w)=-t(v)$, so the full seed is

$$\begin{align}
\sigma=\nu-v+t(v)\theta_B,
\end{align}$$

with density outside the band

$$\begin{align}
r_{B,J}[\nu](e)=(R\nu)_J(e)-(Rv)_J(e) +t(v)(R\theta_B)_J(e)+t(v)\delta_{J0}\rho_{\psi_B}(e).
\end{align}$$

Since $\|v\|_{\rm TV}\le C_B\|\mathcal R_B\nu\|_{\rm TV}$, the last three terms are all controlled by the size of the feedback in the low-energy band. Thus

$$\begin{align}
|r_{B,J}[\nu](e)|\le |(R\nu)_J(e)|+C_B\sqrt e\,\|\mathcal R_B\nu\|_{\rm TV}.
\end{align}$$

It therefore suffices to show first that $R\nu$ is small; the inverse operator need not preserve the vanishing moments of $\nu$.

To do this, write the input energy of the kernel as $e'=|j|+u^2$. For an analytic $u$-dependent function $f$ and an approximating polynomial $p_k$ of degree at most $k$,

$$\begin{align}
\left|\int f(u)d\nu\right| =\left|\int(f-p_k)d\nu\right|\le\|\nu\|_{\rm TV}\|f-p_k\|_\infty.
\end{align}$$

Analytic polynomial approximation on the Bernstein ellipse of $[u_-,u_+]$ ($u_-=\sqrt{L-|j|}$, $u_+=\sqrt{V-|j|}$) gives $\|f-p_k\|_\infty\le C\varpi^{-k}\sup_{\mathcal E_\varpi}|f|$. Here $\mathcal E_\varpi$ is the curve obtained by mapping the ellipse $z=(w+w^{-1})/2$, $|w|=\varpi$, affinely to that interval. Let $H_\varpi$ be the largest absolute imaginary part on this curve, and set $W_\varpi=\max_{z\in\mathcal E_\varpi}(|z|^2+2|j|)$. The two input square roots in the kernel become $\sqrt{z^2+|j|\pm j}$. Using

$$\begin{align}
|\operatorname{Im}\sqrt{z^2+A}|\le|\operatorname{Im}z|\quad(A\ge0),\qquad \sqrt{e+J}+\sqrt{e-J}\le2\sqrt e,
\end{align}$$

the product of the two cosines contributes at most the complex-growth factor $e^{4\pi H_\varpi\sqrt e}$. Combining this with the arithmetic-sum bound gives

$$\begin{align}
|(R\nu)_J(e)|\le C\|\nu\|_{\rm TV}\sqrt{W_\varpi}\,\varpi^{-k}\sqrt e\,e^{4\pi H_\varpi\sqrt e},
\end{align}$$

Integrating this estimate over the low-energy band bounds $\|\mathcal R_B\nu\|_{\rm TV}$. Substituting into the estimate for the full response yields

$$\begin{align}
\boxed{\quad |r_{B,J}[\nu](e)|\le C_B\|\nu\|_{\rm TV}\sqrt{W_\varpi}\,\varpi^{-k} e^{4\pi H_\varpi\sqrt B}\sqrt e\,e^{4\pi H_\varpi\sqrt e}. \quad}
\end{align}$$

The zeroth moment cancels the arithmetic term in the kernel, which is independent of the input energy; the first moment cancels the rank-one term. The remaining cosine part produces the factor $\varpi^{-k}$. We next construct replacements with integer multiplicities and these vanishing moments. (Eqs. (3.35)–(3.37), (B.26)–(B.33), pp. 22–23, 62–63.)

## 3. Replacing Signed Continuous Spectrum by Levels with Positive Integer Multiplicities

### 1. Moving the Right Endpoint to Make the Total Mass an Integer

Section 2 showed that the exterior error produced by a spectral replacement is small if sufficiently many square-root moments of the difference between the new and old spectra vanish. Fix a spin $j$ and call the interval to be treated a cell, denoted by $I=(L,V]$, where $L\ge|j|$ and $L>0$. Its continuous measure $\mu^{\rm cell}$ may have a negative part. We seek $Q=\sum_{\ell=1}^M\delta_{e_\ell}$ such that these moments of $Q-\mu^{\rm cell}$ vanish. The zeroth moment already requires

$$\begin{align}
Q(I)=\mu^{\rm cell}(I)\in\mathbb Z_{>0}.
\end{align}$$

We therefore first allow the right endpoint to move in a window $[V^-,V^+]$ and set

$$\begin{align}
m(v)=\int_{(L,v]}d\mu,\qquad M=\lceil m(V^-)\rceil, \qquad m(V)=M.
\end{align}$$

Provided that $m(V^-)>0$, the density is positive almost everywhere on $[V^-,V^+]$, and $m(V^+)-m(V^-)>1$, continuity and strict monotonicity give a unique $V\in[V^-,V^+]$. The density in the lower-energy part of the cell may still be negative. This step makes the total mass an integer. (Eq. (4.3), p. 24.)

### 2. Obtaining Unit-Weight Nodes from Positivity on Nonnegative Polynomials

Set

$$\begin{align}
u=\sqrt{e-|j|},\quad u_-=\sqrt{L-|j|},\quad u_+=\sqrt{V-|j|},\quad s=\frac{u-u_-}{u_+-u_-},
\end{align}$$

and, for real polynomials of degree at most $k$, which form the space $\Pi_k$, define

$$\begin{align}
\Lambda(p)=\int_I p(s(e))\,d\mu^{\rm cell}(e),\qquad \operatorname{Var}p=\int_0^1|p'(s)|\,ds.
\end{align}$$

**Unit-weight moment-matching lemma.** If $k\ge1$, $\Lambda(1)=M\in\mathbb Z_{>0}$, and

$$\begin{align}
\Lambda(p)\ge\operatorname{Var}p \qquad(p\in\Pi_k,\ p\ge0\text{ on }[0,1]),
\end{align}$$

then there are $M$ nodes $s_\ell\in[h,1]$, with repetitions allowed, such that

$$\begin{align}
h=\frac1{64M(k+1)^3},\qquad \sum_{\ell=1}^M p(s_\ell)=\Lambda(p)\quad(p\in\Pi_k).
\end{align}$$

The atomic energies are

$$\begin{align}
e_\ell=|j|+[u_-+(u_+-u_-)s_\ell]^2,\qquad Q=\sum_{\ell=1}^M\delta_{(e_\ell,j)}.
\end{align}$$

When coincident nodes are combined, their multiplicity is their number of repetitions and is therefore a positive integer. Moreover, $L<e_\ell\le V$: an atom cannot lie in the preceding cell, but it may lie at the current right endpoint. (Proposition 4.1, pp. 25–26; Appendix C, pp. 63–68.)

We first prove the lemma. We will represent $\Lambda/M$ by a positive probability measure on $[h,1]$, then represent its first $k$ moments by $M$ equally weighted points. The first step uses only finite-dimensional convex separation; the second uses Kane's interval design theorem. The requirement that $\Lambda(p)$ control $\operatorname{Var}p$ leaves enough margin to apply the second step after shrinking the node interval.

First move the nodes away from the left endpoint. With $D_k=4(k+1)^3$, we have $\|p'\|_\infty\le D_k\operatorname{Var}_{[0,1]}p$. If $p\ge0$ on $[h,1]$, then $m:=\min_{[0,1]}p\ge-hD_k\operatorname{Var}p$, so

$$\begin{align}
\Lambda(p)=\Lambda(p-m)+Mm \ge(1-MD_kh)\operatorname{Var}_{[0,1]}p \ge\frac{15}{16}\operatorname{Var}_{[h,1]}p.
\end{align}$$

Let $\mathbf m=(\Lambda(s),\ldots,\Lambda(s^k))/M$. If this vector were outside the convex hull of the curve $(s,\ldots,s^k)$, $s\in[h,1]$, a separating hyperplane would give a polynomial nonnegative on $[h,1]$ but with $\Lambda(p)<0$, contradicting the preceding inequality. Thus there is a positive probability measure $\sigma$ supported on $[h,1]$ such that $\int p\,d\sigma=\Lambda(p)/M$. The input functional $\Lambda$ has not changed: the moments of the entire original cell are preserved.

Next apply Kane's theorem to replace positive real weights with equal weights. Its controlling quantity is

$$\begin{align}
K_{[h,1]}=\sup_{p\in\Pi_k,\ p\ge0,\ p\not\equiv0} \frac{\operatorname{Var}_{[h,1]}p}{\int p\,d\sigma} \le\frac{16M}{15}<2M.
\end{align}$$

[Kane's Proposition 20](https://arxiv.org/html/1112.4900) states that, for every integer $N>K_{[h,1]}/2$, there are $N$ nodes, with repetitions allowed, satisfying $N^{-1}\sum_{\ell=1}^Np(s_\ell)=\int p\,d\sigma$, $p\in\Pi_k$. Taking $N=M$ and multiplying by $M$ gives the required unit-weight moment formula. (Eqs. (C.7)–(C.13), pp. 65–67.)

The positivity required here concerns the values of the finite-dimensional functional $\Lambda$ on nonnegative polynomials, not the pointwise values of the original density. This is precisely what allows a signed continuous spectrum to enter the construction.

Returning to the energy variable, let $\nu=Q-\mu^{\rm cell}$. Since $u=\sqrt{e-|j|}$ is affine in $s$, we have $u^r\in\Pi_k$ ($r\le k$), and hence

$$\begin{align}
\int_I(e-|j|)^{r/2}\,d\nu(e)=0\quad(0\le r\le k), \qquad \|\nu\|_{\rm TV}\le2\|\mu^{\rm cell}\|_{\rm TV}.
\end{align}$$

The total variation bound follows from $\|Q\|_{\rm TV}=M=\mu^{\rm cell}(I)\le\|\mu^{\rm cell}\|_{\rm TV}$. This residual can therefore be inserted directly into the modular repair estimate of Section 2.

### 3. Fixing a Node-Selection Rule

The moment equations generally do not determine the nodes uniquely. To specify a fixed rule, order the nodes as $h\le s_1\le\cdots\le s_M\le1$; the feasible vectors form a nonempty compact set. Minimize $s_1$, then minimize $s_2$ within the remaining feasible set, and continue. This gives a unique lexicographic selector.

The existence, convergence, and fixed-$B$ state-counting arguments below use only the moment identities and support conditions, so they apply to any feasible selection. In the final analysis of specific multiplicities near the proportional gap, we will use the lexicographic selector.

## 4. Constructing the Discrete Spectrum Cell by Cell and Taking the Limit

### 1. Clearing the Low-Energy Band and Inserting the First Level

We now use the two constructions above to organize the spectrum cell by cell, starting from the vacuum. The canonical modular completion of the vacuum character gives the Maloney–Witten–Keller (MWK) function, with reduced spectrum

$$\begin{align}
F_{\rm MWK}=F_{\rm vac}-6\sqrt y +\sqrt y\sum_J e^{2\pi ixJ}\int_{e>|J|}e^{-2\pi ye}\,d\mu^{>0}_{{\rm MWK},J}(e).
\end{align}$$

This function is already modular invariant and has vacuum multiplicity one. First cancel $-6\delta_{(0,0)}$ with the threshold correction, then use the exact modular repair to subtract all continuous spectrum in the low-energy band:

$$\begin{align}
F_B^{\rm clear}=F_{\rm MWK}+6\mathcal A_B +\mathcal D_B[-\mu_{\rm MWK}^{>0}|_{0<e\le B}].
\end{align}$$

The nonvacuum band $0\le e\le B$ is now empty. Given a first layer $\nu_{\rm first}=\sum_Jd_J\delta_{(e_*,J)}$, define the starting point of the recursion by

$$
F_0=\begin{cases}
F_B^{\rm clear}+\mathcal D_B[\nu_{\rm first}],&0<e_*\le B,\\
F_B^{\rm clear}+d_0\mathcal A_B,&e_*=0.
\end{cases}
$$

In the second line, the uncensored condition permits only $J=0$. Thus the low-energy band of $F_0$ consists exactly of the specified first layer, while the remaining nonvacuum spectrum is a continuous density at $e>B$. The first family takes $e_*=B=\kappa a$; the second takes $e_*=\delta<B$. (Eqs. (2.19)–(2.23), pp. 12–13.)

### 2. Choosing a Positive Reference for the Remaining Continuous Spectrum

We next need to determine whether this remaining continuous spectrum admits moment matching. From

$$\begin{align}
F_{\rm vac}=\sqrt y\,e^{2\pi ay}(1-q-\bar q+q\bar q),
\end{align}$$

the vacuum completion combines four seeds, $(e',J')=(-a,0),(1-a,1),(1-a,-1),(2-a,0)$, with weights $1,-1,-1,1$. Retain only the part of their continuous response with arithmetic denominator $m=1$. The Kloosterman sum is then one, the cosines become hyperbolic cosines for negative-energy inputs, and the four terms factor exactly as

$$\begin{align}
\rho^{(1)}_{a,J}(e)=2D_a(e+J)D_a(e-J),\qquad D_a(z)=\cosh(2\pi\sqrt{az})-\cosh(2\pi\sqrt{(a-2)z}).
\end{align}$$

This is a density with respect to $d\omega_J$. Since $D_a(z)>0$ ($z>0$) and $D_a(0)=0$, the reference density is positive in the interior and vanishes at the spin edge. To compare it with the modular repair error, use the following uniform bounds ($a\ge100$):

$$\begin{align}
c_*(e^2-J^2)e^{8\sqrt{ae}}\le\rho^{(1)}_{a,J}(e)\le2e^{4\pi\sqrt{ae}},
\end{align}$$

The lower bound follows from $D_a(z)=2\sinh(A\sqrt z)\sinh(C\sqrt z)$, where $A=\pi(\sqrt a+\sqrt{a-2})$, $C=\pi(\sqrt a-\sqrt{a-2})$, and $AC=2\pi^2$. Using one hyperbolic sine factor to supply a zero in $z$ and the other to supply exponential growth preserves the factor $(e+J)(e-J)$. The other MWK terms grow at most as $\operatorname{poly}(a,e)e^{2\pi\sqrt{ae}}$. We can therefore place the error envelope

$$\begin{align}
H_a(e)=e^{7\sqrt{ae}},
\end{align}$$

between the reference lower bound and the remainder, since $2\pi<7<8$. The assertion maintained by the recursion applies only in the **unprocessed** region with $e\ge T$:

$$\begin{align}
|\rho_{n,J}(e)-\rho^{(1)}_{a,J}(e)|\le H_a(e).
\end{align}$$

Near $e=|J|$, the error may still exceed the reference density. We will therefore not require the remaining continuous spectrum to be pointwise positive. Instead, we integrate nonnegative polynomials over each whole cell. A polynomial of bounded degree cannot concentrate all its mass in an arbitrarily narrow negative region; quantitative polynomial inequalities below will provide the positivity needed for moment matching. (Eqs. (5.1)–(5.4), (D.1)–(D.3), pp. 30–31, 69–70.)

### 3. Choosing the Spectral Interval at Each Step

Suppose that, at the start of step $n$, spin sector $J$ has been processed up to $f_{n,J}$; initially set $f_{0,J}=\max(B,|J|)$. Choose a spin sector $j_n$, set $L_n=f_{n,j_n}$, determine $V_n$ by the right-endpoint condition of Section 3, and match the moments of the continuous measure in $I_n=(L_n,V_n]$. Write

$$\begin{align}
\nu_n=Q_n-\mu_n^{\rm cell},\qquad F_{n+1}=F_n+\mathcal D_{B_n}[\nu_n].
\end{align}$$

As long as $B_n>\max(B,V_0,\ldots,V_n)$, the modular repair replaces the old continuous spectrum in the current cell by exactly $Q_n$ and makes no spectral change in the previously processed region. Then update only $f_{n+1,j_n}=V_n$.

The negative spectrum at low energies may be large, so we begin with long cells that collect enough positive high-energy mass. After this finite initial round, we switch to short cells of length at most one. Short intervals make moment approximation and the subsequent thermal convergence easier to control. The choices are:

| Data | Finite initial stage | Infinite tail stage |
|---|---|---|
| Current spin sector | $0,-1,1,-2,2,\ldots$, through $\lvert j\rvert\le T$ | A sector minimizing $f_{n,j}$ |
| Left endpoint | $L=\max(B,\lvert j\rvert)$ | $L=f_{n,j}$ |
| Right-endpoint window | $[U,U+1]$ | $[L+1/2,L+1]$ |
| Matching degree | $k=\lfloor\sqrt{aU}\rfloor$ | $k=\lceil A_{\rm tail}(a+L)\rceil$ |
| Modular repair cutoff | $2U+4$ | $2+\max\{U+2,L\}$ |

For fixed $B$, we may take $B^\sharp=\max(2,B)$, $T=5B^\sharp$, and $U=1024B^\sharp$. For a growing cutoff, take $T=R_0B$ and $U=R_{\rm init}B$, first choosing $R_0,R_{\rm init}$ sufficiently large and then $\kappa$ sufficiently small. (Table 1, (4.18), pp. 28–29.)

During the initial stage, all cells lie below $U+1$, while the exterior modular repair response starts only beyond $2U+4$. Thus the input in each spin sector during this stage is the original continuous spectrum of $F_0$: processing one sector does not change the low-energy data needed for the next.

In the tail, always choose a sector with the smallest endpoint, breaking ties in the order $0,-1,1,-2,2,\ldots$. Then $L_n$ is nondecreasing. Each visit to a sector advances its endpoint by at least $1/2$. At $e\le W$, only finitely many sectors, $|J|\le W$, occur, so after finitely many steps they all advance beyond $W$. Moreover, the right endpoints of earlier short cells are at most $L_n+1$, and those of the initial cells are at most $U+1$. Hence the cutoff $B_n$ in the table always protects every existing atom.

### 4. Verifying That Every Step Can Be Performed

The recursion still depends on two conditions: moment matching must be solvable, and the modular repair error must be small enough to keep the next step solvable. We verify them in the order of initialization, long cells, and short cells. All parameters are fixed first; a single sufficiently large $a$ then makes the estimates hold simultaneously at every step.

**Initialization response.** The full initialization response satisfies

$$
|\rho^{\rm resp}_{a,B,J}(e)|\lesssim
\begin{cases}
C_B(1+M_*)a\sqrt e\,e^{4\pi\sqrt{aB}},&B\text{ fixed},\\
C(1+M_*)aB^4\sqrt e\,e^{4\pi\sqrt{aB}+C_{\rm ref}B},&B=\kappa a.
\end{cases}
$$

Here $\rho^{\rm resp}$ is the exterior density of all modular repairs added in passing from MWK to $F_0$. After choosing $T/B$ sufficiently large, for $e\ge T$ its sum with the MWK remainder is smaller than $H_a/2$. For a growing cutoff, for example, we compare $4\pi\sqrt{aB}+C_{\rm ref}B$ with $7\sqrt{aT}$; first choosing $T/B=R_0$ and then taking $\kappa=B/a$ small gives a strict exponential margin. (Eqs. (D.4)–(D.9), pp. 70–71.)

**Moment positivity in the initial cells.** Let $d=u_+-u_-$ be the length of the square-root interval. For a nonnegative polynomial of degree $k$, let $S_+$ be its maximum on the upper half of this interval. Then

$$\begin{align}
\|p\|_\infty\lesssim6^kS_+,\quad \operatorname{Var}p\lesssim(k+1)6^kS_+,\quad \int_{\text{upper half}}p\,du\gtrsim\frac{d}{(k+1)^3}S_+.
\end{align}$$

Let $N_-$ be the sum, over all initial spin sectors of $F_0$, of the negative variation of the continuous measure on $e<T+1$. The initialization estimates also give

$$\begin{align}
N_-\le C_B(1+M_*)a\,e^{4\pi\sqrt{a(T+1)}}\quad(B\text{ fixed}),
\end{align}$$

while for $B=b=\kappa a$,

$$\begin{align}
\log(2+N_-)\le C_N\sqrt{ab}+O_\kappa(\log a)+\log(1+M_*),
\end{align}$$

where $C_N$ is fixed once $R_0,C_{\rm ref}$ have been chosen. The upper half lies in the positive high-energy region and contributes at least $C^{-1} e^{4\sqrt{aV}}S_+/(k+1)^3$; the entire negative contribution from the lower part is at most $CN_-6^kS_+$. The fixed-$B$ parameters satisfy

$$\begin{align}
4-\log6-4\pi\sqrt{(T+1)/U}>1.
\end{align}$$

For a growing cutoff, choose $R_{\rm init}\ge16R_0$ and $C_N/\sqrt{R_{\rm init}}\le1$. The exponent of the negative term is then at most $(1+\log6)\sqrt{aU}+O_\kappa(\log a)$, strictly smaller than the positive term's $4\sqrt{aU}$. Both cases therefore give

$$\begin{align}
\Lambda(p)\ge\beta_a\operatorname{Var}p,\qquad \beta_a\to\infty.
\end{align}$$

Since $\beta_a\to\infty$, all long cells eventually satisfy the moment-positivity condition of Section 3. Substituting $p=1$ into the preceding estimates for the positive and negative contributions, the strict positive margin gives $m(U)>0$. On the right-endpoint window $[U,U+1]$, the reference density is already far from the spin edge, so the density is strictly positive and its integral exceeds one. Thus both the integer-mass choice and the unit-weight node construction can be carried out. (Eqs. (D.10)–(D.12), p. 72.)

**Initial exterior error.** Measure the modular repair error relative to $H_a$, and let $\varepsilon_n$ be an upper bound satisfying

$$\begin{align}
|r_{B_n,J}[\nu_n](e)|\le\varepsilon_n H_a(e)\qquad(e>B_n)
\end{align}$$

Because a long cell has a large square-root length, we let the ellipse parameter grow with $a$. First fix $\epsilon_{\rm ell}>0$, set $\gamma=2\pi\epsilon_{\rm ell}$, and choose $0<\tau_0\le\min(\epsilon_{\rm ell}^2,1/10)$ and $2\gamma<7$. For example, $\epsilon_{\rm ell}=1/8$ and $\tau_0=1/64$ work. For an initial cell satisfying $V\le\tau_0a$, take

$$\begin{align}
d_u=\sqrt{V-|j|}-\sqrt{L-|j|},\qquad \varpi=1+\frac{\epsilon_{\rm ell}\sqrt a}{d_u}\ge2.
\end{align}$$

The ellipse height is then $H_\varpi=d_u(\varpi-\varpi^{-1})/4\le\epsilon_{\rm ell}\sqrt a/2$, and $W_\varpi\le C a$. Substitution into the full response bound of Section 2 gives

$$\begin{align}
|r_{B_n,J}[\nu_n](e)| \le C\|\nu_n\|_{\rm TV}\sqrt a\,\varpi^{-k_n} e^{CB_n+\gamma\sqrt{aB_n}}\sqrt e\,e^{\gamma\sqrt{ae}}.
\end{align}$$

After division by $H_a(e)$, the remaining factor $\sqrt e\,e^{-(7-\gamma)\sqrt{ae}}$ is eventually decreasing on $e\ge B_n$. Since $\varpi\ge\epsilon_{\rm ell}\sqrt{a/(U+1)}$, we obtain

$$\begin{align}
\varepsilon_n\le C\|\nu_n\|_{\rm TV}\sqrt{aB_n}\,e^{CB_n} \left(\epsilon_{\rm ell}\sqrt{\frac a{U+1}}\right)^{-k_n}.
\end{align}$$

Here we have discarded a factor $e^{-(7-2\gamma)\sqrt{aB_n}}$ smaller than one. The estimate applies as long as $U+1\le\tau_0a$ and the quantity in parentheses is at least two. (Eqs. (D.14)–(D.16), p. 73.)

Integrating the preceding upper bounds for the reference density and initialization response over the initial spin sectors shows that the logarithm of $\sum_{\rm init}\|\nu_n\|_{\rm TV}$ is at most $C_0\sqrt{a(U+1)}+C_1U$, plus the logarithm of a polynomial prefactor. All growth costs are now explicit: the source mass contributes these two terms, the completion contributes $CB_n=O(U)$, and moment approximation contributes $-k_n\log[\epsilon_{\rm ell}\sqrt{a/(U+1)}]$. For fixed $B$ and $U$, the last contribution, $-\tfrac12\sqrt{aU}\log a$, dominates, giving

$$\begin{align}
\log\sum_{\rm init}\varepsilon_n \le-\tfrac12\sqrt{aU}\log a+O_B(\sqrt a+\log a)+\log(1+M_*)\to-\infty.
\end{align}$$

When $U=\vartheta a$, $\vartheta=R_{\rm init}\kappa$, the logarithmic bound becomes

$$\begin{align}
a\sqrt\vartheta\left[C_0+C_1\sqrt\vartheta -\log\frac{\epsilon_{\rm ell}}{\sqrt\vartheta}\right] +O_\vartheta(\log a)+\log(1+M_*).
\end{align}$$

Here $\epsilon_{\rm ell}>0$ is a fixed small constant that limits growth in the imaginary direction on the ellipse, and $C_0,C_1$ are independent of $a$. Choose $R_{\rm init}$ first, then take $\kappa$ small enough that $\vartheta=R_{\rm init}\kappa$ makes the bracket negative. In both cases, sufficiently large $a$ gives $\sum_{\rm init}\varepsilon_n\le1/8$. (Eqs. (D.16)–(D.19), pp. 73–74.)

**Moment positivity in the tail.** Suppose that the first $n$ completed steps preserve the error envelope. On the new short cell, use $u=\sqrt{e-|j|}$. Since $de=2u\,du$ and $d\omega_j=2\,du/\sqrt{u^2+2|j|}$, the reference lower bound and error envelope give

$$\begin{align}
\frac{d\mu_n^u}{du}\ge C^{-1}\sqrt L\,u^2e^{8\sqrt{aL}} -CL^{-1/2}e^{7\sqrt{a(L+1)}}.
\end{align}$$

Using

$$\begin{align}
\int u^2p\,du\gtrsim\frac{d^2}{(k+1)^6}\int p\,du, \qquad\operatorname{Var}p\lesssim\frac{(k+1)^4}{d}\int p\,du,
\end{align}$$

we obtain

$$\begin{align}
\Lambda_n(p)\ge \frac{C^{-1} e^{8\sqrt{aL_n}}}{(L_n+1)(k_n+1)^{10}}\operatorname{Var}p.
\end{align}$$

These polynomial inequalities express two facts: a nonnegative polynomial cannot remain concentrated near $u=0$, and its variation is controlled by its interval average. The positive exponent $8\sqrt{aL}$ therefore dominates the negative exponent $7\sqrt{a(L+1)}$. When $k_n\asymp a+L_n$, the remaining cost is only polynomial, so one sufficiently large $a$ makes the coefficient above greater than one for every $L_n\ge T$, including cells that start exactly at the spin edge. The right-endpoint window lies at $e-|j|\ge1/2$, where we likewise obtain a strictly positive density and a mass increment exceeding one. (Eqs. (D.20)–(D.21), p. 75.)

**Tail modular repair error.** A short cell has square-root width at most one. Taking $\varpi=2$, the full response bound relative to $H_a$ is

$$\begin{align}
\varepsilon_n\le C\|\nu_n\|_{\rm TV}B_n e^{CB_n}2^{-k_n}.
\end{align}$$

Both $\log(2+\|\nu_n\|_{\rm TV})$ and $B_n$ are at most $C(a+L_n)$. Once a sufficiently large fixed $A_{\rm tail}$ is chosen, $-k_n\log2$ absorbs all these costs and leaves

$$\begin{align}
\varepsilon_n\le\frac1{64}(2+L_n)^{-4}.
\end{align}$$

The parameter order is therefore as follows: first fix $R_0,R_{\rm init}$ as needed for the long cells (using the tabulated values when $B$ is fixed), then fix a sufficiently large $A_{\rm tail}$, shrink $\kappa$ in the proportional case, and finally increase $a$. Increasing $A_{\rm tail}$ raises the polynomial cost in moment positivity, but does not change the difference between the positive and negative exponents. The two requirements can thus be met simultaneously. (Eqs. (D.22)–(D.23), p. 76.)

### 5. Error Induction and Thermal Convergence

Each integer interval $L_n\in[q,q+1)$ contains at most $2(2q+1)$ tail cells. Consequently,

$$\begin{align}
\sum_{\rm tail}\varepsilon_n \le\frac1{64}\sum_{q\ge0}\frac{2(2q+1)}{(q+2)^4}\le\frac1{32}.
\end{align}$$

In the unprocessed region, only exterior responses accumulate; each direct replacement acts only on its own cell. Every finite prefix therefore satisfies

$$\begin{align}
|\rho_n-\rho^{(1)}_a|\le \left(\frac12+\frac18+\frac1{32}\right)H_a<H_a.
\end{align}$$

This closes the induction. The starting cost is $H_a/2$; if a prefix satisfies the envelope, the next moment-matching and modular repair step can be performed; after its response is added, the accumulated cost remains strictly below $H_a$. The recursion can therefore continue indefinitely.

To prove convergence of this infinite process, use the thermal total variation norm $\|\sigma\|_\beta=\sum_J\int e^{-\beta e}d|\sigma_J|(e)$ and define the positive comparison measure

$$\begin{align}
d\Omega_{a,J}=\mathbf1_{e\ge\max(T,|J|)} [\rho^{(1)}_{a,J}(e)+H_a(e)]d\omega_J(e).
\end{align}$$

For fixed $a$, its growth is only $e^{C_a\sqrt e}$, so it is thermally integrable for every $\beta>0$, including the sum over all spins. The square-root singularities at the spin edges are integrable, and the scalar sector starts at $T>0$. Since tail cells have width at most one,

$$\begin{align}
\|Q_n-\mu_n^{\rm cell}\|_\beta \le(1+e^\beta)\int_{I_n}e^{-\beta e}\,d\Omega_{a,j_n}(e).
\end{align}$$

Cells in a given spin sector are pairwise disjoint, so the direct residuals are summable. The full spectral change also includes $\mathbf1_{e>B_n}r_{B_n,J}[\nu_n]d\omega_J$, whose thermal norm is bounded by $\varepsilon_n\|\Omega_a\|_\beta$ and is therefore summable as well. There are only finitely many initial steps, each of which is thermally convergent.

Thus, for every $\beta>0$, the full spectral changes satisfy

$$\begin{align}
\sum_n\|\mu_{n+1}-\mu_n\|_\beta<\infty, \qquad \|\sigma\|_\beta=\sum_J\int e^{-\beta e}d|\sigma_J|(e).
\end{align}$$

### 6. Integrality and Modular Invariance of the Limiting Spectrum

First fix a finite energy $W$. The scheduling rule in Subsection 3 ensures that all cells at $e\le W$ are processed after finitely many steps; every later modular repair has zero spectral response in this region. The spectrum in this band therefore does not merely approach a limit: it becomes exactly constant after some step. This defines

$$\begin{align}
\mu_\infty=\nu_{\rm first}+\sum_{n\ge0}Q_n.
\end{align}$$

In every finite energy band, it has only finitely many atoms of positive-integer multiplicity, all uncensored. Meanwhile, absolute summability in thermal total variation gives a limit for the functions $F_n$: if $K\Subset\mathbb H$ and $0<y_-\le\operatorname{Im}\tau\le y_+$, then

$$\begin{align}
\sup_{\tau\in K}|F_{n+1}(\tau)-F_n(\tau)| \le\sqrt{y_+}\,\|\mu_{n+1}-\mu_n\|_{2\pi y_-}.
\end{align}$$

Hence $F_n$ converges uniformly on every compact set. Every $F_n$ is modular invariant, and $S(K)$ and $T(K)$ are still compact, so $F_\infty$ is modular invariant as well. Thermal-norm convergence also implies total variation convergence on each low-energy band:

$$\begin{align}
\|\sigma|_{[0,W]}\|_{\rm TV}\le e^{\beta W}\|\sigma\|_\beta.
\end{align}$$

The spectrum of this function limit is therefore exactly the $\mu_\infty$ defined by stabilization on finite bands, and it is thermally summable at every positive temperature. Dividing out $\sqrt y|\eta|^2$ gives $Z_\infty\in\mathcal U_c$.

The first layer has remained unchanged since initialization, and all other atoms lie at $e>B$. Taking $e_*=B=\kappa a$ therefore gives $\Delta_1=a+e_*=(1+\kappa)a$; taking $e_*=\delta<B$ gives $\Delta_1=a+\delta$. This completes the two gap results. (Paper, §§5.3–5.4, pp. 32–35.)

## 5. Computing the Smoothed BTZ State Count from the Discrete Spectrum

Fix $B$, the bound $M_*$ on the first-level data, and the construction parameters. We now take $a\to\infty$ with $E=\lambda c$, where $\lambda\in K\Subset(0,\infty)$. We have not solved for every node individually, but each short cell preserves many exact moments. For a fixed smooth kernel, these moment identities suffice to replace the atomic count by a continuous one.

We first replace $\mu_\infty$ by the reference measure $\rho^{(1)}_a d\omega$ from Section 4, and then replace the sum over integer spins by an integral over real spins. Each replacement has a relative error smaller than any fixed power of $1/c$. The thermal transform of the resulting continuous reference spectrum can then be evaluated explicitly: it is exactly the perturbative BTZ partition function.

### 1. Combining the Primary Spectrum with Virasoro Descendants

The number of descendants at level $n$ in a nonvacuum Virasoro module is the integer partition number $p(n)$. Combining the left and right modules, the multiplicity at total level $N$ and its generating function are

$$\begin{align}
p_2(N)=\sum_{\ell=0}^Np(\ell)p(N-\ell),\qquad G(\beta)=\sum_{N\ge0}p_2(N)e^{-\beta N} =\prod_{m\ge1}(1-e^{-m\beta})^{-2}.
\end{align}$$

The actual state count is

$$\begin{align}
N_\phi(E)=N_\phi^{\rm vac}(E)+ \sum_{N\ge0}p_2(N)\sum_{J\in\mathbb Z} \int\phi\left(e-\frac1{12}+N-E\right)d\mu_{\infty,J}(e).
\end{align}$$

For each nonvacuum primary, the combined left and right descendants at total level $N$ have multiplicity $p_2(N)$ and physical energy $e-1/12+N$. The vacuum module is counted separately because it has no level-one states. For the thermal transform below, define the bilateral Laplace transform of the kernel by

$$\begin{align}
K_\phi(\beta)=\int_{\mathbb R}\phi(u)e^{\beta u}\,du,
\end{align}$$

where the sign in the exponent follows from the definition of smoothing: $\int e^{-\beta E}\phi(E_s-E)dE=e^{-\beta E_s}K_\phi(\beta)$. (Eqs. (6.1)–(6.4), pp. 35–36.)

### 2. Replacing the Atomic Spectrum by the Reference Density Through Moment Identities

Define the reference count at the primary level by

$$\begin{align}
P_{\mathbb Z}(Y)=\sum_{J\in\mathbb Z} \int\phi(e-Y)\rho^{(1)}_{a,J}(e)d\omega_J(e),
\end{align}$$

and set

$$\begin{align}
N_\phi^{\rm ref}(E)=\sum_{N\ge0}p_2(N) P_{\mathbb Z}(E+1/12-N).
\end{align}$$

This reference count contains only the continuous primary density and its descendants. We will estimate the vacuum module, the first level, and the finite collection of atoms from the initial long cells separately as low-energy contributions.

On a tail cell, set $\alpha=\sqrt{L-|j|}$ and $d=\sqrt{V-|j|}-\alpha$, and write $e(z)=|j|+(\alpha+dz)^2$, with $z\in[0,1]$. Since $2\alpha d+d^2=V-L\le1$, we have $0\le e'(z),e''(z)\le2$, while all higher derivatives vanish. For fixed $\phi$, every derivative of fixed order of $h(z)=\phi(e(z)-Y)$ is therefore bounded independently of the cell, spin, and $a$. Consequently,

$$\begin{align}
\inf_{p\in\Pi_{k_n}}\|h-p\|_\infty\le C_Pk_n^{-P}\le C_Pc^{-P}.
\end{align}$$

The moment identities imply

$$\begin{align}
\left|\int h(z(e))\,d(Q_n-\mu_n^{\rm cell})\right| \le\big(M_n+\|\mu_n^{\rm cell}\|_{\rm TV}\big)
\inf_{p\in\Pi_{k_n}}\|h-p\|_\infty.
\end{align}$$

Here we use polynomial approximation of smooth functions: for each fixed order $P$, the derivative bounds give an approximation error $O(k_n^{-P})$. The recursive density itself need not be differentiable. In the central spin region with $e\asymp c$, the ratio $H_a/\rho^{(1)}_a$ is exponentially small, so the current measure is positive and the factor in parentheses is exactly $2M_n$. For spin sectors closer to the edge, we retain the total variation and estimate the mass of the entire cell. (Eqs. (6.12)–(6.14), (E.9)–(E.13), pp. 38–39, 82–83.)

To turn this absolute error into a relative one, we must also control the scale of the sum. Write

$$\begin{align}
S_a(Y)=4\pi\sqrt{aY}.
\end{align}$$

The reference spectrum has the Gaussian spin profile

$$\begin{align}
\rho^{(1)}_{a,J}(e)\le2\exp\left[S_a(e) -\frac{\pi\sqrt a}{2e^{3/2}}J^2\right].
\end{align}$$

The spin width of this Gaussian is $\asymp\sqrt c$. In the central region $|J|\le Y/2$, the measure factor satisfies $1/\sqrt{e^2-J^2}\asymp c^{-1}$. Summing over spins should thus give the scale $c^{-1/2}e^{S_a(Y)}$. We now use this scale to bound the combined mass of all cells that contribute.

Suppose $\operatorname{supp}\phi\subset[-R_\phi,R_\phi]$, and let $\mathcal C_Y$ denote the tail cells intersecting $[Y-R_\phi,Y+R_\phi]$. Since each cell has width at most one, all these cells lie in

$$\begin{align}
I_Y^+=[Y-R_\phi-1,Y+R_\phi+1]
\end{align}$$

For fixed $B$ and $Y\asymp c$, neither the first level nor the initial long cells intersect this window. Subtract the reference count from $P_{\rm at}(Y)=\sum_J\int\phi(e-Y)d\mu_{\infty,J}(e)$ and, in each cell, insert the measure present when that cell was processed. This gives

$$\begin{aligned}
P_{\rm at}(Y)-P_{\mathbb Z}(Y) ={}&\sum_{n\in\mathcal C_Y}\int_{I_n}\phi(e-Y) d(Q_n-\mu_n^{\rm cell})(e)\\
&+\sum_{n\in\mathcal C_Y}\int_{I_n}\phi(e-Y) [\rho_{n,j_n}(e)-\rho^{(1)}_{a,j_n}(e)]d\omega_{j_n}(e).
\end{aligned}$$

Use moment approximation for the first sum and the recursive envelope for the second. Although the densities $\rho_n$ occur at different stages, they are all bounded by the same $\rho^{(1)}+H_a$, and cells in the same spin sector are disjoint. The central cells therefore satisfy

$$\begin{align}
\sum_{\substack{n\in\mathcal C_Y\\
|j_n|\le Y/2}}M_n \le\sum_{|J|\le Y/2}\int_{I_Y^+} [\rho^{(1)}_{a,J}+H_a]d\omega_J \le C c^{-1/2}e^{S_a(Y)}.
\end{align}$$

Thus the per-cell errors $C_Pc^{-P}M_n$ retain the same relative order after summation. The second sum is bounded by the window integral of $H_a$, which is exponentially small relative to the reference scale. The outer spins $|J|>Y/2$ lose a factor $e^{-\gamma c}$ in the Gaussian bound. Near the spin edge, first integrate in energy and then use

$$\begin{align}
\sum_J\int_{\max(T,|J|)}^Z d\omega_J \le\log(Z/T)+\pi Z
\end{align}$$

to control the cumulative measure. These spin sectors do not change the leading scale either.

A relative error estimate also requires a lower bound on the reference count. Since $\phi\ge0$ and its integral is one, it has a positive lower bound on some fixed small interval. For $e-Y$ in that interval and $|J|\le\sqrt c$, the explicit formula for $D_a$ gives the ordinary density bound

$$\begin{align}
g_a(e,J):=\frac{\rho^{(1)}_{a,J}(e)}{\sqrt{e^2-J^2}} \ge C^{-1}c^{-1}e^{S_a(Y)}.
\end{align}$$

Indeed, the difference of hyperbolic cosines in each $D_a(e\pm J)$ is bounded below by a fixed positive fraction of its leading exponential, and $J=O(\sqrt c)$ changes the exponent by only a bounded amount. Integrating over this small energy interval and summing over $\asymp\sqrt c$ spins gives the required lower bound. Together with the upper bound above, this yields

$$\begin{align}
P_{\mathbb Z}(Y)\asymp c^{-1/2}e^{S_a(Y)},\qquad |P_{\rm at}(Y)-P_{\mathbb Z}(Y)| \le C_Pc^{-P-1/2}e^{S_a(Y)}.
\end{align}$$

(Eqs. (E.5)–(E.13), pp. 81–83.)

For descendants, put $Y_N=E+1/12-N$. In the range $N\le Y_0/2$, concavity gives

$$\begin{align}
S_a(Y_N)\le S_a(Y_0)-\beta_0N
\end{align}$$

with $\beta_0>0$ uniformly over the prescribed interval of $\lambda$. The descendant sum therefore contributes only the finite factor $G(\beta_0)$. For larger $N$, the primary action loses $O(c)$, whereas

$$\begin{align}
\sum_{N\le M}p_2(N)\le\exp\left(\beta M+\frac{\pi^2}{3\beta}\right) =\exp(O(\sqrt c))\quad(M=O(c),\ \beta\asymp c^{-1/2}),
\end{align}$$

which cannot compensate for that loss. The total initial weight at fixed $B$ and its descendants, the first level, and the vacuum module likewise contribute at most $e^{O(\sqrt c)}$. Relative to $N_\phi^{\rm ref}\asymp e^{\text{const}\,c}/\sqrt c$, they are smaller than every fixed inverse power. Hence

$$\begin{align}
\frac{N_\phi(\lambda c)}{N_\phi^{\rm ref}(\lambda c)} =1+O_P(c^{-P}).
\end{align}$$

The estimate is uniform over every feasible choice of atomic positions, so we do not need to solve for all atomic energies first. (Lemma 6.1; Appendix E.1, pp. 80–84.)

### 3. Replacing the Integer-Spin Sum by a Real-Spin Integral

The explicit formula for $g_a(e,J)$ also makes sense for real $J$. Define the real-spin primary count and its full state count by

$$\begin{align}
P_{\mathbb R}(Y)=\int_{\mathbb R}dJ\int_{|J|}^{\infty}\phi(e-Y)g_a(e,J)de, \qquad N_\phi^{\mathbb R}(E)=\sum_{N\ge0}p_2(N)P_{\mathbb R}(E+1/12-N).
\end{align}$$

To compare the integer sum with the real integral, choose a smooth function $\chi$ equal to one on $|t|\le1/2$ and zero on $|t|\ge3/4$, and define

$$\begin{align}
F_Y(J)=\chi(J/Y)\int\phi(s)g_a(Y+s,J)\,ds.
\end{align}$$

The explicit reference density gives

$$\begin{align}
\|\partial_J^m F_Y\|_{L^1(\mathbb R)} \le C_{m,\phi}e^{S_a(Y)}c^{-(m+1)/2}.
\end{align}$$

Apply Poisson summation and integrate the nonzero Fourier modes by parts $m>1$ times to obtain

$$\begin{align}
\left|\sum_{J\in\mathbb Z}F_Y(J)-\int_{\mathbb R}F_Y(J)dJ\right| \le\frac{2\zeta(m)}{(2\pi)^m}\|\partial_J^mF_Y\|_1.
\end{align}$$

Dividing by $c^{-1/2}e^{S_a(Y)}$ and choosing $m\ge2P$ gives $O(c^{-P})$. The spins outside the cutoff are exponentially suppressed. Repeating the descendant split from the preceding subsection then gives

$$\begin{align}
N_\phi^{\rm ref}(\lambda c) =[1+O_P(c^{-P})]N_\phi^{\mathbb R}(\lambda c).
\end{align}$$

Both replacements have now been proved directly at the level of state counts. It remains to compute and invert the thermal transform of $N_\phi^{\mathbb R}$. (Eqs. (E.17)–(E.20), pp. 84–85.)

### 4. The Thermal Transform of the Continuous Reference Spectrum

First count only primaries. Set $u=e+J$ and $v=e-J$. Then $de\,dJ=\tfrac12du\,dv$ and $\sqrt{e^2-J^2}=\sqrt{uv}$. The factor $1/2$ in the Jacobian cancels the coefficient of $\rho^{(1)}$, namely $2$, giving

$$\begin{aligned}
Z_{\rm ref,prim}(\beta) &=\int_0^\infty e^{-\beta e}de \int_{-e}^e\frac{2D_a(e+J)D_a(e-J)}{\sqrt{e^2-J^2}}dJ\\
&=\left[\int_0^\infty u^{-1/2}D_a(u)e^{-\beta u/2}du\right]^2\\
&=\frac{2\pi}{\beta}e^{4\pi^2a/\beta} (1-e^{-4\pi^2/\beta})^2.
\end{aligned}$$

For the last equality, use

$$\begin{align}
\int_0^\infty u^{-1/2}\cosh(2\pi\sqrt{\alpha u})e^{-\beta u/2}du =\sqrt{\frac{2\pi}{\beta}}e^{2\pi^2\alpha/\beta},\qquad\beta>0,
\end{align}$$

with $\alpha=a,a-2$ and subtract the two results. The two factors $(1-e^{-4\pi^2/\beta})$ arise precisely from the vacuum null states.

Including descendants and the cylinder energy shift gives

$$\begin{align}
Z_{\rm ref}^{\mathbb R}(\beta)=e^{\beta/12}G(\beta)Z_{\rm ref,prim}(\beta).
\end{align}$$

Set $\beta'=4\pi^2/\beta$. The modular transformation of the Dedekind eta function is equivalent to

$$\begin{align}
G(\beta)=\frac\beta{2\pi}e^{(\beta'-\beta)/12}G(\beta'), \qquad V(\beta')=(1-e^{-\beta'})^2G(\beta') =\prod_{m\ge2}(1-e^{-m\beta'})^{-2}.
\end{align}$$

Consequently, we have the exact identity

$$\begin{align}
\boxed{\quad Z_{\rm ref}^{\mathbb R}(\beta) =e^{\pi^2c/(3\beta)}V(4\pi^2/\beta) =Z_{\rm BTZ}^{\rm pert}(\beta). \quad}
\end{align}$$

Here $e^{\beta/12}$ combines with the exponential in the eta transformation to replace $4\pi^2a/\beta$ by $\pi^2(12a+1)/(3\beta)$, producing the physical central charge $c$. Both thermal transforms converge absolutely, so the identity extends to $\operatorname{Re}\beta>0$. (Eqs. (6.21)–(6.23), (E.22)–(E.25), pp. 40, 85–86.)

Applying the same smoothing kernel and inverting the Laplace transform gives

$$\begin{align}
N_\phi^{\mathbb R}(E)=N_\phi^{\rm BTZ}(E) =\int_{\gamma-i\infty}^{\gamma+i\infty}\frac{d\beta}{2\pi i}
 e^{\beta E}K_\phi(\beta)Z_{\rm BTZ}^{\rm pert}(\beta),\qquad\gamma>0.
\end{align}$$

Together with the two comparisons of state counts, this proves $N_\phi/N_\phi^{\rm BTZ}=1+O_P(c^{-P})$ for the actual discrete spectrum. The exact equality is an equality of thermal transforms for the continuous reference spectrum; the relation between the discrete spectrum and BTZ is the asymptotic statement about smoothed counts just proved.

### 5. Inverse Laplace Transformation and the Entropy Expansion

Set

$$\begin{align}
r=\sqrt{12\lambda},\qquad \beta_*=\frac{2\pi}r, \qquad f_\lambda(\beta)=\lambda\beta+\frac{\pi^2}{3\beta}, \qquad A_\phi(\beta)=K_\phi(\beta)V(4\pi^2/\beta).
\end{align}$$

At the saddle,

$$\begin{align}
f_\lambda'(\beta_*)=0,\qquad f_\lambda''(\beta_*)=\frac{r^3}{12\pi},\qquad c f_\lambda(\beta_*)=\frac{\pi cr}{3}=2\pi c\sqrt{\frac\lambda3}.
\end{align}$$

Choose the vertical contour $\beta=\beta_*+it$. Along it, $f_\lambda(\beta_*+it)=f_\lambda(\beta_*)-f_\lambda^{\prime\prime}(\beta_*)t^2/2+O(t^3)$, so the local integral is Gaussian with width $c^{-1/2}$. To control the entire vertical contour, use the expression $e^{\beta/12}G(\beta)Z_{\rm ref,prim}(\beta)$ before applying the modular transformation. It yields

$$\begin{align}
|e^{\beta E}K_\phi(\beta)Z_{\rm ref}^{\mathbb R}(\beta)| \le C(1+|t|)^{-3} \exp\left[\beta_*E+ \frac{4\pi^2a\beta_*}{\beta_*^2+t^2}\right].
\end{align}$$

This uses $|G(\beta_*+it)|\le G(\beta_*)$, $|K_\phi(\beta_*+it)|\le K_\phi(\beta_*)$, and $|1-e^{-4\pi^2/\beta}|\le4\pi^2/|\beta|$. The bound gives absolute integrability on the entire vertical contour and exponential suppression away from a neighborhood of the saddle. The local remainders can be controlled uniformly for $\lambda\in K$. (Eq. (E.26), p. 86.)

In the local integral, $d\beta=i\,dt$, and the leading Gaussian term is

$$\begin{align}
\frac{e^{cf_\lambda(\beta_*)}A_\phi(\beta_*)}{2\pi} \int_{\mathbb R}e^{-cf_\lambda''(\beta_*)t^2/2}dt =\frac{e^{cf_\lambda(\beta_*)}A_\phi(\beta_*)}{\sqrt{2\pi c f_\lambda''(\beta_*)}}.
\end{align}$$

Substituting $f_\lambda''(\beta_*)=r^3/(12\pi)$ and integrating the Taylor terms of $A_\phi$ and the exponential order by order gives

$$\begin{align}
N_\phi^{\rm BTZ}(\lambda c) =\frac{\sqrt6\,e^{\pi cr/3}}{\sqrt c\,r^{3/2}} \left[\sum_{m=0}^P\frac{(\mathcal L_mA_\phi)(\beta_*)}{c^m} +O_P(c^{-P-1})\right].
\end{align}$$

All coefficients can be expressed through a differential operator. With $\mathscr D=\beta\partial_\beta$, they are

$$\begin{align}
\mathcal L_0A=A,\qquad \mathcal L_mA= \frac{(-1)^m}{m!}\left(\frac{3\beta}{16\pi^2}\right)^m \left\{\prod_{j=1}^m[4(\mathscr D+1)^2-(2j-1)^2]\,A\right\}.
\end{align}$$

The outside factor $\beta^m$ is multiplied only after the differentiations have been performed. Set $b_m=(\mathcal L_mA_\phi)(\beta_*)/A_\phi(\beta_*)$. Taking the logarithm gives the recurrence

$$\begin{align}
C_m=b_m-\frac1m\sum_{j=1}^{m-1}jC_jb_{m-j}\quad(m\ge1).
\end{align}$$

Using the comparison between the actual count and BTZ to the additional order needed, we obtain

$$\begin{align}
\boxed{ \log N_\phi(\lambda c) =2\pi c\sqrt{\frac\lambda3}-\frac12\log c +C_{0,\phi}(\lambda)+\sum_{m=1}^P\frac{C_{m,\phi}(\lambda)}{c^m} +O_P(c^{-P-1}).
}
\end{align}$$

Here

$$\begin{align}
C_{0,\phi}=\frac12\log6-\frac32\log r +\log K_\phi(\beta_*)+\log V(2\pi r),
\end{align}$$

$$\begin{align}
C_{1,\phi}=-\frac{3\beta_*}{16\pi^2} \left[3+12\beta_*\frac{A_\phi'(\beta_*)}{A_\phi(\beta_*)} +4\beta_*^2\frac{A_\phi''(\beta_*)}{A_\phi(\beta_*)}\right].
\end{align}$$

These coefficients are independent of the first level and the feasible node choices in the fixed-$B$ construction, but depend on the kernel and on $\lambda$. The term $-\tfrac12\log c$ comes from the single inverse-Laplace Gaussian prefactor obtained when energy alone is fixed and all spins are summed. It cannot be identified directly with the logarithmic correction at fixed total spin. (Eqs. (6.26)–(6.28), (E.27)–(E.31), pp. 41, 87–88.)

Throughout, the kernel width is fixed and $\lambda$ remains in a compact interval of the positive half-line. Each fixed $P$ has its own remainder constant. This is therefore an asymptotic expansion: convergence of the series is not required, and the superpolynomial error has not been strengthened to an exponentially small one. In particular, the limit $\lambda\to0$ and the state count at fixed spin require separate analyses.

## 6. Two Other Limits of the Construction

Previously, we first took the number of recursive steps to infinity on each fixed energy band, and then took the large-central-charge limit at fixed $E/c>0$. Different scalings reveal different spectral features. We first examine how infinite recursion removes the negative spectrum at large spin, and then determine how the initial atoms affect the count when the width of the cleared band is itself proportional to $a$.

### 1. Large Spin at Fixed Central Charge

Fix a sufficiently large $a$, and then fix a finite number $N$ of recursive steps. For positive odd $J\to\infty$, set

$$\begin{align}
T_J=2\pi\sqrt{aJ/2},\qquad \epsilon_J=\lambda_0e^{-T_J},\quad 0<\lambda_0<\frac1{4\pi^2},\quad W_J=(J,J+\epsilon_J],
\end{align}$$

and

$$\begin{align}
D_J=\sqrt{2\lambda_0}\left(1-\frac{4\pi^2\lambda_0}{3}\right) \frac{e^{T_J/2}}{\sqrt J}>0.
\end{align}$$

These windows satisfy

$$\begin{align}
\frac{\mu_{N,J}(W_J)}{D_J}\longrightarrow-1, \qquad \liminf_{J\to\infty,\ J\ \mathrm{odd}} \frac{(\mu_\infty-\mu_N)_J(W_J)}{D_J}\ge1.
\end{align}$$

To see the origin of the first limit, split the MWK continuous spectrum by arithmetic denominator and integrate each term. The positive MWK term with $m=1$ contributes $8\pi^2 e^{2T_J}\epsilon_J^{3/2}/(3\sqrt{2J})$ on the window, while the negative odd-spin term with $m=2$ contributes $-\sqrt2 e^{T_J}\sqrt{\epsilon_J}/\sqrt J$. The remaining terms are smaller, and the sum is exactly $-D_J(1+o(1))$. Any finite collection of bounded-support correcting seeds contributes only $O_N(\sqrt{\epsilon_J})=o(D_J)$ on this window, so it cannot remove the large-spin defect. Since the limiting spectrum is nonnegative, the later recursion must supply the missing window mass, which gives the second inequality. (Proposition D.1, pp. 77–78.)

Why is this compatible with thermal convergence? The window moves to infinity with $J$ and simultaneously shrinks exponentially. A thermal-norm bound gives

$$\begin{align}
\frac{|\sigma_J(W_J)|}{D_J} \le\frac{e^{\beta(J+\epsilon_J)}}{D_J}\|\sigma\|_\beta,
\end{align}$$

whose coefficient on the right diverges with $J$. The thermal topology does not control these normalized windows moving to infinity and shrinking exponentially. The recursion must first be completed on every finite energy band; taking $J\to\infty$ at a fixed number of steps does not give the large-spin behavior of the limiting spectrum.

Correspondingly, the total weight in the first cell processed at large spin $J$ satisfies

$$\begin{align}
\log M_J=2\pi\sqrt{2aJ}-\frac12\log J+O_a(1).
\end{align}$$

The atomic part of each complete correcting seed is $Q_n$; the rest is a density and cannot cancel these positive atoms. The total absolute weight of the natural seed family therefore grows faster than any polynomial, outside the seed-growth control used in the Alday–Bae discussion of uncensored ambiguities. This growth rate shows that the natural seed representation of the present construction does not satisfy that polynomial-growth assumption. (Eqs. (D.32)–(D.33), p. 79.)

For the lexicographic node choice, the first large-spin cell has left endpoint $e=J$. Let its energy width be $w_J\in[1/2,1]$ and its matched degree be $k_J$; its square-root coordinate is then $u\in[0,\sqrt{w_J}]$. The leftmost allowed node $s=h_J=[64M_J(k_J+1)^3]^{-1}$ is occupied, by the strong moment positivity and the endpoint unit-weight design of Section 3. The minimum excess energy is therefore

$$\begin{align}
\min_{\text{spin }J}(e-J) =\frac{w_J}{4096M_J^2(k_J+1)^6} \asymp_a J^{-5}e^{-4\pi\sqrt{2aJ}}, \qquad \tfrac12\le w_J\le1,
\end{align}$$

and its multiplicity is at least $c_aJ^{-11}e^{8\sqrt{aJ}}$. Thus the twist can accumulate at $a$ while the total dimension tends to infinity, without violating local finiteness. The limit here is **fixed $a$ with $J\to\infty$**, not the BTZ limit of large $c$ at fixed $E/c$. (Eqs. (D.34)–(D.35), pp. 79–80.)

### 2. State Counts Near a Proportional Gap

Fix a positive $\kappa$, use the explicit schedule of Section 4 and the lexicographic selector, and set

$$\begin{align}
b=\kappa a,\quad \vartheta=R_{\rm init}\kappa,\quad U=\vartheta a, \quad\Delta_g=(1+\kappa)a,\quad E_g=\kappa a-1/12.
\end{align}$$

The initial long cells now have energy width $O(a)$ and can have mass $e^{O(a)}$. They are no longer negligible low-energy terms of size $e^{O(\sqrt c)}$, as they were in Section 5. To compute their contribution, we fix the lexicographic node choice from Section 3. The precise near-gap formulas in this subsection depend on that choice.

#### Vacuum Descendants Below the Gap

Suppose the dimension center $t=cx$ remains an extensive distance from the gap, with $0<x<(1+\kappa)/12$. A compactly supported kernel then sees only the vacuum module. Define

$$\begin{align}
\mathcal P_\phi(t)=\sum_{n\in\mathbb Z}\phi(n-t),
\end{align}$$

which gives

$$\begin{align}
N_\phi(t-c/12)=\frac{\pi^2}{4\,3^{7/4}} t^{-9/4}e^{2\pi\sqrt{t/3}}\mathcal P_\phi(t) [1+O(t^{-1/2})].
\end{align}$$

This is $e^{O(\sqrt c)}$, rather than the BTZ scale $e^{O(c)}$. Fixed-width smoothing still retains the periodic factor from sampling at integers. If the kernel is too narrow, $\mathcal P_\phi$ may vanish, so its logarithm cannot be taken without further conditions. For this purpose, choose a smooth bump supported on $[-w,w]$, strictly positive on $(-w,w)$, with half-width $w>1/2$. This makes the periodic factor strictly positive with a uniform lower bound.

For the derivation, first use the Bessel expansion of $p_2(N)$ and then take the exact second difference

$$\begin{align}
v_2(N)=p_2(N)-2p_2(N-1)+p_2(N-2),
\end{align}$$

so that the two vacuum factors $(1-q)$ cancel the leading adjacent terms, leaving the prefactor $N^{-9/4}$. To obtain the displayed asymptotic, the remainder in the Bessel expansion must be smaller than the leading term left after this difference. (Eqs. (6.30)–(6.31), (E.32)–(E.33), pp. 42, 88–89.)

#### How the Lexicographic Choice Concentrates Multiplicity Near the Gap

To derive this additional result, set $d=\sqrt\kappa$ and $D=\sqrt\vartheta$; here $d$ is not a spectral multiplicity. The initial degree is $k=\lfloor aD\rfloor$. In each cell, the leftmost allowed node $h_J$ is exponentially small. Define the largest real weight that can be subtracted at this node while preserving positivity on the cone of nonnegative polynomials of degree $k$:

$$\begin{align}
\lambda_{a,J}:=\sup\{w\ge0:\ \Lambda(p)-wp(h_J)\ge0
\text{ for all }p\in\Pi_k,\ p\ge0\text{ on }[h_J,1]\}.
\end{align}$$

Let $m_{a,J}$ be the actual lexicographic multiplicity. Strong moment positivity and the unit-weight design control the integer remainder and give

$$\begin{align}
\lfloor(1-\beta_{h,J}^{-1})\lambda_{a,J}\rfloor \le m_{a,J}\le\lambda_{a,J},\qquad \beta_{h,J}\ge a^{-C}e^{\eta aD}.
\end{align}$$

Here $\beta_{h,J}$ is the coefficient in the variation lower bound retained in Section 3 after the node domain is reduced to $[h_J,1]$. If we first insert slightly fewer than $\lambda_{a,J}$ unit nodes, the remaining functional still meets the unit-weight design conditions. The lexicographically minimal choice must therefore place at least that many nodes at the leftmost point. Since $\beta_{h,J}$ is exponentially large, the relative difference between the integer multiplicity and the real capacity tends to zero. (Eqs. (E.37)–(E.38), pp. 90–91.)

The capacity itself can be written as an inverse Gram form. Set $v_n(s)=(1,s,\ldots,s^n)^T$, $H_n=\Lambda[v_nv_n^T]$, and $H_n^+=\Lambda[(1-s)v_nv_n^T]$. Then

$$
\lambda_{a,J}=\begin{cases}
[v_n(h_J)^TH_n^{-1}v_n(h_J)]^{-1},&k=2n,\\
[(1-h_J)v_n(h_J)^T(H_n^+)^{-1}v_n(h_J)]^{-1},&k=2n+1.
\end{cases}
$$

For the proof, use the sum-of-squares decomposition of polynomials nonnegative on an interval. At even degree, the part with the factor $(s-h_J)(1-s)$ vanishes at the endpoint; at odd degree, the part with the factor $s-h_J$ vanishes there. The largest rank-one subtraction allowed by the remaining form gives the stated expressions. (Eq. (E.39), p. 91.)

When computing the capacity, we may first replace the current measure by the reference measure. For both types of active test polynomials, $q^2$ and $(1-s)q^2$, the integral of the initialization error is exponentially small relative to the reference integral. The two positive Gram forms and their inverse forms therefore have relative errors tending to zero. (Eqs. (E.35)–(E.39), pp. 90–91.) In the zero-spin sector, the change of variables $e=ax^2$, with $d\le x\le D$, gives the reference measure

$$\begin{align}
g(x)e^{4\pi ax}[1+O(a^{-1})]dx,\qquad g(x)=\frac{(1-e^{-2\pi x})^2}{x}.
\end{align}$$

Set $y=4\pi a(D-x)$, $Y=4\pi a(D-d)$, and $C_a=e^{4\pi aD}/(4\pi a)$. The measure becomes

$$\begin{align}
C_a\,g(D-y/(4\pi a))e^{-y}dy,\qquad 0\le y\le Y.
\end{align}$$

The leftmost energy point corresponds to the right endpoint $y=Y$. Temporarily omit the positive factor $g$. For the weight $y^\alpha e^{-y}dy$, use the orthonormal Laguerre polynomials with positive leading coefficients,

$$\begin{align}
p_m^{(\alpha)}(y)=\frac{(-1)^mL_m^\alpha(y)}{\sqrt{\Gamma(m+\alpha+1)/m!}},\qquad K_n^{(\alpha)}(y,y')=\sum_{m=0}^np_m^{(\alpha)}(y)p_m^{(\alpha)}(y').
\end{align}$$

Even degree $k=2n$ corresponds to $\alpha=0$, and the capacity is $C_a/K_n^{(0)}(Y,Y)$. At odd degree, the additional factor $1-s$ corresponds to $\alpha=1$ and gives $C_a/[YK_n^{(1)}(Y,Y)]$.

For $z>4$, write $z=2+r+r^{-1}$ with $0<r<1$, and set $\Psi(z)=1+r-\log r$. The coefficient integral for the Laguerre generating function has a saddle at $t=-r$, giving

$$\begin{align}
L_n^\alpha(nz)=\frac{(-1)^ne^{n\Psi(z)}}{\sqrt{2\pi n}} (1+r)^{-\alpha-1/2}(1-r)^{-1/2}[1+O(n^{-1})].
\end{align}$$

Starting at the highest degree and proceeding downward, the ratio of adjacent terms tends to $r$ and satisfies a uniform geometric bound. Hence

$$\begin{align}
K_n^{(\alpha)}(nz,nz) \sim\frac{p_n^{(\alpha)}(nz)^2}{1-r^2}.
\end{align}$$

These half-line orthogonal polynomials can also be used for the present finite interval. Indeed, the omitted tail of the Gram form is controlled by

$$\begin{align}
\int_{nz}^\infty K_n^{(\alpha)}(y,y)y^\alpha e^{-y}dy \le n^C e^{-n[z-2\Psi(z)]}
\end{align}$$

and $z-2\Psi(z)>0$. Truncation thus produces only a relatively exponentially small error. Substitution into the even-degree capacity gives

$$\begin{align}
\lambda_{2n}^{\exp} =\frac{n}{2a}(1-r^2)^2 e^{4\pi aD-2n\Psi(Y/n)}[1+o(1)].
\end{align}$$

At odd degree, the expression for the same $n$ has an additional factor tending to $r$. Replacing $n$ by $k/2$ puts both parities into a single formula. (Eqs. (E.40)–(E.42), pp. 91–92.) Introduce the limiting parameters as $a$ becomes large:

$$\begin{align}
z=8\pi(1-d/D),\qquad r_{\rm gap}=\frac{2}{z-2+\sqrt{z(z-4)}},\qquad H=D[4\pi-1-r_{\rm gap}+\log r_{\rm gap}],
\end{align}$$

which gives

$$\begin{align}
4\pi\sqrt\kappa<H<4\pi\sqrt\vartheta, \qquad \log\lambda_k^{\exp}=aH-\{aD\}\log r_{\rm gap} +\log\left[\frac D4(1-r_{\rm gap}^2)^2\right]+o(1).
\end{align}$$

The floor term comes from $k=\lfloor aD\rfloor$. With $z=2+r+r^{-1}$ and $\Psi(z)=1+r-\log r$, the exponent of the exterior capacity is $4\pi aD-k\Psi(2Y/k)$, where $Y=4\pi a(D-d)$. Its derivative with respect to $k$ is $\log r$, so the fractional part of the degree produces the bounded oscillation above. (Eqs. (E.40)–(E.43), pp. 91–92.)

Now restore $g$. In the Laguerre basis, the new Gram matrix has entries $\int g(D-y/(4\pi a))p_i(y)p_j(y)e^{-y}dy$. Reverse the order of the basis, starting from degree $n$. The normalized evaluation vector tends to $(1,r,r^2,\ldots)$. After division by $n$, the coefficients of the tridiagonal recurrence matrix for Laguerre multiplication tend to those of $2I+S+S^*$, where $S$ is the shift on integer indices. This gives a strong operator limit for the Gram matrices. Its compression to nonnegative indices has symbol

$$\begin{align}
\mathfrak g(\theta)=g\left(D-\frac D{8\pi}(2+2\cos\theta)\right)
\end{align}$$

and is the Toeplitz operator $T(\mathfrak g)$. Since $g$ has a uniform positive lower bound, the inverses also converge strongly: $A_n^{-1}-T^{-1}=A_n^{-1}(T-A_n)T^{-1}$. The inverse Gram form in the capacity therefore reduces to pairing $T(\mathfrak g)^{-1}$ with the geometric evaluation vector.

This pairing can be evaluated using an analytic function on the unit disk. Define

$$\begin{align}
O(\zeta)=\exp\left[\frac1{4\pi}\int_{-\pi}^{\pi} \frac{e^{i\theta}+\zeta}{e^{i\theta}-\zeta}\log\mathfrak g(\theta)\,d\theta\right].
\end{align}$$

On the boundary, $|O|^2=\mathfrak g$, so multiplication by $O$ converts the weighted Hardy norm into the ordinary Hardy norm. The squared norm of the evaluation kernel at $r$ is therefore $[(1-r^2)|O(r)|^2]^{-1}$. Compared with the case without the multiplier, the capacity is multiplied by $|O(r)|^2$. Applying the Poisson kernel and setting $t=2+2\cos\theta$ gives the constant correction $\mathcal G=\log|O(r_{\rm gap})|^2$. (Derivation preceding (E.44), pp. 92–93.)

For fixed nonzero spin, use the same inverse form. Set $j=|J|$ and $x=\sqrt{e/a-j/a}$, and then shift to $v=x+j/(2aD)$. The reference exponent becomes

$$\begin{align}
2\pi a\left(x+\sqrt{x^2+2j/a}\right) =4\pi av+2\pi j(v^{-1}-D^{-1})+O(a^{-1}).
\end{align}$$

At the same time, the left endpoint shifts by $j(D^{-1}-d^{-1})/(2a)+O(a^{-2})$. Substituting this endpoint shift and the multiplier $e^{2\pi j(v^{-1}-D^{-1})}$ into the same limit gives a factor $e^{-\chi|J|}$ relative to the zero-spin sector. The constants are

$$\begin{aligned}
s_*&=D\left(1-\frac1{2\pi}\right),\\
\mathcal G&=\frac{\sqrt{z(z-4)}}\pi \int_0^4\frac{\log g(D-Dt/(8\pi))}{(z-t)\sqrt{t(4-t)}}\,dt,\\
C_{\rm sc}&=\log\left[\frac D4(1-r_{\rm gap}^2)^2\right]+\mathcal G,\\
\chi&=\frac{2\pi\sqrt{(s_*-d)(D-d)}}d \left(\frac1{\sqrt{s_*D}}-\frac1D\right)>0.
\end{aligned}$$

Define the common scale of the near-endpoint multiplicities by

$$\begin{align}
M_a=\exp[aH-\{aD\}\log r_{\rm gap}+C_{\rm sc}].
\end{align}$$

Returning from capacity to integer node multiplicity, the near-endpoint atoms in each fixed spin sector lie at $e=b+\xi_{a,J}$, with $\xi_{a,J}\to0^+$, and satisfy

$$\begin{align}
\frac{m_{a,J}}{M_a}\longrightarrow e^{-\chi|J|}.
\end{align}$$

To pass from these sectorwise results to the total state count, we must also control the spin sum and the other nodes. Appendix E.3 uses an off-diagonal kernel lower bound to show that the other nodes in the same bounded energy-offset interval have multiplicity $o(M_a)$. It also proves a uniform bound with geometric decay in $|J|$, (E.48), allowing the fixed-spin limits to be summed term by term. (Eqs. (E.44)–(E.48), pp. 93–96.)

The spin weights sum to $\sum_{J\in\mathbb Z}e^{-\chi|J|}=1+2e^{-\chi}/(1-e^{-\chi})=\coth(\chi/2)$. Include the descendants of each near-endpoint primary and, for fixed $u\ge0$, define

$$\begin{align}
\mathcal B_\phi(u)=\sum_{N\ge0}p_2(N)\phi(N-u),
\end{align}$$

which gives

$$\begin{align}
\frac{N_\phi(E_g+u)}{M_a}\longrightarrow
\coth(\chi/2)\mathcal B_\phi(u).
\end{align}$$

For the bump above with half-width $w>1/2$, the right-hand side is strictly positive. Thus

$$\begin{align}
\log N_\phi(E_g+u)=aH-\{a\sqrt\vartheta\}\log r_{\rm gap} +C_{\rm sc}+\log\coth(\chi/2)+\log\mathcal B_\phi(u)+o(1).
\end{align}$$

There is no $\log a$ term. The prescribed first level has total weight only $O(1)$ and is not the source of this exponential entropy. Its contribution is exactly $d_{\rm first}\mathcal B_\phi(u)$, but the available $o(M_a)$ remainder does not resolve it as a controlled next term. (Eqs. (6.32)–(6.34), pp. 42–43.)

#### A Non-BTZ Interval and Recovery at High Energy

Set $\epsilon_H=H^2/(16\pi^2)$, so that $\kappa<\epsilon_H<\vartheta$. For fixed $\kappa<\epsilon<\epsilon_H$ and $E=a\epsilon-1/12$, the descendants of the near-gap atoms alone give

$$\begin{align}
\liminf_{a\to\infty}\frac1a\log \frac{N_\phi(a\epsilon-1/12)}{N_\phi^{\rm BTZ}(a\epsilon-1/12)} \ge H-4\pi\sqrt\epsilon>0.
\end{align}$$

These states have primary multiplicity with entropy $aH$. Reaching the indicated energy requires only descendants at $N\asymp a(\epsilon-\kappa)$, whose additional entropy is $O(\sqrt a)$. The leading BTZ entropy, by contrast, is $4\pi a\sqrt\epsilon$. A more precise lower bound retains

$$\begin{align}
\log\frac{N_\phi}{N_\phi^{\rm BTZ}} \ge a(H-4\pi\sqrt\epsilon) +\frac{2\pi}{\sqrt3}\sqrt{a(\epsilon-\kappa)} -\frac34\log a-C.
\end{align}$$

At the boundary $\epsilon=\epsilon_H$, this lower bound still forces the ratio to diverge, but it does not locate the actual spectral transition. The statement is a lower bound on the full count, not a claim that these descendants exhaust the state density. The kernel must satisfy the sampling positivity condition above. (Proposition 6.2, (E.50)–(E.51), pp. 43, 97.)

On the other hand, suppose $E=\lambda c$ and $12\lambda>\vartheta$ with a fixed positive margin. The initial primaries and all their relevant descendants then contribute at most

$$\begin{align}
\operatorname{poly}(a)\exp[4\pi a\sqrt\vartheta+O(\sqrt a)],
\end{align}$$

which is strictly below the leading BTZ exponential at that energy. For the remaining short cells, the moment approximation and Poisson summation arguments of Section 5 apply again, recovering the BTZ expansion to every fixed finite order. (Proposition 6.3, (E.52), pp. 43–44, 97–98.)

The proportional-gap family therefore has three established regimes: vacuum descendants below the gap, an extensive energy interval above the gap with exponentially more states than BTZ, and recovery of the same BTZ expansion at sufficiently high energy. The current upper and lower bounds do not determine the full behavior in the intermediate region. Neither $\epsilon_H$ nor $\vartheta$ can be identified directly with the actual transition point.

## 7. Physical Consequences of the Spectral Construction

The construction lets us prescribe a low-energy primary gap while retaining positive integer multiplicities and, in the fixed-offset spectral families, obtain the BTZ microcanonical entropy with all corrections of fixed finite order. Each complete modular repair preserves modular invariance; the unit-weight moment design supplies integrality. The error decay provided by vanishing moments makes the two requirements compatible.

For $0<\lambda<1/12$, the inverse temperature of the BTZ saddle, $\beta_*=2\pi/\sqrt{12\lambda}$, exceeds $2\pi$. Thermal AdS dominates the canonical ensemble in this regime. We are instead computing a microcanonical count near a fixed energy and have directly proved that it agrees with the single BTZ contribution. No assumption that BTZ dominates the canonical ensemble is needed. Moreover, different feasible node choices can have the same smoothed asymptotic expansion, so that expansion does not uniquely determine the microscopic energy levels.

To promote a member of this family to a full unitary compact CFT, one would also need a common set of OPE data satisfying crossing, torus one-point modular covariance, and higher-genus sewing. A nonperturbative pure-$AdS_3$ gravity interpretation would further require an account of the origin of these modular repairs in the bulk path integral. The construction supplies neither of these additional structures. It also neither assigns a probability measure to the admissible spectral families nor determines spectral correlation functions. What it produces is a family of modular-invariant torus partition functions satisfying strong spectral constraints, together with their state counts at the specified smoothing scale and in the specified limits.
