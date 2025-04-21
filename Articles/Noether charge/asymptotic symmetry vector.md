the metric has the following asymptotic behavior

$$\tag{1.1}
\begin{align}
g_{zz} & =\frac{1}{z^{2}}+\mathcal{O}(z^{0}) \\
g_{za} & =\mathcal{O}(z^{-1}) \\
g_{ab} & =\frac{1}{z^{2}}g^{(0)}_{ab}+\mathcal{O}(z^{0})
\end{align}
$$

and asymptotic symmetry is a symmetry that preserve the asymptotic behavior $\displaystyle{(1.2)}$, that is

$$\tag{1.2}
\begin{align}
\mathcal{L}_{\xi}g_{zz} & =\mathcal{O}(z^{0}) \\
\mathcal{L}_{\xi}g_{za} & =\mathcal{O}(z^{-1}) \\
\mathcal{L}_{\xi}g_{ab} & =\mathcal{O}(z^{0})
\end{align}
$$

here we will solve (1.2) to find the asymptotic behavior of $\displaystyle{\xi ^{z}}$ and $\displaystyle{\xi ^{a}}$

$$\tag{1.3}
\begin{align}
\mathcal{L}_{\xi}g_{zz} & =2g_{z\mu}\nabla _{z}\xi ^{\mu} \\
 & =2g_{zz}\nabla _{z}\xi ^{z}+2g_{za}\nabla _{z}\xi ^{a} \\
 & =2g_{zz}\partial _{z}\xi ^{z}+2g_{zz}\Gamma ^{z}_{z\mu}\xi ^{\mu}+2g_{za}\partial _{z}\xi ^{a}+2g_{za}\Gamma ^{a}_{z\mu}\xi ^{\mu} \\
 & =2g_{zz}\partial _{z}\xi ^{z}+2g_{zz}\Gamma ^{z}_{zz}\xi ^{z}+2g_{zz}\Gamma ^{z}_{za}\xi ^{a}+2g_{za}\partial _{z}\xi ^{a}+2g_{za}\Gamma ^{a}_{zz}\xi ^{z}+2g_{za}\Gamma ^{a}_{zb}\xi ^{b} \\
 & =4\partial _{z}\xi ^{a}g_{za}-\frac{4}{z^{3}}\xi ^{z}+\frac{2}{z^{2}}\partial _{z}\xi ^{z}+\mathcal{O}(z^{0}) 
\end{align}
$$

$$\tag{1.4}
\begin{align}
\mathcal{L}_{\xi}g_{za} & =\nabla _{z}\xi _{a}+\nabla _{a}\xi _{z} \\
 & =g_{a\mu}\nabla _{z}\xi ^{\mu}+g_{z\mu}\nabla _{a}\xi ^{\mu} \\
 & =g_{za}\nabla _{z}\xi ^{z}+g_{ab}\nabla _{z}\xi ^{b}+g_{zz}\nabla _{a}\xi ^{z}+g_{zb}\nabla _{a}\xi ^{b} \\
 & =g_{za}\partial _{z}\xi ^{z}+g_{za}\Gamma ^{z}_{zz}\xi ^{z}+g_{za}\Gamma ^{z}_{zb}\xi ^{b}+g_{ab}\partial _{z}\xi ^{b}+g_{ab}\Gamma ^{b}_{zz}\xi ^{z}+g_{ab}\Gamma ^{b}_{zc}\xi ^{c} \\
 & +g_{zz}\partial _{a}\xi ^{z}+g_{zz}\Gamma ^{z}_{za}\xi ^{z}+g_{zz}\Gamma ^{z}_{ab}\xi ^{b}+g_{zb}\partial _{a}\xi ^{b}+g_{ab}\Gamma ^{b}_{za}\xi ^{b}+g_{ab}\Gamma ^{b}_{ac}\xi ^{c} \\
 & = \frac{1}{z^{2}}\partial _{z}\xi _{a}+\frac{1}{z^{2}}D^{(0)}_{a}\xi ^{z}+\xi ^{z}\partial _{z}g_{za}+g_{za}\partial _{z}\xi ^{z}+\mathcal{O}(z^{-1})
\end{align}
$$

$$\tag{1.5}
\begin{align}
\mathcal{L}_{\xi}g_{ab} & =\nabla _{a}\xi _{b}+\nabla _{b}\xi _{a} \\
 & =g_{\mu b}\nabla _{a}\xi ^{\mu}+g_{\mu a}\nabla _{b}\xi ^{\mu} \\
 & =g_{zb}\nabla _{a}\xi ^{z}+g_{bc}\nabla _{a}\xi ^{c}+g_{za}\nabla _{b}\xi ^{z}+g_{ac}\nabla _{b}\xi ^{c} \\
 & =g_{zb}\partial _{a}\xi ^{z}+g_{zb}\Gamma ^{z}_{za}\xi ^{z}+g_{zb}\Gamma ^{z}_{ac}\xi ^{c}+g_{bc}\partial _{a}\xi ^{c}+g_{bc}\Gamma ^{c}_{za}\xi ^{z}+g_{bc}\Gamma ^{c}_{ad}\xi ^{d} \\
 & +g_{za}\partial _{b}\xi ^{z}+g_{za}\Gamma ^{z}_{zb}\xi ^{z}+g_{za}\Gamma ^{z}_{bc}\xi ^{c}+g_{ac}\partial _{b}\xi ^{c}+g_{ac}\Gamma ^{c}_{zb}\xi ^{z}+g_{ac}\Gamma ^{c}_{bd}\xi ^{d} \\
 & =-\frac{2}{z^{3}}g^{(0)}_{ab}\xi ^{z}-\frac{1}{z^{2}}g^{(0)}_{ad}\Gamma ^{(0)d}_{~~~~~~~bc}\xi ^{c}-\frac{1}{z^{2}}g^{(0)}_{bd}\Gamma ^{(0)d}_{~~~~~~~ac}\xi ^{c}+\frac{1}{z^{2}}D^{(0)}_{a}\xi _{b}+\frac{1}{z^{2}}D^{(0)}_{b}\xi _{a}+\mathcal{O}(z^{0})
\end{align}
$$

seems that if we require

$$\tag{1.6}
\begin{align}
\xi ^{z} & =\frac{z}{2}D^{(0)}_{a}\xi ^{(0)a}+\mathcal{O}(z^{3}) \\
\xi ^{a} & =\xi ^{(0)a}+\mathcal{O}(z^{2}) \\
0  & = D_{a}^{(0)}\xi ^{(0)}_{b}+D_{b}^{(0)}\xi ^{(0)}_{a}-g^{(0)}_{ab}D_{c}^{(0)}\xi ^{(0)c}
\end{align}
$$

and require that $\displaystyle{\xi ^{(0)a}}$ is a conformal Killing vector that

$$\tag{1.7}
\begin{align}
D^{(0)}_{a}\xi ^{(0)}_{b}+D^{(0)}_{b}\xi ^{(0)}_{a}-g^{(0)}_{ab}D_{c}^{(0)}\xi ^{(0)c}=0
\end{align}
$$