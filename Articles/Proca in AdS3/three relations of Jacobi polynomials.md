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