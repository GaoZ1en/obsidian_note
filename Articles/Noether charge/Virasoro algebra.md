here we follow the logic of the first section of [[Articles/Noether charge/Brackets|Brackets]]. we introduce the Virasoro generators

$$
\tag{1.1}
\begin{align}
L_{n} & =\frac{1}{2}Q_{A_{n}}+\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}-\frac{i}{2}Q_{D_{n}}+\frac{1}{16G}\delta_{n,0} \\
\bar{L}_{n} & =\frac{1}{2}Q_{A_{n}}-\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}+\frac{i}{2}Q_{D_{n}}+\frac{1}{16G}\delta_{n,0}
\end{align}
$$

we will verify that $\displaystyle{L_{n}}$ and $\displaystyle{\bar{L}_{n}}$ satisfy the Virasoro algebra

$$
\tag{1.2}
\begin{align}
\left\{L_{m},L_{n}\right\} & =-i(m-n)L_{m+n}-\frac{i}{8G}m(m^{2}-1)\delta_{m,-n} \\
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =-i(m-n)\bar{L}_{m+n}-\frac{i}{8G}m(m^{2}-1)\delta_{m,-n} \\
\left\{L_{m},\bar{L}_{n}\right\} & =0
\end{align}
$$

$$
\tag{1.4}
\begin{align}
\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{A_{n}}-\frac{1}{2}Q_{B_{n}}\right\} & =0 \\
\left\{\frac{1}{2}Q_{C_{m}}-\frac{1}{2}Q_{D_{m}}, \frac{1}{2}Q_{C_{n}}+\frac{1}{2}Q_{D_{n}}\right\} & =0 \\
\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{A_{n}}+\frac{1}{2}Q_{B_{n}}\right\} & =\frac{1}{4}(m-n)Q_{C_{m+n}}+\frac{1}{4}(m+n)Q_{C_{m-n}}-\frac{1}{4}(m-n)Q_{D_{m+n}}-\frac{1}{4}(m+n)Q_{D_{m-n}} \\
\left\{\frac{1}{2}Q_{A_{m}}-\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{A_{n}}-\frac{1}{2}Q_{B_{n}}\right\} & =\frac{1}{4}(m-n)Q_{C_{m+n}}+\frac{1}{4}(m+n)Q_{C_{m-n}}+\frac{1}{4}(m-n)Q_{D_{m+n}}+\frac{1}{4}(m+n)Q_{D_{m-n}} \\
\left\{\frac{1}{2}Q_{C_{m}}-\frac{1}{2}Q_{D_{m}}, \frac{1}{2}Q_{C_{n}}-\frac{1}{2}Q_{D_{n}}\right\} & =-\frac{1}{4}(m-n)Q_{C_{m+n}}+\frac{1}{4}(m+n)Q_{C_{m-n}}+\frac{1}{4}(m-n)Q_{D_{m+n}}-\frac{1}{4}(m+n)Q_{D_{m-n}} \\
\left\{\frac{1}{2}Q_{C_{m}}+\frac{1}{2}Q_{D_{m}}, \frac{1}{2}Q_{C_{n}}+\frac{1}{2}Q_{D_{n}}\right\} & =-\frac{1}{4}(m-n)Q_{C_{m+n}}+\frac{1}{4}(m+n)Q_{C_{m-n}}-\frac{1}{4}(m-n)Q_{D_{m+n}}+\frac{1}{4}(m+n)Q_{D_{m-n}} \\
\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{C_{n}}+\frac{1}{2}Q_{D_{n}}\right\} & =0 \\
\left\{\frac{1}{2}Q_{A_{m}}-\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{C_{n}}-\frac{1}{2}Q_{D_{n}}\right\} & =0 \\
\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{C_{n}}-\frac{1}{2}Q_{D_{n}}\right\} & =-\frac{1}{4}(m-n)Q_{A_{m+n}}+\frac{1}{4}(m+n)Q_{A_{m-n}}-\frac{1}{4}(m-n)Q_{B_{m+n}}+\frac{1}{4}(m+n)Q_{B_{m-n}} \\
 & +\frac{1}{16G}m^{3}(\delta_{m,n}-\delta_{m,-n}) \\
