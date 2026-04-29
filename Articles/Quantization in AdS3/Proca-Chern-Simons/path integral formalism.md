---
title: "Path integral formalism"
date: 2026-04-06
summary: "Derives the Euclidean path-integral formulation for Proca and Proca-Chern-Simons theories in AdS3; shows how the path integral yields the covariant Green's function and explains contact-term differences with canonical correlators."
---

the metric of Euclidean $\mathrm{AdS}_{3}$ is

$$\begin{align}
\mathrm{d}s^{2} & =(1+r^{2})\mathrm{d}\tau^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}.
\end{align}$$

Let us first consider the pure Proca theory in Euclidean signature. The Euclidean action is

$$\begin{align}
S_{E}[A] & =\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right),
\end{align}$$

where $\mathcal{M}$ is bounded by two constant-$\tau$ Cauchy surfaces $\Sigma _{i}$ and $\Sigma _{f}$. The Euclidean path-integral two-point function is defined by

$$\begin{align}
G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & :=\frac{\int \mathcal{D}A\,e^{-S_{E}[A]}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})}{\int \mathcal{D}A\,e^{-S_{E}[A]}}.
\end{align}$$

To compute it, introduce the generating functional

$$\begin{align}
Z[J] & :=\int \mathcal{D}A\exp\left(-S_{E}[A]+\int \mathrm{d}^{3}x\sqrt{ g }A^{\mu}J_{\mu}\right).
\end{align}$$

Then

$$\begin{align}
G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =\left.\frac{1}{Z[0]}\frac{1}{\sqrt{ g(x_{1}) }}\frac{\delta}{\delta J_{\mu_{1}}(x_{1})}\frac{1}{\sqrt{ g(x_{2}) }}\frac{\delta}{\delta J_{\mu_{2}}(x_{2})}Z[J]\right|_{J=0}.
\end{align}$$

Now integrate the Maxwell term by parts. Up to boundary terms, the Euclidean action can be written as

$$\begin{align}
S_{E}[A] & =\frac{1}{2}\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\,A_{\mu}\mathcal{K}^{\mu}{}_{\nu}A^{\nu},
\end{align}$$

where the quadratic kernel is defined by

$$\begin{align}
\mathcal{K}^{\mu}{}_{\nu}A^{\nu} & :=-\nabla _{\rho}F^{\rho \mu}+\mu ^{2}A^{\mu}.
\end{align}$$

Equivalently, the source-coupled functional takes the Gaussian form

$$\begin{align}
Z[J] & =\int \mathcal{D}A\exp\left[-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ g }\,A_{\mu}\mathcal{K}^{\mu}{}_{\nu}A^{\nu}+\int \mathrm{d}^{3}x\sqrt{ g }\,A^{\mu}J_{\mu}\right].
\end{align}$$

Assuming the boundary conditions are such that $\mathcal{K}$ is invertible on the normalizable sector, we define its inverse by

$$\begin{align}
\mathcal{K}^{\mu_{1}}{}_{\rho_{1}}G_{\text{path}}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}),
\end{align}$$

where the differential operator acts on the first argument. Completing the square,

$$\begin{align}
A^{\mu} & =\widetilde{A}^{\mu}+\int \mathrm{d}^{3}x_{2}\sqrt{ g(x_{2}) }\,G_{\text{path}}^{\mu,\mu_{2}}(x,x_{2})J_{\mu_{2}}(x_{2}),
\end{align}$$

we obtain

$$\begin{align}
Z[J] & =Z[0]\exp\left[\frac{1}{2}\int \mathrm{d}^{3}x_{1}\sqrt{ g(x_{1}) }\int \mathrm{d}^{3}x_{2}\sqrt{ g(x_{2}) }\,J_{\mu_{1}}(x_{1})G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2})J_{\mu_{2}}(x_{2})\right].
\end{align}$$

Therefore the path integral indeed produces the inverse of the quadratic kernel:

$$\begin{align}
G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =\left.\frac{1}{\sqrt{ g(x_{1}) }}\frac{\delta}{\delta J_{\mu_{1}}(x_{1})}\frac{1}{\sqrt{ g(x_{2}) }}\frac{\delta}{\delta J_{\mu_{2}}(x_{2})}\log Z[J]\right|_{J=0}.
\end{align}$$

