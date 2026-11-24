### Asymptotic Behavior of the Geometry

#### The Bulk Metric, Connection and Curvature

The metric has the asymptotic behavior

$$\begin{align}
g_{zz} & =\dfrac{1}{z^{2}}+\mathcal{O}(z^{0}) \\
g_{za} & =\mathcal{O}(z^{-1}) \\
g_{ab} & =\dfrac{1}{z^{2}}g^{(0)}_{ab}+\mathcal{O}(z^{0})
\end{align}$$

and then the inverse metrics

$$\begin{align}
g^{zz} & =z^{2}-g^{4}\left( g_{zz}-\dfrac{1}{z^{2}} \right)+z^{6}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{6}) \\
g^{za} & =-z^{4}g^{(0)ab}g_{zb}+Z^{6}g^{(0)ab}\left( g_{zz}-\dfrac{1}{z^{2}} \right)g_{zb}+z^{6}g^{(0)ab}g^{(0)cd}\left( g_{bc}-\dfrac{1}{z^{2}}g^{(0)}_{bc} \right)g_{zd} \\
 & -z^{8}g^{(0)ab}g^{(0)cd}g_{zb}g_{zc}g_{zd}+\mathcal{O}(z^{7}) \\
g^{ab} & =z^{2}g^{(0)ab}-z^{4}g^{(0)ac}g^{(0)bd}\left( g_{cd}-\dfrac{1}{z^{2}}g^{(0)}_{cd} \right)+z^{6}g^{(0)ac}g^{(0)bc}g_{zc}g_{zd}+\mathcal{O}(z^{6})
\end{align}$$

the connection

$$\begin{align}
\Gamma^z_{~zz} &=-\frac{1}{z}+z(g_{zz}-\frac{1}{z^2})+\frac{1}{2}z^2\partial_z(g_{zz}-\frac{1}{z^2}) -z^3g^{(0)ab} g_{za}g_{zb}-z^4g^{(0)ab} g_{za}\partial_zg_{zb}+O(z^3),\\
\Gamma^a_{~zz} &=zg^{(0)ab} g_{zb}+z^2g^{(0)ab}\partial_zg_{zb}\\
&-\frac{1}{2}z^2g^{(0)ab}\partial_b(g_{zz}-\frac{1}{z^2}) -z^3(g_{zz}-\frac{1}{z^2})g^{(0)ab} g_{zb}-\frac{1}{2}z^4\partial_z(g_{zz}-\frac{1}{z^2})g^{(0)ab} g_{zb}\\
&-z^3g^{(0)ab}(g_{bc}-\frac{1}{z^2}g^{(0)}_{bc})g^{(0)cd} g_{zd} -z^4g^{(0)ab}(g_{bc}-\frac{1}{z^2}g^{(0)}_{bc})g^{(0)cd}\partial_zg_{zd}\\
&+z^5g^{(0)ab} g_{zb}g^{(0)cd} g_{zc}g_{zd} +z^6g^{(0)ab} g_{zb}g^{(0)cd} g_{zc}\partial_zg_{zd}+O(z^4),\\
\Gamma^z_{~za} &=zg_{za}+\frac{1}{2}z^2\partial_a(g_{zz}-\frac{1}{z^2})-z^3(g_{zz}-\frac{1}{z^2})g_{za}\\
&-z^3(g_{ab}-\frac{1}{z^2}g^{(0)}_{ab})g^{(0)bc} g_{zc} -\frac{1}{2}z^4\partial_z(g_{ab}-\frac{1}{z^2}g^{(0)}_{ab})g^{(0)bc} g_{zc}\\
&-\frac{1}{2}z^4 D_a^{(0)}g_{zb}g^{(0)bc} g_{zc} +\frac{1}{2}z^4 D_b^{(0)}g_{za}g^{(0)bc} g_{zc} +z^5g_{za}g^{(0)bc} g_{zb}g_{zc}+O(z^4),\\
\Gamma^b_{~za} &=-\frac{1}{z}\delta^b_{~a}+zg^{(0)bc}(g_{ac}-\frac{1}{z^2}g^{(0)}_{ac})+\frac{1}{2}z^2g^{(0)bc}\partial_z(g_{ac}-\frac{1}{z^2}g^{(0)}_{ac})\\
&+\frac{1}{2}z^2g^{(0)bc} D_a^{(0)}g_{zc}-\frac{1}{2}z^2g^{(0)bc} D_c^{(0)}g_{za} -z^3g_{za}g^{(0)bc} g_{zc}+O(z^3),\\
\Gamma^z_{~ab} &=\frac{1}{z}g^{(0)}_{ab}-z(g_{zz}-\frac{1}{z^2})g^{(0)}_{ab}-\frac{1}{2}z^2\partial_z(g_{ab}-\frac{1}{z^2}g^{(0)}_{ab})\\
&+\frac{1}{2}z^2D_a^{(0)}g_{zb}+\frac{1}{2}z^2D_b^{(0)}g_{za} +z^3g^{(0)}_{ab} g^{(0)cd} g_{zc}g_{zd}+O(z^3),\\
\Gamma^c_{~ab} &=\Gamma^{(0)c}_{~ab}-zg^{(0)}_{ab} g^{(0)cd} g_{zd}\\
&+\frac{1}{2}z^2g^{(0)cd}\left[D_a^{(0)}(g_{bd}-\frac{1}{z^2}g^{(0)}_{bd})+D_b^{(0)}(g_{ad}-\frac{1}{z^2}g^{(0)}_{ad})-D_d^{(0)}(g_{ab}-\frac{1}{z^2}g^{(0)}_{ab})\right]\\
&+z^3(g_{zz}-\frac{1}{z^2})g^{(0)}_{ab} g^{(0)cd} g_{zd}+z^3g^{(0)}_{ab} g^{(0)cd}(g_{de}-\frac{1}{z^2}g^{(0)}_{de})g^{(0)ef} g_{zf}\\
&+\frac{1}{2}z^4\partial_z(g_{ab}-\frac{1}{z^2}g^{(0)}_{ab})g^{(0)cd} g_{zd} -\frac{1}{2}z^4(D_a^{(0)}g_{zb}+D_b^{(0)}g_{za})g^{(0)cd} g_{zd}\\
&-z^5g^{(0)}_{ab} g^{(0)cd} g_{zd}g^{(0)ef} g_{ze}g_{zf}+O(z^4).
\end{align}$$

And the Ricci tensor

$$\begin{align}
R_{zz} & =-\dfrac{2}{z^{2}}-2\left( g_{zz}-\dfrac{1}{z^{2}} \right)-z\partial _{z}\left( g_{zz}-\dfrac{1}{z^{2}} \right)-\dfrac{3}{2}zg^{(0)ab}\partial _{z}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)-\dfrac{1}{2}z^{2}g^{(0)ab}\partial _{z}^{2}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right) \\
 & +zg^{(0)ab}D^{(0)}_{a}g_{zb}+z^{2}g^{(0)ab}D^{(0)}_{a}\partial _{z}g_{zb}+2z^{2}g^{(0)ab}g_{za}g_{zb}+2z^{3}g^{(0)ab}g_{za}\partial _{z}g_{zb}+\mathcal{O}(z^{2}) \\
R_{za} & =-2g_{za}-\dfrac{1}{2}zD^{(0)}_{a}\left( g_{zz}-\dfrac{1}{z^{2}} \right)-zg^{(0)bc}D^{(0)}_{a}\left( g_{bc}-\dfrac{1}{z^{2}}g^{(0)}_{bc} \right)-\dfrac{1}{2}z^{2}g^{(0)bc}D^{(0)}_{a}\partial _{z}\left( g_{bc}-\dfrac{1}{z^{2}}g^{(0)}_{bc} \right) \\
 & +zg^{(0)bc}D^{(0)}_{c}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)+\dfrac{1}{2}z^{2}g^{(0)bc}D^{(0)}_{c}\partial _{z}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)+z^{2}\left( g_{zz}-\dfrac{1}{z^{2}} \right)g_{za}-\dfrac{1}{2}z^{3}\partial _{z}\left( g_{zz}-\dfrac{1}{z^{2}} \right)g_{za} \\
 & -\dfrac{3}{2}z^{3}\partial _{z}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)g^{(0)bc}g_{zc}-\dfrac{1}{2}z^{4}\partial _{z}^{2}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)g^{(0)bc}g_{zc}+z^{2}g^{(0)bc}\left( g_{bc}-\dfrac{1}{z^{2}}g^{(0)}_{bc} \right)g_{za} \\
 & +\dfrac{1}{2}z^{3}g^{(0)bc}\partial _{z}\left( g_{bc}-\dfrac{1}{z^{2}}g^{(0)}_{bc} \right)g_{za}+\dfrac{1}{2}z^{2}g^{(0)bc}D^{(0)}_{b}D^{(0)}_{a}g_{zc}-\dfrac{1}{2}z^{2}g^{(0)bc}D^{(0)}_{b}D^{(0)}_{c}g_{za}+\dfrac{1}{2}z^{3}D^{(0)}_{b}g_{za}g^{(0)bc}g_{zc} \\
 & +\dfrac{1}{2}z^{4}D^{(0)}_{b}\partial _{z}g_{za}g^{(0)bc}g_{zc}+\dfrac{3}{2}z^{3}D^{(0)}_{a}g_{zb}g^{(0)bc}g_{zc}+\dfrac{1}{2}z^{4}D^{(0)}_{b}\partial _{z}g_{za}g^{(0)bc}g_{zc}-z^{3}g_{za}g^{(0)bc}D^{(0)}_{b}g_{zc}+z^{5}g_{za}g^{(0)bc}g_{zb}\partial _{z}g_{zc}+\mathcal{O}(z^{3}) \\
R_{ab} & =-\dfrac{2}{z^{2}}g^{(0)}_{ab}+\dfrac{1}{2}R^{(0)}g^{(0)}_{ab}+g^{(0)}_{ab}\left( g_{zz}-\dfrac{1}{z^{2}} \right)-\dfrac{1}{2}zg^{(0)}_{ab}\partial _{z}\left( g_{zz}-\dfrac{1}{z^{2}} \right)-2\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)-\dfrac{3}{2}z\partial _{z}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right) \\
 & -\dfrac{1}{2}z^{2}\partial _{z}^{2}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)+g^{(0)}_{ab}g^{(0)cd}\left( g_{cd}-\dfrac{1}{z^{2}}g^{(0)}_{cd} \right)+\dfrac{1}{2}zg^{(0)}_{ab}g^{(0)cd}\partial _{z}\left( g_{cd}-\dfrac{1}{z^{2}}g^{(0)}_{cd} \right)+\dfrac{1}{2}zD^{(0)}_{a}g_{zb}+\dfrac{1}{2}z^{2}D^{(0)}_{a}\partial _{z}g_{zb} \\
 & +\dfrac{1}{2}zD^{(0)}_{b}g_{za}+\dfrac{1}{2}z^{2}D^{(0)}_{b}\partial _{z}g_{za}-zg^{(0)}_{ab}g^{(0)cd}D^{(0)}_{c}g_{zd}+z^{3}g^{(0)}_{ab}g^{(0)cd}g_{zc}\partial _{z}g_{zd}+\mathcal{O}(z^{2})
\end{align}$$

and finnally the Ricci scalar

$$\begin{align}
R & =-6+z^{2}R^{(0)}+2z^{2}\left( g_{zz}-\dfrac{1}{z^{2}} \right)-2z^{3}\partial _{z}\left( g_{zz}-\dfrac{1}{z^{2}} \right)+2z^{2}g^{(0)ab}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right) \\
 & -2z^{3}g^{(0)ab}\partial _{z}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)-z^{4}g^{(0)ab}\partial _{z}^{2}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)+2z^{4}g^{(0)ab}D^{(0)}_{a}\partial _{z}g_{zb} \\
 & +2z^{4}g^{(0)ab}g_{za}g_{zb}+4z^{5}g^{(0)ab}g_{za}\partial _{z}g_{zb}+\mathcal{O}(z^{4})
\end{align}$$

#### The Induced Geometry on the Cutoff Surface and Conformal Boundary

