here we follow the logic of the first section of [[Articles/Noether charge/Brackets|Brackets]]. we introduce the Virasoro generators

$$\tag{1.1}
\begin{align}
L_{n} & =\frac{1}{2}Q_{A_{n}}+\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}-\frac{i}{2}Q_{D_{n}}+\frac{1}{16G}\delta_{n,0} \\
\bar{L}_{n} & =\frac{1}{2}Q_{A_{n}}-\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}+\frac{i}{2}Q_{D_{n}}+\frac{1}{16G}\delta_{n,0}
\end{align}
$$

we will verify that $\displaystyle{L_{n}}$ and $\displaystyle{\bar{L}_{n}}$ satisfy the Virasoro algebra

$$\tag{1.2}
\begin{align}
\left\{L_{m},L_{n}\right\} & =-i(m-n)L_{m+n}+\frac{1}{8G}m(m^{2}-1)\delta_{m,-n} \\
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =-i(m-n)\bar{L}_{m+n}+\frac{1}{8G}m(m^{2}-1)\delta_{m,-n} \\
\left\{L_{m},\bar{L}_{n}\right\} & =0
\end{align}
$$

$$\tag{1.3}
\begin{align}
\left\{L_{m},L_{n}\right\} & =\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}+\frac{i}{2}Q_{C_{m}}-\frac{i}{2}Q_{D_{m}}+\frac{1}{16G}\delta_{n,0}, \frac{1}{2}Q_{A_{n}}+\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}-\frac{i}{2}Q_{D_{n}}+\frac{1}{16G}\delta_{n,0}\right\} \\
 & =\frac{1}{4}\left\{Q_{A_{m}},Q_{A_{n}}\right\}+\frac{1}{4}\left\{Q_{A_{m}},Q_{B_{n}}\right\}+\frac{i}{4}\left\{Q_{A_{m}},Q_{C_{n}}\right\}-\frac{i}{4}\left\{Q_{A_{m}},Q_{D_{n}}\right\} \\
 & +\frac{1}{4}\left\{Q_{B_{m}},Q_{A_{n}}\right\}+\frac{1}{4}\left\{Q_{B_{m}},Q_{B_{n}}\right\}+\frac{i}{4}\left\{Q_{B_{m}},Q_{C_{n}}\right\}-\frac{i}{4}\left\{Q_{B_{m}},Q_{D_{n}}\right\} \\
 & +\frac{i}{4}\left\{Q_{C_{m}},Q_{A_{n}}\right\}+\frac{i}{4}\left\{Q_{C_{m}},Q_{B_{n}}\right\}-\frac{1}{4}\left\{Q_{C_{m}},Q_{C_{n}}\right\}+\frac{1}{4}\left\{Q_{C_{m}},Q_{D_{n}}\right\} \\
 & -\frac{i}{4}\left\{Q_{D_{m}},Q_{A_{n}}\right\}-\frac{i}{4}\left\{Q_{D_{m}},Q_{B_{n}}\right\}+\frac{1}{4}\left\{Q_{D_{m}},Q_{C_{n}}\right\}-\frac{1}{4}\left\{Q_{D_{m}},Q_{D_{n}}\right\} \\
 & =\frac{1}{8}(m-n)Q_{A_{m+n}}+\frac{1}{8}(m-n)Q_{A_{m-n}}-\frac{1}{8}(m-n)Q_{B_{m+n}}-\frac{1}{8}(m+n)Q_{B_{m-n}} \\
 & -\frac{i}{8}(m-n)Q_{A_{m+n}}+\frac{i}{8}(m+n)Q_{A_{m-n}}+\frac{i}{32G}(\delta_{m,n}-\delta_{m,-n})-\frac{i}{8}(m-n)Q_{B_{m+n}}+\frac{i}{8}(m+n)Q_{B_{m-n}} \\
 & -\frac{1}{8}(m-n)Q_{D_{m+n}}-\frac{1}{8}(m+n)Q_{D_{m-n}}+\frac{1}{8}(m-n)Q_{C_{m+n}}+\frac{1}{8}(m+n)Q_{C_{m-n}} \\
 & -\frac{i}{8}(m-n)Q_{B_{m+n}}+\frac{i}{8}(m+n)Q_{B_{m-n}}-\frac{i}{8}(m-n)Q_{A_{m+n}}+\frac{i}{8}(m+n)Q_{A_{m-n}}+\frac{i}{32G}m^{3}(\delta_{m,n}-\delta_{m,-n}) \\
 & -\frac{i}{8}(m-n)Q_{A_{m+n}}-\frac{i}{8}(m+n)Q_{A_{m-n}}-\frac{i}{32G}m^{3}(\delta_{m,n}+\delta_{m,-n})-\frac{i}{8}(m-n)Q_{B_{m+n}}-\frac{i}{8}(m+n)Q_{B_{m-n}} \\
 & +\frac{1}{8}(m-n)Q_{C_{m+n}}-\frac{1}{8}(m+n)Q_{C_{m-n}}-\frac{1}{8}(m-n)Q_{D_{m+n}}+\frac{1}{8}(m+n)Q_{D_{m-n}} \\
 & -\frac{i}{8}(m-n)Q_{B_{m+n}}-\frac{i}{8}(m+n)Q_{B_{m-n}}-\frac{i}{8}(m-n)Q_{A_{m+n}}-\frac{i}{8}(m+n)Q_{A_{m-n}}-\frac{i}{32G}m^{3}(\delta_{m+n}+\delta_{m,-n}) \\
 & -\frac{1}{8}(m-n)Q_{D_{m+n}}+\frac{1}{8}(m+n)Q_{D_{m-n}}+\frac{1}{8}(m-n)Q_{C_{m+n}}-\frac{1}{8}(m-n)Q_{C_{m-n}} \\
 & =-i(m-n)L_{m+n}-\frac{i}{8}m(m^{2}-1)\delta_{m,-n}