The same result can be obtained directly from the Schwinger-Dyson equation. Since

$$\begin{align}
0 & =\int \mathcal{D}A\,\frac{1}{\sqrt{ g(x_{1}) }}\frac{\delta}{\delta A_{\mu_{1}}(x_{1})}\left(e^{-S_{E}[A]}A^{\mu_{2}}(x_{2})\right),
\end{align}$$

we find

$$\begin{align}
\left\langle \left(-\nabla _{\rho_{1}}F^{\rho_{1}\mu_{1}}(x_{1})+\mu ^{2}A^{\mu_{1}}(x_{1})\right)A^{\mu_{2}}(x_{2})\right\rangle _{\text{path}} & =\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

This is the covariant Green's function equation obeyed by the path-integral two-point function. In the notation of the manuscript, it is precisely the covariant equation verified in Section 5.4.

To understand the contact term more explicitly, it is useful to apply the general argument of Appendix I of canonical2 to the Euclidean Proca theory in AdS$_3$. Write the metric in ADM form,

$$\begin{align}
\mathrm{d}s^{2} & =N^{2}\mathrm{d}\tau ^{2}+\sigma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b},
\end{align}$$

with

$$\begin{align}
N & =\sqrt{1+r^{2}}, & \sigma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b} & =\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}.
\end{align}$$

We separate the field into the spatial components $A_{a}$ and the Euclidean time component $A_{\tau}$. Since

$$\begin{align}
F_{\tau a} & =\partial _{\tau}A_{a}-D_{a}A_{\tau},
\end{align}$$

the Euclidean action becomes

$$\begin{align}
S_{E}[A] & =\int \mathrm{d}\tau \int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\Bigg[\frac{1}{2N}\sigma ^{ab}(\partial _{\tau}A_{a}-D_{a}A_{\tau})(\partial _{\tau}A_{b}-D_{b}A_{\tau}) \\
& \qquad +\frac{N}{4}F_{ab}F^{ab}+\frac{N\mu ^{2}}{2}A_{a}A^{a}+\frac{\mu ^{2}}{2N}A_{\tau}^{2}\Bigg].
\end{align}$$

After integrating the mixed term by parts on $\Sigma$, this can be written in the same form as the $0+1$-dimensional model of Appendix I:

$$\begin{align}
S_{E}[A] & =\int \mathrm{d}\tau \int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\Bigg[\frac{1}{2N}\sigma ^{ab}\partial _{\tau}A_{a}\partial _{\tau}A_{b}+\frac{N}{4}F_{ab}F^{ab}+\frac{N\mu ^{2}}{2}A_{a}A^{a} \\
& \qquad +\frac{1}{2}A_{\tau}\,\mathcal{D}\,A_{\tau}+A_{\tau}\,D_{a}\left(\frac{1}{N}\sigma ^{ab}\partial _{\tau}A_{b}\right)\Bigg],
\end{align}$$

where

$$\begin{align}
\mathcal{D} & :=\frac{\mu ^{2}}{N}-D_{a}\left(\frac{1}{N}\sigma ^{ab}D_{b}\right).
\end{align}$$

Thus $A_{\tau}$ plays exactly the role of the non-dynamical variable $y^{a}$ in Appendix I. Integrating it out in the Euclidean path integral produces a Gaussian factor and, for the $A_{\tau}$ two-point function, a contribution from the inverse kernel $\mathcal{D}^{-1}$. In the present field-theory notation this gives

$$\begin{align}
G_{\text{path};\tau\tau}(x_{1},x_{2}) & =\text{derivative terms built from the effective }A_{a}\text{ propagator}+\mathcal{D}^{-1}(x_{1},x_{2}).
\end{align}$$

On the other hand, in the canonical formulation one first solves the non-dynamical equation for $A_{\tau}$ in terms of the momentum conjugate to $A_{a}$. The Euclidean canonical momentum is

$$\begin{align}
\pi ^{a} & =\frac{\partial \mathcal{L}_{E}}{\partial (\partial _{\tau}A_{a})}=\frac{\sqrt{\sigma}}{N}\sigma ^{ab}(\partial _{\tau}A_{b}-D_{b}A_{\tau}),
\end{align}$$

and varying the action with respect to $A_{\tau}$ gives