On $\displaystyle{\Gamma _{z}}$ let $\displaystyle{n_{\mu}=-\dfrac{(\mathrm{d}z)_{\mu}}{\sqrt{ g^{zz} }}}$. The induced metric

$$\begin{align}
\gamma _{\mu \nu} & =g_{\mu \nu}-n_{\mu}n_{\nu} \\
\implies \gamma _{zz} & =z^{2}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{2}) \\
\gamma _{za} & =g_{za} \\
g_{ab} & =\dfrac{1}{z^{2}}g^{(0)}_{ab}+\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right) \\
\gamma _{z}^{~z} & =0 \\
\gamma _{z}^{~a} & =\gamma ^{a}_{~z}=z^{2}g^{(0)ab}g_{zb}-z^{4}g^{(0)ab}\left( g_{bc}-\dfrac{1}{z^{2}}g^{(0)}_{bc} \right)g^{(0)cd}g_{zd}+\mathcal{O}(z^{5}) \\
\gamma _{a}^{~z} & =\gamma ^{z}_{~a}=0 \\
\gamma _{a}^{~b} & =\delta _{a}^{~b} \\
\gamma ^{zz} & =\gamma ^{za}=0 \\
\gamma ^{ab} & =z^{2}g^{(0)ab}-z^{4}g^{(0)ac}g^{(0)bd}\left( g_{cd}-\dfrac{1}{z^{2}}g^{(0)}_{cd} \right)+\mathcal{O}(z^{6})
\end{align}$$

connection

$$\begin{align}
\tilde{\Gamma}^{c}_{~ab} & =\Gamma ^{(0)}{}^{c}_{~ab}+\dfrac{1}{2}z^{2}g^{(0)cd}\left[D^{(0)}_{a}\left( g_{bd}-\dfrac{1}{z^{2}}g^{(0)}_{bd} \right)+D^{(0)}_{b}\left( g_{ad}-\dfrac{1}{z^{2}}g^{(0)}_{ad} \right)-D^{(0)}_{d}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)\right]+\mathcal{O}(z^{4})
\end{align}$$

curvature

$$\begin{align}
\tilde{R} & =z^{2}R^{(0)}-\dfrac{1}{2}z^{4}g^{(0)ab}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)R^{(0)}+z^{4}g^{(0)ac}g^{(0)bd}D^{(0)}_{c}D^{(0)}_{d}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right) \\
 & -z^{4}g^{(0)ab}g^{(0)cd}D^{(0)}_{c}D^{(0)}_{d}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)+\mathcal{O}(z^{6})
\end{align}$$

extrinsic curvature

$$\begin{align}
K^{\Gamma}_{zz} & =z^{2}g^{(0)ab}g_{za}g_{zb}-\dfrac{1}{2}z^{4}g^{(0)ab}\left( g_{zz}-\dfrac{1}{z^{2}} \right)g_{za}g_{zb}-2z^{4}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)g^{(0)ac}g^{(0)bd}g_{zc}g_{ad} \\
 & -\dfrac{1}{2}z^{5}\partial _{z}g^{(0)ac}g^{(0)bd}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}g_{zd}+z^{5}g^{(0)ac}g^{(0)bd}D^{(0)}_{a}g_{zb}g_{zc}g_{zd}+\dfrac{1}{2}z^{6}(g^{(0)ab}g_{za}g_{zb})^{2}+\mathcal{O}(z^{4}) \\
K^{\Gamma}_{za} & =g_{za}-\dfrac{1}{2}z^{2}\left( g_{zz}-\dfrac{1}{z^{2}} \right)g_{za}-z^{2}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)g^{(0)bc}g_{zc}-\dfrac{1}{2}z^{3}\partial _{z}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)g^{(0)bc}g_{zc} \\
 & +\dfrac{1}{2}z^{3}D^{(0)}_{a}g_{zb}g^{(0)bc}g_{zc}+\dfrac{1}{2}z^{3}D^{(0)}_{b}g_{za}g^{(0)bc}g_{zc}+\dfrac{1}{2}z^{4}g^{(0)bc}g_{za}g_{zb}g_{zc}+\mathcal{O}(z^{3}) \\
K^{\Gamma}_{ab} & =\dfrac{1}{z^{2}}g^{(0)}_{ab}-\dfrac{1}{2}g^{(0)}_{ab}\left( g_{zz}-\dfrac{1}{z^{2}} \right)-\dfrac{1}{2}z\partial _{z}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)+\dfrac{1}{2}z(D^{(0)}_{a}g_{zb}+D^{(0)}_{b}g_{za})+\dfrac{1}{2}z^{2}g^{(0)}_{ab}g^{(0)cd}g_{zc}g_{zd}+\mathcal{O}(z^{2}) \\
K^{\Gamma}{}^{zz} & =K^{\Gamma}{}^{za}=0 \\
K^{\Gamma}{}^{ab} & =z^{2}g^{(0)ab}-\dfrac{1}{2}z^{4}g^{(0)ab}\left( g_{zz}-\dfrac{1}{z^{2}} \right)-2z^{4}g^{(0)ac}g^{(0)bd}\left( g_{cd}-\dfrac{1}{z^{2}}g^{(0)}_{cd} \right)-\dfrac{1}{2}z^{5}g^{(0)ac}g^{(0)bd}\partial _{z}\left( g_{cd}-\dfrac{1}{z^{2}}g^{(0)}_{cd} \right) \\
 & +\dfrac{1}{2}z^{5}g^{(0)ac}g^{(0)bd}D^{(0)}_{c}g_{zd}+\dfrac{1}{2}z^{5}g^{(0)ac}g^{(0)bd}D^{(0)}_{d}g_{zc}+\dfrac{1}{2}z^{6}g^{(0)ab}g^{(0)cd}g_{zc}g_{zd}+\mathcal{O}(z^{6}) \\
K^{\Gamma} & =2-z^{2}\left( g_{zz}-\dfrac{1}{z^{2}} \right)-z^{2}g^{(0)ab}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)-\dfrac{1}{2}z^{3}g^{(0)ab}\partial _{z}\left( g_{ab}-\dfrac{1}{z^{2}}g^{(0)}_{ab} \right)+z^{3}g^{(0)ab}D^{(0)}_{a}g_{zb}+z^{4}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{4})
\end{align}$$

#### The Conformal Boundary and the Initial and Final Surfaces

On $\Gamma$ the pullback of $z^2g$ is $g^{(0)}_{ab}$. Its connection is (E.4) and its Ricci tensor is (E.7). In the compactified metric the radial shift is $O(z)$ and $\partial_z(z^2g_{ab})=O(z)$, so the extrinsic curvature of $\Gamma$ in that metric vanishes. The $K^{(0)}$ of (I.6) belongs to the cut in $\Gamma$. Take boundary coordinates $(t,x)$ with $t=t^{(0)}(x^a)$ as in (3.2), and choose increasing $t$ towards the future. On $\partial\Sigma\subset\Gamma$,

$$\begin{align}
u^{(0)}_a&=-\frac{(\mathrm{d}t)_a}{\sqrt{-g^{(0)tt}}},\\
h^{(0)}_{ab}&=g^{(0)}_{ab}+u^{(0)}_au^{(0)}_b,\\
K^{(0)}_{ab}&=h^{(0)c}_a h^{(0)d}_b D_c^{(0)}u^{(0)}_d,\\
K^{(0)}_{xx}&=\frac{\Gamma^{(0)t}_{~xx}}{\sqrt{-g^{(0)tt}}},\\
K^{(0)}&=\frac{K^{(0)}_{xx}}{h^{(0)}_{xx}}.
\end{align}$$

Here $h^{(0)}_{xx}=g^{(0)}_{xx}$ and $u^{(0)}_x=0$. We use $h^{(0)}$ and $h$ for the cut determinants in the coordinate $x$, so $h^{(0)}=h^{(0)}_{xx}$ and $h=h_{xx}$. The condition $h^{(0)}_{ab}u^{(0)b}=0$ fixes the plus sign in the projector above and corrects the sign printed in (I.5).

At either end let $\tau_\mu=-(\mathrm{d}t)_\mu/\sqrt{-g^{tt}}$. To evaluate $\sigma_{\mu\nu}=g_{\mu\nu}+\tau_\mu\tau_\nu$, the factor multiplying $u^{(0)}_a/z$ in $\tau_a$ is obtained by taking the inverse square root of $g^{tt}/(z^2g^{(0)tt})$. This gives

$$\begin{align}
\sigma_{zz}&=\frac{1}{z^2}+\left(g_{zz}-\frac{1}{z^2}\right),\\
\sigma_{za}&=h^{(0)b}_a g_{zb}-u^{(0)}_a u^{(0)b}g_{zb},\\
\sigma_{ab} &=\frac{1}{z^2}h^{(0)}_{ab} +h^{(0)}_{ab}h^{(0)cd}\left(g_{cd}-\frac{1}{z^2}g^{(0)}_{cd}\right)\\
&{}-u^{(0)}_ah^{(0)c}_b u^{(0)d}\left(g_{cd}-\frac{1}{z^2}g^{(0)}_{cd}\right) -u^{(0)}_bh^{(0)c}_a u^{(0)d}\left(g_{cd}-\frac{1}{z^2}g^{(0)}_{cd}\right)\\
&{}+z^2u^{(0)}_au^{(0)}_b\left(u^{(0)c}g_{zc}\right)^2+O(z^2).
\end{align}$$

Indeed the correction from $\tau_a\tau_b$ to its leading term is $u^{(0)}_au^{(0)}_b[-u^{(0)c}u^{(0)d}(g_{cd}-z^{-2}g^{(0)}_{cd})+z^2(u^{(0)c}g_{zc})^2]$. Splitting each index of the bulk metric correction into its $u^{(0)}$ and cut components gives the three linear terms of (I.11) above. The intrinsic metric on the surface $t=\mathrm{const}$ has entries $g_{zz},g_{zx},g_{xx}$. For its two-dimensional component calculations write

$$\begin{align}
H&=h^{(0)}_{xx},& a&=g_{zz}-\frac{1}{z^2},& b&=g_{zx},& c&=g_{xx}-\frac{H}{z^2}.
\end{align}$$

The inverse in (I.12) follows by dividing $g_{xx},-g_{zx},g_{zz}$ by $g_{zz}g_{xx}-g_{zx}^2$. Its nonzero entries are

$$\begin{align}
\sigma^{zz} &=z^2-z^4a+z^6\frac{b^2}{H}+O(z^6),\\
\sigma^{zx} &=-z^4\frac{b}{H}+z^6\frac{ab}{H}+z^6\frac{cb}{H^2}-z^8\frac{b^3}{H^2}+O(z^7),\\
\sigma^{xx} &=\frac{z^2}{H}-z^4\frac{c}{H^2}+z^6\frac{b^2}{H^2}+O(z^6).
\end{align}$$

All upper $t$ entries vanish because $\sigma^{\mu\nu}(\mathrm{d}t)_\nu=0$. In boundary tensor notation $h^{(0)ab}$ has the single nonzero upper entry $h^{(0)xx}=1/H$ in these adapted coordinates. This restores every contraction in (I.12).

Denote the one-dimensional metric connection of $H$ by $D^h_x$, so $D^h_x b=\partial_x b-b\partial_xH/(2H)$ and $D^h_x c=\partial_x c-c\partial_xH/H$, where $b,c$ carry one and two lower $x$ indices. For the intrinsic connection of $\sigma$ the three pairs of exact equations are

$$\begin{align}
{}^\sigma\Gamma^i_{~zz} &=\frac{1}{2}\sigma^{iz}\partial_zg_{zz} +\sigma^{ix}\left(\partial_zb-\frac{1}{2}\partial_xa\right),\\
{}^\sigma\Gamma^i_{~zx} &=\frac{1}{2}\sigma^{iz}\partial_xa+\frac{1}{2}\sigma^{ix}\partial_zg_{xx},\\
{}^\sigma\Gamma^i_{~xx} &=\sigma^{iz}\left(\partial_xb-\frac{1}{2}\partial_zg_{xx}\right) +\frac{1}{2}\sigma^{ix}\partial_xg_{xx},& i&=z,x .
\end{align}$$

Substitution of the inverse and collection in the order of (E.3) gives

