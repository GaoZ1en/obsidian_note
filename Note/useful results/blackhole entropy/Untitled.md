$$\begin{align}
\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{\frac{\mu+2}{2}}} & =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\bar{n}+1)\Gamma(\mu+n+2)}{\Gamma(\mu+2)} r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}P_{\bar{n}}^{(\mu+1,n-\bar{n})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}{}_{2}F_{1}\left( -\bar{n},\mu+n+2;\mu+2; \frac{1}{1+r^{2}} \right)
\end{align}$$

here we use

$$\begin{align}
P_{\bar{n}}^{(\mu+1,n-\bar{n})}(x) & =\frac{\Gamma(\mu+\bar{n}+2)}{\Gamma(\bar{n}+1)\Gamma(\mu+2)}{}_{2}F_{1}\left(-\bar{n},\mu+2+n;\mu+2;\frac{1-x}{2}\right) \\
\end{align}$$

consider

$$\begin{align}
\mathcal{L}_{\xi _{-1}}^{n+1}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} & =\mathcal{L}_{\xi _{-1}}\left((-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}{}_{2}F_{1}\left( -\bar{n},\mu+n+2;\mu+2; \frac{1}{1+r^{2}} \right)\right) \\
 & =\frac{1}{2}(-i)^{n+1+\bar{n}}(\mu+2+n+\bar{n})e^{-i(\mu+3+n+\bar{n})t}e^{i(n+1-\bar{n})\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}r^{n+1-\bar{n}}(1+r^{2})^{-(\mu+3+n-\bar{n})/2}{}_{2}F_{1}\left(-\bar{n},\mu+n+2;\mu+2; \frac{1}{1+r^{2}}\right) \\
 & +\frac{1}{2}(-i)^{n+1+\bar{n}}(n-\bar{n})e^{-i(\mu+3+n+\bar{n})t}e^{i(n+1-\bar{n})\phi} \frac{\Gamma (\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}r^{n-1-\bar{n}}(1+r^{2})^{-(\mu+1+n-\bar{n})/2}{}_{2}F_{1}\left(-\bar{n},\mu+n+2;\mu+2; \frac{1}{1+r^{2}}\right) \\
 & -\frac{1}{2}(-i)^{n+1+\bar{n}}e^{-i(\mu+3+n+\bar{n})t}e^{i(n+1-\bar{n})\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}\partial _{r}\left(r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}{}_{2}F_{1}\left(-\bar{n},\mu+n+2;\mu+2; \frac{1}{1+r^{2}}\right)\right)(1+r^{2})^{1/2} \\
 & = (-i)^{n+1+\bar{n}}e^{-i(\mu+3+n+\bar{n})t} e^{i(n+1-\bar{n})\phi} \frac{\Gamma(\mu+n+3)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}} r^{n+1-\bar{n}}(1+r^{2})^{-(\mu+3+n-\bar{n})/2}{}_{2}F_{1}\left(-\bar{n},\mu+n+3;\mu+2; \frac{1}{1+r^{2}}\right)
\end{align}$$

here we use

$$\begin{align}
 & (\mu+2+n) {}_{2}F_{1}\left(-\bar{n},\mu+n+2;\mu+2; \frac{1}{1+r^{2}}\right) \\
 & -\frac{1}{2} \frac{1+r^{2}}{r}\partial _{r}\left({}_{2}F_{1}\left(-\bar{n},\mu+n+2;\mu+2; \frac{1}{1+r^{2}}\right)\right) \\
 & =  (\mu+n+2) {}_{2}F_{1}\left(-\bar{n},\mu+n+3;\mu+2; \frac{1}{1+r^{2}}\right) \\
\implies & (\mu+2+n){}_{2}F_{1}\left(-\bar{n},\mu+n+2;\mu+2;z\right) \\
 & +z\partial _{z}{}_{2}F_{1}(-\bar{n},\mu+n+2;\mu+2;z) \\
 & =(\mu+n+2){}_{2}F_{1}\left(-\bar{n},\mu+n+3;\mu+2;z\right),  & z=\frac{1}{1+r^{2}}