$$\begin{align}
D_{a}\pi ^{a}-\frac{\mu ^{2}\sqrt{\sigma}}{N}A_{\tau} & =0.
\end{align}$$

Hence

$$\begin{align}
A_{\tau} & =\frac{N}{\mu ^{2}\sqrt{\sigma}}D_{a}\pi ^{a}.
\end{align}$$

This is the field-theoretic analogue of equation (I.11) in Appendix I. The key point is that the path integral and the canonical formalism treat $A_{\tau}$ differently.

The cleanest place to see the contact term is the first-order Euclidean path integral. Before eliminating $A_{\tau}$, the part of the action involving $A_{\tau}$ takes the schematic form

$$\begin{align}
S_{E}^{(A_{\tau})} & =\int \mathrm{d}\tau \int _{\Sigma}\mathrm{d}^{2}x\left[\frac{\mu ^{2}\sqrt{\sigma}}{2N}A_{\tau}^{2}-A_{\tau}D_{a}\pi ^{a}\right].
\end{align}$$

Completing the square gives

$$\begin{align}
S_{E}^{(A_{\tau})} & =\int \mathrm{d}\tau \int _{\Sigma}\mathrm{d}^{2}x\left[\frac{\mu ^{2}\sqrt{\sigma}}{2N}\left(A_{\tau}-\frac{N}{\mu ^{2}\sqrt{\sigma}}D_{a}\pi ^{a}\right)^{2}-\frac{N}{2\mu ^{2}\sqrt{\sigma}}(D_{a}\pi ^{a})^{2}\right].
\end{align}$$

So in the path integral one still integrates over the shifted Gaussian fluctuation

$$\begin{align}
\eta & :=A_{\tau}-\frac{N}{\mu ^{2}\sqrt{\sigma}}D_{a}\pi ^{a}.
\end{align}$$

This means that the path-integral correlator splits as

$$\begin{align}
G_{\text{path};\tau\tau}(x_{1},x_{2}) & =\bigg\langle \frac{N}{\mu ^{2}\sqrt{\sigma}}D_{a}\pi ^{a}(x_{1})\frac{N}{\mu ^{2}\sqrt{\sigma}}D_{b}\pi ^{b}(x_{2})\bigg\rangle +\langle \eta (x_{1})\eta (x_{2})\rangle .
\end{align}$$

Because $\eta$ is an ultralocal Gaussian variable, its self-contraction is simply the inverse of the coefficient multiplying $A_{\tau}^{2}$:

$$\begin{align}
\langle \eta (x_{1})\eta (x_{2})\rangle & =\frac{N(x_{1})}{\mu ^{2}\sqrt{\sigma}(x_{1})}\delta ^{2}(x_{1}-x_{2}).
\end{align}$$

By contrast, in the canonical formalism one solves the constraint first and substitutes $A_{\tau}=\frac{N}{\mu ^{2}\sqrt{\sigma}}D_{a}\pi ^{a}$ before quantizing. Therefore the canonical correlator keeps only the first term and has no independent $\eta$ contraction. The difference is exactly the missing Gaussian self-contraction, which is why it is a local contact term:

$$\begin{align}
G_{\text{can};\tau\tau}(x_{1},x_{2}) & =G_{\text{path};\tau\tau}(x_{1},x_{2})-\frac{N(x_{1})}{\mu ^{2}\sqrt{\sigma }(x_{1})}\delta ^{2}(x_{1}-x_{2}).
\end{align}$$

For the mixed and purely spatial components there is no extra local term, again exactly as in Appendix I. Raising the two indices with the Euclidean metric then gives

$$\begin{align}
G_{\text{can}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2})-\frac{1}{\mu ^{2}}g^{\mu_{1}\tau}g^{\mu_{2}\tau}\frac{N(x_{1})}{\sqrt{ \sigma }(x_{1})}\delta ^{2}(x_{1}-x_{2}).
\end{align}$$

This is exactly the contact term found from the mode-sum derivation. In other words, the path integral computes the covariant $\mathcal{T}^{*}$-ordered two-point function, while the canonical mode expansion computes the $\mathcal{T}$-ordered correlator obtained after eliminating the non-dynamical component $A_{\tau}$. The difference between the two orderings is precisely the local term above.

