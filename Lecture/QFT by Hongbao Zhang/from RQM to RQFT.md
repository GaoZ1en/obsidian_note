a Hilbert space $\displaystyle{\mathcal{H}}$ with inner product $\displaystyle{(\cdot,\cdot)}$. we denote $\displaystyle{\varphi ^{\alpha}\in \mathcal{H}}$. the dual space $\displaystyle{\mathcal{H}^{*}}$ is induced by the inner product, in which the elements are linear mappings, denoted as $\displaystyle{\lambda _{\alpha}}$. all the anti-linear mappings form the complex conjugate of $\displaystyle{\mathcal{H^{*}}}$, denoted as $\displaystyle{\bar{\mathcal{H}}^{*}}$, in which the elements are denoted as $\displaystyle{\bar{\lambda}_{\alpha'}}$ and act as $\displaystyle{\bar{\lambda}_{\alpha'}\psi ^{\alpha}=\overline{\lambda _{\alpha} \psi ^{\alpha}}}$, and its dual space is denoted as $\displaystyle{\bar{\mathcal{H}}}$, in which the elements are denoted as $\displaystyle{\bar{\psi}^{\alpha'}}$ and act as $\displaystyle{\bar{\psi}^{\alpha'}\bar{\lambda}_{\alpha}=\lambda[\psi]}$.

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\psi ^{\alpha}\in \mathcal{H} \arrow[leftrightarrow]{r}{\text{ dual }} \arrow[leftrightarrow]{d}{\text{ dual }}& \mathcal{H}^{*}\ni \lambda _{\alpha}\arrow[leftrightarrow]{d}{\text{ dual }} \\
\bar{\psi}^{\alpha}\in \bar{\mathcal{H}} \arrow[leftrightarrow]{r}{\text{dual}} & \bar{\mathcal{H}}^{*}\ni\bar{\lambda}_{\alpha}
\end{tikzcd}\end{document}
```

then the inner product can be expand as

$$\begin{align}
(\varphi,\phi) & =G_{\alpha'\alpha}\bar{\varphi}^{\alpha'}\phi ^{\alpha} \\
 & =\bar{\varphi}_{\alpha}\phi ^{\alpha}
\end{align}$$

notice that

$$\begin{align}
(\varphi,\phi) & =\overline{(\phi,\varphi)} \\
\implies \bar{\varphi}_{\alpha}\phi ^{\alpha} & =\overline{\bar{\phi}_{\alpha}\varphi ^{\alpha}} \\
 & =\phi _{\alpha'}\bar{\varphi}^{\alpha'}=\bar{\varphi}^{\alpha'}\phi _{\alpha'}
\end{align}$$

so we only need $\displaystyle{\mathcal{H}}$ and $\displaystyle{\mathcal{H}^{*}}$.

# symmetric and antisymmetric Fock space

from a one-particle Hilbert space $\displaystyle{\mathcal{H}}$, we can define (anti)symmetric Fock space $\displaystyle{\mathcal{F}_{S/A}(\mathcal{H})=\bigoplus^{\infty}_{n=0}\bigotimes_{S/A}\mathcal{H}^{n}}$. elements in the Fock space $\displaystyle{\mathcal{F}_{S}(\mathcal{H})}$ can be written as

$$\begin{align}
\psi & =(\psi,\psi ^{\alpha},\psi ^{\alpha \beta},\psi ^{\alpha \beta \gamma},\dots)
\end{align}$$

for a normalized one particle state $\displaystyle{\sigma}$, we can define the creation operator $\displaystyle{c(\sigma)}$ as

$$\begin{align}
c(\sigma)\psi & =(0,\psi \sigma ^{\alpha},\sqrt{ 2 }\sigma ^{(\alpha}\psi ^{\beta)},\sqrt{ 3 }\sigma ^{(\alpha}\psi ^{\beta \gamma)},\dots)
\end{align}$$

and annihilation operator $\displaystyle{a(\bar{\sigma})}$ as

$$\begin{align}
a(\bar{\sigma})\psi & =(\bar{\sigma}_{\alpha}\psi ^{\alpha},\sqrt{ 2 }\bar{\sigma} _{\alpha}\psi ^{\alpha \beta},\sqrt{ 3 }\bar{\sigma}_{\alpha}\psi ^{\alpha \beta \gamma},\dots)
\end{align}$$

the creation and annihilation operator $\displaystyle{c(\sigma)}$ and $\displaystyle{a(\bar{\sigma})}$ have the following properties

1. $\displaystyle{a(\bar{\sigma})=c^{\dagger}(\sigma)}$.

$$\begin{align}
(\varphi,c(\sigma)\psi) & =(0,\psi \sigma ^{\alpha},\sqrt{ 2 }\sigma ^{(\alpha}\psi ^{\beta)},\sqrt{ 3 }\sigma ^{(\alpha}\psi ^{\beta \gamma)},\dots) \\
 & =\bar{\varphi}\cdot 0+\bar{\varphi}_{\alpha}\psi \sigma ^{\alpha}+\sqrt{ 2 }\bar{\varphi}_{\alpha \beta}\sigma ^{(\alpha}\psi ^{\beta)}+\sqrt{ 3 }\bar{\varphi}_{\alpha \beta \gamma}\sigma ^{(\alpha}\psi ^{\beta \gamma)}+\dots \\
 & =0+\bar{\varphi}_{\alpha}\psi \sigma ^{\alpha}+\sqrt{ 2 }\bar{\varphi}_{\alpha \beta}\sigma ^{\alpha}\psi ^{\beta}+\sqrt{ 3 }\bar{\varphi}_{\alpha \beta \gamma}\sigma ^{\alpha}\psi ^{\beta \gamma}+\dots  \\
 & =(c^{\dagger}(\sigma)\varphi,\psi) \\
(a(\bar{\sigma})\varphi,\psi) & =\sigma ^{\alpha}\bar{\varphi}_{\alpha}\psi+\sqrt{ 2 }\sigma ^{\alpha}\bar{\varphi}_{\alpha \beta}\psi ^{\beta}+\sqrt{ 3 }\sigma ^{\alpha}\bar{\varphi}_{\alpha \beta \gamma}\psi ^{\beta \gamma}+\dots \\
 & =(c^{\dagger}(\sigma)\varphi,\psi)
\end{align}$$

2. $\displaystyle{[c(\sigma),c(\tau)]=[a(\bar{\sigma}),a(\bar{\tau})]=0}$.

$$\begin{align}
c(\sigma)c(\tau)\psi & =c(\sigma)(0,\tau ^{\alpha}\psi,\sqrt{ 2 }\tau ^{(\alpha}\psi ^{\beta)}+\sqrt{ 3 }\tau ^{(\alpha}\psi ^{\beta \gamma)},\dots) \\
 &=(0,0,\sqrt{ 1\cdot 2 }\sigma ^{(\alpha}\tau ^{\beta)}\psi,\sqrt{ 2\cdot 3 }\sigma ^{(\alpha}\tau ^{\beta}\psi ^{\gamma)},\sqrt{ 3\cdot4 }\sigma ^{(\alpha}\tau ^{\beta}\psi ^{\gamma \delta)},\dots) \\
 & =c(\tau)c(\sigma)\psi \\
\implies[c(\sigma),c(\tau)] & =0 \\
\implies[a(\bar{\sigma}),a(\bar{\tau})] & =0
\end{align}$$

3. $\displaystyle{[a(\bar{\sigma}),c(\tau)]=\bar{\sigma}_{\alpha}\tau ^{\alpha}\mathbb{I}}$. 

$$\begin{align}
a(\bar{\sigma})c(\tau)\psi & =a(\bar{\sigma})(0,\tau^{\alpha}\psi,\sqrt{ 2 }\tau^{(\alpha}\psi ^{\beta)},\sqrt{ 3 }\tau ^{(\alpha}\psi ^{\beta \gamma)},\dots) \\
 & =(\bar{\sigma}_{\alpha}\tau ^{\alpha}\psi,2\bar{\sigma}_{\alpha}\tau ^{(\alpha}\psi ^{\beta)},3\bar{\sigma}_{\alpha}\tau ^{(\alpha}\psi ^{\beta \gamma)},\dots) \\
c(\tau)a(\bar{\sigma})\psi & =c(\tau)(\bar{\sigma}_{\alpha}\psi ^{\alpha},\sqrt{ 2 }\bar{\sigma} _{\alpha}\psi ^{\alpha \beta},\sqrt{ 3 }\bar{\sigma}_{\alpha}\psi ^{\alpha \beta \gamma},\dots) \\
 & =(0,\tau ^{\alpha}\bar{\sigma}_{\beta}\psi ^{\beta},2\bar{\sigma}_{\alpha}\psi ^{\alpha (\beta}\tau ^{\gamma)},3\bar{\sigma}_{\alpha}\psi ^{\alpha(\beta \gamma}\tau ^{\delta)},\dots) \\
\implies[a(\bar{\sigma}),c(\tau)] & =\bar{\sigma}_{\alpha}\tau ^{\alpha}\mathbb{I}
\end{align}$$

define $\displaystyle{N(\sigma)=c(\sigma)a(\bar{\sigma}), N=\sum _{\sigma}c(\sigma)a(\bar{\sigma})}$, then

$$\begin{align}
[N(\sigma),c(\sigma)] & =c(\sigma) \\
[N(\sigma),a(\bar{\sigma})] & =-a(\bar{\sigma})
\end{align}$$

$$\begin{align}
N(\sigma)\psi & =(0,\sigma ^{\alpha}\bar{\sigma}_{\beta}\psi ^{\beta},2\bar{\sigma}_{\alpha}\psi ^{\alpha (\beta}\sigma ^{\gamma)},3\bar{\sigma}_{\alpha}\psi ^{\alpha(\beta \gamma}\sigma ^{\delta)},\dots) \\
N\psi & =(0,\psi ^{\alpha},2\psi ^{\alpha \beta},3\psi ^{\alpha \beta \gamma},\dots)
\end{align}$$

