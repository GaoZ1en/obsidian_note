we use the following pre-derived formula to give the final result

$$\tag{.}\begin{align}
\frac{\Omega[A_{n_{1}m_{1}},A^{*}_{n_{2}m_{2}}]}{2\pi \delta _{m_{1}m_{2}}}e^{i(\omega_{1}-\omega_{2})t} & =\frac{1}{i\omega_{1}}\int \mathrm{d}r \left(\left( \mu ^{2}+\frac{m_{1}^{2}}{r^{2}} \right)\frac{r\tilde{A}^{r}_{1}}{1+r^{2}}+\frac{im_{1}}{r}\partial _{r}(r^{2}\tilde{A}^{\phi}_{1})\right)\tilde{A}^{r*}_{2} \\
 & +\frac{1}{i\omega_{1}}\int \mathrm{d}r\left( im_{1}\partial _{r}(r\tilde{A}^{r}_{1})+\left( \frac{\omega_{1}^{2}r^{2}}{1+r^{2}}-m_{1}^{2}\right)r\tilde{A}_{1}^{\phi} \right)\tilde{A}_{2}^{\phi*} \\ 
 & +\frac{1}{i\omega_{2}}\int \mathrm{d}r\left( \left( \mu ^{2}+\frac{m_{2}^{2}}{r^{2}} \right)\frac{r\tilde{A}^{r*}_{2}}{1+r^{2}}-\frac{im_{2}}{r}\partial _{r}(r^{2}\tilde{A}^{\phi*}_{2}) \right)\tilde{A}_{1}^{r} \\
 & +\frac{1}{i\omega_{2}}\int \mathrm{d}r\left( -im_{2}\partial _{r}(r\tilde{A}^{r*}_{2})+\left( \frac{\omega_{2}^{2}r^{2}}{1+r^{2}} -m_{2}^{2}\right)rA^{\phi} \right)\tilde{A}_{1}^{\phi}
\end{align}$$

$$\tag{.}\begin{align}
\Omega[A_{n_{1},m_{1}\geqslant 1,+},A^{*}_{n_{2},m_{2}\geqslant 1,+}]& =-2\pi i \frac{\mu ^{2}+(2n_{2}+m_{1}+\mu)^{2}-m_{1}^{2}}{(2n_{1}+m_{1}+\mu)^{2}} \frac{\Gamma(n_{1}+\mu+1)\Gamma(n_{1}+m_{1})}{\Gamma(n_{1}+m_{1}+\mu)n_{1}!}\delta _{m_{1}m_{2}}\delta _{n_{1}n_{2}} \\
\Omega[A_{n_{1},m_{1}\leqslant -1,+},A^{*}_{n_{2},m_{2}\leqslant -1,+}]& =-2\pi i \frac{\mu ^{2}+(2n_{2}-m_{1}+\mu+2)^{2}-m_{1}^{2}}{(2n_{1}-m_{2}+\mu+2)^{2}} \frac{\Gamma(n_{1}+\mu+1)\Gamma(n_{1}-m_{1}+2)}{\Gamma(n_{1}-m_{1}+\mu+2)n_{1}!}\delta _{m_{1}m_{2}}\delta _{n_{1}n_{2}} \\
\Omega[A_{n_{1},m_{1}\geqslant 1,-},A^{*}_{n_{2},m_{2}\geqslant 1,+}]& =-2\pi i \frac{\mu ^{2}+(2n_{2}+m_{1}+\mu+2)^{2}-m_{1}^{2}}{(2n_{1}+m_{1}+\mu+2)^{2}} \frac{\Gamma(n_{1}+\mu+1)\Gamma(n_{1}+m_{1}+2)}{\Gamma(n_{1}+m_{1}+\mu+2)n_{1}!}\delta _{m_{1}m_{2}}\delta _{n_{1}n_{2}} \\
\Omega[A_{n_{1},m_{1}\leqslant -1,-},A^{*}_{n_{2},m_{2}\leqslant -1,-}]& =-2\pi i \frac{\mu ^{2}+(2n_{2}-m_{1}+\mu)^{2}-m_{1}^{2}}{(2n_{1}-m_{1}+\mu)^{2}} \frac{\Gamma(n_{1}+\mu+1)\Gamma(n_{1}-m_{1})}{\Gamma(n_{1}-m_{1}+\mu)n_{1}!}\delta _{m_{1}m_{2}}\delta _{n_{1}n_{2}} \\
\Omega[A_{n_{1},m_{1}\geqslant 1,+},A^{*}_{n_{2},m_{2}\geqslant1,-}]& =-\frac{8\pi i\Gamma(n_{1}+\mu+1)\Gamma(n_{1}+m_{1}+1)}{(\mu+m_{1}+2n_{1})^{2}\Gamma(n_{1}+\mu+m_{1})(n_{1}-1)!}\delta _{m_{1}m_{2}}\delta _{n_{1}-1,n_{2}} \\
\Omega[A_{n_{1},m_{1}=0,+},A^{*}_{n_{2},m_{2}=0,-}] & =- \frac{8\pi i(n_{1}+1)^{2}}{(2n_{1}+\mu+2)^{2}}\delta _{n_{1},n_{2}} \\
\Omega[A_{n_{1},m_{1}\leqslant 1,+},A^{*}_{n_{2},m_{2}\leqslant 1,-}]& =- \frac{8\pi i\Gamma(n_{1}+\mu+2)\Gamma(n_{1}-m_{1}+2)}{(\mu-m_{1}+2n_{1}+2)^{2}\Gamma(n_{1}+1+\mu-m_{1})n_{1}!}\delta _{m_{1},m_{2}}\delta _{n_{1}+1,n_{2}}
\end{align}$$

