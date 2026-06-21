## θ

It is defined as

$$\begin{aligned}
\theta&=\lim_{\varepsilon\to 0}\left[\int_{\Sigma_\varepsilon}\Theta-\int_{H_\varepsilon}C_\varepsilon\right]\\
\end{aligned}$$

where

$$\begin{aligned}
\int_{\Sigma_\varepsilon}\Theta&=\int_{\Sigma_\varepsilon}\frac{1}{32\pi G}(g^{\rho\mu}\nabla^\nu\delta g_{\mu\nu}-\nabla^\rho(g^{\mu\nu}\delta g_{\mu\nu}))\varepsilon_{\rho\mu_1\mu_2}{\rm d}x^{\mu_1}\wedge{\rm d}x^{\mu_2}\\
&=\int_{\Sigma_\varepsilon}\frac{1}{16\pi G}(g^{\rho\mu}\nabla^\nu\delta g_{\mu\nu}-\nabla^\rho(g^{\mu\nu}\delta g_{\mu\nu}))\varepsilon_{\rho za}{\rm d}z{\rm d}x^a\\
&=\int_{\Sigma_\varepsilon}\frac{1}{16\pi G}(g^{a\mu}\nabla^\nu\delta g_{\mu\nu}-\gamma^{ab}D_b(g^{\mu\nu}\delta g_{\mu\nu}))\varepsilon^{(0)}_{aa_1}{\rm d}x^{a_1}{\rm d}z\sqrt{-g}\\
&=\frac{1}{16\pi G}\int_{\partial\Sigma_\varepsilon}\varepsilon^{(0)}_{aa_1}{\rm d}x^{a_1}\int_\varepsilon^\infty{\rm d}z\left(zg^{(0)ab}g^{(0)bc}g_{cd}D^{(0)}_c\delta g_{zb}\right.\\
&\left.-z^{-1}g^{(0)ab}g^{(0)cd}D^{(0)}_b\delta g^{(0)}_{cd}+z^{-1}g^{(0)ab}g^{(0)cd}D^{(0)}_d\delta g^{(0)}_{bd}+{\cal O}(z)\right)\\
&=\frac{1}{16\pi G}\int_{\partial\Sigma_\varepsilon}\varepsilon^{(0)}_{aa_1}{\rm d}x^{a_1}\int^\infty_\varepsilon\frac{{\rm d}z}{z}g^{(0)ab}g^{(0)cd}(D_c^{(0)}\delta g_{bd}^{(0)}-D_b^{(0)}\delta g_{cd}^{(0)})+{\cal O}(\varepsilon)
\end{aligned}$$