$$\begin{align}
{}^\sigma\Gamma^z_{~zz} &=-\frac{1}{z}+za+\frac{1}{2}z^2\partial_za -z^3\frac{b^2}{H}-z^4\frac{b\partial_zb}{H}+O(z^3),\\
{}^\sigma\Gamma^x_{~zz} &=z\frac{b}{H}+z^2\frac{\partial_zb}{H}-\frac{z^2}{2H}\partial_xa -z^3\frac{ab}{H}-\frac{z^4 b}{2H}\partial_z a\\
&{}-z^3\frac{cb}{H^2}-z^4\frac{c\partial_zb}{H^2} +z^5\frac{b^3}{H^2}+z^6\frac{b^2\partial_zb}{H^2}+O(z^4),\\
{}^\sigma\Gamma^z_{~zx} &=zb+\frac{1}{2}z^2\partial_xa-z^3ab-z^3\frac{cb}{H} -\frac{z^4b}{2H}\partial_zc+z^5\frac{b^3}{H}+O(z^4),\\
{}^\sigma\Gamma^x_{~zx} &=-\frac{1}{z}+z\frac{c}{H}+\frac{z^2}{2H}\partial_z c-z^3\frac{b^2}{H}+O(z^3),\\
{}^\sigma\Gamma^z_{~xx} &=\frac{H}{z}-zHa-\frac{1}{2}z^2\partial_z c+z^2D_x^h b+z^3 b^2+O(z^3),\\
{}^\sigma\Gamma^x_{~xx} &=\frac{\partial_xH}{2H}-zb+\frac{z^2}{2H}D_x^h c+z^3ab+z^3\frac{cb}{H}\\
&{}+\frac{z^4b}{2H}\partial_zc-z^4\frac{b}{H}D^h_x b-z^5\frac{b^3}{H}+O(z^4).
\end{align}$$

On the same surface write $N=1/\sqrt{\sigma^{zz}}$ and $v=b/g_{xx}$, so that $\sigma_{ij}\mathrm{d}x^i\mathrm{d}x^j=N^2\mathrm{d}z^2+g_{xx}(\mathrm{d}x+v\mathrm{d}z)^2$. Contracting the two-dimensional Ricci tensor of the three connection formulas above gives

$$\begin{align}
R^\Sigma &=-\frac{2}{N\sqrt{g_{xx}}}\left[ \partial_z\left(\frac{\partial_z\sqrt{g_{xx}}-\partial_x(v\sqrt{g_{xx}})}{N}\right) -\partial_x\left(v\frac{\partial_z\sqrt{g_{xx}}-\partial_x(v\sqrt{g_{xx}})}{N}\right) +\partial_x\left(\frac{\partial_xN}{\sqrt{g_{xx}}}\right)\right].
\end{align}$$

Here $N^2=z^{-2}+a-b^2/g_{xx}$, and $\sqrt{g_{xx}}=\sqrt H(1+z^2c/(2H)+O(z^4))/z$. In the first derivative the expression is

$$\begin{align}
\frac{\partial_z\sqrt{g_{xx}}-\partial_x(v\sqrt{g_{xx}})}{N} &=-\frac{\sqrt H}{z}\left[ 1-\frac{z^2}{2}\left(a-z^2\frac{b^2}{H}\right) -\frac{z^2 c}{2H}-\frac{z^3\partial_zc}{2H} +z^3\frac{D^h_x b}{H}+O(z^4)\right].
\end{align}$$

The second derivative in the Ricci formula contributes $-2z^3D^h_xb/H+O(z^4)$ after including its prefactor. The last contributes $O(z^4)$. This leaves

$$\begin{align}
R^\Sigma &=-2-z^3\partial_z\left(a-z^2\frac{b^2}{H}\right) -3z^3\frac{\partial_zc}{H}-z^4\frac{\partial_z^2c}{H} +\frac{2z^3}{H}D^h_x\partial_z(zb)+O(z^4),\\
R^\Sigma_{zz}&=\frac{1}{2}g_{zz} R^\Sigma,\\
R^\Sigma_{zx}&=\frac{1}{2}g_{zx} R^\Sigma,\\
R^\Sigma_{xx}&=\frac{1}{2}g_{xx} R^\Sigma.
\end{align}$$

For $K^\Sigma_{ij}$, the pullback of $\nabla_i\tau_j$ to $t=\mathrm{const}$ is $\Gamma^t_{~ij}/\sqrt{-g^{tt}}$. In the $zz$ component the two leading terms of $\Gamma^t_{~zz}$ give respectively $-u^{(0)a}g_{za}$ and $-zu^{(0)a}\partial_zg_{za}$. In the $zx$ component the $1/z$ term is proportional to $\delta^t_{~x}=0$. In the $xx$ component the background connection gives $K^{(0)}_{xx}/z$. Thus

$$\begin{align}
K^\Sigma_{zz} &=-u^{(0)a}g_{za}-zu^{(0)a}\partial_z g_{za}+O(z),\\
K^\Sigma_{zx} &=-u^{(0)a}\left(g_{xa}-\frac{1}{z^2}g^{(0)}_{xa}\right) -\frac{z}{2}u^{(0)a}\partial_z\left(g_{xa}-\frac{1}{z^2}g^{(0)}_{xa}\right)\\
&{}-\frac{z}{2}u^{(0)a}\partial_xg_{za}+\frac{z}{2}u^{(0)a}\partial_ag_{zx} +z^2g_{zx}u^{(0)a}g_{za}+O(z^2),\\
K^\Sigma_{xx} &=\frac{1}{z}K^{(0)}_{xx}+h^{(0)}_{xx}u^{(0)a}g_{za}+O(z),\\
K^\Sigma &=zK^{(0)}+z^2u^{(0)a}g_{za}-z^2u^{(0)a}\partial_z(zg_{za})+O(z^3).
\end{align}$$

In the trace, $2\sigma^{zx}K^\Sigma_{zx}=O(z^3)$. The $\sigma^{zz}$ and $\sigma^{xx}$ terms give the three displayed contributions. To compare the lower spacetime components directly with (I.13), use $K^\Sigma_{t\mu}=-(g^{tz}K^\Sigma_{z\mu}+g^{tx}K^\Sigma_{x\mu})/g^{tt}$. In this relation $g^{tz}/g^{tt}=-z^2g^{(0)ta}g_{za}/g^{(0)tt}+O(z^3)$ and $g^{tx}/g^{tt}=g^{(0)tx}/g^{(0)tt}+O(z^2)$. Projecting the $x$ index and expanding $D^{(0)}_b(u^{(0)c}g_{zc})$ gives, with $\bar a^{(0)}_a=u^{(0)c}D_c^{(0)}u^{(0)}_a$,

$$\begin{align}
K^\Sigma_{za} &=-h^{(0)b}_a u^{(0)c}\left(g_{bc}-\frac{1}{z^2}g^{(0)}_{bc}\right) -\frac{1}{2}zh^{(0)b}_a u^{(0)c}\partial_z\left(g_{bc}-\frac{1}{z^2}g^{(0)}_{bc}\right)\\
&{}+\frac{1}{2}zK^{(0)}h^{(0)b}_a g_{zb} -\frac{1}{2}zh^{(0)b}_a D_b^{(0)}(u^{(0)c}g_{zc})\\
&{}+\frac{1}{2}zh^{(0)b}_a u^{(0)c}D_c^{(0)}(h^{(0)d}_b g_{zd}) -\frac{1}{2}z\bar a^{(0)}_a u^{(0)b}g_{zb}\\
&{}+z^2u^{(0)}_a(u^{(0)b}g_{zb})^2 +z^2h^{(0)b}_a g_{zb}u^{(0)c}g_{zc} +z^3u^{(0)}_a u^{(0)b}u^{(0)c}g_{zb}\partial_zg_{zc}+O(z^2),\\
K^\Sigma_{ab}&=\frac{1}{z}K^{(0)}_{ab} +h^{(0)}_{ab}u^{(0)c}g_{zc}+O(z).
\end{align}$$

#### The Two Constructions of the Corner

The cut $\partial\Sigma_{f/i,z}$ is given by fixed $z$ and fixed $t$. Its tangent vector in the coordinates above is $\partial_x$. With $\sinh\eta=n_\mu\tau^\mu$, the future unit normal in $\Gamma_z$ and the outward unit normal in $\Sigma_{f/i,z}$ are respectively

$$\begin{align}
\tau^{(1)}_\mu&=\frac{\tau_\mu-\sinh\eta n_\mu}{\cosh\eta},\\
n^{(1)}_\mu&=\frac{n_\mu+\sinh\eta\tau_\mu}{\cosh\eta}.
\end{align}$$

Their squares are $-1$ and $+1$. They satisfy $n^\mu\tau^{(1)}_\mu=\tau^\mu n^{(1)}_\mu=0$. Contracting the first line of (4.8) with $n_\mu$ gives $\sinh\bar\eta=\sinh\eta$ with the definition (4.2). We therefore use $\bar\eta=\eta$ in that boost. In (I.3) and (I.9) the two projections give

$$\begin{align}
\gamma_{\mu\nu}+\tau^{(1)}_\mu\tau^{(1)}_\nu &=g_{\mu\nu} +\frac{\tau_\mu\tau_\nu-n_\mu n_\nu-\sinh\eta (\tau_\mu n_\nu+n_\mu\tau_\nu)} {\cosh^2\eta}\\
&=\sigma_{\mu\nu}-n^{(1)}_\mu n^{(1)}_\nu=h_{\mu\nu}.
\end{align}$$

The minus sign in the second line removes the unit spacelike normal. Both projections have image spanned by $\partial_x$. Consequently $h_{\mu\nu}=g_{\mu x}g_{x\nu}/g_{xx}$, $h_{xx}=g_{xx}$ and the only nonzero upper component of $h$ is $h^{xx}$. In particular

$$\begin{align}
h^{xx}&=\frac{z^2}{H}-\frac{z^4 c}{H^2}+O(z^6),\\
{}^h\Gamma^x_{~xx}&=\frac{\partial_xg_{xx}}{2g_{xx}} =\frac{\partial_x H}{2H}+\frac{z^2}{2}\partial_x\left(\frac{c}{H}\right)+O(z^4),\\
{}^hR_{xx}&=0 .
\end{align}$$

In one dimension the two derivative terms in $R^x{}_{xxx}$ cancel and the two connection products cancel.

The extrinsic curvature of the cut has one component for each normal. Denote the one along $\tau^{(1)}$ by $K^H_{xx}$ as in (I.4), and the one along $n^{(1)}$ by $K^{\partial\Sigma\subset\Sigma}_{xx}$. In projecting the derivatives of the preceding boost, $\tau_x=n_x=0$ removes the derivatives of its scalar coefficients. To check these projections directly against the two intrinsic connections use

$$\begin{align}
\gamma^{tt}&=g^{tt}-\frac{(g^{zt})^2}{g^{zz}}=g^{tt}\cosh^2\eta,\\
\sigma^{zz}&=g^{zz}-\frac{(g^{zt})^2}{g^{tt}}=g^{zz}\cosh^2\eta,\\
\widetilde\Gamma^t_{~xx}&=\Gamma^t_{~xx}-\frac{g^{tz}}{g^{zz}}\Gamma^z_{~xx},\\
{}^\sigma\Gamma^z_{~xx}&=\Gamma^z_{~xx}-\frac{g^{zt}}{g^{tt}}\Gamma^t_{~xx}.
\end{align}$$

The last two lines follow by combining the inverse metric factors in the Christoffel formula. In the first difference the coefficient of $2\partial_xg_{xz}-\partial_zg_{xx}$ drops out. In the second difference the coefficient of $2\partial_xg_{xt}-\partial_tg_{xx}$ drops out. Inserting $\sinh\eta=g^{zt}/\sqrt{(-g^{tt})g^{zz}}$ gives at each finite $z$

