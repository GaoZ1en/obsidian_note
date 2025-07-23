in this file we will derive the formula for Wen's results. we first present the final results

$$\tag{1.1}
\begin{align}
\sqrt{ k!\bar{k}! \frac{\Gamma(\mu+2+k)}{\Gamma(\mu+2)} \frac{\Gamma(\mu+\bar{k})}{\Gamma(\mu)} }A^{\mu}_{k,\bar{k}}(t,r,\theta) & =F_{k,\bar{k}}\tilde{\xi}^{\mu}_{-1}+2\bar{k}F_{k,\bar{k}-1}\tilde{\xi}^{\mu}_{0}+\bar{k}(\bar{k}-1)F_{k,\bar{k}-2}\tilde{\xi}^{\mu}_{1} \\
F_{k,\bar{k}}(t,r,\theta) & =(-1)^{k+\bar{k}} \frac{\Gamma(\mu+k+2)}{\Gamma(\mu+2)} \frac{\Gamma(\mu+\bar{k}+2)}{\Gamma(\mu+2)} (\sin r)^{|k-\bar{k}|}(\cos r)^{\mu+2} \\
 & \times{}_{2}F_{1}(-n,n+m+\mu+2;\mu+2;\cos ^{2}r)e^{i(k+\bar{k}+\mu+2)t} e^{i(k-\bar{k})\theta} \\
m & =k-\bar{k}+1 \\
n & =
\end{align}
$$

---

$$\tag{1.2}
\begin{align}
A^{\mu}_{0,0} & =F_{0,0}\tilde{\xi}^{\mu}_{-1}
\end{align}
$$

act $\displaystyle{L_{1}=\frac{i}{2}e^{i(t-\phi)}\left( \sin r\partial _{t}+\frac{1}{\sin r}\partial _{\theta}-i\cos r\partial _{r} \right)}$ on (1.2) gives

$$\tag{1.3}
\begin{align}
(L_{1})^{k}A^{\mu}_{0,0} & =F_{k,0}\tilde{\xi}^{\mu}_{-1}
\end{align}
$$

and then act $\displaystyle{\tilde{L}_{1}=\frac{i}{2}e^{i(t-\theta)}\left( \sin r\partial _{t}-\frac{1}{\sin r}\partial _{\theta}-i\cos r\partial _{r} \right)}$ on (1.1) gives

$$\tag{1.4}
\begin{align}
A^{\mu}_{k,\bar{k}+1} & =\tilde{L}_{1}A^{\mu}_{k,\bar{k}} \\
 & =\tilde{L}_{1}(F_{k,\bar{k}}\tilde{\xi}^{\mu}_{-1}+2\bar{k}F_{k,\bar{k}-1}\tilde{\xi}^{\mu}_{0}+\bar{k}(\bar{k}-1)F_{k,\bar{k}-2}\tilde{\xi}^{\mu}_{1}) \\
 & =F_{k,\bar{k}+1}\tilde{\xi}^{\mu}_{-1}+F_{k,\bar{k}}\tilde{L}_{1}\tilde{\xi}_{-1}+2\bar{k}F_{k,\bar{k}}\tilde{\xi}^{\mu}_{0}+2\bar{k}F_{k,\bar{k}-1}L_{1}\tilde{\xi}^{\mu}_{0}+\bar{k}(\bar{k}-1)F_{k,\bar{k}-1}\tilde{\xi}^{\mu}_{1} \\
 & =F_{k,\bar{k}+1} \tilde{\xi}^{\mu}_{-1}+2(\bar{k}+1)F_{k,\bar{k}}\tilde{\xi}^{\mu}_{0}+\bar{k}(\bar{k}+1)F_{k,\bar{k}-1}\tilde{\xi}^{\mu}_{1}
\end{align}
$$

by induction, we prove the result in (1.1).

---