$$\begin{aligned}
\int_{\partial\Sigma_\varepsilon}C_\varepsilon&=-\int_{\partial\Sigma_\varepsilon}\frac{1}{16\pi G}\gamma^{\mu\nu}n^\rho\delta g_{\nu\rho}\varepsilon^{\Gamma_\varepsilon}_{\mu\mu_1}{\rm d}x^{\mu_1}\\
&+\int_{\partial\Sigma_\varepsilon}\frac{1}{16\pi G}\log\varepsilon(\gamma^{ab}D^c\delta\gamma_{bc}-D^a(\gamma^{bc}\delta\gamma_{bc})\varepsilon_{aa_1}^{\Gamma_\varepsilon}{\rm d}x^{a_1}\\
&-\int_{\partial\Sigma_\varepsilon}\frac{1}{8\pi G}\varepsilon\log\varepsilon(\gamma^{ab}\delta g_{zb}-\gamma^{ab}\gamma^{cd}g_{zc}\delta\gamma_{bd}+\frac{1}{2}\gamma^{ab}\gamma^{cd}g_{zb}\delta\gamma_{cd})\varepsilon^{\Gamma_\varepsilon}_{aa_1}{\rm d}x^{a_1}
\end{aligned}$$

The first term is

$$\begin{aligned}
-\frac{1}{16\pi G}\int_{H_\varepsilon}\gamma^{\mu\nu}n^\rho\delta g_{\nu\rho}\varepsilon_{\mu\mu_1}^{\Gamma_\varepsilon}{\rm d}x^{\mu_1}&=\frac{1}{16\pi G}\int_{H_\varepsilon}\gamma^{ab}n^\rho\delta g_{b\rho}\sqrt{-\gamma}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\\
&=\frac{1}{16\pi G}\int_{H_\varepsilon}\sqrt{-\gamma}\gamma^{ab}(n^z\delta g_{zb}+n^c\delta g_{bc})\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\\
&={\cal O}(\varepsilon)
\end{aligned}$$

The second term is

$$\begin{aligned}
&\frac{1}{16\pi G}\log\varepsilon\int_{H_\varepsilon}(\gamma^{ab}D^c\delta\gamma_{bc}-D^a(\gamma^{bc}\delta\gamma_{bc})\varepsilon_{aa_1}^{\Gamma_\varepsilon}{\rm d}x^{a_1}\\
=&-\frac{1}{16\pi G}\log\varepsilon\int_{H_\varepsilon}\sqrt{-\gamma}(\gamma^{ab}\gamma^{cd}D_c\delta\gamma_{bd}-\gamma^{ab}D_b(\gamma^{cd}\delta\gamma_{cd}))\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\\
=&-\frac{1}{16\pi G}\log\varepsilon\int_{H_\varepsilon}g^{(0)ab}g^{(0)cd}(D^{(0)}_c\delta g^{(0)}_{bd}-D_b^{(0)}\delta g^{(0)}_{cd})\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}+{\cal O}(\varepsilon^2\log\varepsilon)
\end{aligned}$$

The third term is

$$\begin{aligned}
&-\frac{1}{16\pi G}\varepsilon\log\varepsilon\int_{H_\varepsilon}(\gamma^{ab}\delta g_{zb}-\gamma^{ab}\gamma^{cd}g_{zc}\delta\gamma_{bd}+\frac{1}{2}\gamma^{ab}\gamma^{cd}g_{zb}\delta\gamma_{cd})\varepsilon^{\Gamma_\varepsilon}_{aa_1}{\rm d}x^{a_1}\\
=&\frac{1}{16\pi G}\varepsilon\log\varepsilon\int_{H_\varepsilon}g^{(0)ab}\delta g_{zb}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}+{\cal O}(\varepsilon^2\log\varepsilon)\\
=&{\cal O}(\varepsilon\log\varepsilon)
\end{aligned}$$

Summing over, we have

$$\begin{aligned}
\theta&=\lim_{\varepsilon\to 0}\frac{1}{16\pi G}\int_{H_\varepsilon}\sqrt{-g^{(0)}}\varepsilon^{(0)}_{aa_1}{\rm d}x^{a_1}\int^\infty_\varepsilon\frac{{\rm d}z}{z}g^{(0)ab}g^{(0)cd}(D_c^{(0)}\delta g_{bd}^{(0)}-D_b^{(0)}\delta g_{cd}^{(0)})+{\cal O}(\varepsilon)\\
&+{\cal O}(\varepsilon)+\frac{1}{16\pi G}\log\varepsilon\int_{H_\varepsilon}\sqrt{-g^{(0)}}g^{(0)ab}g^{(0)cd}(D^{(0)}_c\delta g^{(0)}_{bd}-D_b^{(0)}\delta g^{(0)}_{cd})\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}+{\cal O}(\varepsilon^2\log\varepsilon)+{\cal O}(\varepsilon\log\varepsilon)\\
&=C+\lim_{\varepsilon\to 0}{\cal O}(\varepsilon\log\varepsilon)=C
\end{aligned}$$

Divergence terms cancel.

We should notice that the direction of $\partial\Gamma_{\varepsilon}$ and $\partial\Sigma_\varepsilon$ are different.

## α

The definition of α is

$$\begin{aligned}
\alpha_{\varepsilon\pm}&=\int_{\Sigma_{\varepsilon_\pm}}\xi\cdot{\rm L}-\int_{\partial\Sigma_{\varepsilon\pm}}\frac{1}{8\pi G}((K-1)\gamma^\mu_\nu\xi^\nu-D^\mu(n_\nu\xi^\nu))\varepsilon_{\mu\mu_1}{\rm d}x^{\mu_1}\\
&-\int_{\partial\Sigma_{\varepsilon\pm}}\frac{1}{16\pi G}\log z(\gamma^{ac}\gamma^{bd}D_b(X_\xi\cdot\delta\gamma_{cd})-\gamma^{ab}D_b(\gamma^{cd}(X_\xi\cdot\delta\gamma_{cd})))\varepsilon_{aa_1}{\rm d}x^{a_1}\\
&-\int_{\partial\Sigma_{\varepsilon\pm}}\frac{1}{16\pi G}z\log z(-2\gamma^{ab}(X_\xi\cdot\delta\gamma_{zb})+2\gamma^{ac}\gamma^{bd}g_{zb}(X_\xi\cdot\delta\gamma_{cd})-\gamma^{ab}g_{zb}\gamma^{cd}(X_\xi\cdot\delta\gamma_{cd}))\varepsilon_{aa_1}{\rm d}x^{a_1}
\end{aligned}$$