\left\{\frac{1}{2}Q_{A_{m}}-\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{C_{n}}+\frac{1}{2}Q_{D_{n}}\right\} & =-\frac{1}{4}(m-n)Q_{A_{m+n}}+\frac{1}{4}(m+n)Q_{A_{m-n}}+\frac{1}{4}(m-n)Q_{B_{m+n}}-\frac{1}{4}(m+n)Q_{B_{m-n}} \\
 & -\frac{1}{16G}m^{3}(\delta_{m,n}-\delta_{m,-n})
\end{align}
$$

then

$$
\tag{1.5}
\begin{align}
\left\{L_{m},L_{n}\right\} & =\frac{1}{2}(m-n)Q_{C_{m+n}}-\frac{1}{2}(m-n)Q_{D_{m+n}}-\frac{i}{2}(m-n)Q_{A_{m+n}}-\frac{i}{2}(m-n)Q_{B_{m+n}}-\frac{i}{8}m(m^{2}-1)\delta_{m,-n} \\
 & =-i(m-n)L_{m+n}-\frac{i}{8}m(m^{2}-1)\delta_{m,-n} \\
\left\{L_{m},\bar{L}_{n}\right\} & =0+0+0+0=0 \\
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =\frac{1}{2}(m-n)Q_{C_{m+n}}+\frac{1}{2}(m-n)Q_{D_{m+n}}-\frac{i}{2}(m-n)Q_{A_{m+n}}+\frac{i}{2}(m-n)Q_{B_{m+n}}-\frac{i}{8}m(m^{2}-1)\delta_{m,-n} \\
 & =-i(m-n)\bar{L}_{m+n}-\frac{i}{8}m(m^{2}-1)\delta_{m,-n}
\end{align}
$$

in another file, we present some topic of CFT for better understanding the above calculation.

## Weyl transformation

we all know that the conformal transformation can be viewed as a coordinate transformation together with a Weyl transformation. we start from a system in $\displaystyle{(z,\bar{z})}$ coordinates with metric

$$
\tag{2.1}
\begin{align}
\mathrm{d}s^{2}=\mathrm{d}z\mathrm{d}\bar{z}
\end{align}
$$

where $\displaystyle{T_{z \bar{z}}=0}$, and the only non-zero components of the stress tensor are $\displaystyle{T_{zz}(z)}$ (written as $\displaystyle{T(z)}$) and $\displaystyle{T_{\bar{z}\bar{z}}(\bar{z})}$ (written as $\displaystyle{\bar{T}(\bar{z})}$). We first take a coordinate transformation from $\displaystyle{(z,\bar{z})}$ coordinates to $\displaystyle{(w,\bar{w})}$ coordinates, the scalar and the stress tensor transforms as

$$
\tag{2.2}
\begin{align}
O^{(1)}(w,\bar{w}) & =O(z,\bar{z})|_{z=z(w),\bar{z}=\bar{z}(\bar{w})} \\
T^{(1)}_{ww}(w) & =T_{zz}(z) \left(\frac{\partial z}{\partial w}\right)^{2} \\
T^{(1)}_{w\bar{w}} & =0 \\
T^{(1)}_{\bar{w}\bar{w}}(\bar{w}) & =T_{\bar{z}\bar{z}}(\bar{z}) \left(\frac{\partial \bar{z}}{\partial \bar{w}}\right)^{2} \\
\end{align}
$$

then perform a Weyl transformation

$$
\tag{2.3}
\begin{align}
\mathrm{d}s^{(2)2}=e^{2\sigma}\mathrm{d}s^{(1)2}
\end{align}
$$

with

$$
\tag{2.4}
\begin{align}
\sigma=-\frac{1}{2}\log\left( \frac{\partial z}{\partial w} \frac{\partial \bar{z}}{\partial \bar{w}} \right)
\end{align}
$$

