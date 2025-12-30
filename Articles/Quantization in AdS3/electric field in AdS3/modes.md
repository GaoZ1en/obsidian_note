in [[Articles/Quantization in AdS3/electric field in AdS3/Proca-Chern-Simons|Proca-Chern-Simons]] we have already known that the normal modes form $\displaystyle{(1,0)}$, $\displaystyle{(0,1)}$ and $\displaystyle{(1,1)}$ representation of $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$ of global $\displaystyle{\mathrm{AdS}_{3}}$. in this file we will derive the explicit form of these states, at least the highest weight modes $\displaystyle{\psi _{(1,0)}^{\mu}}$, $\displaystyle{\psi _{(0,1)}^{\mu}}$ and $\displaystyle{\psi _{(1,1)}^{\mu}}$.

we first write down the Killing vectors


$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

and the action of $\displaystyle{\mathcal{L}_{\xi}}$'s on a general vector field $\displaystyle{\psi ^{\mu}}$ with ansatz

$$\begin{align}
\psi ^{\mu} & =e^{-i\omega t}e^{im\phi}f^{\mu}
\end{align}$$

as

$$\begin{align}
\mathcal{L}_{\xi _{1}}\psi^{t} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}+\frac{(\omega+m+1)r^{2}+m}{r(1+r^{2})}f^{t}-\frac{i}{(1+r^{2})^{2}}f^{r}-\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\xi _{1}}\psi^{r} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(-if^{t}+\partial _{r}f^{r}+\frac{(\omega+m-1)r^{2}+m}{r(1+r^{2})}f^{r}+if^{\phi}\right) \\
\mathcal{L}_{\xi _{1}}\psi^{\phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left( -\frac{1}{r}f^{t}-\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}+\frac{(\omega+m+1)r^{2}+(m+1)}{r(1+r^{2})}f^{\phi}(r) \right) \\
\mathcal{L}_{\bar{\xi}_{1}}\psi^{t} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}+\frac{(\omega-m+1)r^{2}-m}{r(1+r^{2})}f^{t}-\frac{i}{(1+r^{2})^{2}}f^{r}+\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}\psi^{r} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-if^{t}+\partial _{r}f^{r}+\frac{(\omega-m-1)r^{2}-m}{r(1+r^{2})}f^{r}-if^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}\psi^{\phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{t}+\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}+\frac{(\omega-m+1)r^{2}-(m-1)}{r(1+r^{2})}f^{\phi}\right)
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi_{0}}\psi^{\mu} & =-\frac{i}{2}(\omega+m)\psi^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}\psi^{\mu} & =-\frac{i}{2}(\omega-m)\psi^{\mu}
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi _{-1}}\psi ^{t} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}-\frac{(\omega+m-1)r^{2}+m}{r(1+r^{2})}f^{t}+\frac{i}{(1+r^{2})^{2}}f^{r}-\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\xi _{-1}}\psi ^{r} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(if^{t}+\partial _{r}f^{r}-\frac{(\omega+m+1)r^{2}+m}{r(1+r^{2})}f^{r}-if^{\phi}\right) \\
\mathcal{L}_{\xi _{-1}}\psi ^{\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-\frac{1}{r}f^{t}+\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}-\frac{(\omega+m-1)r^{2}+(m-1)}{r(1+r^{2})}f^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}\psi ^{t} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}-\frac{(\omega-m-1)r^{2}-m}{r(1+r^{2})}f^{t}+\frac{i}{(1+r^{2})^{2}}f^{r}+\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}\psi ^{r} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(if^{t}+\partial _{r}f^{r}-\frac{(\omega-m+1)r^{2}-m}{r(1+r^{2})}f^{r}+if^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}\psi ^{\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{t}-\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}-\frac{(\omega-m-1)r^{2}-(m+1)}{r(1+r^{2})}f^{\phi}\right)
\end{align}$$

for $\displaystyle{(1,0)}$ sector, we have the following highest weight conditions:

$$\begin{align}
\mathcal{L}_{\xi _{0}}\psi _{(1,0)}^{\mu} & =-i\psi _{(1,0)}^{\mu} \\
\mathcal{L}_{\xi _{1}}\psi _{(1,0)}^{\mu} & =0 \\
\mathcal{L}_{\bar{\xi}_{a}}\psi _{(1,0)}^{\mu} & =0 \quad (a=0,\pm 1)
\end{align}$$

which leads to the solution

$$\begin{align}
\psi _{(1,0)}^{\mu} & =C_{(1,0)}\frac{e^{-2it}}{(1+r^{2})}\bar{\xi}_{1}^{\mu}
\end{align}$$

here $\displaystyle{C_{(1,0)}}$ is the normalization constant. similarly, for $\displaystyle{(0,1)}$ sector, we only need to change $\displaystyle{t+\phi}$ to $\displaystyle{t-\phi}$ and $\displaystyle{t-\phi}$ to $\displaystyle{t+\phi}$ in the above solution, we have

$$\begin{align}
\psi _{(0,1)}^{\mu} & =\frac{e^{-2it}}{(1+r^{2})}\xi _{1}^{\mu}
\end{align}$$

finally, for $\displaystyle{(1,1)}$ sector, we have the highest weight conditions:

$$\begin{align}
\mathcal{L}_{\xi _{0}}\psi _{(1,1)}^{\mu} & =-i\psi _{(1,1)}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}\psi _{(1,1)}^{\mu} & =-i\psi _{(1,1)}^{\mu} \\
\mathcal{L}_{\xi _{1}}\psi _{(1,1)}^{\mu} & =0 \\
\mathcal{L}_{\bar{\xi}_{1}}\psi _{(1,1)}^{\mu} & =0
\end{align}$$

which leads to the solution

$$\begin{align}
\psi _{(1,1)}^{\mu} & =\frac{e^{-4i t}}{(1+r^{2})^{2}}(\alpha\xi _{1}^{\mu}+\beta\bar{\xi}_{1}^{\mu})
\end{align}$$

here different choices of $\displaystyle{\alpha}$ and $\displaystyle{\beta}$ are related by gauge transformations, and we can choose $\displaystyle{\alpha=\beta=1}$ for simplicity, since every set of $\displaystyle{(\alpha,\beta)}$ leads to the gauge equivalent physical states, which satisfies the gauge condition

$$\begin{align}
\nabla _{\mu}\psi _{(1,1)}^{\mu}=0
\end{align}$$
