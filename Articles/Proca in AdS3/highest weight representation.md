Killing vectors

$$\tag{1.1}
\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}
$$

and their non-zero commutators

$$\tag{1.2}
\begin{align}
[\xi_{0},\xi_{1}] & =i\xi_{1} \\
[\xi_{0},\xi _{-1}] & =-i\xi _{-1} \\
[\xi _{1},\xi _{-1}] & =-2i\xi _{0} \\
[\bar{\xi}_{0},\bar{\xi}_{1}] & =i\bar{\xi}_{1} \\
[\bar{\xi}_{0},\bar{\xi}_{-1}] & =-i\bar{\xi}_{-1} \\
[\bar{\xi}_{1},\bar{\xi}_{-1}] & =-2i\bar{\xi}_{0}
\end{align}
$$

introduce the total-antisymmetric tensor $\displaystyle{\varepsilon _{\mu \nu \rho}}$ with non-zero components $\displaystyle{\varepsilon _{tr\phi}=r}$

$$\tag{1.3}
\begin{align}
\nabla _{\mu}\xi _{a,\nu} & =-\varepsilon _{\mu \nu \rho}\xi _{a}^{~\rho} \\
\nabla _{\mu}\bar{\xi} _{a,\nu} & =\varepsilon _{\mu \nu \rho}\bar{\xi}_{a}^{~\rho}
\end{align}
$$

# modes

$$\tag{2.1}
\begin{align}
{f^{(+)}_{r,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} }\frac{e^{-i(\mu+2)t}}{(1+r^{2})^{\mu/2+1}}\bar{\xi}_{1}^{\mu} \\
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{r,0,0}}^{\mu}
\end{align}
$$

then act the Killing symmetries

$$\tag{2.2}\begin{align}
\mathcal{L}_{\xi_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (n+1)(\mu+n+2) }{f_{r,n+1,\bar{n}}^{(+)}}^{\mu}\\
\mathcal{L}_{\xi_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu+2}{2}+n\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}\\
\mathcal{L}_{\xi_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ n(\mu+n+1) }{f^{+}_{r,n-1,\bar{n}}}^{\mu}\\
\mathcal{L}_{\bar{\xi}_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (\bar{n}+1)(\mu+\bar{n}) }{f^{(+)}_{r,n,\bar{n}+1}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu}{2}+\bar{n}\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}\\
\mathcal{L}_{\bar{\xi}_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ \bar{n}(\mu+\bar{n}-1) }{f^{(+)}_{r,n,\bar{n}-1}}^{\mu}
\end{align}$$

then we will give the explicit expression of $\displaystyle{{f^{(+)}_{r,n,\bar{n}}}^{\mu}}$. we first 

$$\tag{2.3}\begin{align}
f^{(+)}_{r,n,0} & \propto r^{n}(1+r^{2})^{-(\mu+2+n)/2}e^{-i(\mu+2+n)t}e^{in\phi}
\end{align}$$

$$\tag{2.4}\begin{align}
{f^{(+)}_{r,n,1}}^{\mu} & \propto \mathcal{L}_{\bar{\xi}_{-1}}f^{(+)}_{r,n,0}\bar{\xi}_{1}^{\mu} \\
  & =\bar{\xi}_{-1}^{\nu}\partial _{\nu}(f^{(+)}_{r,n,0}\bar{\xi}^{\mu}_{1})-f^{(+)}_{r,n,0}\bar{\xi}^{\nu}_{-1}\partial _{\nu}\bar{\xi}^{\mu}_{1} \\
 & =f^{(+)}_{r,n,1}\bar{\xi}^{\mu}_{1}+2if^{(+)}_{r,n,0}\bar{\xi}^{\nu}_{0} \\
f^{(+)}_{r,n,\bar{n}} & =(\bar{\xi}^{\nu}_{-1}\partial _{\nu})^{\bar{n}}f^{(+)}_{r,n,0} \\
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =f^{(+)}_{r,n,\bar{n}}\bar{\xi}^{\mu}_{1}+2\bar{n}if^{(+)}_{r,n,\bar{n}-1}\bar{\xi}^{\mu}_{0}-\bar{n}(\bar{n}-1)f^{(+)}_{r,n,\bar{n}-2}\bar{\xi}^{\mu}_{-1}
\end{align}$$

$$\tag{2.5}\begin{align}
f^{(+)}_{r,n,\bar{n}} & =(\bar{\xi}^{\nu}_{-1}\partial _{\nu})^{\bar{n}}f^{(+)}_{r,n,0}
\end{align}$$

we first set $\displaystyle{n>\bar{n}}$. 