then

$$
\tag{3.5}
\begin{align}
O^{(2)}(w,\bar{w}) & =\left(\frac{\partial z}{\partial w}\right)^{h}\left(\frac{\partial \bar{z}}{\partial \bar{w}}\right)^{h}O^{(1)}(w,\bar{w}) \\
 & =\left(\frac{\partial z}{\partial w}\right)^{h}\left(\frac{\partial \bar{z}}{\partial \bar{w}}\right)^{h}O^{(1)}(z,\bar{z})|_{z=z(w),\bar{z}=\bar{z}(\bar{w})} \\
T^{(2)}(w,\bar{w}) & =T^{(1)}_{ww}(w)+\frac{c}{12}\left(\frac{\frac{\partial^{3}z}{\partial w^{3}}}{\frac{\partial z}{\partial w}}-\frac{3}{2} \frac{\left(\frac{\partial^{2}z}{\partial w^{2}}\right)^{2}}{\left(\frac{\partial z}{\partial w}\right)^{2}}\right) \\
 & =\left(\frac{\partial z}{\partial w}\right)^{2}T_{zz}(z)|_{z=z(w),\bar{z}=\bar{z}(\bar{w})}+\frac{c}{12}\left(\frac{\frac{\partial^{3}z}{\partial w^{3}}}{\frac{\partial z}{\partial w}}-\frac{3}{2} \frac{\left(\frac{\partial^{2}z}{\partial w^{2}}\right)^{2}}{\left(\frac{\partial z}{\partial w}\right)^{2}}\right) \\
T^{(2)}_{w\bar{w}} & =0 \\
T^{(2)}_{\bar{w}\bar{w}} & =\left(\frac{\partial \bar{z}}{\partial \bar{w}}\right)^{2}T_{\bar{z}\bar{z}}(\bar{z})|_{z=z(w),\bar{z}=\bar{z}(\bar{w})}+\frac{c}{12}\left(\frac{\frac{\partial^{3}\bar{z}}{\partial \bar{w}^{3}}}{\frac{\partial \bar{z}}{\partial \bar{w}}}-\frac{3}{2} \frac{\left(\frac{\partial^{2}\bar{z}}{\partial \bar{w}^{2}}\right)^{2}}{\left(\frac{\partial \bar{z}}{\partial \bar{w}}\right)^{2}}\right)
\end{align}
$$

## $\displaystyle{\mathrm{dS}_{2}}$ case

$\displaystyle{\mathrm{dS}_{2}}$ metric can be view as a conformal transformation of the flat metric

$$
\tag{3.1}
\begin{align}
\mathrm{d}s^{2}_{\mathrm{dS}_{2}} & =e^{2\sigma}\mathrm{d}s^{2}_{\mathrm{flat}} \\
\sigma & =-\log \cos t
\end{align}
$$

then we have

$$
\tag{3.2}
\begin{align}
T_{tt} & =-\sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n}+\frac{c}{12}\sec^{2}t \\
T_{t\phi} & =\sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n} \\
T_{\phi \phi} & =-\sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n}-\frac{c}{12}\sec^{2}t
\end{align}
$$

then use

$$
\tag{3.3}
\begin{align}
A_{n,a}=A_{-n,a} & =\cos nt\cos n\phi \left(\frac{\partial}{\partial t}\right)_{a}-\sin nt\sin n\phi \left(\frac{\partial}{\partial \phi}\right)_{a} \\
B_{n,a}=B_{-n,a} & =\sin nt\sin n\phi \left(\frac{\partial}{\partial t}\right)_{a}-\cos nt\cos n\phi \left(\frac{\partial}{\partial \phi} \right)_{a}\\
C_{n,a}=-C_{-n,a} & =\sin nt\cos n\phi \left(\frac{\partial}{\partial t}\right)_{a}+\cos nt\sin n\phi \left(\frac{\partial}{\partial \phi}\right)_{a} \\
D_{n,a}=-D_{-n,a} & =\cos nt\sin n\phi \left(\frac{\partial}{\partial t}\right)_{a}+\sin nt\cos n\phi \left(\frac{\partial}{\partial \phi}\right)_{a}
\end{align}
$$