$$\begin{align}
K^H_{xx} &=\frac{\widetilde\Gamma^t_{~xx}}{\sqrt{-\gamma^{tt}}} =\frac{K^\Sigma_{xx}-\sinh\eta K^\Gamma_{xx}}{\cosh\eta},\\
K^{\partial\Sigma\subset\Sigma}_{xx} &=\frac{{}^\sigma\Gamma^z_{~xx}}{\sqrt{\sigma^{zz}}} =\frac{K^\Gamma_{xx}+\sinh\eta K^\Sigma_{xx}}{\cosh\eta}.
\end{align}$$

For the first curvature the leading mixed-metric term $Hu^{(0)a}g_{za}$ in $K^\Sigma_{xx}$ cancels $\sinh\eta H/z^2$, since $\sinh\eta=z^2u^{(0)a}g_{za}+O(z^3)$. Expanding the intrinsic expressions one order further, and using $h^{xx}=1/g_{xx}$ for the two traces, gives

$$\begin{align}
K^H_{xx} &=\frac{K^{(0)}_{xx}}{z} +\frac{z g^{(0)td}}{2\sqrt{-g^{(0)tt}}} \left[2D_x^{(0)}\left(g_{xd}-\frac{g^{(0)}_{xd}}{z^2}\right) -D_d^{(0)}\left(g_{xx}-\frac{H}{z^2}\right)\right]\\
&{}-\frac{z}{2} K^{(0)}_{xx}u^{(0)a}u^{(0)b} \left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right)+O(z^3),\\
K^H&=\frac{1}{g_{xx}}K^H_{xx}=zK^{(0)}+O(z^3),\\
K^{\partial\Sigma\subset\Sigma}_{xx} &=\frac{H}{z^2}-\frac{H}{2}\left(a-\frac{z^2b^2}{H}\right) -\frac{z}{2}\partial_zc+zD_x^h b+O(z^2),\\
K^{\partial\Sigma\subset\Sigma} &=1-\frac{z^2}{2}\left(a-\frac{z^2b^2}{H}\right)-\frac{z^2c}{H} -\frac{z^3}{2H}\partial_zc+\frac{z^3}{H}D_x^h b+O(z^4).
\end{align}$$

In the covariant derivatives in the first line the expressions in parentheses carry the indicated tensor indices. The equality of the two computations of each curvature precedes the expansion and holds separately on the initial and final cuts.

### I.3.2. The Finiteness of the Action

With the outward normal to $\Gamma_\epsilon$ and the future unit normal on both Cauchy surfaces, the regularized action with the reversed spacelike and joint signs is

$$\begin{align}
16\pi G S_\epsilon ={}&\int_{M_\epsilon}\mathrm{d}^3x\sqrt{-g}(R+2) +2\int_{\Gamma_\epsilon}\mathrm{d}^2x\sqrt{-\gamma} \left(K^\Gamma-1+\frac{1}{2}\log\epsilon\widetilde R\right)\\
&-2\left[\int_{\Sigma_\epsilon}\mathrm{d}^2x\sqrt{\sigma}K^\Sigma\right]_{\Sigma_i}^{\Sigma_f} +2\left[\int_{\partial\Sigma_\epsilon}\mathrm{d}x\sqrt h \left(\eta-\log\epsilon K^H\right)\right]_{\Sigma_i}^{\Sigma_f}.
\end{align}$$

Here and below the square bracket evaluated at the two Cauchy surfaces denotes the final integral minus the initial integral. We first keep $\epsilon$ finite. Choose $z_0>\epsilon$ in the region covered by (3.2). The range of $x^a$ between these two surfaces is independent of $z$. Let $L=(R+2)\varepsilon_M/(16\pi G)$, with the bulk volume form and face orientations of (3.9)–(3.11). With $\Gamma$ oriented as $\Gamma_\epsilon$, (F.2)–(F.3) give

$$\begin{align}
\int_{M_\epsilon}L &=\int_{M_{z_0}}L- \int_\Gamma\left[\int_\epsilon^{z_0}\mathrm{d}z L_{za_0a_1}\right] \frac{1}{2!}\mathrm{d}x^{a_0}\wedge\mathrm{d}x^{a_1}.
\end{align}$$

Since $n^z=-\sqrt{g^{zz}}$, the boundary volume form satisfies $\varepsilon^{(\Gamma_z)}_{a_0a_1}=-\sqrt{g^{zz}}\varepsilon_{za_0a_1}$. Inserting $\sqrt{-g}=\sqrt{-\gamma}/\sqrt{g^{zz}}$ gives the same split in the coordinate convention of (4.1),

$$\begin{align}
\int_{M_\epsilon}\mathrm{d}^3x\sqrt{-g}(R+2) &=\int_{M_{z_0}}\mathrm{d}^3x\sqrt{-g}(R+2) +\int_\Gamma\mathrm{d}^2x\int_\epsilon^{z_0}\mathrm{d}z\sqrt{-g}(R+2).
\end{align}$$

To compute the radial integral we use $\det g=\det(g_{ab})(g_{zz}-\gamma^{ab}g_{za}g_{zb})$. In the product with $R+2$, the factor from $\sqrt{-g}$, after taking out $\sqrt{-g^{(0)}}/z^3$, is

$$\begin{align}
1+\frac{z^2}{2}\left(g_{zz}-\frac{1}{z^2} +g^{(0)ab}\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right) -z^2g^{(0)ab}g_{za}g_{zb}\right)+O(z^4).
\end{align}$$

Multiplication by the constant $-4$ in $R+2$ cancels the two undifferentiated metric corrections in (E.6) and adds $2z^4g^{(0)ab}g_{za}g_{zb}$ to its quadratic term before division by $z^3$. Substitution of the remaining terms of (E.6) in the radial integral gives

$$\begin{align}
\frac{\sqrt{-g}}{\sqrt{-g^{(0)}}}(R+2) ={}&-\frac{4}{z^3}+\frac{R^{(0)}}{z} -2\partial_z\left(g_{zz}-\frac{1}{z^2}\right) -2g^{(0)ab}\partial_z\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right)\\
&-zg^{(0)ab}\partial_z^2\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right) +2zg^{(0)ab}D^{(0)}_a\partial_z g_{zb}\\
&+4zg^{(0)ab}g_{za}g_{zb} +4z^2g^{(0)ab}g_{za}\partial_zg_{zb}+H_1(z,x).
\end{align}$$

This equality defines $H_1$ with the sign appropriate to the ordinary coordinate integral. The $O(z^4)$ error in the determinant factor multiplies the bounded $R+2$. Its explicit $O(z^2)$ correction multiplies $R+6=O(z^2)$ in the cross term, and the curvature remainder in (E.6) is $O(z^4)$. After division by $z^3$ these terms give $H_1=O(z)$, as in (F.4)–(F.5).

We now carry out the radial integration in (F.6)–(F.7). The three integrations by parts involved in this step follow from

$$\begin{align}
\partial_z\left[g_{ab}-\frac{g^{(0)}_{ab}}{z^2} +z\partial_z\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right)\right] &=2\partial_z\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right) +z\partial_z^2\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right),\\
2zD^{(0)}_a\partial_zg_{zb} &=\partial_z\left[2zD^{(0)}_ag_{zb}-2z\log z D^{(0)}_ag_{zb}\right] +2\log z D^{(0)}_a\partial_z(zg_{zb}),\\
\partial_z\left(2z^2g^{(0)ab}g_{za}g_{zb}\right) &=4zg^{(0)ab}g_{za}g_{zb}+4z^2g^{(0)ab}g_{za}\partial_zg_{zb}.
\end{align}$$

Thus the bulk contribution at finite $\epsilon$ is

$$\begin{align}
\int_{M_\epsilon}\mathrm{d}^3x\sqrt{-g}(R+2) ={}&\int_{M_{z_0}}\mathrm{d}^3x\sqrt{-g}(R+2)\\
&+\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}\left[\frac{2}{z^2}+\log z R^{(0)} -2\left(g_{zz}-\frac{1}{z^2}\right) -g^{(0)ab}\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right)\right.\\
&\left.-zg^{(0)ab}\partial_z\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right) +2zg^{(0)ab}D^{(0)}_ag_{zb} -2z\log z g^{(0)ab}D^{(0)}_ag_{zb} +2z^2g^{(0)ab}g_{za}g_{zb}\right]_{z=\epsilon}^{z=z_0}\\
&+\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}\int_\epsilon^{z_0}\mathrm{d}z \left[2\log z g^{(0)ab}D^{(0)}_a\partial_z(zg_{zb})+H_1(z,x)\right].
\end{align}$$

We next evaluate the timelike boundary term, corresponding to (F.8). Since $\gamma_{ab}=g_{ab}$, its area element contributes $1+z^2g^{(0)ab}(g_{ab}-g^{(0)}_{ab}/z^2)/2+O(z^4)$ after the factor $\sqrt{-g^{(0)}}/z^2$ is taken out. Multiplying by $2(K^\Gamma-1)$ changes the coefficient of the undifferentiated tangential metric correction from $-2$ to $-1$. Using the intrinsic scalar curvature of $\Gamma_z$ for the logarithmic term gives

$$\begin{align}
&\int_{\Gamma_\epsilon}\mathrm{d}^2x\sqrt{-\gamma}
(2K^\Gamma-2+\log\epsilon\widetilde R)\\
&=\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}\left[\frac{2}{z^2}+\log z R^{(0)} -2\left(g_{zz}-\frac{1}{z^2}\right) -g^{(0)ab}\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right)\right.\\
&\left.-zg^{(0)ab}\partial_z\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right) +2zg^{(0)ab}D^{(0)}_ag_{zb} +2z^2g^{(0)ab}g_{za}g_{zb}\right]_{z=\epsilon} +O(\epsilon^2|\log\epsilon|).
\end{align}$$

Adding this integral to the lower endpoint of the bulk term leaves $2\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}[z\log z g^{(0)ab}D^{(0)}_ag_{zb}]_{z=\epsilon}$ at the displayed orders. In the revised action this endpoint is supplied by the initial and final faces.

On each Cauchy surface $\det\sigma=g_{zz}g_{xx}-g_{zx}^2$ gives $\sqrt{\sigma}=z^{-2}\sqrt{h^{(0)}}(1+O(z^2))$. The $xx$ contraction of $K^\Sigma_{ij}$ supplies $K^{(0)}/z+u^{(0)a}g_{za}$ after multiplying by this measure. The $zz$ contraction supplies $-u^{(0)a}\partial_z(zg_{za})$, and the mixed contraction contributes $O(z)$. Define $H_2$ on each face by the exact equality

$$\begin{align}
\frac{\sqrt\sigma}{\sqrt{h^{(0)}}}K^\Sigma &=\frac{K^{(0)}}{z}+u^{(0)a}g_{za} -u^{(0)a}\partial_z(zg_{za})+H_2(z,x).
\end{align}$$

The $O(z^3)$ error in the geometric trace contributes $O(z)$, and the relative $O(z^2)$ error in the measure multiplies terms of order at most $1/z$. These give $H_2=O(z)$. Since $u^{(0)a}$ and $K^{(0)}$ are independent of $z$, the radial integration on the face gives

$$\begin{align}
\int_{\Sigma_\epsilon}\mathrm{d}^2x\sqrt\sigma K^\Sigma ={}&\int_{\Sigma_{z_0}}\mathrm{d}^2x\sqrt\sigma K^\Sigma +\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}} \left[\log z K^{(0)}+(z\log z-z)u^{(0)a}g_{za}\right]_{z=\epsilon}^{z=z_0}\\
&+\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}
\int_\epsilon^{z_0}\mathrm{d}z \left[-\log z u^{(0)a}\partial_z(zg_{za})+H_2(z,x)\right].
\end{align}$$

Indeed, differentiating $(z\log z-z)g_{za}$ gives $g_{za}-\partial_z(zg_{za})+\log z\partial_z(zg_{za})$. At the joint, insertion of $h_{xx}=g_{xx}$, $K^H=zK^{(0)}+O(z^3)$ and $\eta=\operatorname{arcsinh}(g^{zt}/\sqrt{-g^{tt}g^{zz}})$ gives

$$\begin{align}
\int_{\partial\Sigma_\epsilon}\mathrm{d}x\sqrt h(\eta-\log\epsilon K^H) ={}&\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}} \left[zu^{(0)a}g_{za}-\log z K^{(0)}\right]_{z=\epsilon} +O(\epsilon^2|\log\epsilon|).
\end{align}$$