$$\tag{2.6}\begin{align}
f^{(+)}_{r,n,\bar{n}}  & = (-i)^{n+\bar{n}} \frac{\Gamma(\bar{n}+1)\Gamma(\mu+n+2)}{\Gamma(\mu+2)}e^{-i(\mu+n+\bar{n}+2)t}e^{i(n-\bar{n})\phi}r^{n-\bar{n}}(1+r^{2})^{-(\mu+n-\bar{n}+2)/2} P_{\bar{n}}^{(\mu+1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

$$\tag{.}\begin{align}
r^{2n}(1+r^{2})^{-n}{}_{2}F_{1}\left( -\bar{n},n+\mu+2;\mu+2; \frac{1}{1+r^{2}} \right) \\
=r^{2\bar{n}}(1+r^{2})^{-\bar{n}}{}_{2}F_{1}\left( -n,\bar{n}+\mu+2;\mu+2; \frac{1}{1+r^{2}} \right)? \\
r^{2n}(1+r^{2})^{-n}{}_{2}F_{1}\left( -\bar{n},n+\mu+2;\mu+2; \frac{1}{1+r^{2}} \right) & =(\sin ^{2} \rho)^{n}{}_{2}F_{1}(-\bar{n},n+\mu+2;\mu+2; \cos ^{2}\rho)=(\sin^{2}\rho)^{\bar{n}}{}_{2}F_{1}(-n,\bar{n}+\mu+2;\mu+2;\cos ^{2}\rho)
\end{align}$$


note the Euler transformation

$$\begin{align}
{}_{2}F_{1}(\alpha,\beta;\gamma;z) & =(1-z)^{\gamma-\alpha-\beta}{}_{2}F_{1}(\gamma-\alpha,\gamma-\beta;\gamma;z)
\end{align}$$

we have

$$\tag{.}\begin{align}
{}_{2}F_{1}(-\bar{n},n+\mu+2;\mu+2;\cos ^{2}\rho) & =(\sin ^{2}\rho)^{\bar{n}-n}{}_{2}F_{1}(-n,\bar{n}+\mu+2;\mu+2;\cos ^{2}\rho)
\end{align}$$

then by induction

$$\tag{.}\begin{align}
f^{(+)}_{r,n,\bar{n}+1} & \propto(\bar{\xi}^{\nu}_{-1}\partial _{\nu})f^{(+)}_{r,n,\bar{n}} \\
 & \propto e^{-i(\mu+n+\bar{n}+3)t}e^{i(n-\bar{n}-1)\phi} r^{n-\bar{n}-1}(1+r^{2})^{-(\mu+n-\bar{n}+1)/2}P_{\bar{n}+1}^{(\mu+1,n-\bar{n}-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

here we use

$$\tag{.}\begin{align}
2 \frac{r^{2}}{(1+r^{2})^{2}}P^{(\mu+1,n-\bar{n})'}_{\bar{n}}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
+\left( \frac{n+\mu+2}{1+r^{2}}-(\bar{n}+\mu+2) \right)P^{(\mu+1,n-\bar{n})}_{\bar{n}}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
+(\bar{n}+1) P^{(\mu+1,n-\bar{n}-1)}_{\bar{n}+1}\left(\frac{r^{2}-1}{r^{2}+1}\right) & =0
\end{align}$$

so by induction, we had proven (2.6). when $\displaystyle{n< \bar{n}}$, we have to make a change $\displaystyle{n\leftrightarrow \bar{n}}$(?), or we can write

$$\tag{.}\begin{align}
f^{(+)}_{r,n,\bar{n}} & \propto r^{|n-\bar{n}|}(1+r^{2})^{-(\mu+|n-\bar{n}|+2)/2}P_{\min(n,\bar{n})}^{(\mu+1,|n-\bar{n}|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)e^{-i(\mu+n+\bar{n}+2)t}e^{i(n-\bar{n})\phi}
\end{align}$$
--
$$\tag{.}\begin{align}
{f^{+}_{l,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{1} \\
{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\frac{1}{\sqrt{ n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}} }}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{l,0,0}}^{\mu}
\end{align}$$

$$\tag{.}\begin{align}
f^{(+)}_{l,0,\bar{n}} & \propto \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f^{(+)}_{l,0,0} \\
 & \propto (\bar{\xi} _{-1}^{\nu}\partial _{\nu})^{\bar{n}}f^{(+)}_{l,0,0} \\
 & \propto r^{\bar{n}}(1+r^{2})^{-(\mu+2+\bar{n})/2}e^{-i(\mu+2+\bar{n})t}e^{-i\bar{n}\phi} \\
f^{(+)}_{l,n,\bar{n}} & = (-i)^{n+\bar{n}} \frac{\Gamma(\bar{n}+1)\Gamma(\mu+n+2)}{\Gamma(\mu+2)}e^{-(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi}r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}P_{\bar{n}}^{(\mu+1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =(-i)^{n+\bar{n}} \frac{\Gamma(n+1)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)}e^{-(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi}r^{\bar{n}-n}(1+r^{2})^{-(\mu+2+\bar{n}-n)/2}P_{n}^{(\mu+1,\bar{n}-n)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =(-i)^{n+\bar{n}} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi}r^{-(\mu+2)}+\mathcal{O}(r^{-(\mu+4)})
\end{align}$$

$$\tag{.}\begin{align}
{f^{(+)}_{l,n,\bar{n}}}^{t} & =(-i)^{n+\bar{n}}\sqrt{ \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n})}{\Gamma(n+1)\Gamma(\bar{n}+1)} } \frac{1}{2\sqrt{ \pi }} \frac{1}{\Gamma(\mu+1)}r^{-(\mu+2)}e^{-i(\mu+1+n+\bar{n})t}e^{i(n-\bar{n}+1)\phi}+\mathcal{O}(r^{-(\mu+4)}) \\
{f^{(+)}_{l,n,\bar{n}}}^{r} & =(-i)^{n+\bar{n}+1} \sqrt{ \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n})}{\Gamma(n+1)\Gamma(\bar{n}+1)} } \frac{1}{2\sqrt{ \pi }} \frac{\mu+2\bar{n}}{\mu\Gamma(\mu+1)} r^{-(\mu+1)}e^{-i(\mu+1+n+\bar{n})t}e^{i(n-\bar{n}+1)\phi}+\mathcal{O}(r^{-(\mu+3)}) \\
{f^{+}_{l,n,\bar{n}}}^{\phi} & =(-i)^{n+\bar{n}}\sqrt{ \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n})}{\Gamma(n+1)\Gamma(\bar{n}+1)} } \frac{1}{2\sqrt{ \pi }} \frac{1}{\Gamma(\mu+1)}r^{-(\mu+2)}e^{-i(\mu+1+n+\bar{n})t}e^{i(n-\bar{n}+1)\phi}+\mathcal{O}(r^{-(\mu+4)})
\end{align}$$

