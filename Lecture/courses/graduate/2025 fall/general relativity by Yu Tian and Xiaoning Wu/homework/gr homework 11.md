# problem 1

prove that with the requirement of asymptotic flatmess, under the coordinate transformation

$$\begin{align}
\tilde{t} & =t+2M \ln\left| \frac{r}{2M}-1\right| \\
\tilde{r} & =r
\end{align}$$

the Schwarzschild solution can be written as the ingoing Eddington metric as

$$\begin{align}
\mathrm{d}s^{2} & =-\left(1-\frac{2M}{\tilde{r}}\right) \mathrm{d}\tilde{t}^{2}+\frac{4M}{\tilde{r}} \mathrm{d}\tilde{t} \mathrm{d}\tilde{r}+\left(1+\frac{2M}{\tilde{r}}\right) \mathrm{d}\tilde{r}^{2}+\tilde{r}^{2} \mathrm{d}\Omega^{2} \\
 & =-\mathrm{d}\tilde{t}^{2}+\mathrm{d}\tilde{r}^{2}+\tilde{r}^{2}\mathrm{d}\Omega ^{2}+\frac{2M}{r}(\mathrm{d}\tilde{t}+\mathrm{d}\tilde{r})^{2}
\end{align}$$

*sol*. the metric of Schwarzschild solution is

$$\begin{align}
\mathrm{d}s^{2} & =-\left(1-\frac{2M}{r}\right) \mathrm{d}t^{2}+\left(1-\frac{2M}{r}\right)^{-1} \mathrm{d}r^{2}+r^{2}\mathrm{d}\Omega^{2}
\end{align}$$

under the coordinate transformation, we have

$$\begin{align}
\mathrm{d}\tilde{t} & =\mathrm{d}t+ \frac{\frac{2M}{r}}{1-\frac{2M}{r}}\mathrm{d}r \\
\mathrm{d}\tilde{r} & =\mathrm{d}r \\
\implies \mathrm{d}r & =\mathrm{d}\tilde{r} \\
\mathrm{d}t & =\mathrm{d}\tilde{t}-\frac{\frac{2M}{r}}{1-\frac{2M}{r}}\mathrm{d}\tilde{r}
\end{align}$$

inserting into the metric, we have

$$\begin{align}
\mathrm{d}s^{2} & =-\left( 1-\frac{2M}{r} \right) \left( \mathrm{d}\tilde{t}^{2}-\frac{\frac{4M}{r}}{1-\frac{2M}{r}}\mathrm{d}\tilde{t}\mathrm{d}\tilde{r}+\frac{\left( \frac{2M}{r} \right)^{2}}{\left( 1-\frac{2M}{r} \right)^{2}}\mathrm{d}\tilde{r}^{2} \right)+\left( 1-\frac{2M}{r} \right)^{-1}\mathrm{d}\tilde{r}^{2}+\tilde{r}^{2}\mathrm{d}\Omega ^{2} \\
 & =-\left( 1-\frac{2M}{r} \right) \mathrm{d}\tilde{t}^{2}+\frac{4M}{r}\mathrm{d}\tilde{t}\mathrm{d}\tilde{r}+\left( 1+\frac{2M}{r} \right) \mathrm{d}\tilde{r}^{2}+\tilde{r}^{2}\mathrm{d}\Omega ^{2} \\
 & =-\mathrm{d}\tilde{t}^{2}+\mathrm{d}\tilde{r}^{2}+\tilde{r}^{2}\mathrm{d}\Omega ^{2}+\frac{2M}{r}(\mathrm{d}\tilde{t}+\mathrm{d}\tilde{r})^{2}
\end{align}$$

# problem 2

without the requirement of asymptotic flatness, consider the following coordinate transformation

$$\begin{align}
\mathrm{d}t & =\mathrm{d}\tilde{t}-\frac{\mathrm{d}r}{1-\frac{2M}{r}}
\end{align}$$

we have the more usual form of ingoing Eddington metric as

$$\begin{align}
\mathrm{d}s^{2} & =-\left( 1-\frac{2M}{r} \right)\mathrm{d}\tilde{t}^{2}+2\mathrm{d}\tilde{t}\mathrm{d}r+r^{2}\mathrm{d}\Omega ^{2}
\end{align}$$

calculate the inverse metric $\displaystyle{g^{\mu \nu}}$ in both cases.

*sol*. for problem 1, we have

$$\begin{align}
g_{\mu \nu} & =\begin{pmatrix} -\left( 1-\frac{2M}{r} \right) & \frac{2M}{r} & 0 & 0 \\ \frac{2M}{r} & \left( 1+\frac{2M}{r} \right) & 0 & 0 \\ 0 & 0 & r^{2} & 0 \\ 0 & 0 & 0 & r^{2}\sin^{2}\theta \end{pmatrix}
\end{align}$$

then

$$\begin{align}
g^{\mu \nu} & =\begin{pmatrix} -\left( 1+\frac{2M}{r} \right) & \frac{2M}{r} & 0 & 0 \\ \frac{2M}{r} & \left( 1-\frac{2M}{r} \right) & 0 & 0 \\ 0 & 0 & \frac{1}{r^{2}} & 0 \\ 0 & 0 & 0 & \frac{1}{r^{2}\sin^{2}\theta} \end{pmatrix}
\end{align}$$

for problem 2, we have

$$\begin{align}
g_{\mu \nu} & =\begin{pmatrix} -\left( 1-\frac{2M}{r} \right) & 1 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & r^{2} & 0 \\ 0 & 0 & 0 & r^{2}\sin^{2}\theta \end{pmatrix}
\end{align}$$

then

$$\begin{align}
g^{\mu \nu} & =\begin{pmatrix} 0 & 1 & 0 & 0 \\ 1 & \left( 1-\frac{2M}{r} \right) & 0 & 0 \\ 0 & 0 & \frac{1}{r^{2}} & 0 \\ 0 & 0 & 0 & \frac{1}{r^{2}\sin^{2}\theta} \end{pmatrix}
\end{align}$$