Here $g^{zt}/\sqrt{-g^{tt}g^{zz}}=z^2u^{(0)a}g_{za}+O(z^3)$ by the inverse metric, so the cubic error of $\operatorname{arcsinh}$ contributes $O(\epsilon^2)$ in the joint integral.

We now sum the terms as in (F.9). For a vector $v^a$ on $\Gamma$, the directed covector at the final cut is $-u^{(0)}_a$ and that at the initial cut is $+u^{(0)}_a$. At each fixed $z$ we therefore have

$$\begin{align}
\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}g^{(0)ab}D^{(0)}_ag_{zb} &=-\left[\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}u^{(0)a}g_{za}\right]_{\Sigma_i}^{\Sigma_f}.
\end{align}$$

At the lower endpoint the signed Cauchy and joint integrals leave $+2[\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}z\log z u^{(0)a}g_{za}]_{\Sigma_i}^{\Sigma_f}$ at $z=\epsilon$. This cancels the term left by the timelike boundary. Applying the same divergence identity to $\partial_z(zg_{za})$ cancels the two radial integrals proportional to $\log z$. In particular (F.10) gives $\partial_z(zg_{za})=o(z^{s-1})$ with $s>0$, so these logarithmic integrals also converge separately.

For the remaining curvature terms we use the foliation of each timelike cylinder by its closed cuts. If $u^a$ is the future unit normal to a cut in that cylinder, $K=D_a u^a$ and $a^a=u^bD_bu^a$, the contracted Ricci identity gives

$$\begin{align}
R_{ab}u^au^b &=-u^aD_aK-K_{ab}K^{ab}+D_aa^a,\\
R&=2D_a(Ku^a-a^a).
\end{align}$$

The second line uses $R_{ab}=g_{ab}R/2$ in two dimensions and $K_{ab}K^{ab}=K^2$ on a one-dimensional cut. With $a^au_a=0$, integration on $\Gamma_z$ and on $\Gamma$ gives respectively

$$\begin{align}
\int_{\Gamma_z}\mathrm{d}^2x\sqrt{-\gamma}\widetilde R &=2\left[\int_{\partial\Sigma_z}\mathrm{d}x\sqrt h K^H\right]_{\Sigma_i}^{\Sigma_f},\\
\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}R^{(0)} &=2\left[\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}K^{(0)}\right]_{\Sigma_i}^{\Sigma_f}.
\end{align}$$

The first equality cancels the full coefficient of $\log\epsilon$ from the timelike face and the joints, including its $O(\epsilon^2)$ correction. The second cancels the terms involving $\log z_0 R^{(0)}$ and $\log z_0 K^{(0)}$ in the upper endpoints. The divergence identity at $z_0$ cancels the upper endpoints proportional to $z_0\log z_0$. The surviving finite-cutoff expression is

$$\begin{align}
16\pi G S_\epsilon ={}&\int_{M_{z_0}}\mathrm{d}^3x\sqrt{-g}(R+2) -2\left[\int_{\Sigma_{z_0}}\mathrm{d}^2x\sqrt\sigma K^\Sigma\right]_{\Sigma_i}^{\Sigma_f}\\
&+\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}\left[\frac{2}{z^2} -2\left(g_{zz}-\frac{1}{z^2}\right) -g^{(0)ab}\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right)\right.\\
&\left.-zg^{(0)ab}\partial_z\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right) +2zg^{(0)ab}D^{(0)}_ag_{zb} +2z^2g^{(0)ab}g_{za}g_{zb}\right]_{z=z_0}\\
&+2\left[\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}} \left[zu^{(0)a}g_{za}\right]_{z=z_0}\right]_{\Sigma_i}^{\Sigma_f}\\
&+\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}\int_\epsilon^{z_0}\mathrm{d}z H_1(z,x) -2\left[\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}
\int_\epsilon^{z_0}\mathrm{d}z H_2(z,x)\right]_{\Sigma_i}^{\Sigma_f} +O(\epsilon^2).
\end{align}$$

Only the nonlogarithmic timelike and joint errors remain in $O(\epsilon^2)$. The first four lines are evaluated at fixed $z_0$. In the last line both integrals extend to $z=0$ since $|H_1|+|H_2|\leq C z$ on their respective compact sections. Thus $16\pi G S$ is the sum displayed above with radial integrals from $0$ to $z_0$ and with the error term omitted. Subtracting the two expressions as in (F.11)–(F.12) gives

$$\begin{align}
16\pi G(S-S_\epsilon) ={}&\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}\int_0^\epsilon\mathrm{d}z H_1(z,x) -2\left[\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}} \int_0^\epsilon\mathrm{d}z H_2(z,x)\right]_{\Sigma_i}^{\Sigma_f} +O(\epsilon^2) =O(\epsilon^2).
\end{align}$$

### I.3.3. The Finiteness in the Variation of the Action

We first allow the boundary metric to vary, as in (F.13). The defining function $z$, the time function $t$ and the embeddings of the three faces are fixed. Thus

$$\begin{align}
\delta g_{zz}&=O(1),\\
\delta g_{za}&=O(z^{-1}),\\
\delta g_{ab}&=z^{-2}\delta g^{(0)}_{ab}+O(1).
\end{align}$$

We use (3.1) also for the first and second variations of a smooth two-parameter family, with the differentiated remainder bounds uniform on compact parameter intervals and on the cuts. One positive exponent $s$ common to the finitely many bounds suffices.

At finite $\epsilon$, the logarithmic wall integral equals the difference of the two logarithmic cut integrals by the curvature identity on $\Gamma_\epsilon$ used above. Varying this equality removes their variations as well. Integrating the variations of the Einstein and extrinsic-curvature terms by parts gives at the future cut the coefficient $(n^\mu\tau^{(1)\nu}+\tau^\mu n^{(1)\nu})\delta g_{\mu\nu}$ with measure $\sqrt h\mathrm{d}x/(16\pi G)$. Direct variation of $n_\mu\tau^\mu=\sinh\eta$ gives

$$\begin{align}
\cosh\eta\delta\eta &=\left[-n^\mu\tau^\nu+\frac{\sinh\eta}{2} (n^\mu n^\nu-\tau^\mu\tau^\nu)\right]\delta g_{\mu\nu},\\
(n^\mu\tau^{(1)\nu}+\tau^\mu n^{(1)\nu})\delta g_{\mu\nu} &=\frac{2n^\mu\tau^\nu-\sinh\eta(n^\mu n^\nu-\tau^\mu\tau^\nu)}{\cosh\eta}
\delta g_{\mu\nu}=-2\delta\eta .
\end{align}$$

In the second line we substituted the two unit normals of the corner. The variation of $+2\sqrt h\eta$ at the future cut leaves $+2\eta\delta\sqrt h$. All three endpoint terms have the opposite sign at the initial cut. In ordinary coordinate integrals the counterpart of (4.10) is therefore

$$\begin{align}
\delta S_\epsilon &=\int_{M_\epsilon}E^{\mu\nu}\delta g_{\mu\nu} -\frac{1}{16\pi G}\int_{\Gamma_\epsilon}\mathrm{d}^2x\sqrt{-\gamma} (K^{\Gamma ab}-K^\Gamma\gamma^{ab}+\gamma^{ab})\delta g_{ab} +\theta_{\Sigma_{f,\epsilon}}-\theta_{\Sigma_{i,\epsilon}},\\
\theta_{\Sigma_\epsilon} &=\frac{1}{16\pi G}\int_{\Sigma_\epsilon}\mathrm{d}^2x\sqrt\sigma (K^{\Sigma ij}-K^\Sigma\sigma^{ij})\delta\sigma_{ij} +\frac{1}{8\pi G}\int_{\partial\Sigma_\epsilon}\mathrm{d}x\eta\delta\sqrt h .
\end{align}$$

Here $E^{\mu\nu}\delta g_{\mu\nu}$ is the three-form defined in (3.13), and $i,j$ take the values $z,x$.

We first take the limit of the bulk term, as in (F.16)–(F.21). Its ordinary coordinate integrand is $\sqrt{-g}(-R^{\mu\nu}+Rg^{\mu\nu}/2+g^{\mu\nu})\delta g_{\mu\nu}/(16\pi G)$. For the terms multiplying $\delta g^{(0)}_{ab}$, the wall metric and extrinsic curvature give the radial endpoint in (F.20),

$$\begin{align}
4G T_{ab}(z)&=K^\Gamma_{ab}-(K^\Gamma-1)\gamma_{ab}\\
&=\frac{1}{2}\left(g_{zz}-\frac{1}{z^2}\right)g^{(0)}_{ab} -\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right) -\frac{z}{2}\partial_z\left(g_{ab}-\frac{g^{(0)}_{ab}}{z^2}\right)\\
&+g^{(0)}_{ab}g^{(0)cd}\left(g_{cd}-\frac{g^{(0)}_{cd}}{z^2}\right) +\frac{z}{2}g^{(0)}_{ab}g^{(0)cd}\partial_z\left(g_{cd}-\frac{g^{(0)}_{cd}}{z^2}\right)\\
&+\frac{z}{2}D^{(0)}_ag_{zb}+\frac{z}{2}D^{(0)}_bg_{za} -zg^{(0)}_{ab}g^{(0)cd}D^{(0)}_cg_{zd} -\frac{z^2}{2}g^{(0)}_{ab}g^{(0)cd}g_{zc}g_{zd}+O(z^2).
\end{align}$$

The $z^{-2}g^{(0)}_{ab}$ terms cancel in the first line. Each order-one term displayed has a limit by (3.1), yielding $T^{(0)}_{ab}$ in (3.48). To check the radial primitive independently, raise the two indices of $-R_{\mu\nu}+(R/2+1)g_{\mu\nu}$ using (E.2) and substitute the curvature components (E.5)–(E.6). The $zz$ and $za$ terms, including the volume factor and the variation, are $O(z)$. After taking out $\sqrt{-g^{(0)}}/(16\pi G)$, the remaining ordinary integrand is minus $g^{(0)ac}g^{(0)bd}\delta g^{(0)}_{ab}$ times

$$\begin{align}
&\frac{1}{2}g^{(0)}_{cd}\partial_z(g_{zz}-z^{-2}) -\frac{3}{2}\partial_z(g_{cd}-z^{-2}g^{(0)}_{cd}) -\frac{z}{2}\partial_z^2(g_{cd}-z^{-2}g^{(0)}_{cd})\\
&+\frac{3}{2}g^{(0)}_{cd}g^{(0)ef}\partial_z(g_{ef}-z^{-2}g^{(0)}_{ef}) +\frac{z}{2}g^{(0)}_{cd}g^{(0)ef}\partial_z^2(g_{ef}-z^{-2}g^{(0)}_{ef})\\
&+\frac{1}{2}D^{(0)}_cg_{zd}+\frac{1}{2}D^{(0)}_dg_{zc} +\frac{z}{2}D^{(0)}_c\partial_zg_{zd}+\frac{z}{2}D^{(0)}_d\partial_zg_{zc}\\
&-g^{(0)}_{cd}g^{(0)ef}D^{(0)}_eg_{zf} -zg^{(0)}_{cd}g^{(0)ef}D^{(0)}_e\partial_zg_{zf}\\
&-zg^{(0)}_{cd}g^{(0)ef}g_{ze}g_{zf} -z^2g^{(0)}_{cd}g^{(0)ef}g_{ze}\partial_zg_{zf},
\end{align}$$

up to an additive $O(z)$ in the integrand. For example the two derivatives of $g_{cd}-z^{-2}g^{(0)}_{cd}$ come from $\partial_z[-(g_{cd}-z^{-2}g^{(0)}_{cd})-(z/2)\partial_z(g_{cd}-z^{-2}g^{(0)}_{cd})]$. The last two terms differentiate $-z^2 g^{(0)}_{cd}g^{(0)ef}g_{ze}g_{zf}/2$. Together these lines give $4G\partial_zT_{cd}+O(z)$. The minus sign is the one in (F.17) on converting the oriented radial component to the ordinary integral. In particular, at fixed $z_0$,