---

$$\tag{.}\begin{align}
{f^{(-)}_{l,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{e^{i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{-1}^{\mu} \\
{f^{(-)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}} }\mathcal{L}_{\xi _{1}}^{n}\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}}{f^{(-)}_{l,0,0}}^{\mu}
\end{align}$$

$$\tag{.}\begin{align}
{f^{(-)}_{l,0,\bar{n}}}^{\mu} & =\mathcal{L}_{\bar{\xi}_{1}}^{\bar{n}}f^{(-)}_{l,0,0}\xi _{-1}^{\mu} \\
f^{(-)}_{l,0,\bar{n}} & \propto r^{\bar{n}}(1+r^{2})^{-(\mu+\bar{n}+2)/2}e^{i(\mu+2+\bar{n})t}e^{i\bar{n}\phi} \\
{f^{(-)}_{l,1,\bar{n}}}^{\mu} & \propto \mathcal{L}_{\xi_{1}}f_{l,0,\bar{n}}^{(-)}\xi _{-1}^{\mu} \\
 & =f^{(-)}_{l,1,\bar{n}}\xi ^{\mu}_{-1}-2if^{(-)}_{l,0,\bar{n}}\xi _{0}^{\mu} \\
{f^{(-)}_{l,2,\bar{n}}}^{\mu} & \propto f^{(-)}_{l,2,\bar{n}}\xi ^{\mu}_{-1}-4if^{(-)}_{l,1,\bar{n}}\xi ^{\mu}_{0}-2f^{(-)}_{l,0,\bar{n}}\xi ^{\mu}_{1} \\
{f^{(-)}_{l,n,\bar{n}}}^{\mu} & \propto f^{(-)}_{l,n,\bar{n}}\xi ^{\mu}_{-1}-2nif_{l,n-1,\bar{n}}^{(-)}\xi ^{\mu}_{0}-2n(n-1)f^{(-)}_{l,n-2,\bar{n}}\xi ^{\mu}_{1}
\end{align}$$

$$\tag{.}\begin{align}
f^{(-)}_{l,n,\bar{n}} & \propto (\xi _{1}^{\nu}\partial _{\nu})^{n}f^{(-)}_{l,0,\bar{n}} \\
 & =r^{|\bar{n}-n|}(1+r^{2})^{-(\mu+|\bar{n}-n|+2)/2}P_{\min(n,\bar{n})}^{(\mu+1,|\bar{n}-n|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)e^{i(\mu+n+\bar{n}+2)t}e^{i(\bar{n}-n)\phi} \\
f^{(+)}_{l,n,\bar{n}} & \propto ^{|\bar{n}-n|}(1+r^{2})^{-(\mu+|\bar{n}-n|+2)/2}P_{\min(n,\bar{n})}^{(\mu+1,|\bar{n}-n|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)e^{-i(\mu+n+\bar{n}+2)t}e^{-i(\bar{n}-n)\phi}
\end{align}$$

then

$$\tag{.}\begin{align}
{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =({f^{(+)}_{l,n,\bar{n}}}^{\mu})^{*} \\
 & =f^{(+)}_{l,n,\bar{n}}\xi ^{\mu}_{1}+2nif^{(+)}_{l,n-1,\bar{n}}\xi _{0}^{\mu}-n(n-1)f^{(+)}_{l,n-2,\bar{n}}\xi ^{\mu}_{-1}
\end{align}$$

---

the final result is

$$\begin{align}
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} } \sqrt{ \frac{\mu+1}{\pi \mu} }\left(\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{1}^{\mu}+2i\bar{n}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-1} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{0}^{\mu}-\bar{n}(\bar{n}-1)\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-2} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu}_{-1}\right) \\
{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}}}\sqrt{ \frac{\mu+1}{\pi \mu} }\left( \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{1}^{\mu}+2in\mathcal{L}_{\xi _{-1}}^{n-1}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{0}-n(n-1)\mathcal{L}_{\xi _{-1}}^{n-2}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi ^{\mu}_{-1} \right) \\
\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}& =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\bar{n}+1)\Gamma(\mu+n+2)}{\Gamma(\mu+2)}r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}P_{\bar{n}}^{(\mu+1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(n+1)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)}r^{\bar{n}-n}(1+r^{2})^{-(\mu+2+\bar{n}-n)/2}P_{n}^{(\mu+1,\bar{n}-n)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

and

$$\begin{align}
\mathcal{L}_{\xi_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (n+1)(\mu+n+2) }{f_{r,n+1,\bar{n}}^{(+)}}^{\mu}\\
\mathcal{L}_{\xi_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu+2}{2}+n\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}\\
\mathcal{L}_{\xi_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ n(\mu+n+1) }{f^{+}_{r,n-1,\bar{n}}}^{\mu}\\
\mathcal{L}_{\bar{\xi}_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{ (\bar{n}+1)(\mu+\bar{n}) }{f^{(+)}_{r,n,\bar{n}+1}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu}{2}+\bar{n}\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}\\
\mathcal{L}_{\bar{\xi}_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{ \bar{n}(\mu+\bar{n}-1) }{f^{(+)}_{r,n,\bar{n}-1}}^{\mu}
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi _{-1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (n+1)(\mu+n) }{f^{(+)}_{l,n+1,\bar{n}}}^{\mu} \\
\mathcal{L}_{\xi _{0}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-i\left( \frac{\mu}{2}+n \right){f^{(+)}_{l,n,\bar{n}}}^{\mu} \\
\mathcal{L}_{\xi _{1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n-1) }{f^{(+)}_{l,n-1,\bar{n}}}^{\mu} \\
\mathcal{L}_{\bar{\xi} _{-1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ (\bar{n}+1)(\mu+\bar{n}+2) }{f^{(+)}_{l,n,\bar{n}}}^{\mu} \\
\mathcal{L}_{\bar{\xi} _{0}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-i\left( \frac{\mu+2}{2}+\bar{n} \right){f^{(+)}_{l,n,\bar{n}}}^{\mu} \\
\mathcal{L}_{\bar{\xi} _{1}}{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =-\sqrt{ n(\mu+n+1) }{f^{(+)}_{l,n,\bar{n}-1}}^{\mu}
\end{align}$$

---

here we will discuss free scalar using highest weight representation. we start from

$$\begin{align}
f_{0,0} & =\sqrt{ \frac{1}{2\pi} }e^{-i\Delta t}(1+r^{2})^{-\Delta/2}
\end{align}$$

where $\displaystyle{\Delta=1+\sqrt{ 1+\mu ^{2} }}$. then define

$$\begin{align}
f_{n,\bar{n}} & =C_{n\bar{n}}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\xi _{1}}^{\bar{n}}f_{0,0}
\end{align}$$