Here we adopt the boundary conditions for $\xi^\mu$

$$\begin{align}
\xi^z=z \xi^{(1)z}(x)+{\cal{O}}(z^3),\xi^a=\xi^{(0)a}(x)+{\cal{O}}(z^2)
\end{align}$$

The first term is (check)

$$\begin{aligned}
\int_{\Sigma_{\varepsilon\pm}}\xi\cdot {\rm L}&=\int_{\Sigma_{\varepsilon_\pm}}\frac{1}{16\pi G}(R+2)\xi^\rho\frac{1}{2!}\varepsilon_{\rho\mu_1\mu_2}{\rm d}x^{\mu_1}\wedge{\rm d}x^{\mu_2}\\
&=-\frac{1}{16\pi G}\int_{\Sigma_{\varepsilon\pm}}(R+2)\xi^a\varepsilon_{aa_1}{\rm d}x^{a_1}{\rm d}z\\
&=-\frac{1}{16\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\int_{\varepsilon}^{\infty}{\rm d}z\left(-4z^{-3}\xi^{(0)a}-4z^{-3}(\xi^a-\xi^{(0)a})+z^{-1}R^{(0)}\xi^{(0)a}\right.\\
&-2\xi^{(0)a}g^{(0)bc}\partial_z(g_{bc}-\frac{1}{z^2}g_{bc}^{(0)})+4z^2g^{(0)bc}g_{zb}\partial_z g_{zc}\xi^{(0)a}-2\xi^{(0)a}\partial_z(g_{zz}-\frac{1}{z^2})+4zg^{(0)bc}g_{zb}g_{zc}\xi^{(0)a}\\
&\left.+2zg^{(0)bc}D^{(0)}_b\partial_z g_{zc}\xi^{(0)a}-z\xi^{(0)a}g^{(0)bc}\partial_z^2(g_{bc}-\frac{1}{z^2}g_{bc}^{(0)})+{\cal O}(z)\right)\\
&=C-\frac{1}{16\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\varepsilon^{(0)}_{aa_1}{\rm d}x^{a_1}\int_{\varepsilon}^{z_0}{\rm d}z\left(-4z^{-3}\xi^{(0)a}-4z^{-3}(\xi^{a}-\xi^{(0)a})+z^{-1}R^{(0)}\xi^{(0)a}\right.\\
&-\xi^{(0)a}g^{(0)bc}\partial^2_z[z(g_{bc}-\frac{1}{z^2}g_{bc}^{(0)})]-2\xi^{(0)a}\partial_z(g_{zz}-\frac{1}{z^2})+2\xi^{(0)a}g^{(0)bc}\partial_z(z^2g_{zb}g_{zc})\\
&\left.+2\xi^{(0)a}g^{(0)bc}\partial_z D_b^{(0)}(zg_{zc})-2\xi^{(0)a}g^{(0)bc}D_b^{(0)}g_{zc}+{\cal O}(z)\right)\\
&=C'+\frac{1}{16\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\left(2z^{-2}\xi^{(0)a}+\log z\xi^{(0)a}R^{(0)}-2z\log z\xi^{(0)a}g^{(0)bc}D^{(0)}_{b}g_{zc}-4z^{-2}\log z(\xi^a-\xi^{(0)a})\right.\\
&-\xi^{(0)a}g^{(0)bc}\partial_z(z(g_{bc}-\frac{1}{z^2}g_{bc}^{(0)}))-2\xi^{(0)a}(g_{zz}-\frac{1}{z^2})+2z^2\xi^{(0)a}g^{(0)bc}g_{zb}g_{zc}+2z\xi^{(0)}g^{(0)bc}D_b^{(0)}g_{zc}\\
&+\frac{1}{16\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\int^{z_0}_{\varepsilon}\left(-2\log z\xi^{(0)a}g^{(0)bc}D^{(0)}_b\partial_z(zg_{zc})-4\log z\partial_z(z^{-2}(\xi^{a}-\xi^{(0)a}))+{\cal O}(z)\right){\rm d}z
\end{aligned}$$

The second term is (check)

$$\begin{aligned}
&-\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}((K-1)\gamma^\mu_\nu\xi^\nu-D^\mu(n_\nu\xi^\nu))\varepsilon_{\mu\mu_1}{\rm d}x^{\mu_1}\\
=&-\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}((K-1)\gamma^a_b\xi^b-\gamma^{ab}D_b(n_z\xi^z+n_a\xi^a))\varepsilon_{aa_1}{\rm d}x^{a_1}\\
=&-\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\left(z^{-2}\xi^{(0)a}+z^{-2}(\xi^a-\xi^{(0)a})-\frac{1}{2}\xi^{(0)a}g^{(0)bc}\partial_z(z(g_{bc}-\frac{1}{z^2}g_{bc}^{(0)}))\right.\\
&\left.+z^2\xi^{(0)a}g^{(0)bc}g_{zb}g_{zc}+g^{(0)ab}D_b^{(0)}\xi^{(1)z}+z\xi^{(0)a}g^{(0)bc}D^{(0)}_b g_{zc}+zg^{(0)ab}g_{zb}\xi^{(1)z}-\xi^{(0)a}(g_{zz}-\frac{1}{z^2})+{\cal O}(z^2)\right)
\end{aligned}$$

The third term is (check)

$$\begin{aligned}
&-\int_{\partial\Sigma_{\varepsilon\pm}}\frac{1}{16\pi G}\log z(\gamma^{ac}\gamma^{bd}D_b(X_\xi\cdot\delta\gamma_{cd})-\gamma^{ab}D_b(\gamma^{cd}(X_\xi\cdot\delta\gamma_{cd})))\varepsilon_{aa_1}{\rm d}x^{a_1}\\
=&-\frac{1}{16\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\log z\gamma^{ab}\gamma^{cd}(D_c{\cal L}_\xi g_{bd}-D_b{\cal L}_\xi g_{cd})\varepsilon_{aa_1}{\rm d}x^{a_1}\\
=&-\frac{1}{16\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\log z\varepsilon_{aa_1}{\rm d}x^{a_1}(2g^{(0)ab}R^{(0)}_{bc}\xi^{(0)c}+2D^{(0)a}\xi^{(1)z}+D_b^{(0)}(D^{(0)b}\xi^{(0)a}-D^{(0)a}\xi^{(0)b}))+{\cal O}(\varepsilon^2\log\varepsilon)\\
=&-\frac{1}{16\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\log z\varepsilon_{aa_1}{\rm d}x^{a_1}(R^{(0)}\xi^{(0)a}+2D^{(0)a}\xi^{(1)z})+{\cal O}(\varepsilon^2\log\varepsilon)
\end{aligned}$$

The forth term is

$$\begin{aligned}
&-\int_{\partial\Sigma_{\varepsilon\pm}}\frac{1}{16\pi G}z\log z(-2\gamma^{ab}(X_\xi\cdot\delta\gamma_{zb})+2\gamma^{ac}\gamma^{bd}g_{zb}(X_\xi\cdot\delta\gamma_{cd})-\gamma^{ab}g_{zb}\gamma^{cd}(X_\xi\cdot\delta\gamma_{cd}))\varepsilon_{aa_1}{\rm d}x^{a_1}\\
=&-\frac{1}{16\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}z\log z(-2\gamma^{ab}{\cal L}_\xi g_{zb}+2\gamma^{ac}\gamma^{bd}g_{zb}{\cal L}_{\xi}g_{cd}-\gamma^{ab}\gamma^{cd}g_{zb}{\cal L}_\xi g_{cd})\varepsilon_{aa_1}{\rm d}x^{a_1}\\
=&\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\log z\varepsilon_{aa_1}{\rm d}x^{a_1}(zg^{(0)ab}\xi^{(1)z}\partial_z(zg_{zb})+D^{(0)a}\xi^{(1)z}+z\xi^{(0)a}g^{(0)bc}D_b^{(0)}g_{zc}+z^{-1}\partial_z(\xi^a-\xi^{(0)a}))+{\cal O}(\varepsilon^2\log\varepsilon)\\
=&\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\log z\varepsilon_{aa_1}{\rm d}x^{a_1}(zg^{(0)ab}\xi^{(1)z}\partial_z(zg_{zb})+D^{(0)a}\xi^{(1)z}+z\xi^{(0)a}g^{(0)bc}D_b^{(0)}g_{zc}\\
&+z\partial_z(z^{-2}(\xi^a-\xi^{(0)a}))+2z^{-2}(\xi^a-\xi^{(0)a}))+{\cal O}(\varepsilon^2\log\varepsilon)
\end{aligned}$$

Summing over, we have

$$\begin{aligned}
\alpha_\pm&=C'+\frac{1}{16\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\int^{z_0}_{\varepsilon}\left(-2\log z\xi^{(0)a}g^{(0)bc}D^{(0)}_b\partial_z(zg_{zc})-4\log z\partial_z(z^{-2}(\xi^{a}-\xi^{(0)a}))+{\cal O}(z)\right){\rm d}z\\
&-\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\left(z^{-2}(\xi^a-\xi^{(0)a})+g^{(0)ab}D_b^{(0)}\xi^{(1)z}+zg^{(0)ab}g_{zb}\xi^{(1)z}+{\cal O}(z^2)\right)\\
&\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\log z\varepsilon_{aa_1}{\rm d}x^{a_1}(zg^{(0)ab}\xi^{(1)z}\partial_z(zg_{zb})+z\partial_z(z^{-2}(\xi^a-\xi^{(0)a}))+{\cal O}(\varepsilon^2\log\varepsilon)
\end{aligned}$$

Here we use the following formula for many times.

$$\begin{align}
\int_{H_{\varepsilon\pm}}D^{(0)}_{\phantom{(0)}b}S^{ab}\epsilon^{(0)}_{\phantom{(0)}ac}dx^{c}=0,S_{ab}=-S_{ba}
\end{align}$$

remember that

$$\begin{align}
\xi^a=\xi^{(0)a}+z^2\xi^{(2)a}(x)+{\cal O}(z^{2+r}),r>0\\
g_{za}(z,x)=z^{-1}g^{-1}_{za}(z)+{\cal O}(-1+s),s>0
\end{align}$$

$$\begin{aligned}
\lim_{\varepsilon\to 0}(\alpha-\alpha_{\varepsilon\pm})&=\frac{1}{16\pi G}\int_{\partial\Sigma}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\int^\varepsilon_0{\rm d}z\left(-2\log z\xi^{(0)a}g^{(0)bc}D_b^{(0)}\partial_z(zg_{zc})-4\log z\partial_z(z^{-2}(\xi^a-\xi^{(0)a}))+{\cal O}(z)\right)\\
&-\frac{1}{8\pi G}\lim_{\varepsilon\to 0}\int_{\partial\Sigma_{\varepsilon\pm}}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\left(z^{-2}(\xi^a-\xi^{(0)a})+g^{(0)ab}D_b^{(0)}\xi^{(1)z}+zg^{(0)ab}g_{zb}\xi^{(1)z}+{\cal O}(z^2)\right)\\
&+\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\varepsilon_{aa_1}^{(0)}{\rm d}x^{a_1}\left(z^{-2}(\xi^a-\xi^{(0)a})+g^{(0)ab}D_b^{(0)}\xi^{(1)z}+zg^{(0)ab}g_{zb}\xi^{(1)z}+{\cal O}(z^2)\right)\\
&+\frac{1}{8\pi G}\lim_{\varepsilon\to 0}\int_{\partial\Sigma_{\varepsilon\pm}}\log z\varepsilon_{aa_1}{\rm d}x^{a_1}(zg^{(0)ab}\xi^{(1)z}\partial_z(zg_{zb})+z\partial_z(z^{-2}(\xi^a-\xi^{(0)a}))+{\cal O}(\varepsilon^2\log\varepsilon)\\
&-\frac{1}{8\pi G}\int_{\partial\Sigma_{\varepsilon\pm}}\log z\varepsilon_{aa_1}{\rm d}x^{a_1}(zg^{(0)ab}\xi^{(1)z}\partial_z(zg_{zb})+z\partial_z(z^{-2}(\xi^a-\xi^{(0)a}))+{\cal O}(\varepsilon^2\log\varepsilon)\\
&=\lim_{\varepsilon\to 0}({\cal O}(\varepsilon^r\log z)+{\cal O}(\varepsilon^s\log z)+{\cal O}(\varepsilon^r)+{\cal O}(\varepsilon^s))=0
\end{aligned}$$