$$\begin{align}
\int_{M_\epsilon}E^{\mu\nu}\delta g_{\mu\nu} &=\int_{M_{z_0}}E^{\mu\nu}\delta g_{\mu\nu} -\frac{1}{4\pi}\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}} g^{(0)ac}g^{(0)bd}\delta g^{(0)}_{ab} \big(T_{cd}(z_0)-T_{cd}(\epsilon)\big)\\
&+\int_\Gamma\mathrm{d}^2x\int_\epsilon^{z_0}\mathrm{d}z r_2(z,x).
\end{align}$$

Here $r_2$ denotes the exact difference after the displayed subtraction and $r_2=O(z)$. Replacing $T_{cd}(\epsilon)$ by $T^{(0)}_{cd}$ and the lower integral limit by $0$ gives (F.21) in ordinary coordinates. The error is $o(\epsilon^s)+O(\epsilon^2)$. With $\delta g^{(0)}_{ab}=0$ only the integrable remainder contributes to the tail.

For the wall term of (F.22), raising the two indices of $4GT_{ab}$ with $\gamma^{ab}$ gives two factors $z^2$. The measure and $\delta g_{ab}$ each supply one factor $z^{-2}$. The limit (F.23) is consequently

$$\begin{align}
\lim_{\epsilon\to0}\int_{\Gamma_\epsilon}F_1^{\mu\nu}\delta g_{\mu\nu} &=-\frac{1}{4\pi}\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}} T^{(0)}_{cd}g^{(0)ac}g^{(0)bd}\delta g^{(0)}_{ab}.
\end{align}$$

At fixed $g^{(0)}_{ab}$ the wall term is $O(\epsilon^2)$.

For comparison with (F.24)–(F.33), evaluate $\int_{\Sigma_\epsilon}\Theta-\int_{\partial\Sigma_\epsilon} C$ for (3.5) before adding the change in the cap action. In (3.13) the vector contracted into the volume form in $16\pi G\Theta$ is $g^{\rho\sigma}\delta\Gamma^\mu_{~\rho\sigma}-g^{\mu\rho}\delta\Gamma^\sigma_{~\rho\sigma}$. The $zx$ pullback selects its tangential index $a$. The leading tangential contractions differentiate $\delta g^{(0)}_{ab}$ with $D^{(0)}$. The $zz$ contraction of $\delta\Gamma^a_{~zz}$ differentiates $z\delta g_{zb}$ and $zg_{zb}\delta g^{(0)}_{cd}$. Inserting the inverse metric and the connection gives the following coefficient of $\varepsilon^{(0)}_{ax}/(16\pi G)$ in the radial component,

$$\begin{align}
&\frac{1}{z}g^{(0)ab}g^{(0)cd}(D^{(0)}_c\delta g^{(0)}_{bd}-D^{(0)}_b\delta g^{(0)}_{cd}) -g^{(0)ab}\delta g_{zb}+zg^{(0)ab}\partial_z\delta g_{zb}\\
&-g^{(0)ab}g_{zb}g^{(0)cd}\delta g^{(0)}_{cd} +g^{(0)ab}g^{(0)cd}(g_{zc}-z\partial_zg_{zc})\delta g^{(0)}_{bd} +H_3^a.
\end{align}$$

In this substitution the $O(z^2)$ corrections to the leading rescaled metric, volume factor and their variations multiply at most $O(z^{-1})$. Tangential derivatives of the subleading $O(1)$ tangential metric correction in the Christoffel variation enter at $O(z)$. Thus $H_3^a=O(z)$. This is (F.26)–(F.27). Its radial primitive in (F.28) is

$$\begin{align}
J^a(z)={}&zg^{(0)ab}\delta g_{zb} -zg^{(0)ab}g^{(0)cd}g_{zc}\delta g^{(0)}_{bd}\\
&+\log z\left[g^{(0)ab}g^{(0)cd}
 (D^{(0)}_c\delta g^{(0)}_{bd}-D^{(0)}_b\delta g^{(0)}_{cd}) -2zg^{(0)ab}\delta g_{zb}\right.\\
&\left.{}-zg^{(0)ab}g_{zb}g^{(0)cd}\delta g^{(0)}_{cd} +2zg^{(0)ab}g^{(0)cd}g_{zc}\delta g^{(0)}_{bd}\right].
\end{align}$$

For example $\partial_z[z\delta g_{zb}-2\log z(z\delta g_{zb})]+2\log z\partial_z(z\delta g_{zb})=-\delta g_{zb}+z\partial_z\delta g_{zb}$. The two terms proportional to $g_{zc}\delta g^{(0)}_{bd}$ work in the same way with the opposite sign. At the cut, the algebraic part $-\gamma^{ab}n^\mu\delta g_{b\mu}$ in $16\pi G C$ gives the first line of $J^a$ after multiplication by the wall volume factor. Varying the intrinsic curvature term gives the first term within the square bracket. Varying $-2z\log z\gamma^{ab}g_{zb}$ and its wall measure gives the three terms proportional to $z\log z$. Thus $16\pi G\int_{\partial\Sigma_\epsilon}C=\int_{\partial\Sigma}J^a(\epsilon)\varepsilon^{(0)}_{ax}\mathrm{d}x+O(\epsilon^2|\log\epsilon|)$. The orientation in (F.25) supplies $+J^a(\epsilon)-J^a(z_0)$ from the cap. The result after canceling the common endpoint is

$$\begin{align}
16\pi G\left(\int_{\Sigma_\epsilon}\Theta-\int_{\partial\Sigma_\epsilon}C\right) ={}&16\pi G\int_{\Sigma_{z_0}}\Theta -\int_{\partial\Sigma}J^a(z_0)\varepsilon^{(0)}_{ax}\mathrm{d}x\\
&-\int_{\partial\Sigma}\left\{\int_\epsilon^{z_0}\mathrm{d}z\left[ 2\log z g^{(0)ab}\partial_z(z\delta g_{zb}) +\log z g^{(0)ab}\partial_z(zg_{zb})g^{(0)cd}\delta g^{(0)}_{cd}\right.\right.\\
&\left.\left.{}-2\log z g^{(0)ab}g^{(0)cd}\partial_z(zg_{zc})\delta g^{(0)}_{bd} +H_3^a\right]\right\}\varepsilon^{(0)}_{ax}\mathrm{d}x+O(\epsilon^2|\log\epsilon|).
\end{align}$$

This reproduces (F.31)–(F.33). The lower limit can be replaced by zero since the three logarithmic terms are $o(z^{s-1}|\log z|)$ and the last term is $O(z)$.

For the modified action the cap and cut integrals in (4.13) give each end directly. For a two-dimensional cap, multiplication by the inverse of $\sigma_{ij}$ gives the exact identity

$$\begin{align}
\sqrt\sigma(K^{\Sigma ij}-K^\Sigma\sigma^{ij})\delta\sigma_{ij} &=\frac{-K^\Sigma_{xx}\delta g_{zz} +2K^\Sigma_{zx}\delta g_{zx} -K^\Sigma_{zz}\delta g_{xx}}{\sqrt\sigma}.
\end{align}$$

For example the coefficient of $\delta g_{zz}$ is $( (\sigma^{zx})^2-\sigma^{zz}\sigma^{xx})\sqrt\sigma K^\Sigma_{xx}=-K^\Sigma_{xx}/\sqrt\sigma$. Here $1/\sqrt\sigma=z^2/\sqrt{h^{(0)}}+O(z^4)$, $K^\Sigma_{xx}=O(z^{-1})$, and $K^\Sigma_{zx}=O(1)$. The first and second terms are $O(z)$. Substituting $K^\Sigma_{zz}=-u^{(0)a}\partial_z(zg_{za})+O(z)$ in the last term gives

$$\begin{align}
\frac{-K^\Sigma_{zz}\delta g_{xx}}{\sqrt\sigma} &=2\delta\sqrt{h^{(0)}}u^{(0)a}\partial_z(zg_{za})+O(z),\\
2\eta\delta\sqrt h &=2\delta\sqrt{h^{(0)}}u^{(0)a}zg_{za}+O(z^2).
\end{align}$$

In the second line $\eta=z^2u^{(0)a}g_{za}+O(z^3)$ and $z\delta\sqrt h=\delta\sqrt{h^{(0)}}+O(z^2)$. Splitting the cap at $z_0$, the cap integral over the collar gives $2\delta\sqrt{h^{(0)}}u^{(0)a}(z_0g_{za}(z_0)-\epsilon g_{za}(\epsilon))$. The lower endpoint cancels the displayed cut term. In full this gives

$$\begin{align}
16\pi G\theta_{\Sigma_\epsilon} &=\int_{\Sigma_{z_0}}\mathrm{d}^2x\sqrt\sigma (K^{\Sigma ij}-K^\Sigma\sigma^{ij})\delta\sigma_{ij} +2\int_{\partial\Sigma}\mathrm{d}x\delta\sqrt{h^{(0)}} u^{(0)a}z_0g_{za}(z_0)\\
&+\int_{\partial\Sigma}\mathrm{d}x\int_\epsilon^{z_0}\mathrm{d}z r_3(z,x)+O(\epsilon^2).
\end{align}$$

The exact cap remainder $r_3$ is $O(z)$ by the three component computations above. At $\epsilon=0$ the right hand side is finite. Even for variable $g^{(0)}_{ab}$ the *combined* expression differs from its limit by $O(\epsilon^2)$. Separately the cap and cut have finite limits since $\partial_z(zg_{za})=o(z^{s-1})$ and $zg_{za}\to g^{(-1)}_{za}$.

To compute the presymplectic form take two commuting variations. Before the radial integral, its possible leading term is

$$\begin{align}
2\partial_z\left[ \delta_1( u^{(0)a}zg_{za})\delta_2\sqrt{h^{(0)}} -\delta_2( u^{(0)a}zg_{za})\delta_1\sqrt{h^{(0)}}\right].
\end{align}$$

The $\delta_1\delta_2\sqrt{h^{(0)}}$ terms cancel between the two variations. Integrating the derivative leaves a lower endpoint opposite to $2(\delta_1\eta\delta_2\sqrt h-\delta_2\eta\delta_1\sqrt h)$ at the cut, up to $O(\epsilon^2)$. The varied cap remainder is $O(z)$ because differentiating $1/\sqrt\sigma$ multiplies it by $-\sigma^{ij}\delta\sigma_{ij}/2=O(1)$, and differentiating the other factors uses the same metric and differentiated bounds. Thus

$$\begin{align}
\widetilde\omega_\Sigma(\delta_1,\delta_2) &=\delta_1\theta_\Sigma(\delta_2)-\delta_2\theta_\Sigma(\delta_1) =\lim_{\epsilon\to0}(\delta\theta_{\Sigma_\epsilon})(\delta_1,\delta_2).
\end{align}$$

Uniform convergence on each field family permits the limit also in $S_\epsilon(g(\lambda))-S_\epsilon(g(0))=\int_0^\lambda\partial_{\lambda'}S_\epsilon(g(\lambda'))\mathrm{d}\lambda'$. Differentiation in $\lambda$ gives $\delta S=\lim_{\epsilon\to0}\delta S_\epsilon$. With fixed $g^{(0)}_{ab}$ this yields (F.35)–(F.37) for the modified action,

$$\begin{align}
\delta S&=\int_M E^{\mu\nu}\delta g_{\mu\nu} +\theta_{\Sigma_f}-\theta_{\Sigma_i}.
\end{align}$$

On solutions and for two linearized solutions, antisymmetrizing the variation gives $\widetilde\omega_{\Sigma_f}=\widetilde\omega_{\Sigma_i}$ at fixed $g^{(0)}$. More generally, put $T^{(0)ab}=g^{(0)ac}g^{(0)bd}T^{(0)}_{cd}$. The on-shell flux balance reads

$$\begin{align}
(\widetilde\omega_{\Sigma_f}-\widetilde\omega_{\Sigma_i})(\delta_1,\delta_2) &=\frac{1}{4\pi}\int_\Gamma\mathrm{d}^2x \left[\delta_1(\sqrt{-g^{(0)}}T^{(0)ab})\delta_2g^{(0)}_{ab} -\delta_2(\sqrt{-g^{(0)}}T^{(0)ab})\delta_1g^{(0)}_{ab}\right].
\end{align}$$