\end{align}$$

on the other hand

$$\begin{align}
\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}+1} & =\mathcal{L}_{\bar{\xi} _{-1}}\left((-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}r^{\bar{n}-n}(1+r^{2})^{-(\mu+2+\bar{n}-n)/2}{}_{2}F_{1}\left( -n,\mu+\bar{n}+2;\mu+2; \frac{1}{1+r^{2}} \right)\right) \\
 & =(-i)^{n+\bar{n}+1}(\mu+2+\bar{n})e^{-i(\mu+3+n+\bar{n})t}e^{i(n-\bar{n}-1)\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}r^{\bar{n}+1-n}(1+r^{2})^{-(\mu+3+\bar{n}-n)/2}{}_{2}F_{1}\left(-n,\mu+\bar{n}+2;\mu+2; \frac{1}{1+r^{2}}\right) \\
 & -\frac{1}{2}(-i)^{n+\bar{n}+1}e^{-i(\mu+3+n+\bar{n})t}e^{i(n-\bar{n}-1)\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}r^{\bar{n}-n}(1+r^{2})^{-(\mu+1+\bar{n}-n)/2}\partial _{r}\left( {}_{2}F_{1}\left(-n,\mu+\bar{n}+2;\mu+2; \frac{1}{1+r^{2}}\right) \right) \\
 & = (-i)^{n+\bar{n}+1}e^{-i(\mu+3+n+\bar{n})t} e^{i(n-\bar{n}-1)\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+3)}{\Gamma(\mu+2)^{2}} r^{\bar{n}+1-n}(1+r^{2})^{-(\mu+3+\bar{n}-n)/2}{}_{2}F_{1}\left(-n,\mu+\bar{n}+3;\mu+2; \frac{1}{1+r^{2}}\right)
\end{align}$$

here we use

$$\begin{align}
 & (\mu+2+\bar{n}) {}_{2}F_{1}\left(-n,\mu+\bar{n}+2;\mu+2; \frac{1}{1+r^{2}}\right) \\
 & -\frac{1}{2} \frac{1+r^{2}}{r}\partial _{r}\left({}_{2}F_{1}\left(-n,\mu+\bar{n}+2;\mu+2; \frac{1}{1+r^{2}}\right)\right) \\
 & =  (\mu+\bar{n}+2) {}_{2}F_{1}\left(-n,\mu+\bar{n}+3;\mu+2; \frac{1}{1+r^{2}}\right) \\
 \implies & (\mu+2+\bar{n}){}_{2}F_{1}\left(-n,\mu+\bar{n}+2;\mu+2;z\right) \\
 & +z\partial _{z}{}_{2}F_{1}(-n,\mu+\bar{n}+2;\mu+2;z) \\
 & =(\mu+2+\bar{n}){}_{2}F_{1}\left(-n,\mu+\bar{n}+3;\mu+2;z\right),  & z=\frac{1}{1+r^{2}}
\end{align}$$

here we need to prove

$$\begin{align}
 &(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}r^{n-\bar{n}}(1+r^{2})^{-(\mu+2+n-\bar{n})/2}{}_{2}F_{1}\left( -\bar{n},\mu+n+2;\mu+2; \frac{1}{1+r^{2}} \right) \\
= &(-i)^{n+\bar{n}}e^{-i(\mu+2+n+\bar{n})t}e^{i(n-\bar{n})\phi} \frac{\Gamma(\mu+n+2)\Gamma(\mu+\bar{n}+2)}{\Gamma(\mu+2)^{2}}r^{\bar{n}-n}(1+r^{2})^{-(\mu+2+\bar{n}-n)/2}{}_{2}F_{1}\left( -n,\mu+\bar{n}+2;\mu+2; \frac{1}{1+r^{2}} \right) \\
\implies &\left( 1-z \right)^{n-\bar{n}}{}_{2}F_{1}\left( -\bar{n},\mu+n+2;\mu+2;z \right)={}_{2}F_{1}\left( -n,\mu+\bar{n}+2;\mu+2; z \right) \\
\end{align}$$
