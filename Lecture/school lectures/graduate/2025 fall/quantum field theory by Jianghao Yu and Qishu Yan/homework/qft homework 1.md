# problem

prove that

$$\begin{align}
[L^{\mu \nu},L^{\rho \sigma}] & =i(\eta ^{\mu \rho}L^{\nu \sigma}+\eta ^{\nu \sigma}L^{\mu \rho}-\eta ^{\mu \sigma}L^{\nu \rho}-\eta ^{\nu \rho}L^{\mu \sigma})
\end{align}$$

for $\displaystyle{L_{\mu \nu}=i(x_{\mu}\partial _{\nu}-x_{\nu}\partial _{\mu})}$.

*sol*.

$$\begin{align}
[L_{\mu \nu},L_{\rho \sigma}] & =-[x_{\mu}\partial _{\nu}-x_{\nu}\partial _{\mu},x_{\rho}\partial _{\sigma}-x_{\sigma}\partial _{\rho}] \\
 & =-[x_{\mu}\partial _{\nu},x_{\rho}\partial _{\sigma}]+(\mu\leftrightarrow \nu)+(\rho\leftrightarrow \sigma)-(\mu,\rho\leftrightarrow \nu,\sigma) \\
 & =(\eta _{\nu \rho}x_{\mu}\partial _{\sigma}-\eta _{\mu \sigma}x_{\rho}\partial _{\nu})+(\mu\leftrightarrow \nu)+(\rho\leftrightarrow \sigma)-(\mu,\rho\leftrightarrow \nu,\sigma) \\
 & =i(\eta _{\mu \rho}L_{\nu \sigma}+\eta _{\nu \sigma}L_{\mu \rho}-\eta _{\mu \sigma}L_{\nu \rho}-\eta _{\nu \rho}L_{\mu \sigma})
\end{align}$$

here we use

$$\begin{align}
[AB,CD] & =A[B,C]D+[A,C]BD+CA[B,D]+C[A,D]B \\
[x_{\mu},\partial_{\nu}] & =\eta _{\mu \nu}
\end{align}$$