### I.3.4. The Finiteness in Acting the Asymptotic Symmetry on the Action

As in (F.38), first allow the leading metric to change. Write $\Delta\xi^a=\xi^a-\xi^{(0)a}$, $\xi^z=z\xi^{(1)z}+O(z^3)$, $\Delta\xi^a=O(z^2)$. The Lie derivative at order $z^{-2}$ gives

$$\begin{align}
X_\xi\cdot\delta g^{(0)}_{ab} &=g^{(0)}_{bc}D^{(0)}_a\xi^{(0)c} +g^{(0)}_{ac}D^{(0)}_b\xi^{(0)c}-2\xi^{(1)z}g^{(0)}_{ab}.
\end{align}$$

The $za$ component also fixes the radial regularity that is used in (F.49). Multiply this component of the Lie derivative by $z$. Its terms through order one are

$$\begin{align}
z\mathcal L_\xi g_{za} &=\xi^{(0)b}D_b^{(0)}(zg_{za})+(zg_{zb})D_a^{(0)}\xi^{(0)b} +\frac{1}{z}g^{(0)}_{ab}\partial_z\Delta\xi^b +z\xi^{(1)z}\partial_z(zg_{za})+D_a^{(0)}\xi^{(1)z}+O(z^2).
\end{align}$$

Preservation of the differentiated (F.13) falloffs implies that $\partial_z\Delta\xi^a/z$ has a boundary value with remainder $o(z^s)+O(z^2)$. Integration from zero yields $\Delta\xi^a/z^2=\xi^{(2)a}+o(z^s)+O(z^2)$ and $\partial_z(\Delta\xi^a/z^2)=o(z^{s-1})+O(z)$. In particular, all the preceding variation integrals exist with $\delta=\mathcal L_\xi$.

We compute the end term $\alpha_\xi$ at one Cauchy surface. First use the representative (3.5) for the action. The change of its cap and cut terms enters at the endpoint. With the orientations of (F.41)–(F.42), write $\varepsilon^{(0)}_{ax}\mathrm{d}x$ for the pullback of the contracted boundary volume form. The exact radial split is

$$\begin{align}
\int_{\Sigma_\epsilon}\xi\cdot L &=\int_{\Sigma_{z_0}}\xi\cdot L -\int_{\partial\Sigma}\left(\int_\epsilon^{z_0}\mathrm{d}z(\xi\cdot L)_{zx}\right)\mathrm{d}x .
\end{align}$$

The $zx$ component uses only $\xi^a$. Multiplying the bulk action integrand computed above by $\xi^a$ gives $\xi^{(0)a}$ times that expression and the additional term $-4\Delta\xi^a/z^3$ through the order required in the radial integral. All other terms proportional to $\Delta\xi^a$ are $O(z)$. To carry out (F.43)–(F.46), denote the following explicitly integrated endpoint by $P^a(z)$,

$$\begin{align}
P^a(z)={}&\left[\frac{2}{z^2}-2\left(g_{zz}-\frac{1}{z^2}\right) -g^{(0)bc}\left(g_{bc}-\frac{g^{(0)}_{bc}}{z^2}\right) -zg^{(0)bc}\partial_z\left(g_{bc}-\frac{g^{(0)}_{bc}}{z^2}\right)\right.\\
&\left.+2zg^{(0)bc}D^{(0)}_bg_{zc} +2z^2g^{(0)bc}g_{zb}g_{zc} +\log z\left(R^{(0)}-2zg^{(0)bc}D^{(0)}_bg_{zc}\right)\right]\xi^{(0)a} -4\log z\frac{\Delta\xi^a}{z^2}.
\end{align}$$

In fact $-4\Delta\xi^a/z^3=-4\partial_z(\log z\Delta\xi^a/z^2)+4\log z\partial_z(\Delta\xi^a/z^2)$. The integration by parts of $2zg^{(0)bc}D_b^{(0)}\partial_zg_{zc}$ is the one in (F.6). Using both identities gives

$$\begin{align}
16\pi G\int_{\Sigma_\epsilon}\xi\cdot L ={}&16\pi G\int_{\Sigma_{z_0}}\xi\cdot L +\int_{\partial\Sigma}\big(P^a(\epsilon)-P^a(z_0)\big)\varepsilon^{(0)}_{ax}\mathrm{d}x\\
&-\int_{\partial\Sigma}\left[\int_\epsilon^{z_0}\mathrm{d}z\left( 2\log z g^{(0)bc}D_b^{(0)}\partial_z(zg_{zc})\xi^{(0)a} +4\log z\partial_z\frac{\Delta\xi^a}{z^2}+H_4^a\right)\right]\varepsilon^{(0)}_{ax}\mathrm{d}x .
\end{align}$$

The equality defines the remainder $H_4^a$. It is $O(z)$ since the remainder in the scalar action integrand is $O(z)$, $\Delta\xi^a=O(z^2)$, and the terms after $-4/z^3$ in that integrand are $O(z^{-1})$.

For the companion cut term insert $n_\mu\xi^\mu=-\xi^z/\sqrt{g^{zz}}$ in $(K^\Gamma-1)\gamma^\mu_{~\nu}\xi^\nu-D^\mu(n_\nu\xi^\nu)$ in (3.35). The tangential components of the projected vector are $\xi^a+\gamma^{ab}g_{zb}\xi^z$. The nonlogarithmic terms in $16\pi G\mu_\xi$ at the cut thus give the nonlogarithmic part of $P^a$ and $2\Delta\xi^a/z^2+2g^{(0)ab}D_b^{(0)}\xi^{(1)z}+2zg^{(0)ab}g_{zb}\xi^{(1)z}$. For the logarithmic terms substitute $\delta g=\mathcal L_\xi g$ in the second line of (3.35). The terms involving $D^{(0)}\xi^{(0)}$ and tangential products $zg_{za}\xi^{(0)b}$ contain the divergence of the antisymmetric tensor

$$\begin{align}
g^{(0)bc}D_c^{(0)}\xi^{(0)a}-g^{(0)ac}D_c^{(0)}\xi^{(0)b} +2zg^{(0)bc}g_{zc}\xi^{(0)a}-2zg^{(0)ac}g_{zc}\xi^{(0)b}.
\end{align}$$

In two dimensions its divergence contracted with the boundary volume form is an exact one-form, whose integral on the closed cut vanishes. The Ricci commutator gives $R^{(0)}\xi^{(0)a}$ since $R^{(0)}_{ab}=g^{(0)}_{ab}R^{(0)}/2$. The remaining logarithmic coefficient in $16\pi G\int\mu_\xi$ is

$$\begin{align}
 (R^{(0)}-2zg^{(0)bc}D_b^{(0)}g_{zc})\xi^{(0)a} -\frac{2}{z}\partial_z\Delta\xi^a -2zg^{(0)ab}\partial_z(zg_{zb})\xi^{(1)z}.
\end{align}$$

Subtracting this cut integral from the cap integral cancels $P^a(\epsilon)$ through the divergent orders. More explicitly the lower-end coefficient left in their difference is

$$\begin{align}
&-2\frac{\Delta\xi^a}{z^2}-2g^{(0)ab}D_b^{(0)}\xi^{(1)z} -2zg^{(0)ab}g_{zb}\xi^{(1)z}\\
&+\log z\left[2z\partial_z\frac{\Delta\xi^a}{z^2} +2zg^{(0)ab}\partial_z(zg_{zb})\xi^{(1)z}\right]+O(z^2|\log z|).
\end{align}$$

Here $2\partial_z\Delta\xi^a/z-4\Delta\xi^a/z^2=2z\partial_z(\Delta\xi^a/z^2)$. The differentiated (F.10) and (F.49) bounds make the second line tend to zero. Taking the limit as in (F.48)–(F.51), we obtain the end term for (3.5),

$$\begin{align}
16\pi G\alpha^{(3.5)}_\xi(\Sigma) ={}&16\pi G\int_{\Sigma_{z_0}}\xi\cdot L -\int_{\partial\Sigma}P^a(z_0)\varepsilon^{(0)}_{ax}\mathrm{d}x\\
&-2\int_{\partial\Sigma} \left(\xi^{(2)a}+g^{(0)ab}D_b^{(0)}\xi^{(1)z} +g^{(0)ab}g^{(-1)}_{zb}\xi^{(1)z}\right)\varepsilon^{(0)}_{ax}\mathrm{d}x\\
&-\int_{\partial\Sigma}\left[\int_0^{z_0}\mathrm{d}z\left( 2\log z g^{(0)bc}D_b^{(0)}\partial_z(zg_{zc})\xi^{(0)a} +4\log z\partial_z\frac{\Delta\xi^a}{z^2}+H_4^a\right)\right]\varepsilon^{(0)}_{ax}\mathrm{d}x .
\end{align}$$

The tail is $o(\epsilon^s|\log\epsilon|)+O(\epsilon^2|\log\epsilon|)$.

To pass to the modified action, subtract (3.4) from the regularized coordinate action used here. The difference is $B_{\Sigma_{f,\epsilon}}-B_{\Sigma_{i,\epsilon}}$, where the wall divergence in (3.4) has been integrated on the cylinder,

$$\begin{align}
8\pi G B_{\Sigma_\epsilon}={}&-\int_{\Sigma_\epsilon}\mathrm{d}^2x\sqrt\sigma K^\Sigma +\int_{\partial\Sigma_\epsilon}\mathrm{d}x\sqrt h (\eta-\log\epsilon K^H-\epsilon\log\epsilon\tau^{(1)a}g_{za}).
\end{align}$$

At the future cut the outward directed line element in the timelike cylinder is $-\tau^{(1)}_a\sqrt h\mathrm{d}x$, fixing the last sign. In the cap integral the term $u^{(0)a}g_{za}$ integrates by parts according to

$$\begin{align}
\int_\epsilon^{z_0}\mathrm{d}z g_{za} &=\left[\log z(zg_{za})\right]_\epsilon^{z_0} -\int_\epsilon^{z_0}\mathrm{d}z\log z\partial_z(zg_{za}).
\end{align}$$

At $\epsilon$, the three cap endpoints are $\sqrt{h^{(0)}}[K^{(0)}\log\epsilon
+u^{(0)a}\epsilon g_{za}\log\epsilon-u^{(0)a}\epsilon g_{za}]$.
The three terms in the cut integral give their opposites, up to $O(\epsilon^2|\log\epsilon|)$. Thus the limiting $B_\Sigma$ equals

$$\begin{align}
8\pi G B_\Sigma ={}&-\int_{\Sigma_{z_0}}\mathrm{d}^2x\sqrt\sigma K^\Sigma +\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\left[ u^{(0)a}zg_{za}-(K^{(0)}+u^{(0)a}zg_{za})\log z\right]_{z=z_0}\\
&+\int_{\partial\Sigma}\mathrm{d}x\int_0^{z_0}\mathrm{d}z \left(\sqrt{h^{(0)}}u^{(0)a}\log z\partial_z(zg_{za})-r_\Sigma\right).
\end{align}$$

Here $r_\Sigma$ is the difference between $\sqrt\sigma K^\Sigma$ and $\sqrt{h^{(0)}}[K^{(0)}/z+u^{(0)a}g_{za}-u^{(0)a}\partial_z(zg_{za})]$, of order $O(z)$ by the cap computation. Differentiating the first radial term replaces $\sqrt{h^{(0)}}u^{(0)a}$ by its finite variation or replaces $zg_{za}$ by $z\mathcal L_\xi g_{za}$. Both radial derivatives obey $o(z^{s-1})$ under the differentiated falloffs. The varied remainder is $O(z)$. Hence the end term in (4.14) is

$$\begin{align}
\alpha_\xi(\Sigma)&=\alpha^{(3.5)}_\xi(\Sigma)+X_\xi\cdot\delta B_\Sigma .
\end{align}$$

For the wall term (F.52), the Gauss expression in (3.33) and (4.15) contains

$$\begin{align}
(K^\Gamma)^2-K^{\Gamma a}_{~b}K^{\Gamma b}_{~a}-2K^\Gamma+2 &=2\det(K^{\Gamma a}_{~b}-\delta^a_{~b}).
\end{align}$$