\end{align}
$$

after a similar calculation, we have

$$\tag{1.4}
\begin{align}
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =-i(m-n)\bar{L}_{m+n}-\frac{i}{8}m(m^{2}-1)\delta_{m,-n} \\
\left\{L_{m},\bar{L}_{n}\right\} & =0
\end{align}
$$

here we present some topic of CFT for better understanding the above calculation.

## $\displaystyle{\mathrm{dS}_{2}}$ case

$\displaystyle{\mathrm{dS}_{2}}$ metric can be view as a conformal transformation of the flat metric

$$\tag{2.1}
\begin{align}
\mathrm{d}s^{2}_{\mathrm{dS}_{2}} & =e^{2\sigma}\mathrm{d}s^{2}_{\mathrm{flat}} \\
\sigma & =-\log \cos t
\end{align}
$$

then use


$$
\tag{2.1}
\begin{align}
A_{n,a}=A_{-n,a} & =\cos nt\cos n\phi \left(\frac{\partial}{\partial t}\right)_{a}-\sin nt\sin n\phi \left(\frac{\partial}{\partial \phi}\right)_{a} \\
B_{n,a}=B_{-n,a} & =\sin nt\sin n\phi \left(\frac{\partial}{\partial t}\right)_{a}-\cos nt\cos n\phi \left(\frac{\partial}{\partial \phi} \right)_{a}\\
C_{n,a}=-C_{-n,a} & =\sin nt\cos n\phi \left(\frac{\partial}{\partial t}\right)_{a}+\cos nt\sin n\phi \left(\frac{\partial}{\partial \phi}\right)_{a} \\
D_{n,a}=-D_{-n,a} & =\cos nt\sin n\phi \left(\frac{\partial}{\partial t}\right)_{a}+\sin nt\cos n\phi \left(\frac{\partial}{\partial \phi}\right)_{a}
\end{align}
$$

$$\tag{.}
\begin{align}
Q_{\xi}=-\frac{1}{2\pi}\int_{\partial \Sigma}\tau^{a}\xi^{b}T_{bc}\varepsilon_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

$$\tag{2.2}
\begin{align}
Q_{\xi} & =-\frac{1}{2\pi}\int_{\partial\Sigma}\mathrm{d}x\sqrt{ h }\tau^{a}\xi^{b}T_{ab} \\
 & =-\frac{1}{2\pi}\int^{2\pi}_{0}\mathrm{d}\phi \xi^{b}T_{tb} \\
 & =-\frac{1}{2\pi}\int^{2\pi}_{0}\mathrm{d\phi}(\xi^{t}T_{tt}+\xi^{\phi}T_{t\phi}) \\
\end{align}
$$

