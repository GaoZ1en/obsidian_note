in this file we will argue that in global $\displaystyle{\mathrm{AdS}_{3}}$, the highest weight modes of a free scalar field can be written as Jacobi polynomials.

we have known that the highest weight modes can be written as

$$\begin{align}
\phi _{n\bar{n}}(x) & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\phi _{00}(x) \\
\phi _{00}(x) & =\sqrt{ \frac{1}{2\pi} }e^{-i\Delta t}(1+r^{2})^{-\Delta/2}
\end{align}$$

with $\displaystyle{\Delta=1+\sqrt{ 1+\mu ^{2} }}$, and the Killing vectors are

$$\begin{align}
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

take the following assumption for the form of the highest weight modes

$$\begin{align}
\phi _{n\bar{n}} & \propto e^{-i\omega _{n\bar{n}}t}e^{i(n-\bar{n})\phi}r^{n-\bar{n}}(1+r^{2})^{-(\Delta+n-\bar{n})/2}P_{\bar{n}}^{(\Delta-1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =e^{-i\omega _{n\bar{n}}t}e^{i(n-\bar{n})\phi}r^{\bar{n}-n}(1+r^{2})^{-(\Delta+\bar{n}-n)/2}P_{n}^{(\Delta-1,\bar{n}-n)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{n\bar{n}} & =\Delta+n+\bar{n}
\end{align}$$

then acting $\displaystyle{\mathcal{L}_{\xi _{-1}}}$ and $\displaystyle{\mathcal{L}_{\bar{\xi}_{-1}}}$ on $\displaystyle{\phi _{n\bar{n}}}$, we have

$$\begin{align}
\phi _{n+1,\bar{n}} & \propto \mathcal{L}_{\xi _{-1}}\phi _{n\bar{n}} \\
 & \propto e^{-i\omega _{n+1,\bar{n}}t}e^{i(n+1-\bar{n})\phi}\left(-(\Delta+n+\bar{n})r^{n+1-\bar{n}}(1+r^{2})^{-(\Delta+n+1-\bar{n})/2}P_{\bar{n}}^{(\Delta-1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & +(1+r^{2})^{1/2}\partial _{r}\left(r^{n-\bar{n}}(1+r^{2})^{-(\Delta+n-\bar{n})/2}P_{\bar{n}}^{(\Delta-1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right) \\
 & \left.-(n-\bar{n})r^{n-1-\bar{n}}(1+r^{2})^{-(\Delta+n-1-\bar{n})/2}P_{\bar{n}}^{(\Delta-1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right) \\
 & =e^{-i\omega _{n+1,\bar{n}}t}e^{i(n+1-\bar{n})\phi}\left(-2(\Delta+n)r^{n+1-\bar{n}}(1+r^{2})^{-(\Delta+n+1-\bar{n})/2}P_{\bar{n}}^{(\Delta-1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left.+4r^{n+1-\bar{n}}(1+r^{2})^{-(\Delta+n-\bar{n}+3)/2}P_{\bar{n}}^{(\Delta-1,n-\bar{n})'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right) \\
 & \propto e^{-i\omega _{n+1,\bar{n}}t}e^{i(n+1-\bar{n})\phi}r^{n+1-\bar{n}}(1+r^{2})^{-(\Delta+n+1-\bar{n})/2}\left((\Delta+n)P_{\bar{n}}^{(\Delta-1,n-\bar{n})}(x)-(1-x)\frac{d}{dx}P_{\bar{n}}^{(\Delta-1,n-\bar{n})}(x)\right) \\
 & \propto e^{-i\omega _{n+1,\bar{n}}t}e^{i(n+1-\bar{n})\phi}r^{n+1-\bar{n}}(1+r^{2})^{-(\Delta+n+1-\bar{n})/2}P_{\bar{n}}^{(\Delta-1,n+1-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

where $x=\frac{r^{2}-1}{r^{2}+1}$. in the last step we have used the identity

$$\begin{align}
(\alpha+\beta+k+1)P_{k}^{(\alpha,\beta)}(x)-(1-x) \frac{\mathrm{d}}{\mathrm{d}x}P_{k}^{(\alpha,\beta)}(x)=(\alpha+\beta+k+1)P_{k}^{(\alpha,\beta+1)}(x)
\end{align}$$

and set $\displaystyle{\alpha=\Delta-1,\beta=n-\bar{n},k=\bar{n}}$. and the action of $\displaystyle{\mathcal{L}_{\bar{\xi}_{-1}}}$ is the same by symmetry $\displaystyle{n\leftrightarrow \bar{n}}$. thus by induction, we have proved our assumption. 

---

we will prove the identity used above. we start from the recurrence relation of hypergeometric function

$$\begin{align}
\gamma F-\alpha zF(\alpha+1,\gamma+1)-\gamma F(\beta-1) & =0 \tag{1}
\end{align}$$
t
set $\displaystyle{\alpha\to-k,\beta\to k+\alpha+\beta+1,\gamma\to \alpha+1,z\to \frac{1-x}{2}}$, we have

$$\begin{align}
(\alpha+1)F\left( -k,k+\alpha+\beta+1;\alpha+1;\frac{1-x}{2} \right)+\frac{1-x}{2}kF\left( -k+1,k+\alpha+\beta+1;\alpha+2;\frac{1-x}{2} \right)-(\alpha+1)F\left( -k,k+\alpha+\beta;\alpha+1; \frac{1-x}{2} \right) & =0 \\
\implies \frac{(\alpha+1)_{k}}{k!}F\left( -k,k+\alpha+\beta+1;\alpha+1;\frac{1-x}{2} \right)+\frac{1-x}{2}\frac{(\alpha+2)_{k-1}}{(k-1)!}F\left( -k+1,k+\alpha+\beta+1;\alpha+2;\frac{1-x}{2} \right)-\frac{(\alpha+1)_{k}}{k!}F\left( -k,k+\alpha+\beta;\alpha+1;\frac{1-x}{2} \right) & =0 \\
\implies P_{k}^{(\alpha,\beta)}(x)+\frac{1-x}{2}P_{k-1}^{(\alpha+1,\beta+1)}(x)-P_{k}^{(\alpha,\beta+1)}(x) & =0 \\
\implies (\alpha+\beta+k+1)P_{k}^{(\alpha,\beta)}(x)-(1-x) \frac{\mathrm{d}}{\mathrm{d}x}P_{k}^{(\alpha,\beta)}(x)=(\alpha+\beta+k+1)P_{k}^{(\alpha,\beta+1)}(x)
\end{align}$$

in the third step we have used the definition of Jacobi polynomials

$$\begin{align}
P_{k}^{(\alpha,\beta)}(x) & =\frac{(\alpha+1)_{k}}{k!}{}_{2}F_{1}\left(-k,k+\alpha+\beta+1;\alpha+1;\frac{1-x}{2}\right)
\end{align}$$

and in the fourth step we have used

$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}x}P_{k}^{(\alpha,\beta)}(x) & =\frac{1}{2}(\alpha+\beta+k+1)P_{k-1}^{(\alpha+1,\beta+1)}(x)
\end{align}$$