This identity follows by expanding the determinant of a two-dimensional matrix. Each entry of $K^{\Gamma a}_{~b}-\delta^a_{~b}$ is $O(z^2)$. Multiplying the determinant by $\sqrt{-\gamma}=z^{-2}\sqrt{-g^{(0)}}(1+O(z^2))$ gives $O(z^2)$. The intrinsic curvature gives $\sqrt{-\gamma}\widetilde R=\sqrt{-g^{(0)}}R^{(0)}+O(z^2)$, and $n_\mu\xi^\mu=-\xi^{(1)z}+O(z^2)$. Their product yields (F.53). For an asymptotic symmetry (3.30)–(3.31), $D^{(0)}_a\xi^{(0)}_b+D^{(0)}_b\xi^{(0)}_a=g^{(0)}_{ab}D_c^{(0)}\xi^{(0)c}$ and $\xi^{(1)z}=D^{(0)}_a\xi^{(0)a}/2$. Accordingly

$$\begin{align}
\beta_\xi(\Gamma) &=-\frac{1}{16\pi G}\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}R^{(0)}\xi^{(1)z} =-\frac{1}{32\pi G}\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}}R^{(0)}D_a^{(0)}\xi^{(0)a},\\
X_\xi\cdot\delta S&=\alpha_\xi(\Sigma_f)-\alpha_\xi(\Sigma_i)+\beta_\xi(\Gamma).
\end{align}$$

The second expression for $\beta_\xi$ uses the symmetry condition. It is fixed on the configuration space for fixed $g^{(0)}$ and fixed generator.

Finally the potential of (3.5) acquires $\delta B_\Sigma$ as well. This follows already at finite cutoff by varying the difference of the two actions. The bulk and wall variations coincide, and the variations on the two caps can be supported independently. The two copies of $X_\xi\cdot\delta B_\Sigma$ cancel in $H_\xi=X_\xi\cdot\theta_\Sigma-\alpha_\xi(\Sigma)$. In the Einstein potential, integrate by parts the second derivatives of $\xi$ as in (3.43). This gives

$$\begin{align}
Q_\xi &=\frac{1}{32\pi G}(\nabla^\nu\xi^\mu-\nabla^\mu\xi^\nu) \varepsilon_{\mu\nu\rho}\mathrm{d}x^\rho,\\
X_\xi\cdot\Theta-\xi\cdot L &=\mathrm{d}Q_\xi-\widetilde E^{\mu\nu}\xi_\nu \varepsilon_{\mu\rho\lambda}\mathrm{d}x^\rho\wedge\mathrm{d}x^\lambda,\\
\widetilde E^{\mu\nu} &=\frac{1}{16\pi G}\left[-R^{\mu\nu}+\left(\frac{R}{2}+1\right)g^{\mu\nu}\right].
\end{align}$$

The commutator of derivatives on $\xi$ gives the Ricci term on the second line. The exact corner in (3.42) combines $Q_\xi-X_\xi\cdot C_1+\mu_{\xi,1}$. In $\mu_{\xi,1}$ the derivative of $n\cdot\xi$ cancels the normal derivative terms in the other two pieces, leaving the tangential contraction $-\gamma^{\mu\nu}T_{\nu\rho}\xi^\rho\varepsilon^{(\Gamma_z)}_{\mu x}\mathrm{d}x/(2\pi)$. The second pieces satisfy $X_\xi\cdot C_2=\mu_{\xi,2}$ identically by (3.35)–(3.36). Thus (3.45) gives one constraint integral and one cut integral.

In ordinary coordinates let $w^i=\sigma^i{}_{\mu}\xi^\mu$ denote the component tangent to $\Sigma$, $v^a=\gamma^a{}_{\mu}\xi^\mu$ the component tangent to $\Gamma_z$, and $\nabla^\Sigma$ the intrinsic cap connection. In the bulk integral the pullback of the contracted volume form to the cap gives $-\tau_\mu\sqrt\sigma$. The Gauss and Codazzi contractions with the future normal give

$$\begin{align}
(G_{\mu\nu}-g_{\mu\nu})\tau^\mu\tau^\nu &=\frac{1}{2}\left[R^\Sigma+(K^\Sigma)^2-K^{\Sigma ij}K^\Sigma_{ij}+2\right],\\
(G_{\mu\nu}-g_{\mu\nu})\tau^\mu\sigma^\nu{}_{j} &=\nabla^\Sigma_i K^{\Sigma i}_{~j}-\nabla^\Sigma_jK^\Sigma .
\end{align}$$

Here $G_{\mu\nu}=R_{\mu\nu}-Rg_{\mu\nu}/2$. Decomposing $\xi^\mu=w^\mu-(\tau\cdot\xi)\tau^\mu$ in the constraint term gives the coordinate form of the charge before imposing the field equations,

$$\begin{align}
16\pi G H_\xi =\lim_{\epsilon\to0}\bigg\{ &\int_{\Sigma_\epsilon}\mathrm{d}^2x\sqrt\sigma \Big[(\tau\cdot\xi)\big(R^\Sigma+(K^\Sigma)^2-K^{\Sigma ij}K^\Sigma_{ij}+2\big)\\
&{}-2w^j\big(\nabla^\Sigma_i K^{\Sigma i}_{~j}-\nabla^\Sigma_jK^\Sigma\big)\Big]\\
&{}-2\int_{\partial\Sigma_\epsilon}\mathrm{d}x\sqrt h\tau^{(1)a}
\big(K^\Gamma_{ab}-K^\Gamma\gamma_{ab}+\gamma_{ab}\big)v^b\bigg\}.
\end{align}$$

The same signs follow by inserting $\mathcal L_\xi g_{ij}=\nabla^\Sigma_iw_j+\nabla^\Sigma_jw_i-2(\tau\cdot\xi)K^\Sigma_{ij}$ in the cap potential. Integrating the first two derivatives gives the term with $w^j$ above and the endpoint $2\sqrt h n^{(1)i}(K^\Sigma_{ij}-K^\Sigma\sigma_{ij})w^j$. Thus the end functional for the modified action can also be written entirely in the variables of (4.15),

$$\begin{align}
16\pi G\alpha_\xi(\Sigma)=\lim_{\epsilon\to0}\bigg\{ &-\int_{\Sigma_\epsilon}\mathrm{d}^2x\sqrt\sigma(\tau\cdot\xi) \left[R^\Sigma+K^{\Sigma ij}K^\Sigma_{ij}-(K^\Sigma)^2+2\right]\\
&{}+2\int_{\partial\Sigma_\epsilon}\mathrm{d}x\sqrt h \left[n^{(1)i}(K^\Sigma_{ij}-K^\Sigma\sigma_{ij})w^j +\tau^{(1)a}(K^\Gamma_{ab}-K^\Gamma\gamma_{ab}+\gamma_{ab})v^b\right]\\
&{}+2\int_{\partial\Sigma_\epsilon}\mathrm{d}x\eta X_\xi\cdot\delta\sqrt h\bigg\}.
\end{align}$$

In $X_\xi\cdot\theta-\alpha_\xi$ both the $n^{(1)i}$ and the $\eta$ endpoints cancel at the same cut.

For the constraint integral, (E.5)–(E.6) imply $16\pi G\widetilde E_{zz}=O(1)$ and $16\pi G\widetilde E_{za}=O(z)$ after the terms $-2g_{zz}$ and $-2g_{za}$ cancel in the Einstein combination. In the $ab$ entry the terms proportional to $R^{(0)}$, $g_{zz}-z^{-2}$ and the trace of $g_{cd}-z^{-2}g^{(0)}_{cd}$ cancel between $-R_{ab}$ and $(R/2+1)g_{ab}$. The terms left through order one contain $z\partial_z(g_{cd}-z^{-2}g^{(0)}_{cd})$, $z^2\partial_z^2(g_{cd}-z^{-2}g^{(0)}_{cd})$, $z\partial_z(g_{zz}-z^{-2})$, $zD^{(0)}_c\partial_z(zg_{zd})$ or $z^2g_{zc}\partial_z(zg_{zd})$. Hence $16\pi G\widetilde E_{ab}=o(z^s)+O(z^2)$. The cap integrand is proportional to $\sqrt\sigma\tau^\mu\widetilde E_{\mu\nu}\xi^\nu$. Since $\tau^z=O(z^2)$, $\tau^a=O(z)$, $\sqrt\sigma=O(z^{-2})$, $\xi^z=O(z)$ and $\xi^a=O(1)$, the $zz$ and mixed terms are each $O(z)$ and the $ab$ term is $o(z^{s-1})+O(z)$. This proves convergence off shell. On shell this integral vanishes.

On the cut the product $\sqrt h\tau^{(1)a}$ tends to $\sqrt{h^{(0)}}u^{(0)a}$, and $\xi^b+\gamma^{bc}g_{zc}\xi^z$ tends to $\xi^{(0)b}$. Inserting the displayed expansion of $4GT_{ab}$ gives in ordinary coordinates

$$\begin{align}
H_\xi\big|_{\widetilde{\mathcal P}} &=-\frac{1}{8\pi G}\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}u^{(0)a}\xi^{(0)b} \lim_{z\to0}[K^\Gamma_{ab}-(K^\Gamma-1)\gamma_{ab}]\\
 &=-\frac{1}{2\pi}\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}u^{(0)a}\xi^{(0)b}T^{(0)}_{ab}.
\end{align}$$

The $+\gamma_{ab}$ in the cut tensor follows from the variation of the wall area counterterm and agrees with (3.19), (3.48) and (3.50). The minus sign on this particular term as printed inside the parentheses in (4.19) would leave $-2z^{-2}g^{(0)}_{ab}$ in the lower-index tensor. For global AdS, take $g_{tt}=-(1+r^2)$, $g_{rr}=1/(1+r^2)$ and $g_{\phi\phi}=r^2$, with $\phi$ of period $2\pi$. The outward normal has $n^r=\sqrt{1+r^2}$. The $tt$ component of the corrected bracket is $(1+r^2)(\sqrt{1+r^2}/r-1)$, which tends to $1/2$. Equation (3.50) then gives $H_{\partial_t}=-1/(8G)$.

With the same uniform bounds, one allowed field variation of the cut integral is finite. For $\delta\xi=0$, on shell (2.29) identifies it with $-X_\xi\cdot\widetilde\omega_\Sigma$. Applying a second allowed symmetry gives a finite charge bracket. For a field-dependent label the variation holding the generator fixed is $\delta H_\xi-H_{\delta\xi}$, since the charge is linear in $\xi$. A varying bulk extension with fixed $\xi^{(0)a}$ gives $H_{\delta\xi}=0$ on shell.

The time dependence supplies a further sign check. On shell the wall Gauss equation gives $\widetilde R=-2+(K^\Gamma)^2-K^{\Gamma a}_{~b}K^{\Gamma b}_{~a}$. Expanding $\det K^{\Gamma a}_{~b}$ about the identity gives $K^\Gamma-2=\widetilde R/2-\det(K^{\Gamma a}_{~b}-\delta^a_{~b})$. Since $4G\gamma^{ab}T_{ab}=2-K^\Gamma$, division by $z^2$ yields $g^{(0)ab}T^{(0)}_{ab}=-R^{(0)}/(8G)$. The wall Codazzi equation gives $4GD^aT_{ab}=n^\mu R_{\mu b}=0$ for the tangent index $b$. Dividing by $z^2$ gives $g^{(0)ac}D^{(0)}_cT^{(0)}_{ab}=0$. With $\partial\Gamma=-\partial\Sigma_f+\partial\Sigma_i$ and the conformal Killing equation, (3.50) therefore gives

$$\begin{align}
H_\xi(\Sigma_f)-H_\xi(\Sigma_i) &=\frac{1}{2\pi}\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}} D^{(0)}_a(T^{(0)a}_{~b}\xi^{(0)b})\\
 &=\frac{1}{4\pi}\int_\Gamma\mathrm{d}^2x\sqrt{-g^{(0)}} g^{(0)ab}T^{(0)}_{ab}D^{(0)}_c\xi^{(0)c} =\beta_\xi(\Gamma).
\end{align}$$
