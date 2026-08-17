Part I

Consider a gauge theory with gauge group $\displaystyle{G}$ to be compact and connected whose Lie algebra is $\displaystyle{\mathfrak{g}}$. Some matter field $\displaystyle{\phi(x)}$ lies in the irrep $\displaystyle{R}$ of $\displaystyle{G}$ under local gauge transformation

$$\begin{align}
\phi ^{i}(x)\to M^{i}_{~j}(x)\phi ^{j}(x)
\end{align}$$

denote the gauge filed as $\displaystyle{A_{\mu}^{a}(x),a=1,\dots,\mathrm{dim}G}$, which lie in the irrep of $\displaystyle{\mathfrak{g}}$. Write the connection $\displaystyle{A_{\mu}(x)=A_{\mu}^{a}T^{a}}$, where $\displaystyle{T^{a}}$ are generators in rep $\displaystyle{R}$. The gauge transformation of the connection is

$$\begin{align}
A_{\mu} & \to MA_{\mu}M^{-1}+\dfrac{i}{g}M\partial _{\mu}M^{-1}
\end{align}$$

and the covariant derivatives is defined as

$$\begin{align}
D_{\mu}\phi ^{i} & =\partial _{\mu}\phi ^{i}-igA^{a}_{\mu}(T^{a})^{i}_{~j}\phi ^{j}
\end{align}$$

we want to consider operators such as $\displaystyle{\phi(x)\phi(y)}$, but it is not gauge invariant. The solution is to insert the Wilson line connecting $\displaystyle{x}$ and $\displaystyle{y}$ as

$$\begin{align}
\phi(x)\phi(y) & \to \phi(x)W_{R}(x,y)\phi(y) \\
W_{R}(x,y) & =\mathcal{P}\exp\left(ig \int_{x}^{y} A_{\mu}(z) dz^{\mu}\right)
\end{align}$$

therefore under a gauge transformation, the Wilson line transforms as $W(x,y)\to M(x)W(x,y)M^{-1}(y)$, so that $\phi(x)W(x,y)\phi(y)$ is gauge invariant.

For a contour $\displaystyle{C}$, we can define the Wilson loop

$$\begin{align}
W_{R}(C) & =\mathcal{P}\exp\left(ig\oint _{C} A_{\mu}\mathrm{d}x^{\mu}\right)
\end{align}$$
