---
title: "appendix_c"
date: 2026-04-17
summary: "Derives positive-definite bilinear Noether identities for separated Proca-Chern-Simons modes and uses them to exclude the non-physical highest-weight roots."
---

# Appendix C: Symplectic positivity and the admissible highest-weight roots

In this appendix, we justify the choice of the highest-weight roots used in Section 3.4. The argument is the direct analogue of the positivity proof in the pure Proca theory, but now expressed in the notation of the Proca-Chern-Simons model.

The basic input is the bilinear identity derived in Section 2.2:

$$
\Omega[\mathcal{L}_{\xi}A_{1},A_{2}] = - H_{\xi}^{(2)}[A_{1},A_{2}].
$$

Although the symplectic form itself contains the Chern-Simons term, the bilinear Noether form $H_{\xi}^{(2)}$ appearing here is exactly the Maxwell-Proca expression written in Section 2.2. This is because the Chern-Simons contribution reduces to a boundary term that vanishes under the asymptotic boundary conditions, as shown in Appendix A.

## C.1 Positive-definite bilinears for separated modes

Consider a complex separated solution of either first-order branch,

$$
A^{\mu}(x) = e^{-i \omega t} e^{i m \phi} \widehat{A}^{\mu}(r),
$$

with $m \in \mathbb{Z}$. It is convenient to introduce the two Killing fields

$$
\zeta_{L} := \frac{\partial}{\partial t} - \frac{\partial}{\partial \phi} = 2 \xi_{0},
\qquad
\zeta_{R} := \frac{\partial}{\partial t} + \frac{\partial}{\partial \phi} = 2 \bar{\xi}_{0}.
$$

For a mode of the form above, one immediately has

$$
\mathcal{L}_{\zeta_{L}} A^{\mu} = - i (\omega + m) A^{\mu},
\qquad
\mathcal{L}_{\zeta_{R}} A^{\mu} = - i (\omega - m) A^{\mu}.
$$

Applying the bilinear identity with $(A_{1},A_{2}) = (A, A^{*})$ gives

$$
i (\omega + m) \Omega[A, A^{*}] = H_{\zeta_{L}}^{(2)}[A, A^{*}],
\qquad
i (\omega - m) \Omega[A, A^{*}] = H_{\zeta_{R}}^{(2)}[A, A^{*}].
$$

A direct component evaluation of the right-hand sides gives

$$
\begin{align}
H_{\zeta_{L}}^{(2)}[A, A^{*}]
& = \int_{0}^{\infty} \mathrm{d}r \int_{0}^{2 \pi} \mathrm{d}\phi \Bigg[
r \left| F_{tr} + F_{r \phi} \right|^{2}
+ \frac{1}{r} \left| F_{r \phi} \right|^{2}
+ \frac{1}{r(1+r^{2})} \left| F_{t \phi} \right|^{2} \\
& \qquad \qquad
+ \mu^{2} \frac{r}{1+r^{2}} \left| A_{t} - A_{\phi} \right|^{2}
+ \mu^{2} r(1+r^{2}) \left| A_{r} \right|^{2}
+ \mu^{2} \frac{1}{r(1+r^{2})} \left| A_{\phi} \right|^{2}
\Bigg],
\end{align}
$$

and similarly

$$
\begin{align}
H_{\zeta_{R}}^{(2)}[A, A^{*}]
& = \int_{0}^{\infty} \mathrm{d}r \int_{0}^{2 \pi} \mathrm{d}\phi \Bigg[
r \left| F_{tr} - F_{r \phi} \right|^{2}
+ \frac{1}{r} \left| F_{r \phi} \right|^{2}
+ \frac{1}{r(1+r^{2})} \left| F_{t \phi} \right|^{2} \\
& \qquad \qquad
+ \mu^{2} \frac{r}{1+r^{2}} \left| A_{t} + A_{\phi} \right|^{2}
+ \mu^{2} r(1+r^{2}) \left| A_{r} \right|^{2}
+ \mu^{2} \frac{1}{r(1+r^{2})} \left| A_{\phi} \right|^{2}
\Bigg].
\end{align}
$$

Both expressions are manifestly non-negative, and they vanish only for the trivial solution. Moreover, the complexified symplectic pairing satisfies

$$
\Omega[A, A^{*}]^{*} = \Omega[A^{*}, A] = - \Omega[A, A^{*}],
$$

so $i \Omega[A, A^{*}]$ is real. Therefore, on the positive-energy one-particle space where $i \Omega[A, A^{*}] > 0$, the relations above imply

$$
\omega + m > 0,
\qquad
\omega - m > 0.
$$

In particular,

$$
\omega > |m|,
\qquad
\omega \in \mathbb{R}.
$$

The complex conjugate mode $A^{*}$ satisfies the opposite inequalities and is the corresponding negative-frequency partner appearing in the real field expansion.

## C.2 Consequences for the highest-weight roots

Let $A_{\pm,0}^{\mu}$ be a primary mode in either branch. By definition,

$$
\mathcal{L}_{\xi_{0}} A_{\pm,0}^{\mu} = - i h_{\pm} A_{\pm,0}^{\mu},
\qquad
\mathcal{L}_{\bar{\xi}_{0}} A_{\pm,0}^{\mu} = - i \bar{h}_{\pm} A_{\pm,0}^{\mu}.
$$

Using

$$
\frac{\partial}{\partial t} = \xi_{0} + \bar{\xi}_{0},
\qquad
\frac{\partial}{\partial \phi} = - \xi_{0} + \bar{\xi}_{0},
$$

one reads off

$$
\omega = h_{\pm} + \bar{h}_{\pm},
\qquad
m = h_{\pm} - \bar{h}_{\pm}.
$$

Hence

$$
\omega - m = 2 \bar{h}_{\pm},
\qquad
\omega + m = 2 h_{\pm}.
$$

For the positive-energy one-particle modes selected in Section 3, the result of the previous subsection therefore gives

$$
h_{\pm} > 0,
\qquad
\bar{h}_{\pm} > 0.
$$

Combining the Casimir equations of Section 3.4 with the branch equation, one finds that for the $+$ branch the two candidate pairs of roots are

$$
\left( h_{+}, \bar{h}_{+} \right)
=
\left( \frac{\mu_{+}}{2}, 1 + \frac{\mu_{+}}{2} \right),
\qquad
\left( h_{+}, \bar{h}_{+} \right)
=
\left( 1 - \frac{\mu_{+}}{2}, - \frac{\mu_{+}}{2} \right).
$$

For the $-$ branch, the two candidate pairs are

$$
\left( h_{-}, \bar{h}_{-} \right)
=
\left( 1 + \frac{\mu_{-}}{2}, \frac{\mu_{-}}{2} \right),
\qquad
\left( h_{-}, \bar{h}_{-} \right)
=
\left( - \frac{\mu_{-}}{2}, 1 - \frac{\mu_{-}}{2} \right).
$$

Since $\mu_{\pm} > 0$, the second pair in each line has a negative Cartan weight and is incompatible with

$$
h_{\pm} > 0,
\qquad
\bar{h}_{\pm} > 0.
$$

Therefore the admissible positive-energy primaries are uniquely

$$
\left( h_{+}, \bar{h}_{+} \right)
=
\left( \frac{\mu_{+}}{2}, 1 + \frac{\mu_{+}}{2} \right),
\qquad
\left( h_{-}, \bar{h}_{-} \right)
=
\left( 1 + \frac{\mu_{-}}{2}, \frac{\mu_{-}}{2} \right).
$$

These are exactly the highest-weight roots used in Section 3.4.
