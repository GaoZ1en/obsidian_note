---
title: finite system
date: 2026-06-24
summary: "Finite-radius Proca field in global AdS3 with fixed tangential vector components, the induced radial boundary condition, the helicity-decoupled spectrum equation, and the off-shell mode-expansion criterion."
---

In this note we consider the Proca field on finite-radius global $\mathrm{AdS}_{3}$,

$$\begin{align}
\mathrm{d}s^{2} &=-(1+r^{2})\mathrm{d}t^{2} +\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi^{2}, &0\leq r\leq r_{0},
\end{align}$$

with action

$$\begin{align}
S&=\int\mathrm{d}^{3}x\sqrt{-g}\left( -\frac14 F_{\mu\nu}F^{\mu\nu} -\frac12\mu^{2}A_{\mu}A^{\mu} \right), &\mu^{2}>0.
\end{align}$$

The finite wall is taken to fix the tangential contravariant components

$$\begin{align}
A^{t}\big|_{r=r_{0}}&=0, & A^{\phi}\big|_{r=r_{0}}&=0.
\end{align}$$

Unlike Maxwell theory, this is not a gauge choice: the mass term removes the gauge symmetry, and the divergence constraint follows from the equation of motion.

# boundary condition for $A^r$

The Proca equation is

$$\begin{align}
\nabla_{\nu}F^{\nu\mu}-\mu^{2}A^{\mu}&=0.
\end{align}$$

Taking a divergence gives

$$\begin{align}
\mu^{2}\nabla_{\mu}A^{\mu}&=0,
\end{align}$$

so for $\mu^{2}>0$,

$$\begin{align}
\nabla_{\mu}A^{\mu}&=0.
\end{align}$$

In the coordinates above, $\sqrt{-g}=r$, hence

$$\begin{align}
\nabla_{\mu}A^{\mu} &=\partial_{t}A^{t}+\partial_{r}A^{r} +\frac{1}{r}A^{r}+\partial_{\phi}A^{\phi}\\
&=\partial_{t}A^{t}+\frac{1}{r}\partial_{r}(rA^{r}) +\partial_{\phi}A^{\phi}.
\end{align}$$

If $A^{t}$ and $A^{\phi}$ vanish as functions on the wall, then their tangential derivatives vanish there. Therefore the Proca constraint imposes

$$\begin{align}
\boxed{\partial_{r}(rA^{r})\big|_{r=r_{0}}=0.}
\end{align}$$

Equivalently, for the covariant radial component $A_{r}=A^{r}/(1+r^{2})$,

$$\begin{align}
\partial_{r}\!\left(r(1+r^{2})A_{r}\right)\big|_{r=r_{0}}=0.
\end{align}$$

# decoupled bulk equations

After using $\nabla_{\mu}A^{\mu}=0$ to eliminate $A^{t}$, define

$$\begin{align}
\psi&=A^{r}, & \varphi&=rA^{\phi}.
\end{align}$$

The spatial Proca equations become

$$\begin{align}
\mathcal{D}\psi-\frac{2}{r^{2}}\partial_{\phi}\varphi&=0,\\
\mathcal{D}\varphi+\frac{2}{r^{2}}\partial_{\phi}\psi&=0,
\end{align}$$

where

$$\begin{align}
\mathcal{D} &=(1+r^{2})\partial_{r}^{2} +\frac{1+3r^{2}}{r}\partial_{r} -\frac{1}{1+r^{2}}\partial_{t}^{2} +\frac{1}{r^{2}}\partial_{\phi}^{2} +1-\mu^{2}-\frac{1}{r^{2}}.
\end{align}$$

Introduce the helicity variables

$$\begin{align}
\Phi_{\pm}&=\frac12(\varphi\pm i\psi).
\end{align}$$

Then

$$\begin{align}
\left(\mathcal{D}\mp\frac{2i}{r^{2}}\partial_{\phi}\right)\Phi_{\pm}&=0,
\end{align}$$

or explicitly

$$\begin{align}
\left[ (1+r^{2})\partial_{r}^{2} +\frac{1+3r^{2}}{r}\partial_{r} -\frac{1}{1+r^{2}}\partial_{t}^{2} +1-\mu^{2} +\frac{1}{r^{2}}\left(\partial_{\phi}^{2}\mp2i\partial_{\phi}-1\right) \right]\Phi_{\pm}&=0.
\end{align}$$

For a separated mode $e^{-i\omega t+im\phi}$, the two radial equations are scalar-type equations with

$$\begin{align}
\ell_{+}&=|m-1|, & \ell_{-}&=|m+1|, & \Delta&=1+\mu.
\end{align}$$

The regular radial branch is

$$\begin{align}
R_{\ell}(\omega;r) &=r^{\ell}(1+r^{2})^{-(\ell+\Delta)/2} {}_2F_1\left( \frac{\ell+\Delta-\omega}{2}, \frac{\ell+\Delta+\omega}{2}; 1+\ell; \frac{r^{2}}{1+r^{2}} \right).
\end{align}$$

# finite-radius spectrum

For fixed $m$, write

$$\begin{align}
\Phi_{+}(r)&=c_{+}R_{\ell_{+}}(\omega;r), & \Phi_{-}(r)&=c_{-}R_{\ell_{-}}(\omega;r).
\end{align}$$

The wall conditions are

