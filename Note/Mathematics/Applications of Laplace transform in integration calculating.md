https://zhuanlan.zhihu.com/p/343298799

$$
\tag{0.1}
\begin{align}
 & \int^{\infty}_{0} \frac{e^{-ax}-e^{-bx}}{x}\cos cx\mathrm{d}x, & a>0,b>0,c>0 \\
 & \int^{\infty}_{0} \frac{1-\cos bx}{x^{2}}\mathrm{d}x, & b>0 \\
 & \int^{\infty}_{0} \frac{\sin xt}{x(x^{2}+1)}\mathrm{d}x, &
\end{align}
$$

1. 注意到

$$
\tag{1.1}
\begin{align}
\int^{\infty}_{0} \frac{f(t)}{t}e^{-st}\mathrm{d}t=\int^{\infty}_{s}F(s)\mathrm{d}s
\end{align}
$$

以及

$$
\tag{1.2}
\begin{align}
\int^{\infty}_{0}\cos \omega x e^{-sx}\mathrm{d}x & = \frac{s}{s^{2}+\omega^{2}}
\end{align}
$$

有

$$
\tag{1.3}
\begin{align}
\int^{\infty}_{0} \frac{e^{-ax}-e^{-bx}}{x}\cos cx\mathrm{d}x=\int^{b}_{a} \frac{s}{s^{2}+c^{2}}\mathrm{d}s=\frac{1}{2}\ln \frac{b^{2}+c^{2}}{a^{2}+c^{2}}
\end{align}
$$

1. 注意到

$$
\tag{2.1}
\begin{align}
\int^{\infty}_{0}f(x)G(x)\mathrm{d}x & =\int^{\infty}_{0}F(x)g(x)\mathrm{d}x
\end{align}
$$

以及

$$
\tag{2.2}
\begin{align}
\mathscr{L}\left\{t\right\} & =s^{-2} \\
\mathscr{L}\left\{\cos \omega t\right\} & =\frac{s}{s^{2}+\omega^{2}} \\
\mathscr{L}\left\{1\right\} & =s^{-1}
\end{align}
$$

有

$$
\tag{2.3}
\begin{align}
\int^{\infty}_{0} \frac{1-\cos bx}{x^{2}}\mathrm{d}x & =\int^{\infty}_{0}\left( \frac{1}{s}-\frac{s}{s^{2}+b^{2}} \right) s \mathrm{d}s \\
 & =b^{2}\int^{\infty}_{0} \frac{\mathrm{d}s}{s^{2}+b^{2}}= \frac{\pi b}{2}
\end{align}
$$

1. 对参变量t做Laplace变换

$$
\tag{3.1}
\begin{align}
F(s) & =\int^{\infty}_{0}e^{-st}\mathrm{d}t\int^{\infty}_{0}\mathrm{d}x\frac{\sin xt}{x(x^{2}+1)} \\
 & =\int^{\infty}_{0}\mathrm{d}x \frac{1}{x^{2}+1} \frac{1}{s^{2}+x^{2}} \\
 & =\frac{1}{2}\int^{\infty}_{-\infty}\mathrm{d}x \frac{1}{(x^{2}+1)(x^{2}+s^{2})} \\
  & =\frac{\pi}{2} \frac{1}{s+s^{2}}
\end{align}
$$

再做逆变换

$$
\tag{3.2}
\begin{align}
\int^{\infty}_{0} \frac{\sin xt}{x(x^{2}+1)}\mathrm{d}x & =\frac{\pi}{2}\mathscr{L}^{-1}\left\{\frac{1}{s+s^{2}}\right\} \\
 & =\frac{\pi}{2}(1-e^{-t})
\end{align}
$$
