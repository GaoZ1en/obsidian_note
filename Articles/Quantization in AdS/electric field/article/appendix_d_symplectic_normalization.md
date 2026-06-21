---
title: "appendix_d_symplectic_normalization"
date: 2026-06-13
summary: "Evaluates the symplectic pairing of the temporal-gauge propagating modes and fixes their normalization constant."
---

# Appendix D: Symplectic normalization of the propagating modes

In this appendix, we evaluate the symplectic pairing of the temporal-gauge modes constructed in Section 3.1 and fix the overall constant that appears in $\Psi_{nm}$. The selection rule of Section 4.2 already shows that only the pairing between a mode and its complex conjugate can be non-zero. We therefore only need to evaluate $\Omega[A_{nm},A_{n'm'}^{*}]$ explicitly.

## D.1 Evaluation of the symplectic pairing

We start from the bilinear pairing introduced in Section 2,

$$\begin{align}
\Omega[A_{1},A_{2}]&=\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau_{\mu}\left(F_{1}^{\mu\nu}A_{2,\nu}-F_{2}^{\mu\nu}A_{1,\nu}\right).
\end{align}$$

On a constant-$t$ slice of global AdS$_3$,

$$\begin{align}
\mathrm{d}s_{\Sigma}^{2}&=\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi^{2}, & \sqrt{\sigma}&=\frac{r}{\sqrt{1+r^{2}}}, & \tau_{\mu}&=-\sqrt{1+r^{2}}\,\delta_{\mu}^{t}.
\end{align}$$

Therefore the pairing becomes

$$\begin{align}
\Omega[A_{1},A_{2}]&=-\int_{0}^{\infty}\mathrm{d}r\int_{0}^{2\pi}\mathrm{d}\phi\,r\left(F_{1}^{tr}A_{2,r}+F_{1}^{t\phi}A_{2,\phi}-F_{2}^{tr}A_{1,r}-F_{2}^{t\phi}A_{1,\phi}\right).
\end{align}$$

For the temporal-gauge representative $A^{\mu}=D^{\mu}\Psi$, the lowered components are

$$\begin{align}
A_{r}&=\frac{1}{r}\partial_{\phi}\Psi, & A_{\phi}&=-r(1+r^{2})\partial_{r}\Psi,
\end{align}$$

while the field-strength components are

$$\begin{align}
F^{tr}&=-\frac{1}{r}\partial_{t}\partial_{\phi}\Psi, & F^{t\phi}&=\frac{1}{r}\partial_{t}\partial_{r}\Psi.
\end{align}$$

We now write the separated mode as

$$\begin{align}
\Psi_{nm}&=C_{nm}e^{-i\omega_{nm}t}e^{im\phi}\mathcal{R}_{nm}(r), \\
\mathcal{R}_{nm}(r)&=r^{|m|}(1+r^{2})^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right).
\end{align}$$

Substituting these expressions into the symplectic pairing and evaluating the result on a fixed time slice gives