$$\begin{align}
\varphi(r_{0})&=0, & \partial_{r}(r\psi)\big|_{r=r_{0}}&=0.
\end{align}$$

Since $\varphi=\Phi_{+}+\Phi_{-}$ and $\psi=-i(\Phi_{+}-\Phi_{-})$, these become

$$\begin{align}
c_{+}R_{\ell_{+}}(r_{0})+c_{-}R_{\ell_{-}}(r_{0})&=0,\\
c_{+}\partial_{r}\!\left(rR_{\ell_{+}}\right)\big|_{r=r_{0}} -c_{-}\partial_{r}\!\left(rR_{\ell_{-}}\right)\big|_{r=r_{0}}&=0.
\end{align}$$

It is useful to package the finite-wall condition as the spectral function

$$\begin{align}
D_{r_{0}}(\omega) &=R_{\ell_{+}}(r_{0})\, \partial_{r}\!\left(rR_{\ell_{-}}\right)\big|_{r=r_{0}} +R_{\ell_{-}}(r_{0})\, \partial_{r}\!\left(rR_{\ell_{+}}\right)\big|_{r=r_{0}} .
\end{align}$$

Non-trivial finite-radius Proca modes are precisely the zeros of $D_{r_{0}}$. The two terms in $D_{r_{0}}$ show that the wall mixes the two helicity variables. A single helicity branch is not enough to satisfy both $A^{\phi}|_{r_{0}}=0$ and $\partial_{r}(rA^{r})|_{r_{0}}=0$ unless the complementary boundary equation becomes redundant at a special frequency.

The infinite-volume limit is obtained from the large-$r$ continuation of the same regular branch. For generic non-integer $\mu$,

$$\begin{align}
R_{\ell}(\omega;r) &=S_{\ell}(\omega)r^{\mu-1}+N_{\ell}(\omega)r^{-\mu-1}+\cdots,\\
S_{\ell}(\omega) &=\frac{\Gamma(1+\ell)\Gamma(\mu)} {\Gamma\!\left(\frac{\ell+\Delta-\omega}{2}\right) \Gamma\!\left(\frac{\ell+\Delta+\omega}{2}\right)}.
\end{align}$$

Here $S_{\ell}$ multiplies the non-normalizable asymptotic branch. Substituting this expansion into $D_{r_{0}}$ gives

$$\begin{align}
F_{r_{0}}(\omega) &\equiv r_{0}^{2-2\mu}D_{r_{0}}(\omega)\\
&=2\mu\,S_{\ell_{+}}(\omega)S_{\ell_{-}}(\omega)+o(1).
\end{align}$$

Thus the limiting spectral function is

$$\begin{align}
F_{\infty}(\omega)&=2\mu S_{\ell_{+}}(\omega)S_{\ell_{-}}(\omega).
\end{align}$$

The large-$r$ expansion, or its logarithmic limiting form for integer $\mu$, is uniform for $\omega$ in every compact subset of the complex plane. Hence $F_{r_{0}}\to F_{\infty}$ uniformly on compact $\omega$-sets. For positive frequency, the zeros of $F_{\infty}$ occur when one of the two non-normalizable coefficients vanishes:

$$\begin{align}
\frac{\ell_{\pm}+\Delta-\omega}{2}&=-n,\qquad n=0,1,2,\ldots .
\end{align}$$

This gives the usual infinite-volume Proca families

$$\begin{align}
\omega_{n,m,+}^{(\infty)}&=\mu+1+2n+|m-1|,\\
\omega_{n,m,-}^{(\infty)}&=\mu+1+2n+|m+1|.
\end{align}$$

At such a frequency one helicity branch has no non-normalizable tail, and the finite-wall mixing coefficient of the other branch is forced to vanish in the large-wall limit. This is the sense in which the finite-radius modes reduce to the infinite-volume helicity families.

The uniform compact convergence gives the precise spectral statement. Let $K$ be a compact domain whose boundary contains no zero of $F_{\infty}$. By Rouche's theorem, for sufficiently large $r_{0}$ the number of zeros of $D_{r_{0}}$ in $K$ equals the number of zeros of $F_{\infty}$ in $K$, counted with multiplicity. Therefore no additional finite-radius roots can remain in a fixed bounded frequency region away from the infinite-volume Proca frequencies. Equivalently, every bounded sequence of finite-radius roots has a subsequence whose limit is one of the two infinite-volume frequencies above. Near a simple infinite-volume root $\omega_{*}$, the same argument gives a unique finite-radius root converging to $\omega_{*}$; at degenerate coincidences of the two towers, the statement holds with the corresponding multiplicity.

Thus the fixed low-lying roots, counted in any finite frequency window, converge as a multiset to the infinite-volume Proca spectrum. There is no uniform statement that all roots over the whole positive real axis stay bounded as $r_{0}\to\infty$: the infinite-volume spectrum itself is unbounded as $n\to\infty$, and a sequence that follows higher and higher radial excitation number can run to $\omega=\infty$.

As a numerical check, for $\mu=2$ and $m=1$, the root near the first $+$-branch value $\omega=3$ is

$$\begin{align}
\omega(r_{0}=10)&=3.0003843828,\\
\omega(r_{0}=20)&=3.0000247511,\\
\omega(r_{0}=40)&=3.0000015586.
\end{align}$$