$$
\tag{3.4}
\begin{align}
Q_{\xi}=-\frac{1}{2\pi}\int_{\partial \Sigma}\tau^{a}\xi^{b}T_{bc}\varepsilon_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

we have

$$
\tag{3.5}
\begin{align}
Q_{\xi} & =-\frac{1}{2\pi}\int_{\partial\Sigma}\mathrm{d}x\sqrt{ h }\tau^{a}\xi^{b}T_{ab} \\
 & =-\frac{1}{2\pi}\int^{2\pi}_{0}\mathrm{d}\phi \xi^{b}T_{tb} \\
 & =-\frac{1}{2\pi}\int^{2\pi}_{0}\mathrm{d\phi}(\xi^{t}T_{tt}+\xi^{\phi}T_{t\phi}) \\
\end{align}
$$

$$
\tag{3.5a}
\begin{align}
Q_{A_{m}} & =-\frac{1}{2\pi}\int^{2\pi}_{0}(\cos nt\cos n\phi T_{tt}-\sin nt\sin n\phi T_{t\phi}) \mathrm{d}\phi\\
 & =-\frac{1}{2\pi}\int^{2\pi}_{0}\left( \cos mt\cos m\phi\left( -\sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n}+\frac{c}{12}\sec^{2}t \right) \right. \\
 & \left.-\sin mt\sin m\phi\left(\sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n}\right)\right)\mathrm{d}\phi \\
 & =-\left(\cos mt\left(-\frac{1}{2}\sum_{n}e^{-i nt}L_{n}(\delta_{m,n}+\delta_{m,-n})\right)-\frac{1}{2}\sum_{n}e^{-in t}\bar{L}_{n}(\delta_{m,n}+\delta_{m,-n})+\frac{c}{12}\delta_{m,0}\sec^{2}t\right. \\
 & +\sin mt\left(\frac{i}{2}\sum_{n}e^{-int}L_{n}(\delta_{m,n}-\delta_{m,-n})+\frac{i}{2}\sum_{n}e^{-int}\bar{L}_{n}(\delta_{m,n}-\delta_{m,-n})\right) \\
 & =\frac{1}{4}(e^{imt}+e^{-imt})(e^{-imt}L_{m}+e^{imt}L_{-m}+e^{-imt}\bar{L}_{m}+e^{imt}\bar{L}_{-m})-\frac{c}{12}\delta_{m,0}\sec^{2}t \\
 & +\frac{1}{4}(e^{imt}-e^{-imt})(e^{-imt}L_{m}-e^{imt}L_{-m}+e^{-imt}\bar{L}_{m}-e^{imt}\bar{L}_{-m}) \\
 & =\frac{1}{2}L_{m}+\frac{1}{2}L_{-m}+\frac{1}{2}\bar{L}_{m}+\frac{1}{2}\bar{L}_{-m}-\frac{c}{12}\sec^{2}t\delta_{m,0}
\end{align}
$$

$$
\tag{3.5b}
\begin{align}
Q_{B_{m}} & =-\frac{1}{2\pi}\int^{2\pi}_{0}(\sin mt\sin m\phi T_{tt}-\cos mt\cos m\phi T_{t\phi}) \\
 & =-\frac{1}{2\pi}\int^{2\pi}_{0}\left(\sin mt\sin m\phi\left(-\sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n}+\frac{c}{12}\sec^{2}t\right)\right. \\
 & \left.-\cos mt\cos m\phi\left( \sum_{n}e^{in\phi-in t}L_{n}-\sum_{n}e^{-in\phi-int}\bar{L}_{n} \right)\right)\mathrm{d}\phi \\
 & =-\sin mt\left(-\frac{i}{2}\sum_{n}e^{-in t}L_{n}\left(\delta_{m,n}-\delta_{m,-n}\right)+\frac{i}{2}\sum_{n}e^{-int}\bar{L}_{n}(\delta_{m,n}-\delta_{m,-n})\right) \\
 & +\cos mt\left(\frac{1}{2}\sum_{n}e^{-in t}L_{n}(\delta_{m,n}+\delta_{m,-n})-\frac{1}{2}\sum_{n}e^{-int}\bar{L}_{n}(\delta_{m,n}+\delta_{m,-n})\right) \\
 & =\frac{1}{4}(e^{imt}-e^{-imt})(e^{-imt}L_{m}-e^{imt}L_{-m}-e^{-imt}\bar{L}_{m}+e^{imt}\bar{L}_{-m}) \\
 & +\frac{1}{4}(e^{imt}+e^{-imt})(e^{-imt}L_{m}+e^{imt}L_{-m}-e^{-imt}\bar{L}_{m}-e^{imt}\bar{L}_{-m}) \\
 & =\frac{1}{2}L_{m}+\frac{1}{2}L_{-m}-\frac{1}{2}\bar{L}_{m}-\frac{1}{2}\bar{L}_{-m}
