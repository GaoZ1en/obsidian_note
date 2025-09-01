in [[Articles/Proca in AdS3/ADM decomposition|ADM decomposition]], we have derived an equation about $\displaystyle{A^{t}}$

$$\begin{align}
-\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}A^{t}) \right)+\mu ^{2}A^{t} & =\frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)
\end{align}$$

introduce Green function $\displaystyle{G(x,y)}$ that satisfying

$$
\begin{align}
-\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}G(x,y)) \right)+\mu ^{2}G(x,y) & =-\delta ^{2}(x-y) \\
\implies A^{t}(x) & =-\int \mathrm{d}^{2}yG(x,y) \frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)
\end{align}
$$

now we will solve the Green function $\displaystyle{G(x,y)}$ explicitly.

---

$$\begin{align}
-\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}\phi) \right) & =-\frac{1}{N}\partial _{a}\left(\frac{1}{N}\sigma ^{ab}\partial _{b}(N^{2}\phi)\right) +\frac{1}{N}\Gamma ^{a}_{~ab} \frac{1}{N}\sigma ^{cb}\partial _{c}(N^{2}\phi) \\
 & =-\frac{1}{N}\partial _{r}\left( N^{3}\partial _{r}\phi+2N^{2}\partial _{r}N\phi \right)-\frac{1}{r^{2}}\partial _{\phi}^{2}\phi+\frac{1}{N^{2}}\tilde{\Gamma} ^{a}_{~ab}\sigma ^{bc}\partial _{c}(N^{2}\phi) \\
 & =-N^{2}\partial _{r}^{2}\phi-5N\partial _{r}N\partial _{r}\phi-4(\partial _{r}N)^{2}\phi-2N\partial _{r}^{2}N\phi-\frac{1}{r^{2}}\partial _{\phi}^{2}\phi  \\
 & =-(1+r^{2})\partial _{r}^{2}\phi-5x\partial _{r}\phi-\frac{2(1+2r^{2})}{1+r^{2}}\phi\\
 & +\frac{2}{1+r^{2}}\phi+\frac{1}{r}\partial _{r}\phi
\end{align}$$


$$\tag{.}\begin{align}
\tilde{\Gamma}^{r}_{~rr} & =-\frac{r}{1+r^{2}} \\
\tilde{\Gamma}^{r}_{~\phi \phi} & =-r(1+r^{2}) \\
\tilde{\Gamma}^{\phi}_{~r\phi} & =\frac{1}{r}
\end{align}$$
$$\tag{.}\begin{align}
\tilde{\Gamma}^{r}_{~rr}+\tilde{\Gamma}^{\phi}_{\phi r} & =-\frac{r}{1+r^{2}}+\frac{1}{r} \\
 & =\frac{1}{r(1+r^{2})}
\end{align}$$