here we use

$$\tag{.}\begin{align}
\frac{1}{i\omega}\left( \left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right) \frac{rA_{n,m\geqslant 1,+}^{r}}{1+r^{2}}+\frac{im}{r}\partial _{r}(r^{2}A_{n,m\geqslant 1,+}^{\phi}) \right) & =
\frac{e^{-i(\mu+m+2n)t}e^{im\phi}}{\mu+m+2n}\left(-(\mu(\mu+m)+2n(\mu+m+n))r^{m}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. +2(\mu+n)(\mu+m+n)r^{m+2}(1+r^{2})^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{1}{i\omega}\left( \left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right) \frac{rA_{n,m\geqslant 1,-}^{r}}{1+r^{2}}+\frac{im}{r}\partial _{r}(r^{2}A_{n,m\geqslant 1,-}^{\phi}) \right) & =
\frac{e^{-i(\mu+m+2n)t}e^{im\phi}}{\mu+m+2n+2}\left(\left( 2\left( n+\frac{\mu+m+2}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{m+2}(1+r^{2})^{-(\mu+m+4)/2}P_{n}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2(n+1)(n+m+1)r^{m}(1+r^{2})^{-(\mu+m+2)/2}P_{n+1}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{1}{i\omega}\left( \left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right) \frac{rA_{n,m\leqslant -1,+}^{r}}{1+r^{2}}+\frac{im}{r}\partial _{r}(r^{2}A_{n,m\leqslant -1,+}^{\phi}) \right) & =
\frac{e^{-i(\mu-m+2n+2)t}e^{im\phi}}{\mu-m+2n+2}\left(-\left( 2\left( n+\frac{\mu-m+2}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{-m+2}(1+r^{2})^{-(\mu-m+4)/2}P_{n}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. +2(n+1)(n-m+1)r^{-m}(1+r^{2})^{-(\mu-m+2)/2}P_{n+1}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{1}{i\omega}\left( \left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right) \frac{rA_{n,m\leqslant -1,-}^{r}}{1+r^{2}}+\frac{im}{r}\partial _{r}(r^{2}A_{n,m\leqslant -1,-}^{\phi}) \right) & =
\frac{e^{-i(\mu-m+2n)t}e^{im\phi}}{\mu-m+2n}\left(\left( 2\left( n+\frac{\mu-m}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{-m}(1+r^{2})^{-(\mu-m+2)/2}P_{n}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2(\mu+n)(\mu-m+n)r^{-m+2}(1+r^{2})^{-(\mu-m+4)/2}P_{n-1}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{1}{i\omega}\left( \mu ^{2} \frac{rA_{n,m=0,+}^{r}}{1+r^{2}} \right) & =-\frac{\mu ^{2}e^{-i(\mu+2n+2)t}}{\mu+2+2n}r^{2}(1+r^{2})^{-(\mu+4)/2}P_{n}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\frac{1}{i\omega}\left( \mu ^{2} \frac{rA_{n,m=0,-}^{r}}{1+r^{2}} \right) & = \frac{\mu ^{2}e^{-i(\mu+2+2n)t}}{\mu+2+2n}r^{2}(1+r^{2})^{-(\mu+4)/2}P_{n}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

$$\tag{.}\begin{align}
\frac{1}{i\omega}\left( im\partial _{r}(rA_{n,m\geqslant 1,+}^{r})-\left(m^{2}-\frac{\omega^{2}r^{2}}{1+r^{2}}\right)rA_{n,m\geqslant 1,+}^{\phi} \right) & =\frac{e^{-i(\mu+m+2n)t}e^{im\phi}}{\mu+m+2n}\left(-i(\mu(\mu+m)+2n(\mu+m+n))r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2i\left(\mu+n\right)(\mu+n+m)r^{m+3}(1+r^{2})^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{1}{i\omega}\left( im\partial _{r}(rA_{n,m\geqslant 1,+}^{r})-\left(m^{2}-\frac{\omega^{2}r^{2}}{1+r^{2}}\right)rA_{n,m\geqslant 1,-}^{\phi} \right) & =\frac{e^{-i(\mu+m+2n+2)t}e^{im\phi}}{\mu+m+2n+2}\left(-i\left( 2\left( n+\frac{\mu+m+2}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{m+3}(1+r^{2})^{-(\mu+m+4)/2}P_{n}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2i\left(n+1\right)(n+m+1)r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P_{n+1}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{1}{i\omega}\left( im\partial _{r}(rA_{n,m\leqslant -1,+}^{r})-\left(m^{2}-\frac{\omega^{2}r^{2}}{1+r^{2}}\right)rA_{n,m\leqslant- 1,+}^{\phi} \right) & =\frac{e^{-i(\mu-m+2n+2)t}e^{im\phi}}{\mu-m+2n+2}\left(-i\left( 2\left( n+\frac{\mu-m+2}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{-m+3}(1+r^{2})^{-(\mu-m+4)/2}P_{n}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2i\left(n+1\right)(n-m+1)r^{-m+1}(1+r^{2})^{-(\mu-m+2)/2}P_{n+1}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{i}{i\omega}\left( im\partial _{r}(rA_{n,m\leqslant -1,-}^{r})-\left(m^{2}-\frac{\omega^{2}r^{2}}{1+r^{2}}\right)rA_{n,m\leqslant-1,-}^{\phi} \right) & =\frac{e^{-i(\mu-m+2n)t}e^{im\phi}}{\mu-m+2n}\left(-i\left( 2\left(n+\frac{\mu-m}{2}\right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{-m+1}(1+r^{2})^{-(\mu-m+2)/2}P_{n}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2i\left(\mu+n\right)(\mu+n-m)r^{-m+3}(1+r^{2})^{-(\mu-m+4)/2}P_{n-1}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
-i\frac{\omega r^{2}}{1+r^{2}}rA_{n,m=0,+}^{\phi} & =-i(\mu+2n+2)e^{-i(\mu+2n+2)t}r^{3}(1+r^{2})^{-(\mu+4)/2}P_{n}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\\
-i\frac{\omega r^{2}}{1+r^{2}}rA_{n,m=0,-}^{\phi} & =-i(\mu+2n+2)e^{-i(\mu+2n+2)t}r^{3}(1+r^{2})^{-(\mu+4)/2}P_{n}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

and

$$\tag{.}\begin{align}
\int _{0}^{\infty} \mathrm{d}r r^{2\beta+1}(1+r^{2})^{-(\alpha+\beta+2)}\left[P^{(\alpha,\beta}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right]^{2} & =\frac{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}{2(2n+\alpha+\beta+1)\Gamma(n+\alpha+\beta+1)n!}
\end{align}$$

---

now we will not impose complex conjugate

$$\tag{.}
\begin{align}
\frac{i\omega\Omega[A_{1}^{\mu},A_{2}^{\nu}]}{2\pi \delta _{m_{1},-m_{2}}\delta _{\omega_{1}\omega_{2}}} & =\int \mathrm{d}r\left( r\partial _{r}\left( \partial _{r}\tilde{A}_{1}^{r}+\frac{1}{r}\tilde{A}_{1}^{r}+im_{1}\tilde{A}^{\phi}_{1} \right)+\frac{2r^{2}}{1+r^{2}}\left(\partial _{r}\tilde{A}_{1}^{r}+\frac{1}{r}\tilde{A}^{r}_{1}+im_{1}\tilde{A}^{\phi}_{1}\right)+\frac{\omega ^{2}_{1} r}{(1+r^{2})^{2}}A_{1}^{r} \right)\tilde{A}_{2}^{r} \\
 & -\int \mathrm{d}r\left( r\partial _{r}\left( \partial _{r}\tilde{A}^{r}_{2}+\frac{1}{r}\tilde{A}^{r}_{2}+im_{2}\tilde{A}^{\phi}_{2} \right)+\frac{2r^{2}}{1+r^{2}}\left( \partial _{r}\tilde{A}^{r}_{2}+\frac{1}{r}\tilde{A}^{r}_{2}+im_{2}\tilde{A}^{\phi}_{2} \right)+ \frac{\omega_{2}^{2} r}{(1+r^{2})^{2}}A_{2}^{r} \right)A_{1}^{r} \\
 & +\int \mathrm{d}r\left( im_{1}r\left(\partial _{r}\tilde{A}^{r}_{1}+\frac{1}{r}\tilde{A}^{r}_{1}+im_{1}\tilde{A}^{\phi}_{1}\right)+\frac{\omega ^{2}_{1}r^{3}}{1+r^{2}} A_{1}^{\phi} \right) A_{2}^{\phi} \\
 & -\int \mathrm{d}r\left( im_{2}r\left(\partial _{r}\tilde{A}^{r}_{2}+\frac{1}{r}\tilde{A}^{r}_{2}+im_{2}\tilde{A}^{\phi}_{2}\right)+\frac{\omega ^{2}_{2}r^{3}}{1+r^{2}}A_{2}^{\phi} \right)A_{1}^{\phi} 
\end{align}$$

$$\tag{.}\begin{align}
\frac{\Omega[A_{1}^{\mu},A_{2}^{\nu}]}{2\pi \delta _{m_{1},-m_{2}}}e^{i(\omega_{1}+\omega_{2})t} & =\frac{1}{i\omega_{1}}\int \mathrm{d}r \left(\left( \mu ^{2}+\frac{m_{1}^{2}}{r^{2}} \right)\frac{r\tilde{A}^{r}_{1}}{1+r^{2}}+im_{1}r\partial _{r}\tilde{A}^{\phi}_{1}+2im_{1}\tilde{A}^{\phi}_{1}\right)\tilde{A}^{r}_{2}\\
 & -\frac{1}{i\omega_{2}}\int \mathrm{d}r\left(\left( \mu ^{2}+\frac{m_{2}^{2}}{r^{2}} \right)\frac{r\tilde{A}^{r}_{2}}{1+r^{2}}+im_{2}r\partial _{r}\tilde{A}^{\phi}_{2}+2im_{2}\tilde{A}^{\phi}_{2} \right)\tilde{A}_{1}^{r} \\
 & +\frac{1}{i\omega_{1}}\int \mathrm{d}r\left( im_{1}r\partial _{r}\tilde{A}^{r}_{1}+im_{1}\tilde{A}^{r}_{1}-\left(m_{1}^{2}-\frac{\omega_{1}^{2}r^{2}}{1+r^{2}}\right)r\tilde{A}^{\phi}_{1} \right) A_{2}^{\phi} \\
 & -\frac{1}{i\omega_{2}}\int \mathrm{d}r\left( im_{2}r\partial _{r}\tilde{A}^{r}_{2}+im_{2}\tilde{A}^{r}_{2}-\left( m_{2}^{2}-\frac{\omega_{2}^{2}r^{2}}{1+r^{2}} \right)r\tilde{A}^{\phi}_{2} \right)A_{1}^{\phi} 
\end{align}$$

here we use

$$\tag{.}\begin{align}
(1+r^{2})\partial _{r}^{2}\tilde{A}^{r}+\frac{1+3r^{2}}{r}\partial _{r}\tilde{A}^{r}+\left( 1-\mu ^{2}-\frac{m^{2}+1}{r^{2}}+\frac{\omega ^{2}}{1+r^{2}} \right)\tilde{A}^{r}-\frac{2im}{r}\tilde{A}^{\phi} & =0 \\
-i\omega \tilde{A}^{t}+\partial _{r}\tilde{A}^{r}+\frac{1}{r}\tilde{A}^{r}+im\tilde{A}^{\phi} & =0
\end{align}$$

set $\displaystyle{m\geqslant1}$ then

$$\tag{.}\begin{align}
\frac{\Omega[A_{n_{1}m+},A_{n_{2}(-m)+}]}{2\pi}e^{i(\omega_{1}+\omega_{2})t} & =-\frac{4i(\mu+n_{1})(\mu+m+n_{1})}{\mu+m+2n_{1}}\int \mathrm{d}rr^{2m+3}(1+r^{2})^{-(\mu+m+3)}P_{n_{1}-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) P_{n_{2}}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\\
& +\frac{4i(n_{2}+1)(n_{2}+m+1)}{\mu+m+2n_{2}+2}\int \mathrm{d}rr^{2m-1}(1+r^{2})^{-(\mu+m+1)}P_{n_{2}+1}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) P_{n_{1}}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =-\delta _{n_{1}-1,n_{2}}  \frac{2i\Gamma(n_{1}+\mu+1)\Gamma(n_{1}+m+1)}{(2n_{1}+\mu+m)^{2}\Gamma(n_{1}+\mu+m)(n_{1}-1)!} \\
 & +\delta _{n_{2}+1,n_{1}} \frac{2i\Gamma(n_{2}+\mu+2)\Gamma(n_{2}+m+2)}{(2n_{2}+2+\mu+m)^{2}\Gamma(n_{2}+\mu+m+1)n_{1}!} \\
 & =0
\end{align}$$

$$\tag{.}\begin{align}
\frac{\Omega[A_{n_{1}m-},A_{n_{2}(-m)-}]}{2\pi}e^{i(\omega_{1}+\omega_{2})t} & =-\frac{4i(n_{1}+1)(n_{1}+m+1)}{\mu+m+2n_{1}+2}\int \mathrm{d}rr^{2m-1}(1+r^{2})^{-(\mu+m+1)}P_{n_{1}+1}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) P_{n_{2}}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
& +\frac{4i\left(\mu+n_{2}\right)(\mu+n_{2}+m)}{\mu+m+2n_{2}}\int \mathrm{d}rr^{2m+3}(1+r^{2})^{-(\mu+m+3)}P_{n_{2}-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{1}}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =-\delta _{n_{1}+1,n_{2}} \frac{2i\Gamma(n_{1}+\mu+2)\Gamma(n_{1}+m+2)}{(2n_{1}+2+\mu+m)^{2}\Gamma(n_{1}+\mu+m+1)n_{1}!} \\
 & +\delta _{n_{2}-1,n_{1}}  \frac{2i\Gamma(n_{2}+\mu+1)\Gamma(n_{2}+m+1)}{(2n_{2}+\mu+m)^{2}\Gamma(n_{2}+\mu+m)(n_{2}-1)!} \\
 & =0
\end{align}$$

$$\tag{.}\begin{align}
\frac{\Omega[A_{n_{1}m+},A_{n_{2}(-m)-}]}{2\pi}e^{i(\omega_{1}+\omega_{2})t} & =\frac{2i}{\mu+m+2n_{1}}\int _{0}^{\infty} \mathrm{d}r\left(-(\mu(\mu+m)+2n_{1}(\mu+m+n_{1}))r^{2m-1}(1+r^{2})^{-(\mu+m+1)}P_{n_{1}}^{(\mu,m-1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)P_{n_{2}}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right) \\
& +\frac{2i}{\mu+m+2n_{2}}\int \mathrm{d}r\left(\left( \mu(\mu+m)+2n_{2}(\mu+m+n_{2}) \right)r^{2m-1}(1+r^{2})^{-(\mu+m+1)}P_{n_{1}}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) P_{n_{2}}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right) \\
 & =\delta _{n_{1}n_{2}}(I-I)=0
\end{align}$$

$$\tag{.}\begin{align}
\frac{\Omega[A_{n_{1}0+},A_{n_{2}0+}]}{2\pi}e^{i(\omega_{1}+\omega_{2})t} & =\frac{[\mu ^{2}-(\mu+2+2n_{1})^{2}]i}{\mu+2+2n_{1}}\int \mathrm{d}r r^{3}(1+r^{2})^{-(\mu+3)}P_{n_{1}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
& -\frac{[\mu ^{2}-(\mu+2+2n_{2})^{2}]i}{\mu+2+2n_{2}}\int \mathrm{d}r r^{3}(1+r^{2})^{-(\mu+3)}P_{n_{1}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =\delta _{n_{1},n_{2}}(I-I) =0
\end{align}$$

$$\tag{.}\begin{align}
\frac{\Omega[A_{n_{1}0-},A_{n_{2}0-}]}{2\pi}e^{i(\omega_{1}+\omega_{2})t} & =\frac{[\mu ^{2}-(\mu+2+2n_{1})^{2}]i}{\mu+2+2n_{1}}\int \mathrm{d}r r^{3}(1+r^{2})^{-(\mu+3)}P_{n_{1}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & -\frac{[\mu ^{2}-(\mu+2+2n_{2})^{2}]i}{\mu+2+2n_{2}}\int \mathrm{d}r r^{3}(1+r^{2})^{-(\mu+3)}P_{n_{1}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =\delta _{n_{1},n_{2}}(I-I)=0
\end{align}$$

$$\tag{.}\begin{align}
\frac{\Omega[A_{n_{1}0+},A_{n_{2}0-}]}{2\pi}e^{i(\omega_{1}+\omega_{2})t} & =-\frac{[\mu ^{2}+(\mu+2+2n_{1})^{2}]i}{\mu+2+2n_{1}}\int \mathrm{d}r r^{3}(1+r^{2})^{-(\mu+3)}P_{n_{1}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)  \\
 & +\frac{[\mu ^{2}+(\mu+2+2n_{2})^{2}]i}{\mu+2+2n_{2}}\int \mathrm{d}r r^{3}(1+r^{2})^{-(\mu+3)}P_{n_{1}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)  \\
 & =\delta _{n_{1},n_{2}}(I-I)=0
\end{align}$$

here we use

$$\tag{.}\begin{align}
\left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right) \frac{rA_{n,m\geqslant 1,+}^{r}}{1+r^{2}}+\frac{im}{r}\partial _{r}(r^{2}A_{n,m\geqslant 1,+}^{\phi}) & =
\frac{e^{-i(\mu+m+2n)t}e^{im\phi}}{\mu+m+2n}\left(-(\mu(\mu+m)+2n(\mu+m+n))r^{m}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. +2(\mu+n)(\mu+m+n)r^{m+2}(1+r^{2})^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right) \frac{rA_{n,m\geqslant 1,-}^{r}}{1+r^{2}}+\frac{im}{r}\partial _{r}(r^{2}A_{n,m\geqslant 1,-}^{\phi}) & =
\frac{e^{-i(\mu+m+2n)t}e^{im\phi}}{\mu+m+2n+2}\left(\left( 2\left( n+\frac{\mu+m+2}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{m+2}(1+r^{2})^{-(\mu+m+4)/2}P_{n}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2(n+1)(n+m+1)r^{m}(1+r^{2})^{-(\mu+m+2)/2}P_{n+1}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right) \frac{rA_{n,m\leqslant -1,+}^{r}}{1+r^{2}}+\frac{im}{r}\partial _{r}(r^{2}A_{n,m\leqslant -1,+}^{\phi}) & =
\frac{e^{-i(\mu-m+2n+2)t}e^{im\phi}}{\mu-m+2n+2}\left(-\left( 2\left( n+\frac{\mu-m+2}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{-m+2}(1+r^{2})^{-(\mu-m+4)/2}P_{n}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. +2(n+1)(n-m+1)r^{-m}(1+r^{2})^{-(\mu-m+2)/2}P_{n+1}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right) \frac{rA_{n,m\leqslant -1,-}^{r}}{1+r^{2}}+\frac{im}{r}\partial _{r}(r^{2}A_{n,m\leqslant -1,-}^{\phi}) & =
\frac{e^{-i(\mu-m+2n)t}e^{im\phi}}{\mu-m+2n}\left(\left( 2\left( n+\frac{\mu-m}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{-m}(1+r^{2})^{-(\mu-m+2)/2}P_{n}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2(\mu+n)(\mu-m+n)r^{-m+2}(1+r^{2})^{-(\mu-m+4)/2}P_{n-1}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\mu ^{2} \frac{rA_{n,m=0,+}^{r}}{1+r^{2}} & =-\frac{\mu ^{2}e^{-i(\mu+2n+2)t}}{\mu+2+2n}r^{2}(1+r^{2})^{-(\mu+4)/2}P_{n}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\mu ^{2} \frac{rA_{n,m=0,-}^{r}}{1+r^{2}} & = \frac{\mu ^{2}e^{-i(\mu+2+2n)t}}{\mu+2+2n}r^{2}(1+r^{2})^{-(\mu+4)/2}P_{n}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

$$\tag{.}\begin{align}
\frac{1}{i\omega}\left( im\partial _{r}(rA_{n,m\geqslant 1,+}^{r})-\left(m^{2}-\frac{\omega^{2}r^{2}}{1+r^{2}}\right)rA_{n,m\geqslant 1,+}^{\phi} \right) & =\frac{e^{-i(\mu+m+2n)t}e^{im\phi}}{\mu+m+2n}\left(-i(\mu(\mu+m)+2n(\mu+m+n))r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2i\left(\mu+n\right)(\mu+n+m)r^{m+3}(1+r^{2})^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{1}{i\omega}\left( im\partial _{r}(rA_{n,m\geqslant 1,+}^{r})-\left(m^{2}-\frac{\omega^{2}r^{2}}{1+r^{2}}\right)rA_{n,m\geqslant 1,-}^{\phi} \right) & =\frac{e^{-i(\mu+m+2n+2)t}e^{im\phi}}{\mu+m+2n+2}\left(-i\left( 2\left( n+\frac{\mu+m+2}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{m+3}(1+r^{2})^{-(\mu+m+4)/2}P_{n}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2i\left(n+1\right)(n+m+1)r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P_{n+1}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{1}{i\omega}\left( im\partial _{r}(rA_{n,m\leqslant -1,+}^{r})-\left(m^{2}-\frac{\omega^{2}r^{2}}{1+r^{2}}\right)rA_{n,m\leqslant- 1,+}^{\phi} \right) & =\frac{e^{-i(\mu-m+2n+2)t}e^{im\phi}}{\mu-m+2n+2}\left(-i\left( 2\left( n+\frac{\mu-m+2}{2} \right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{-m+3}(1+r^{2})^{-(\mu-m+4)/2}P_{n}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2i\left(n+1\right)(n-m+1)r^{-m+1}(1+r^{2})^{-(\mu-m+2)/2}P_{n+1}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
\frac{i}{i\omega}\left( im\partial _{r}(rA_{n,m\leqslant -1,-}^{r})-\left(m^{2}-\frac{\omega^{2}r^{2}}{1+r^{2}}\right)rA_{n,m\leqslant-1,-}^{\phi} \right) & =\frac{e^{-i(\mu-m+2n)t}e^{im\phi}}{\mu-m+2n}\left(-i\left( 2\left(n+\frac{\mu-m}{2}\right)^{2}+\frac{1}{2}(\mu-m)(\mu+m) \right)r^{-m+1}(1+r^{2})^{-(\mu-m+2)/2}P_{n}^{(\mu,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left. -2i\left(\mu+n\right)(\mu+n-m)r^{-m+3}(1+r^{2})^{-(\mu-m+4)/2}P_{n-1}^{(\mu,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right) \\
-i\frac{\omega r^{2}}{1+r^{2}}rA_{n,m=0,+}^{\phi} & =-i(\mu+2n+2)e^{-i(\mu+2n+2)t}r^{3}(1+r^{2})^{-(\mu+4)/2}P_{n}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\\
-i\frac{\omega r^{2}}{1+r^{2}}rA_{n,m=0,-}^{\phi} & =-i(\mu+2n+2)e^{-i(\mu+2n+2)t}r^{3}(1+r^{2})^{-(\mu+4)/2}P_{n}^{(\mu,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

and

$$\tag{.}\begin{align}
\int _{0}^{\infty} \mathrm{d}r r^{2\beta+1}(1+r^{2})^{-(\alpha+\beta+2)}\left[P^{(\alpha,\beta}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right]^{2} & =\frac{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}{2(2n+\alpha+\beta+1)\Gamma(n+\alpha+\beta+1)n!}
\end{align}$$

---

then we will calculate the simplectic form of $\displaystyle{f}$ symbols. we first present the result we will use

$$\begin{align}
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} } \sqrt{ \frac{\mu+1}{\pi \mu} }\left(\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{1}^{\mu}+2i\bar{n}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-1} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{0}^{\mu}-\bar{n}(\bar{n}-1)\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-2} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu}_{-1}\right) \\
{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}}}\sqrt{ \frac{\mu+1}{\pi \mu} }\left( \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{1}^{\mu}+2in\mathcal{L}_{\xi _{-1}}^{n-1}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{0}-n(n-1)\mathcal{L}_{\xi _{-1}}^{n-2}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{-1} \right) \\
\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}& =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\bar{n}+1)\Gamma(\mu+n+2)}{\Gamma(\mu+2)}r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}P_{\bar{n}}^{(\mu+1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(n+1)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)}r^{\bar{n}-n}(1+r^{2})^{-(\mu+2+\bar{n}-n)/2}P_{n}^{(\mu+1,\bar{n}-n)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

and

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

---

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left( -\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu} \right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-F^{\mu \nu}\nabla _{\mu}\delta A_{\nu}-m^{2}A^{\mu}\delta A_{\mu}\right) \\
 & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}F^{\mu \nu}-m^{2}A^{\nu}\right)\delta A_{\nu} \\
 & +\int _{\Sigma _{f}} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}-\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}
\end{align}$$

which gives the eom and symplectic potential

$$\begin{align}
E^{\nu} & =\nabla _{\mu}F^{\mu \nu}-m^{2}A^{\nu} \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}
\end{align}$$

take a variation on the symplectic potential

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\delta A_{\nu}-\nabla _{\nu}\delta A_{\mu})\wedge \delta A^{\nu}
\end{align}$$

we will argue $\displaystyle{\mathcal{L}_{X_{\xi}}\omega=0}$, where $\displaystyle{X_{\xi}=\int \mathrm{d}^{3}x\sqrt{ -g }\mathcal{L}_{\xi}A_{\mu} \frac{\delta}{\delta A_{\mu}}}$. using the Cartan magic formula

$$\begin{align}
\mathcal{L}_{X_{\xi}}\omega & =\delta(X_{\xi}\cdot \omega) \\
 & =\delta\left( \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}(X_{\xi}\cdot \delta A_{\nu})-\nabla _{\nu}(X_{\xi}\cdot \delta A_{\mu}))\delta A^{\nu}-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\delta A_{\nu}-\nabla _{\nu}\delta A_{\mu})(X_{\xi}\cdot \delta A^{\nu}) \right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}(\xi ^{\rho}\nabla _{\rho}\delta A_{\nu}+\delta A_{\rho}\nabla _{\nu}\xi ^{\rho})-\nabla _{\nu}(\xi ^{\rho}\nabla _{\rho}\delta A_{\mu}+\delta A_{\rho}\nabla _{\mu}\xi ^{\rho}))\wedge \delta A^{\nu} \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\delta A_{\nu}-\nabla _{\nu}\delta A_{\mu})\wedge(\xi ^{\rho}\nabla _{\rho}\delta A^{\nu}-\delta A^{\rho}\nabla _{\rho}\xi ^{\nu})
\end{align}$$

the first term gives

$$\begin{align}
 & \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}(\xi ^{\rho}\nabla _{\rho}\delta A_{\nu}+\delta A_{\rho}\nabla _{\nu}\xi ^{\rho})-\nabla _{\nu}(\xi ^{\rho}\nabla _{\rho}\delta A_{\mu}+\delta A_{\rho}\nabla _{\mu}\xi ^{\rho}))\wedge \delta A^{\nu} \\
= & \int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}(\xi ^{\rho}\nabla _{\rho}\delta A_{\nu})-\nabla _{\nu}(\xi ^{\rho}\nabla _{\rho}\delta A_{\mu}))\wedge \delta A^{\nu}+\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}(\delta A_{\rho}\nabla _{\nu}\xi ^{\rho})-\nabla _{\nu}(\delta A_{\rho}\nabla _{\mu}\xi ^{\rho}))\wedge \delta A^{\nu}
\end{align}$$

in which the first term is

$$\begin{align}
 & \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\xi ^{\rho}\nabla _{\rho}\delta A_{\nu}+\xi ^{\rho}\nabla _{\mu}\nabla _{\rho}\delta A_{\nu}-\nabla _{\nu}\xi ^{\rho}\nabla _{\rho}\delta A_{\mu}-\xi ^{\rho}\nabla _{\nu}\nabla _{\rho}\delta A_{\mu})\wedge \delta A^{\nu} \\
= & \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\xi ^{\rho}\nabla _{\rho}\delta A_{\nu}-\nabla _{\nu}\xi ^{\rho}\nabla _{\rho}\delta A_{\mu})\wedge \delta A^{\nu}+\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\rho}\nabla _{\rho}(\nabla _{\mu}\delta A_{\nu}-\nabla _{\nu}\delta A_{\mu})\wedge \delta A^{\nu} \\
 & -\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\rho}(R^{\lambda}_{~\nu \mu \rho}-R^{\lambda}_{~\mu \nu \rho})\delta A_{\lambda}\wedge \delta A^{\nu} \\
= & \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\rho}(\xi ^{\rho}(\nabla _{\mu}\delta A_{\nu}-\nabla _{\nu}\delta A_{\mu}))\wedge \delta A^{\nu}-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla ^{\rho}\xi _{\mu}\nabla _{\rho}\delta A_{\nu}-\nabla ^{\rho}\xi _{\nu}\nabla _{\rho}\delta A_{\mu})\wedge \delta A^{\nu}
\end{align}$$

$$\tag{.}\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} & =0
\end{align}$$