\end{align}
$$

$$
\tag{3.5c\&d}
\begin{align}
Q_{C_{m}} & =-\frac{i}{2}L_{m}+\frac{i}{2}L_{-m}-\frac{i}{2}\bar{L}_{m}+\frac{i}{2}\bar{L}_{-m} \\
Q_{D_{m}} & =\frac{i}{2}L_{m}-\frac{i}{2}L_{-m}-\frac{i}{2}\bar{L}_{m}+\frac{i}{2}\bar{L}_{-m}
\end{align}
$$

here we use

$$
\tag{3.6}
\begin{align}
T_{tt} & =-\sum_{n}e^{in\phi-int}L_{n}-\sum_{n}e^{-in\phi-int}\bar{L}_{n}+\frac{c}{12}\sec^{2}t \\
T_{t\phi} & =\sum_{n}e^{in\phi-int}L_{n}-\sum_{n}e^{-in\phi-in t}\bar{L}_{n} \\
T_{\phi \phi} & =-\sum_{n}e^{in\phi-int}L_{n}-\sum_{n}e^{-in\phi-int}\bar{L}_{n}-\frac{c}{12}\sec^{2}t
\end{align}
$$

and

$$
\tag{3.7}
\begin{align}
\frac{1}{2\pi}\int^{2\pi}_{0}e^{i(m-n)\phi}\mathrm{d}\phi & =\delta_{m,n} \\
\implies \frac{1}{2\pi}\int^{2\pi}_{0}\cos m\phi e^{in\phi}\mathrm{d}\phi & =\frac{1}{2}(\delta_{m,n}+\delta_{m,-n}) \\
\frac{1}{2\pi}\int^{2\pi}_{0}\sin m\phi e^{in\phi}\mathrm{d}\phi & =\frac{i}{2}(\delta_{m,n}-\delta_{m,-n})
\end{align}
$$

define Virasoro modes

$$
\tag{3.8}
\begin{align}
L_{n} & =\frac{1}{2}Q_{A_{n}}+\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}-\frac{i}{2}Q_{D_{n}}+\frac{c}{24}\sec^{2}t\delta_{n,0} \\
\bar{L}_{n} & =\frac{1}{2}Q_{A_{n}}-\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}+\frac{i}{2}Q_{D_{n}}+\frac{c}{24}\sec^{2}t\delta_{n,0}
\end{align}
$$

we will verify that $\displaystyle{L_{n},\bar{L}_{n}}$ satisfy the Virasoro algebra

$$
\tag{3.9}
\begin{align}
\left\{L_{m},L_{n}\right\} & =-i(m-n)L_{m+n}-\frac{i}{8}m(m^{2}-1)\delta_{m+n,0} \\
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =-i(m-n)\bar{L}_{m+n}-\frac{i}{8}m(m^{2}-1)\delta_{m+n,0} \\
\left\{L_{m},\bar{L}_{n}\right\} & =0
\end{align}
$$

