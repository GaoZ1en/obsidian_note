# problem 1

known that

$$\begin{align}
\psi & =\begin{pmatrix}\psi _{+} \\
\psi _{-}\end{pmatrix}, & \bar{\psi} & =\psi ^{T}C, & C & =\rho ^{0}
\end{align}$$

derive the component form of $\displaystyle{\bar{\psi}}$.

## solution

we have

$$\begin{align}
\bar{\psi} & =\psi ^{T}C \\
 & =\begin{pmatrix}
 \psi _{+} & \psi _{-}
 \end{pmatrix} \begin{pmatrix}
 0 & 1 \\
 -1 & 0
\end{pmatrix} \\
 & =\begin{pmatrix} -\psi _{-} & \psi _{+}
 \end{pmatrix}
\end{align}$$

# problem 2

consider

$$\begin{align}
S_{\text{test}} & =\frac{1}{2\pi \alpha'}\int \mathrm{d}^{2}\sigma\left[\frac{1}{2}\partial _{\alpha}X^{\mu}\partial ^{\alpha}X_{\mu}+iA\bar{\psi}^{\mu}\rho ^{\alpha}\partial _{\alpha}\psi _{\mu}\right]
\end{align}$$

and

$$\begin{align}
\delta X^{\mu} & =iB\bar{\varepsilon}\psi ^{\mu}, & \delta \psi ^{\mu} & =C_{0}\rho ^{\alpha}\partial _{\alpha}X^{\mu}\varepsilon
\end{align}$$

by requiring $\displaystyle{S_{\text{test}}}$ is susy-invariant, determine $A$ and $B$, and $C_{0}$ for given $\delta X^{\mu}$ and $\displaystyle{\delta \psi ^{\mu}}$.

## solution

we have

$$\begin{align}
\delta _{\varepsilon}S_{\text{test}} & =\frac{1}{2\pi \alpha'}\int \mathrm{d}^{2}\sigma\left[\partial _{\alpha}X^{\mu}\partial ^{\alpha}\left(iB\bar{\varepsilon}\psi _{\mu}\right)+iA\left(-C_{0}\bar{\varepsilon}\rho ^{\beta}\partial _{\beta}X^{\mu}\right)\rho ^{\alpha}\partial _{\alpha}\psi _{\mu}+iA\bar{\psi}^{\mu}\rho ^{\alpha}\partial _{\alpha}\left(C_{0}\rho ^{\beta}\partial _{\beta}X_{\mu}\varepsilon\right)\right] \\
 & =\frac{1}{2\pi \alpha'}\int \mathrm{d}^{2}\sigma\left[iB\bar{\varepsilon}\partial _{\alpha}X^{\mu}\partial ^{\alpha}\psi _{\mu}-iAC_{0}\bar{\varepsilon}\partial ^{\alpha}X^{\mu}\partial _{\alpha}\psi _{\mu}\right] \\
 & =\frac{1}{2\pi \alpha'}\int \mathrm{d}^{2}\sigma i(B-AC_{0})\partial _{\alpha}X^{\mu}\partial ^{\alpha}\psi _{\mu}
\end{align}$$

thus we have $\displaystyle{B=AC_{0}}$.