We now turn to the Proca-Chern-Simons theory itself. In Euclidean signature, the action can be written as

$$\begin{align}
S_{E}^{\text{PCS}}[A] & =\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)+S_{E}^{\text{CS}}[A],
\end{align}$$

where $S_{E}^{\text{CS}}[A]$ denotes the Euclidean continuation of the Chern-Simons term. Up to boundary terms, the quadratic kernel entering the Gaussian path integral is the Euclidean operator whose inverse satisfies the covariant Green's function equation of Section 5.4. Therefore the path-integral propagator $G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2})$ of the full Proca-Chern-Simons theory is defined by

$$\begin{align}
\left( \delta _{\rho_{1}}^{\mu_{1}}\nabla ^{2}-\nabla _{\rho_{1}}\nabla ^{\mu_{1}}+\frac{k}{4\pi}\varepsilon ^{\mu_{1}}_{~~~\nu_{1}\rho_{1}}\nabla ^{\nu_{1}}-\delta _{\rho_{1}}^{\mu_{1}}\mu ^{2} \right)G_{\text{path}}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =-\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

Equivalently, using the first-order factorization reviewed in the manuscript, one decomposes the propagator into two branches,

$$\begin{align}
G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =G_{+,\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2})+G_{-,\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}),
\end{align}$$

with $G_{+,\text{path}}$ and $G_{-,\text{path}}$ satisfying

$$\begin{align}
(\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}-\mu _{+}g_{\mu_{1}\rho_{1}})G_{+,\text{path}}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =-\frac{1}{2\bar{\mu}}\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}), \\
(\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}+\mu _{-}g_{\mu_{1}\rho_{1}})G_{-,\text{path}}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =\frac{1}{2\bar{\mu}}\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

Their sum is the covariant Green's function of the full theory.

To compare with the canonical correlator, we again split the field into $A_{\tau}$ and $A_{a}$. The key point is that the Chern-Simons term is at most linear in $A_{\tau}$. Indeed, after the ADM decomposition and integration by parts on $\Sigma$, the Euclidean Chern-Simons contribution takes the schematic form

$$\begin{align}
S_{E}^{\text{CS}}[A] & =\int \mathrm{d}\tau \int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\left[A_{\tau}\,\mathcal{M}[A_{a}]+A_{a}\,\mathcal{N}^{ab}\partial _{\tau}A_{b}\right],
\end{align}$$

for some spatial differential operators $\mathcal{M}$ and $\mathcal{N}^{ab}$. In particular, the coefficient of $A_{\tau}^{2}$ is still entirely supplied by the Proca mass term, namely $\mu ^{2}/N$. Therefore the argument of Appendix I goes through without modification: the path integral and the canonical correlator differ only in the $\tau\tau$ component, and the local difference is still determined by the inverse of that coefficient.

Thus the full Proca-Chern-Simons canonical correlator satisfies

$$\begin{align}
G_{\text{can};\tau\tau}(x_{1},x_{2}) & =G_{\text{path};\tau\tau}(x_{1},x_{2})-\frac{N(x_{1})}{\mu ^{2}\sqrt{\sigma}(x_{1})}\delta ^{2}(x_{1}-x_{2}),
\end{align}$$

while the mixed and purely spatial components coincide with the path-integral correlator up to the usual covariant differentiation structure. Raising the two indices gives the same non-covariant contact term as in Section 5.3,

$$\begin{align}
G_{\text{can}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2})-\frac{1}{\mu ^{2}}g^{\mu_{1}\tau}g^{\mu_{2}\tau}\frac{N(x_{1})}{\sqrt{\sigma}(x_{1})}\delta ^{2}(x_{1}-x_{2}).
\end{align}$$

Since $\mu _{+}\mu _{-}=\mu ^{2}$, this is exactly the same contact term that appeared in the branch-sum derivation. Therefore the Euclidean path-integral formalism and the canonical mode expansion describe the same physics, but they naturally produce different orderings: the path integral gives the covariant $\mathcal{T}^{*}$-ordered Green's function, while the canonical construction gives the $\mathcal{T}$-ordered correlator with the additional equal-time contact term.

---

see also [[Articles/Quantization in AdS3/Proca-Chern-Simons/arxiv/another template/appendix_d|appendix_d]] for more rigorous details.