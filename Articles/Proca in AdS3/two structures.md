$$\tag{0.1}\begin{align}
r \partial _{r}A_{nm\pm}^{t}+\frac{2r^{2}}{1+r^{2}}A_{mn\pm}^{t}+\frac{r}{(1+r^{2})^{2}}\partial _{t} A^{r}_{nm\pm} \\
r\partial _{\phi}A_{mn\pm}^{t}+\frac{r^{3}}{1+r^{2}}\partial _{t}A^{\phi}_{nm\pm}
\end{align}$$

$$\tag{.}\begin{align}
2mP_{n}^{(\mu,m-1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) & =(\mu+n)(\mu+m+n)r^{2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(\mu+m+n)(1+r^{2})P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
2mr^{2}P_{n-1}^{(\mu,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =[(\mu+n)(n+m)r^{2}-m(m+1)](1+r^{2})P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(n+m)(1+r^{2})^{2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

---

remind that the constraint equation

$$\tag{1.1}\begin{align}
\partial _{t}A^{t}+\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0 \\
\implies \tilde{A}^{t} & =\frac{1}{i\omega}\left( \partial _{r}\tilde{A}^{r}+\frac{1}{r}\tilde{A}^{r}+im\tilde{A}^{\phi} \right)
\end{align}$$

$$\tag{1.2}\begin{align}
 I_{1}& =r \partial _{r}A_{nm\pm}^{t}+\frac{2r^{2}}{1+r^{2}}A_{mn\pm}^{t}+\frac{r}{(1+r^{2})^{2}}\partial _{t} A^{r}_{nm\pm} \\
 & =\frac{r}{i\omega _{nm\pm}}\partial _{r}\left( \partial _{r}\tilde{A}_{nm\pm}^{r}+\frac{1}{r}\tilde{A}^{r}_{nm\pm}+im\tilde{A}^{\phi}_{nm\pm} \right)e^{-i\omega _{nm\pm} t}e^{im\phi}+\frac{2r^{2}}{i\omega _{nm\pm}(1+r^{2})}\left( \partial _{r}\tilde{A}^{r}_{nm\pm}+\frac{1}{r}\tilde{A}^{r}_{nm\pm} +im\tilde{A}^{\phi}_{nm\pm}\right)e^{-i\omega _{nm\pm}t}e^{im\phi}-\frac{i\omega _{nm\pm}r}{(1+r^{2})^{2}}\tilde{A}^{r}_{nm\pm}e^{-i\omega _{nm\pm}t}e^{im\phi} \\
 i\omega _{nm\pm}I_{1}e^{i\omega _{nm\pm}t}e^{-im\phi} & =r\partial _{r}^{2}\tilde{A}^{r}_{nm\pm}+\partial _{r}\tilde{A}^{r}_{nm\pm}-\frac{1}{r}\tilde{A}^{r}_{nm\pm}+imr\partial _{r}\tilde{A}^{\phi}_{nm\pm}+\frac{2r^{2}}{1+r^{2}}\partial _{r}\tilde{A}^{r}_{nm\pm}+\frac{2r}{1+r^{2}}\tilde{A}^{r}_{nm\pm}+\frac{2imr^{2}}{1+r^{2}}\tilde{A}^{\phi}_{nm\pm}+\frac{\omega _{nm\pm}^{2}r}{(1+r^{2})^{2}}\tilde{A}^{r}_{nm\pm} \\
 & =\frac{r}{1+r^{2}}\left((1+r^{2})\partial _{r}^{2}\tilde{A}^{r}_{nm\pm}+\frac{1+3r^{2}}{r}\partial _{r}\tilde{A}^{r}_{nm\pm}+\left( 1-\frac{1}{r^{2}}+\frac{\omega ^{2}_{nm\pm}}{1+r^{2}} \right)\tilde{A}^{r}_{nm\pm}\right)+imr\partial _{r}\tilde{A}^{\phi}_{nm\pm}+\frac{2imr^{2}}{1+r^{2}}\tilde{A}^{\phi}_{nm\pm} \\
 & =\frac{2im}{1+r^{2}}\tilde{A}^{\phi}_{nm\pm}+\frac{r}{1+r^{2}}\left( \mu ^{2}+\frac{m^{2}}{r^{2}} \right)\tilde{A}^{r}_{nm\pm}+imr\partial _{r}\tilde{A}^{\phi}_{nm\pm}+\frac{2imr^{2}}{1+r^{2}}\tilde{A}^{\phi}_{nm\pm} \\
 & =\frac{r}{1+r^{2}}\left( \mu ^{2}+\frac{m^{2}}{r^{2}} \right)\tilde{A}^{r}_{nm\pm}+im\partial _{r}(r\tilde{A}^{\phi}_{nm\pm})+imr\tilde{A}^{\phi}_{nm\pm}
\end{align}$$

here we use the eom

$$\tag{1.3}\begin{align}
(1+r^{2})\partial _{r}^{2}\tilde{A}^{r}+\frac{1+3r^{2}}{r}\partial _{r}\tilde{A}^{r}+\left( 1-\frac{1}{r^{2}}+\frac{\omega ^{2}}{1+r^{2}} \right)\tilde{A}^{r}& =\frac{2im}{r}\tilde{A}^{\phi}_{nm\pm} +\left( \mu ^{2}+\frac{m^{2}}{r^{2}} \right)\tilde{A}^{r}_{nm\pm} \\
\Phi _{nm\pm} & =r^{|m\mp 1|}(1+r^{2})^{-(\mu+|m\mp 1|+1)/2}P^{(\mu,|m\mp 1|)}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right) \\
\tilde{A}^{r}_{nm\pm} & =\mp i\Phi _{nm\pm} \\
r\tilde{A}^{\phi}_{nm\pm} & =\Phi _{nm\pm}
\end{align}$$

when $\displaystyle{m\geqslant 1,+}$, 

$$\tag{.}\begin{align}
(2n+m+\mu)I_{1}e^{i(2n+m+\mu)t}e^{-im\phi} & =-\left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right)r^{m}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & +m^{2}r^{m-2}(1+r^{2})^{-(\mu+m)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & -m(\mu+m)r^{m}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & +2r^{m}(1+r^{2})^{-(\mu+m+4)/2}\left((\mu+n)(\mu+m+n)r^{2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(\mu+m+n)(1+r^{2})P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right) \\
 & =-(\mu(\mu+m)+2n(\mu+m+n))r^{m}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\left(-\mu(\mu+m)-2n(\mu+m+n)\right) \\
 & +2(\mu+n)(\mu+n+m)r^{m+2}(1+r^{2})^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

here we use

$$\tag{.}\begin{align}
2mP_{n}^{(\mu,m-1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) & =(\mu+n)(\mu+m+n)r^{2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(\mu+m+n)(1+r^{2})P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\end{align}$$

and when $\displaystyle{m\geqslant 1,-}$

$$\tag{.}\begin{align}
 (2n+m+\mu)I_{1}e^{i(2n+m+\mu)t}e^{-im\phi} & =-2n(n+m)r^{m}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & +(2(\mu+n)(n+m)+\mu(\mu-m))r^{m+2}(1+r^{2})^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)
\end{align}$$

$$\tag{.}\begin{align}
\omega _{nm\pm}I_{1}e^{i\omega _{nm\pm}t}e^{-im\phi} & =\left( \mu ^{2}+\frac{m^{2}}{r^{2}} \right)r^{m+2}(1+r^{2})^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & +m(m+2)r^{m}(1+r^{2})^{-(\mu+m+2)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & -m(\mu+m+2)r^{m+2}(1+r^{2})^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & +2r^{m}\left(1+r^{2}\right)^{-(\mu+m+4)/2}((\mu+n)(n+m)r^{2}-m(m+1))P_{n-1}^{(\mu,m+1)} \\
 & \mu ^{2}+m(m+2)-m(\mu+m+2)+2(\mu+n)(n+m) \\
 & \mu ^{2}+2m-m\mu-2m+2\mu n+2\mu m+2n^{2}+2mn
\end{align}$$


$$\tag{.}\begin{align}
2mr^{2}P_{n-1}^{(\mu,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =[(\mu+n)(n+m)r^{2}-m(m+1)](1+r^{2})P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(n+m)(1+r^{2})^{2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

---

$$\tag{2.1}\begin{align}
I_{2} & =r\partial _{\phi}A_{nm\pm}^{t}+\frac{r^{3}}{1+r^{2}}\partial _{t}A^{\phi}_{nm\pm} \\
 & = \left( imr\tilde{A}^{t}_{nm\pm}-\frac{i\omega _{nm\pm}r^{3}}{1+r^{2}}\tilde{A}^{\phi}_{nm\pm} \right)e^{-i\omega _{nm\pm}t}e^{im\phi} \\
 & = \left( \frac{imr}{i\omega _{nm\pm}}\left(\partial _{r}\tilde{A}^{r}_{nm\pm}+\frac{1}{r}\tilde{A}^{r}_{nm\pm}+im\tilde{A}^{\phi}_{nm\pm}\right)-\frac{i\omega _{nm\pm}r^{3}}{1+r^{2}}\tilde{A}^{\phi}_{nm\pm}\right)e^{-i\omega _{nm\pm}t}e^{im\phi} \\
i\omega _{nm\pm}I_{2}e^{i\omega _{nm\pm}t}e^{-im\phi} & =im\partial _{r}(r\tilde{A}^{r}_{nm\pm})-\left( m^{2}-\frac{\omega _{nm\pm}^{2}r^{2}}{1+r^{2}} \right)r\tilde{A}^{\phi}_{nm\pm}
\end{align}$$

whem $\displaystyle{m\geqslant 1,+}$

$$\tag{.}\begin{align}
i(2n+m+\mu)I_{2}e^{i(2n+m+\mu)t}e^{-im\phi} & =+2(\mu+n)(\mu+m+n)r^{m+3}(1+r^{2})^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & +\left(\mu(\mu+m)+2n(\mu+m+n)\right)r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

here we use

$$\tag{.}\begin{align}
2mP_{n}^{(\mu,m-1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) & =(\mu+n)(\mu+m+n)r^{2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(\mu+m+n)(1+r^{2})P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\end{align}$$

and when $\displaystyle{m\geqslant 1,-}$

$$\tag{.}\begin{align}
i\omega _{nm\pm}I_{2}e^{i\omega _{nm\pm}t}e^{-im\phi} & =-\left( m^{2}-\frac{(2n+m+\mu)^{2}r^{2}}{1+r^{2}} \right)r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & -m(m+2)r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & +m(\mu+m+2)r^{m+3}\left(1+r^{2}\right)^{-(\mu+m+4)/2}P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & -2r^{m+1}(1+r^{2})^{-(\mu+m+6)/2}\left(((\mu+n)(n+m)r^{2}-m(m+1))(1+r^{2})P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right) \\
 & +2n(n+m)r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P_{n}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & +(2n+m+\mu)^{2}-m(m+2)+m(\mu+m+2)-2(\mu+n)(n+m) \\
 & =2n^{2}+2nm+2n\mu+\mu ^{2}+m\mu+m^{2} \\
 & +2n(n+m+\mu)+\mu(\mu+m)+m^{2}
\end{align}$$

$$\tag{.}\begin{align}
2mr^{2}P_{n-1}^{(\mu,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =[(\mu+n)(n+m)r^{2}-m(m+1)](1+r^{2})P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-n(n+m)(1+r^{2})^{2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

---

$$\tag{.}
\boxed{\begin{align}
\frac{i\omega_{1}\Omega(A^{\mu}_{1},A_{2}^{\nu})}{2\pi \delta _{m_{1}m_{2}}\delta _{\omega_{1}\omega_{2}}} & =2im_{1}\int \mathrm{d}r\left( \partial _{r}\tilde{A}^{r}_{1}rA_{2}^{*\phi}-\partial _{r}(r\tilde{A}^{*\phi}_{2})\tilde{A}^{r}_{1}\right) \\
 & +2\int \mathrm{d}r r\left[ \left( \mu ^{2}+\frac{m_{1}^{2}}{r^{2}} \right)\frac{\tilde{A}^{r}_{1}\tilde{A}^{*r}_{2}}{1+r^{2}} +\left( \frac{\omega ^{2}_{1}r^{2}}{1+r^{2}}-m_{1}^{2} \right)\tilde{A}^{\phi}_{1}\tilde{A}^{*\phi}_{2}\right]
\end{align}}$$

$$\tag{.}\begin{align}
\frac{i(2n+m+\mu)}{2\pi} \Omega(A^{\mu}_{nm+},A^{\nu}_{(n-1)m-}) & =2m\int _{0}^{\infty} \mathrm{d}r\left(\partial _{r}\left( r^{m-1}(1+r^{2})^{-(\mu+m)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \right)r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P_{n-1}^{(\mu,m+1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)\right. \\
 & \left.-\partial _{r}\left( r^{m+1}(1+r^{2})^{-(\mu+m+2)/2}P^{(\mu,m+1)}_{n-1}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right)r^{m-1}(1+r^{2})^{-(\mu+m)/2}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right) \\
 & +2\int \mathrm{d}r\left[-\left(\mu ^{2}+\frac{m^{2}}{r^{2}}\right)\frac{1}{1+r^{2}}+\left( \frac{(2n+m+\mu)^{2}}{1+r^{2}} -\frac{m^{2}}{r^{2}}\right)\right]r^{2m+1}(1+r^{2})^{-(\mu+m+1)}P_{n}^{(\mu,m-1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)P_{n-1}^{(\mu,m+1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)
\end{align}$$

the first two lines read
$$\tag{.}\begin{align}
 & =-4mr^{2m-1}(1+r^{2})^{-(\mu+m+2)}P_{n}^{(\mu,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & +8mr^{2m+1}(1+r^{2})^{-(\mu+m+3)}P_{n}^{(\mu,m-1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right)P_{n-1}^{(\mu,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & -8mr^{2m+1}(1+r^{2})^{-(\mu+m+3)}P_{n-1}^{(\mu,m+1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right)P_{n}^{(\mu,m-1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)
\end{align}$$

