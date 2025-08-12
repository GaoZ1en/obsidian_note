# references

- 1812.01007
- 1911.00378
- 2009.11306
- 2312.13288

---
the aim is to prove $\mathrm{AdS}_{3}/\mathrm{CFT}_{2}$. 

WZW model. 

$$\tag{.}\begin{align}
S_{0} & =\frac{1}{4\lambda ^{2}}\int _{S^{2}}\mathrm{d}^{2}z \mathrm{Tr}\left(g^{-1}\partial _{\mu}gg^{-1}\partial ^{\mu}g\right)
\end{align}$$

take a variation

$$\tag{.}\begin{align}
\delta S & =\frac{1}{2\lambda ^{2}}\int _{S^{2}}\mathrm{d}^{2}z\mathrm{Tr}\left((-g^{-1}\delta gg^{-1}\partial _{\mu}g+g^{-1}\partial _{\mu}\delta g)(g^{-1}\partial ^{\mu}g)\right) \\
 & =\frac{1}{2\lambda ^{2}}\int _{S^{2}}\mathrm{d}^{2}z\mathrm{Tr}\left(\partial _{\mu}(g^{-1}\delta g)g^{-1}\partial ^{\mu}g\right) \\
 & =-\frac{1}{2\lambda ^{2}}\int _{S^{2}}\mathrm{d}^{2}z\mathrm{Tr}\left(\partial _{\mu}(g^{-1}\partial ^{\mu}g)g^{-1}\delta g\right)
\end{align}$$

we have the eom $\displaystyle{\partial _{\mu}(g^{-1}\partial ^{\mu}g)}$. define the current $\displaystyle{J^{\mu}=g^{-1}\partial ^{\mu}g}$, then $\displaystyle{\partial _{\mu}J^{\mu}=0}$. then

$$\tag{.}\begin{align}
\partial J_{\bar{z}}+\bar{\partial}J_{z} & =0 \\
\partial J_{z}=\bar{\partial}J_{\bar{z}} & =0 \\
J_{z} & =g^{-1}\partial g \\
J_{\bar{z}} & =g^{-1}\bar{\partial}g
\end{align}$$

the Zumino-term is given by

$$\begin{align}
S & =S_{0}+k\Gamma[g] \\
\Gamma[g] & =-\frac{1}{12\pi}\int _{B}\mathrm{d}^{3}y\varepsilon _{\alpha \beta \gamma}\mathrm{Tr}(g^{-1}\partial ^{\alpha}gg^{-1}\partial ^{\beta}gg^{-1}\partial ^{\gamma}g)
\end{align}$$

where $\displaystyle{\partial B=S^{2}}$. the eom gives

$$\tag{.}\begin{align}
\left( 1+\frac{\lambda ^{2}k}{\pi} \right)\partial(g^{-1}\bar{\partial}g)+\left( 1-\frac{\lambda ^{2}k}{\pi} \right)\bar{\partial}(g^{-1}\partial g) & =0
\end{align}$$

choose $\displaystyle{\lambda ^{2}=\frac{\pi}{k}}$, we have $\displaystyle{\bar{J}=g^{-1}\bar{\partial}g}$ is anti-holomorphic $\displaystyle{\implies J=\partial gg^{-1}}$ is holomorphic. expand

$$\tag{.}\begin{align}
J & =J^{a}(z)t^{a}
\end{align}$$

where $\displaystyle{t^{a}}$ are basis of Lie algebra $\displaystyle{\mathfrak{g}}$, then

$$\tag{.}\begin{align}
[J^{a},J^{b}] & =if^{ab}_{~~~c}J^{c}+km\delta ^{ab}\delta _{m+n}
\end{align}$$

Sugawara construction gives the Virasoro mode

$$\tag{.}\begin{align}
L_{n} & =\frac{1}{2(k+h^{\vee})}\sum _{m}:J^{a}_{m}J^{b}_{n-m}:, c=\frac{k\dim\mathfrak{g}}{k+h^{\vee}}
\end{align}$$

where $\displaystyle{h^{\vee}}$ is the dual Coxeter nunber of Lie algebra $\displaystyle{\mathfrak{g}}$.

---

the $\displaystyle{\mathrm{SL}(2,\mathbb{R})}$, $\displaystyle{J^{3},J^{\pm}}$ has the following 

$$\tag{.}\begin{align}
[J^{3}_{m},J^{\pm}_{n}] & =\pm J^{\pm}_{m+n} \\
[J^{3}_{m},J^{3}_{n}] & =-\frac{k}{2}\delta _{m,-n} \\
[J^{+}_{m},J^{-}_{n}] & =-2J^{3}_{m+n}+km\delta _{m,-n}
\end{align}$$