$$\begin{align}
\Omega[A_{nm},A_{n'm'}^{*}]&=-i(\omega_{nm}+\omega_{n'm'})C_{nm}C_{n'm'}^{*}e^{i(\omega_{n'm'}-\omega_{nm})t}\int_{0}^{2\pi}\mathrm{d}\phi\,e^{i(m-m')\phi} \\
&\qquad\times\int_{0}^{\infty}\mathrm{d}r\left[\frac{mm'}{r}\mathcal{R}_{nm}\mathcal{R}_{n'm'}+r(1+r^{2})(\partial_{r}\mathcal{R}_{nm})(\partial_{r}\mathcal{R}_{n'm'})\right].
\end{align}$$

Since the pairing is independent of the choice of Cauchy slice, we may set $t=0$. The angular integral then gives

$$\begin{align}
\int_{0}^{2\pi}\mathrm{d}\phi\,e^{i(m-m')\phi}&=2\pi\delta_{mm'}.
\end{align}$$

For fixed $m$, the radial profile satisfies the Sturm-Liouville form of the reduced equation,

$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}r}\left[r(1+r^{2})\frac{\mathrm{d}\mathcal{R}_{nm}}{\mathrm{d}r}\right]+\left[\omega_{nm}^{2}\frac{r}{1+r^{2}}-\frac{m^{2}}{r}\right]\mathcal{R}_{nm}&=0.
\end{align}$$

Multiplying this equation by $\mathcal{R}_{n'm}$, integrating by parts, and using regularity at the origin together with normalizability at infinity gives

$$\begin{align}
\int_{0}^{\infty}\mathrm{d}r\left[r(1+r^{2})(\partial_{r}\mathcal{R}_{nm})(\partial_{r}\mathcal{R}_{n'm})+\frac{m^{2}}{r}\mathcal{R}_{nm}\mathcal{R}_{n'm}\right]&=\omega_{nm}^{2}\int_{0}^{\infty}\mathrm{d}r\,\frac{r}{1+r^{2}}\mathcal{R}_{nm}\mathcal{R}_{n'm}.
\end{align}$$

Applying the same step with $n$ and $n'$ exchanged and subtracting the two relations yields

$$\begin{align}
(\omega_{nm}^{2}-\omega_{n'm}^{2})\int_{0}^{\infty}\mathrm{d}r\,\frac{r}{1+r^{2}}\mathcal{R}_{nm}\mathcal{R}_{n'm}&=0.
\end{align}$$

Because $\omega_{nm}=2n+2+|m|$, the modes with fixed $m$ and different $n$ are orthogonal with respect to the weight $\frac{r}{1+r^{2}}$. It remains to evaluate the diagonal integral.

## D.2 Fixing the normalization constant

For the diagonal pairing, the previous formula reduces to

$$\begin{align}
\Omega[A_{nm},A_{nm}^{*}]&=-4\pi i\,\omega_{nm}|C_{nm}|^{2}\int_{0}^{\infty}\mathrm{d}r\left[r(1+r^{2})(\partial_{r}\mathcal{R}_{nm})^{2}+\frac{m^{2}}{r}\mathcal{R}_{nm}^{2}\right].
\end{align}$$

Using the radial equation once more, we may rewrite the integral as

$$\begin{align}
\int_{0}^{\infty}\mathrm{d}r\left[r(1+r^{2})(\partial_{r}\mathcal{R}_{nm})^{2}+\frac{m^{2}}{r}\mathcal{R}_{nm}^{2}\right]&=\omega_{nm}^{2}\int_{0}^{\infty}\mathrm{d}r\,\frac{r}{1+r^{2}}\mathcal{R}_{nm}^{2}.
\end{align}$$

Now set $q=|m|$ and introduce

$$\begin{align}
x&=\frac{r^{2}-1}{r^{2}+1}.
\end{align}$$

Then

$$\begin{align}
\int_{0}^{\infty}\mathrm{d}r\,\frac{r}{1+r^{2}}\mathcal{R}_{nm}^{2}&=2^{-q-3}\int_{-1}^{1}\mathrm{d}x\,(1-x)(1+x)^{q}\left[P_{n}^{(1,q)}(x)\right]^{2}.
\end{align}$$

Using the standard Jacobi orthogonality formula, we obtain

$$\begin{align}
\int_{0}^{\infty}\mathrm{d}r\,\frac{r}{1+r^{2}}\mathcal{R}_{nm}^{2}&=\frac{n+1}{2\omega_{nm}(n+|m|+1)}.
\end{align}$$

Substituting this into the symplectic pairing gives

$$\begin{align}
\Omega[A_{nm},A_{nm}^{*}]&=-2\pi i\,|C_{nm}|^{2}\omega_{nm}^{2}\frac{n+1}{n+|m|+1}.
\end{align}$$

Imposing the canonical normalization

$$\begin{align}
\Omega[A_{nm},A_{n'm'}^{*}]&=-i\delta_{nn'}\delta_{mm'}
\end{align}$$

therefore fixes

$$\begin{align}
C_{nm}&=\sqrt{\frac{n+|m|+1}{2\pi\omega_{nm}^{2}(n+1)}}.
\end{align}$$

This is exactly the overall constant used in Section 3.1. By the field-strength equivalence proved in Section 3.3, the dual-scalar basis inherits the same normalization up to a pure phase, which does not affect the symplectic pairing.
