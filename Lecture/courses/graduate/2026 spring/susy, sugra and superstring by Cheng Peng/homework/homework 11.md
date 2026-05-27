# problem 1

suppose

$$\begin{align}
\mathbb{X}^{\mu} & =X^{\mu}+i\theta ^{+}\Psi_{+}^{\mu}+i\theta ^{-}\Psi_{-}^{\mu}+i\theta ^{+}\theta ^{-}F^{\mu}
\end{align}$$

and define the covariant derivatives

$$\begin{align}
D_{\pm} & =\frac{\partial}{\partial \theta ^{\pm}}-i\theta ^{\pm}\partial _{\pm}
\end{align}$$

verify that

$$\begin{align}
S_{\text{off}} & =-\frac{1}{4\pi \alpha'}\int \mathrm{d}\sigma ^{+}\mathrm{d}\sigma ^{-} \int \mathrm{d}\theta ^{+}\mathrm{d}\theta ^{-}(D_{+}\mathbb{X}^{\mu})(D_{-}\mathbb{X}_{\mu})
\end{align}$$

reproduce the off-shell RNS action contains $\displaystyle{F_{\mu}F^{\mu}}$ terms.

## solution

we have

$$\begin{align}
D_{\pm}\mathbb{X}^{\mu} & =\left(\frac{\partial}{\partial \theta ^{\pm}}-i\theta ^{\pm}\partial _{\pm}\right)\left(X^{\mu}+i\theta ^{+}\Psi_{+}^{\mu}+i\theta ^{-}\Psi_{-}^{\mu}+i\theta ^{+}\theta ^{-}F^{\mu}\right) \\
 & =i\Psi_{\pm}^{\mu}+i\theta ^{\mp}F^{\mu}-i\theta ^{\pm}\partial _{\pm}X^{\mu}+\theta ^{\pm}\theta ^{\mp}\partial _{\pm}\Psi_{\mp}^{\mu}.
\end{align}$$

then

$$\begin{align}
S_{\text{off}} & =-\frac{1}{4\pi \alpha'}\int \mathrm{d}\sigma ^{+}\mathrm{d}\sigma ^{-}\int \mathrm{d}\theta ^{+}\mathrm{d}\theta ^{-}(i\Psi^{\mu}_{+}+i\theta ^{-}F^{\mu}-i\theta ^{+}\partial _{+}X^{\mu}+\theta ^{+}\theta ^{-}\partial _{+}\Psi_{-}^{\mu})(i\Psi_{-\mu}+i\theta ^{+}F_{\mu}-i\theta ^{-}\partial _{-}X_{\mu}+\theta ^{-}\theta ^{+}\partial _{-}\Psi_{+\mu}) \\
 & =-\frac{1}{4\pi \alpha'}\int \mathrm{d}\sigma ^{+}\mathrm{d}\sigma ^{-}\int \mathrm{d}\theta ^{+}\mathrm{d}\theta ^{-}\left(i\theta ^{-}\theta ^{+}\Psi_{+}^{\mu}\partial _{-}\Psi_{+\mu}-i\theta ^{+}\theta ^{-}\Psi_{-\mu}\partial _{+}\Psi_{-}^{\mu}+\theta ^{-}\theta ^{+}F^{\mu}F_{\mu}-\theta ^{+}\theta ^{-}\partial _{+}X^{\mu}\partial _{-}X_{\mu}\right) \\
 & =-\frac{1}{4\pi \alpha'}\int \mathrm{d}\sigma ^{+}\mathrm{d}\sigma ^{-}\left(\partial _{+}X^{\mu}\partial _{-}X_{\mu} +i\Psi_{+}^{\mu}\partial _{-}\Psi_{+\mu}+i\Psi_{-\mu}\partial _{+}\Psi_{-}^{\mu}+F^{\mu}F_{\mu}\right)
\end{align}$$

which is exactly the offshell RNS action. integrate out the $\displaystyle{F^{\mu}}$ field, we have

$$\begin{align}
S_{\text{off}}|_{F\text{ onshell}} & =-\frac{1}{4\pi \alpha'}\int \mathrm{d}\sigma ^{+}\mathrm{d}\sigma ^{-}\left(\partial _{+}X^{\mu}\partial _{-}X_{\mu} +i\Psi_{+}^{\mu}\partial _{-}\Psi_{+\mu}+i\Psi_{-\mu}\partial _{+}\Psi_{-}^{\mu}\right)
\end{align}$$