$$
\tag{3.10}
\begin{align}
\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{A_{n}}-\frac{1}{2}Q_{B_{n}}\right\} & =0 \\
\left\{\frac{1}{2}Q_{C_{m}}-\frac{1}{2}Q_{D_{n}}, \frac{1}{2}Q_{C_{n}}+\frac{1}{2}Q_{D_{n}}\right\} & =0 \\
\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{A_{n}}+\frac{1}{2}Q_{B_{n}}\right\} & =\frac{1}{4}(m-n)Q_{C_{m+n}}+\frac{1}{4}(m+n)Q_{C_{m-n}}-\frac{1}{4}(m-n)Q_{D_{m+n}}-\frac{1}{4}(m+n)Q_{D_{m-n}} \\
\left\{\frac{1}{2}Q_{A_{m}}-\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{A_{n}}-\frac{1}{2}Q_{B_{n}}\right\} & =\frac{1}{4}(m-n)Q_{C_{m+n}}+\frac{1}{4}(m+n)Q_{C_{m-n}}+\frac{1}{4}(m-n)Q_{D_{m+n}}+\frac{1}{4}(m+n)Q_{D_{m-n}} \\
\left\{\frac{1}{2}Q_{C_{m}}-\frac{1}{2}Q_{D_{m}}, \frac{1}{2}Q_{C_{n}}-\frac{1}{2}Q_{D_{n}}\right\} & =-\frac{1}{4}(m-n)Q_{C_{m+n}}+\frac{1}{4}(m+n)Q_{C_{m-n}}+\frac{1}{4}(m-n)Q_{D_{m+n}}-\frac{1}{4}(m+n)Q_{D_{m-n}} \\
\left\{\frac{1}{2}Q_{C_{m}}+\frac{1}{2}Q_{D_{m}}, \frac{1}{2}Q_{C_{n}}+\frac{1}{2}Q_{D_{n}}\right\} & =-\frac{1}{4}(m-n)Q_{C_{m+n}}+\frac{1}{4}(m+n)Q_{C_{m-n}}-\frac{1}{4}(m-n)Q_{D_{m+n}}+\frac{1}{4}(m+n)Q_{D_{m-n}} \\
\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{C_{n}}+\frac{1}{2}Q_{D_{n}}\right\} & =0 \\
\left\{\frac{1}{2}Q_{A_{m}}-\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{C_{n}}-\frac{1}{2}Q_{D_{n}}\right\} & =0 \\
\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{C_{n}}-\frac{1}{2}Q_{D_{n}}\right\} & =-\frac{1}{4}(m-n)Q_{A_{m+n}}+\frac{1}{4}(m+n)Q_{A_{m-n}}-\frac{1}{4}(m-n)Q_{B_{m+n}}+\frac{1}{4}(m+n)Q_{B_{m-n}} \\
 & +\frac{1}{16G}m\sec^{2}t(\delta_{m,n}-\delta_{m,-n})+\frac{1}{16G}m(m^{2}-1)(\delta_{m,n}-\delta_{m,-n}) \\
\left\{\frac{1}{2}Q_{A_{m}}-\frac{1}{2}Q_{B_{m}}, \frac{1}{2}Q_{C_{n}}+\frac{1}{2}Q_{D_{n}}\right\} & =-\frac{1}{4}(m-n)Q_{A_{m+n}}+\frac{1}{4}(m+n)Q_{A_{m-n}}+\frac{1}{4}(m-n)Q_{B_{m+n}}-\frac{1}{4}(m+n)Q_{B_{m-n}} \\
 & -\frac{1}{16G}m\sec^{2}t(\delta_{m,n}-\delta_{m,-n})-\frac{1}{16G}m(m^{2}-1)(\delta_{m,n}-\delta_{m,-n})
\end{align}
$$

here we use