$$\tag{2.2a}
\begin{align}
Q_{A_{m}} & =-\frac{1}{2\pi}\int^{2\pi}_{0}(\cos nt\cos n\phi T_{tt}-\sin nt\sin n\phi T_{t\phi}) \mathrm{d}\phi\\
 & =-\frac{1}{2\pi}\int^{2\pi}_{0}\left( \cos mt\cos m\phi\left( -\sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n}+\frac{c}{12} \right) \right. \\
 & \left.-\sin mt\sin m\phi\left(\sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n}\right)\right)\mathrm{d}\phi \\
 & =-\left(\cos mt\left(-\frac{1}{2}\sum_{n}e^{-i nt}L_{n}(\delta_{m,n}+\delta_{m,-n})\right)-\frac{1}{2}\sum_{n}e^{-in t}\bar{L}_{n}(\delta_{m,n}+\delta_{m,-n})+\frac{c}{12}\delta_{m,0}\right. \\
 & +\sin mt\left(\frac{i}{2}\sum_{n}e^{-int}L_{n}(\delta_{m,n}-\delta_{m,-n})+\frac{i}{2}\sum_{n}e^{-int}\bar{L}_{n}(\delta_{m,n}-\delta_{m,-n})\right) \\
 & =\frac{1}{4}(e^{imt}+e^{-imt})(e^{-imt}L_{m}+e^{imt}L_{-m}+e^{-imt}\bar{L}_{m}+e^{imt}\bar{L}_{-m})-\frac{c}{12}\delta_{m,0} \\
 & +\frac{1}{4}(e^{imt}-e^{-imt})(e^{-imt}L_{m}-e^{imt}L_{-m}+e^{-imt}\bar{L}_{m}-e^{imt}\bar{L}_{-m}) \\
 & =\frac{1}{2}L_{m}+\frac{1}{2}L_{-m}+\frac{1}{2}\bar{L}_{m}+\frac{1}{2}\bar{L}_{m}-\frac{c}{12}\delta_{m,0}
\
\end{align}
$$

$$\tag{2.2b}
\begin{align}
Q_{B_{m}} & =-\frac{1}{2\pi}\int^{2\pi}_{0}(\sin mt\sin m\phi T_{tt}-\cos mt\cos m\phi T_{t\phi}) \\
 & =-\frac{1}{2\pi}\int^{2\pi}_{0}\left(\sin mt\sin m\phi\left(-\sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n}+\frac{c}{12}\right)\right. \\
 & \left.-\cos mt\cos m\phi\left( \sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-int}\bar{L_{n}} \right)\right)\mathrm{d}\phi \\
 & =-\sin mt\left(-\frac{i}{2}\sum_{n}e^{-in t}L_{n}\left(\delta_{m,n}-\delta_{m,-n}\right)-\frac{i}{2}\sum_{n}e^{-int}\bar{L}_{n}(\delta_{m,n}-\delta_{m,-n})\right) \\
 & +\cos mt\left(\frac{1}{2}\sum_{n}e^{-in t}L_{n}(\delta_{m,n}+\delta_{m,-n})-\frac{1}{2}\sum_{n}e^{-int}\bar{L}_{n}(\delta_{m,n}+\delta_{m,-n})\right) \\
 & =\frac{1}{4}(e^{imt}-e^{-imt})(e^{-imt}L_{m}-e^{imt}L_{-m}+e^{-imt}\bar{L}_{m}-e^{imt}\bar{L}_{-m}) \\
 & +\frac{1}{4}(e^{imt}-e^{-imt})
\end{align}
$$

other charges remain unchanged I think

here we use

$$\tag{2.3}
\begin{align}
T_{tt} & =-\sum_{n}e^{in\phi-int}L_{n}-\sum_{n}e^{-in\phi-int}\bar{L}_{n}+\frac{c}{12} \\
T_{t\phi} & =\sum_{n}e^{in\phi-int}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n} \\
T_{\phi \phi} & =-\sum_{n}e^{in\phi-int}L_{n}-\sum_{n}e^{-in\phi-int}\bar{L}_{n}+\frac{c}{12}
\end{align}
$$

and

$$\tag{2.4}
\begin{align}
\frac{1}{2\pi}\int^{2\pi}_{0}e^{i(m-n)\phi}\mathrm{d}\phi & =\delta_{m,n} \\
\implies \frac{1}{2\pi}\int^{2\pi}_{0}\cos m\phi e^{in\phi}\mathrm{d}\phi & =\frac{1}{2}(\delta_{m,n}+\delta_{m,-n}) \\
\frac{1}{2\pi}\int^{2\pi}_{0}\sin m\phi e^{in\phi}\mathrm{d}\phi & =\frac{i}{2}(\delta_{m,n}-\delta_{m,-n})
\end{align}
$$
