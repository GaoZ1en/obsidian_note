$$\begin{align}
(\alpha-\beta)(1-z)F+(\gamma-\alpha)F(\alpha-1)-(\gamma-\beta)F(\beta-1) & =0 \\
(\alpha-1-(\gamma-\beta-1)z)F+(\gamma-\alpha)F(\alpha-1)-(\gamma-1)(1-z)F(\gamma-1) & =0 \\
(\beta-1-(\gamma-\alpha-1)z)F+(\gamma-\beta)F(\beta-1)-(\gamma-1)(1-z)F(\gamma-1) & =0 \\
\gamma(\alpha-(\gamma-\beta)z)F-\alpha \gamma(1-z)F(\alpha+1)+(\gamma-\alpha)(\gamma-\beta)zF(\gamma+1) & =0 \\
\gamma(\beta-(\gamma-\alpha)z)F-\beta \gamma(1-z)F(\beta+1)+(\gamma-\alpha)(\gamma-\beta)zF(\gamma+1) & =0
\end{align}$$
![[Attachments/Pasted image 20250815111235.png]]

$$\tag{.}\begin{align}
-2m  \frac{r^{2}}{(1+r^{2})^{2}} P_{n}^{(\mu,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\left[ -m(m+1) \frac{1}{1+r^{2}}+(\mu+1+n)(n+m+1) \frac{r^{2}}{1+r^{2}} \right]P_{n}^{(\mu,m+1)}\left( \frac{r^{2}-1}{r^{2}+1}\right) \\
-(n+m+1)(n+1)P_{n+1}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =0
\end{align}$$

$$\tag{.}\begin{align}
-2mr^{2}P_{n}^{(\mu,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)+[-m(m+1)+(\mu+1+n)(n+m+1)r^{2}](1+r^{2})P_{n}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-(n+m+1)(n+1)(1+r^{2})^{2}P_{n+1}^{(\mu,m-1)}
\end{align}$$
---

the final result is

$$\begin{align}
2mP_{n}^{(\mu,m-1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) & =(\mu+n)(\mu+m+n)r^{2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(\mu+m+n)(1+r^{2})P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
2mr^{2}P_{n-1}^{(\mu,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =[(\mu+n)(n+m)r^{2}-m(m+1)](1+r^{2})P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(n+m)(1+r^{2})^{2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

and by $\displaystyle{m\leftrightarrow -m}$, 

$$\tag{.}\begin{align}
-2mr^{2}P_{n}^{(\mu,-m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =[(\mu+n+1)(n-m+1)r^{2}-m(m-1)](1+r^{2})P_{n}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-(n+1)(n-m+1)(1+r^{2})^{2}P_{n+1}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
-2mP_{n}^{(\mu,-m-1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =(\mu+n)(\mu-m+n)r^{2}P_{n-1}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(\mu-m+n)\left(1+r^{2}\right)P_{n}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

---

$$\tag{.}\begin{align}
AP_{\bar{n}}^{(\mu+1,n-\bar{n})'}+BP_{\bar{n}}^{(\mu+1,n-\bar{n})}+CP_{\bar{n}+1}^{(\mu+1,n-\bar{n}-1)} & =0 \\
AP_{\bar{n}-1}^{(\mu+2,n-\bar{n}+1)}+BP_{\bar{n}}^{(\mu+1,n-\bar{n})}+CP_{\bar{n}+1}^{(\mu+1,n-\bar{n}-1)} & =0 \\
A{}_{2}F_{1}(-\bar{n}+1,n+\mu+3;\mu+3;x)+B{}_{2}F_{1}(-\bar{n},n+\mu+2;\mu+2;x)+C{}_{2}F_{1}\left(-\bar{n}-1,n+\mu+2;\mu+2;x\right) & =0 \\
AF(\alpha+1,\beta+1,\gamma+1) +BF+C(\alpha-1) & =0
\end{align}$$

$\displaystyle{\alpha=-\bar{n},\beta=n+\mu+2,\gamma=\mu+2}$

$$\tag{.}\begin{align}
AF(\alpha+1,\beta+1,\gamma+1) +BF+CF(\alpha-1) & =0
\end{align}$$

$$\tag{.}\begin{align}
\alpha \beta(1-z)F(\alpha+1,\beta+1,\gamma+1) & =\gamma(\alpha+\beta-\gamma)F+(\gamma-\alpha)(\gamma-\beta)F(\gamma+1) \\
\gamma F(\alpha-1) & =\gamma(1-z)F+(\gamma-\beta)zF(\gamma+1)
\end{align}$$

$$\tag{.}\begin{align}
A \gamma ^{2}(\alpha+\beta-\gamma)F+A\gamma(\gamma-\alpha)(\gamma-\beta)F(\gamma+1)  \\
+\alpha \beta \gamma(1-z)F+C\alpha \beta \gamma(1-z)^{2}F+C\alpha \beta(\gamma-\beta)z(1-z)F(\gamma+1) & =0
\end{align}$$

$$\tag{.}\begin{align}
\gamma(\alpha+\beta-\gamma)A+\alpha \beta (1-z)^{2}C & =-\alpha \beta(1-z) \\
\gamma(\gamma-\alpha)A+\alpha \beta z(1-z)C & =0
\end{align}$$

$$\tag{.}\begin{align}
A & =-\frac{\alpha \beta z(1-z)}{ \gamma(\beta z-(\gamma-\alpha))} \\
C & =\frac{\gamma-\alpha}{\beta z-(\gamma-\alpha)}
\end{align}$$

$$\tag{.}\begin{align}
-\alpha \beta z(1-z)F(\alpha+1,\beta+1,\gamma+1)+\gamma(\beta z-(\gamma-\alpha))F+\gamma(\gamma-\alpha)F(\alpha-1)
\end{align}$$

$\displaystyle{\alpha=-\bar{n},\beta=n+\mu+2,\gamma=\mu+2}$

$$\tag{.}\begin{align}
2 \frac{r^{2}}{(1+r^{2})^{2}}P^{(\mu+1,n-\bar{n})'}_{\bar{n}}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
+\left( \frac{n+\mu+2}{1+r^{2}}-(\bar{n}+\mu+2) \right)P^{(\mu+1,n-\bar{n})}_{\bar{n}}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
+(\bar{n}+1) P^{(\mu+1,n-\bar{n}-1)}_{\bar{n}-1}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =0
\end{align}$$

---

we want the linear relation of the following form

$$\tag{.}\begin{align}
{}_{2}F_{1}(-\bar{k},k+\mu+2;\mu+2;z)+{}_{2}F_{1}(-\bar{k},k+\mu+1;\mu+1,z)+{}_{2}F_{1}(-\bar{k}+1,k+\mu+2;\mu+1;z) & =0 \\
{}_{2}F_{1}(-\bar{k}+1,k+\mu+2;\mu+2;z)+{}_{2}F_{1}(-\bar{k},k+\mu+1;\mu+1,z)+{}_{2}F_{1}(-\bar{k}+1,k+\mu+2;\mu+1;z) & =0 \\
{}_{2}F_{1}(-\bar{k}+2,k+\mu+2;\mu+2;z)+{}_{2}F_{1}(-\bar{k},k+\mu+1;\mu+1,z)+{}_{2}F_{1}(-\bar{k}+1,k+\mu+2;\mu+1;z) & =0
\end{align}$$

let $\displaystyle{\alpha=-\bar{k},\beta=\mu+k+1,\gamma=\mu+1}$, then

$$\tag{.}\begin{align}
F(\beta+1,\gamma+1)+F+F(\alpha+1,\beta+1) & =0 \\
F(\alpha+1,\beta+1,\gamma+1)+F+F(\alpha+1,\beta+1) & =0 \\
F(\alpha+2,\beta+1,\gamma+1)+F+F(\alpha+1,\beta+1) & =0
\end{align}$$

$$\tag{.}\begin{align}
\beta F(\beta+1,\gamma+1) & =\gamma F-(\gamma-\beta)F(\gamma+1) \\
(\alpha-\beta)(1-z)F(\alpha+1,\beta+1) & =(\gamma-\beta-1)F(\alpha+1)-(\gamma-\alpha-1)F(\beta+1) \\
\alpha \gamma(1-z)F(\alpha+1) & =\gamma(\alpha-(\gamma-\beta)z)F+(\gamma-\alpha)(\gamma-\beta)zF(\gamma+1) \\
\beta \gamma(1-z)F(\beta+1) & =\gamma(\beta-(\gamma-\alpha)z)F+(\gamma-\alpha)(\gamma-\beta)zF(\gamma+1)
\end{align}$$

$$\tag{.}\begin{align}
\alpha \beta \gamma(1-z)^{2}F(\alpha+1,\beta+1) & =(\gamma-\alpha)(\gamma-\beta)(-\gamma+\alpha+\beta+1)zF(\gamma+1) \\
 & +\gamma(\alpha \beta+(\alpha ^{2}+\beta ^{2}+\alpha \beta+\alpha+\beta-2\alpha \gamma-2\beta \gamma-\gamma+\gamma ^{2})z)F
\end{align}$$

$$\tag{.}\begin{align}
A\alpha \gamma(1-z)^{2}(\gamma F-(\gamma-\beta)F(\gamma+1))+\alpha \beta \gamma(1-z)^{2}F \\
+C\gamma(\alpha \beta+(\alpha ^{2}+\beta ^{2}+\alpha \beta+\alpha+\beta-2\alpha \gamma-2\beta \gamma-\gamma+\gamma ^{2})z)F+C(\gamma-\alpha)(\gamma-\beta)(-\gamma+\alpha+\beta+1)zF & =0 \\
\implies \alpha \gamma(1-z)^{2}A+(\alpha \beta+(\alpha ^{2}+\beta ^{2}+\alpha \beta+\alpha+\beta-2\alpha \gamma-2\beta \gamma-\gamma+\gamma ^{2})z)C & =-\alpha \beta (1-z)^{2} \\
-\alpha \gamma A+(\gamma-\alpha)(-\gamma+\alpha+\beta+1)zC & =0
\end{align}$$