$$
\tag{3.11}
\begin{align}
\left\{Q_{A_{m}},Q_{A_{n}}\right\} & =\frac{1}{2}(m-n)Q_{C_{m+n}}+\frac{1}{2}(m+n)Q_{C_{m-n}} \\
\left\{Q_{A_{m}},Q_{B_{n}}\right\} & =-\frac{1}{2}(m-n)Q_{D_{m+n}}-\frac{1}{2}(m+n)Q_{D_{m-n}} ,\\
\left\{Q_{A_{m}},Q_{C_{n}}\right\} & =-\frac{1}{2}(m-n)Q_{A_{m+n}}+\frac{1}{2}(m+n)Q_{A_{m-n}}+\frac{1}{8G}m\sec^{2}t(\delta_{m,n}-\delta_{m,-n})+\frac{1}{8G}m(m^{2}-1)(\delta_{m,n}-\delta_{m,-n}) \\
\left\{Q_{A_{m}},Q_{D_{n}}\right\} & =\frac{1}{2}(m-n)Q_{B_{m+n}}-\frac{1}{2}(m+n)Q_{B_{m-n}}\\
\left\{Q_{B_{m}},Q_{B_{n}}\right\} & =\frac{1}{2}(m-n)Q_{C_{m+n}}+\frac{1}{2}(m+n)Q_{C_{m-n}} \\
\left\{Q_{B_{m}},Q_{C_{n}}\right\} & =-\frac{1}{2}(m-n)Q_{B_{m+n}}+\frac{1}{2}(m+n)Q_{B_{m-n}}\\
\left\{Q_{B_{m}},Q_{D_{n}}\right\} & =\frac{1}{2}(m-n)Q_{A_{m+n}}-\frac{1}{2}(m+n)Q_{A_{m-n}}-\frac{1}{8G}m\sec^{2}t(\delta_{m,n}-\delta_{m,-n})-\frac{1}{8G}m(m^{2}-1)(\delta_{m,n}-\delta_{m,-n})\\
\left\{Q_{C_{m}},Q_{C_{n}}\right\} & =-\frac{1}{2}(m-n)Q_{C_{m+n}}+\frac{1}{2}(m+n)Q_{C_{m-n}} \\
\left\{Q_{C_{m}},Q_{D_{n}}\right\} & =-\frac{1}{2}(m-n)Q_{D_{m+n}}+\frac{1}{2}(m+n)Q_{D_{m-n}} \\
\left\{Q_{D_{m}},Q_{D_{n}}\right\} & =-\frac{1}{2}(m-n)Q_{C_{m+n}}+\frac{1}{2}(m+n)Q_{C_{m-n}}
\end{align}
$$

then

$$
\tag{3.11}
\begin{align}
\left\{L_{m},L_{n}\right\} & =\frac{1}{2}(m-n)Q_{C_{m+n}}-\frac{1}{2}(m-n)Q_{D_{m+n}}-\frac{i}{2}(m-n)Q_{A_{m+n}}-\frac{i}{2}(m-n)Q_{B_{m+n}}-\frac{i}{8G}m(m^{2}-1)\delta_{m,-n}-\frac{i}{8G}\left( 1-\frac{2G}{3}c \right)m\sec^{2}t\delta_{m,-n} \\
  & \overset{(c=3/(2G))}{=}-i(m-n)L_{m+n}-\frac{i}{8G}m(m^{2}-1)\delta_{m,-n} \\
\left\{L_{m},\bar{L}_{n}\right\} & =0+0+0+0+0=0 \\
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =\frac{1}{2}(m-n)Q_{C_{m+n}}+\frac{1}{2}(m-n)Q_{D_{m+n}}-\frac{i}{2}(m-n)Q_{A_{m+n}}+\frac{i}{2}(m-n)Q_{B_{m+n}}-\frac{i}{8G}m(m^{2}-1)\delta_{m,-n}-\frac{i}{8G}\left( 1-\frac{2G}{3}c \right)m\sec^{2}t\delta_{m,-n} \\
 & \overset{c=3/(2G)}{=}-i(m-n)\bar{L}_{m+n}-\frac{i}{8G}m(m^{2}-1)\delta_{m,-n}
\end{align}
$$
