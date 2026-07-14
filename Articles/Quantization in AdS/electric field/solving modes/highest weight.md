in [[Articles/Quantization in AdS/electric field/solving modes/Proca-Chern-Simons|Proca-Chern-Simons]] we have already known that the normal modes form $\displaystyle{(0,0)}$(trivial vacuum), $\displaystyle{(1,0)}$, $\displaystyle{(0,1)}$ and $\displaystyle{(1,1)}$ representation of $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$ of global $\displaystyle{\mathrm{AdS}_{3}}$. in this file we will derive the explicit form of these states, at least the highest weight modes $\displaystyle{\psi _{(1,0)}^{\mu}}$, $\displaystyle{\psi _{(0,1)}^{\mu}}$ and $\displaystyle{\psi _{(1,1)}^{\mu}}$. normalization constants are ommited here for simplicity

$$\begin{align}
\mathcal{C}A^{\mu} & =\mathcal{\bar{C}}A^{\mu}=0\implies (h,\bar{h})=(0,0),(1,0),(0,1),(1,1)
\end{align}$$

## solving the primaries

we first write down the Killing vectors

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

and the action of $\displaystyle{\mathcal{L}_{\xi}}$'s on a general vector field $\displaystyle{\psi ^{\mu}}$ with ansatz

$$\begin{align}
\psi ^{\mu} & =e^{-i\omega t}e^{im\phi}f^{\mu}
\end{align}$$

as

$$\begin{align}
\mathcal{L}_{\xi _{1}}\psi^{t} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}+\frac{(\omega+m+1)r^{2}+m}{r(1+r^{2})}f^{t}-\frac{i}{(1+r^{2})^{2}}f^{r}-\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\xi _{1}}\psi^{r} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(-if^{t}+\partial _{r}f^{r}+\frac{(\omega+m-1)r^{2}+m}{r(1+r^{2})}f^{r}+if^{\phi}\right) \\
\mathcal{L}_{\xi _{1}}\psi^{\phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left( -\frac{1}{r}f^{t}-\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}+\frac{(\omega+m+1)r^{2}+(m+1)}{r(1+r^{2})}f^{\phi}(r) \right) \\
\mathcal{L}_{\bar{\xi}_{1}}\psi^{t} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}+\frac{(\omega-m+1)r^{2}-m}{r(1+r^{2})}f^{t}-\frac{i}{(1+r^{2})^{2}}f^{r}+\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}\psi^{r} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-if^{t}+\partial _{r}f^{r}+\frac{(\omega-m-1)r^{2}-m}{r(1+r^{2})}f^{r}-if^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}\psi^{\phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{t}+\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}+\frac{(\omega-m+1)r^{2}-(m-1)}{r(1+r^{2})}f^{\phi}\right)
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi_{0}}\psi^{\mu} & =-\frac{i}{2}(\omega+m)\psi^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}\psi^{\mu} & =-\frac{i}{2}(\omega-m)\psi^{\mu}
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi _{-1}}\psi ^{t} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}-\frac{(\omega+m-1)r^{2}+m}{r(1+r^{2})}f^{t}+\frac{i}{(1+r^{2})^{2}}f^{r}-\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\xi _{-1}}\psi ^{r} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(if^{t}+\partial _{r}f^{r}-\frac{(\omega+m+1)r^{2}+m}{r(1+r^{2})}f^{r}-if^{\phi}\right) \\
\mathcal{L}_{\xi _{-1}}\psi ^{\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-\frac{1}{r}f^{t}+\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}-\frac{(\omega+m-1)r^{2}+(m-1)}{r(1+r^{2})}f^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}\psi ^{t} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}-\frac{(\omega-m-1)r^{2}-m}{r(1+r^{2})}f^{t}+\frac{i}{(1+r^{2})^{2}}f^{r}+\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}\psi ^{r} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(if^{t}+\partial _{r}f^{r}-\frac{(\omega-m+1)r^{2}-m}{r(1+r^{2})}f^{r}+if^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}\psi ^{\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{t}-\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}-\frac{(\omega-m-1)r^{2}-(m+1)}{r(1+r^{2})}f^{\phi}\right)
\end{align}$$

first we consider the $\displaystyle{(0,0)}$ sector. the highest weight conditions are

$$\begin{align}
\mathcal{L}_{\xi _{0}}\psi _{(0,0)}^{\mu} & =0 \\
\mathcal{L}_{\bar{\xi}_{0}}\psi _{(0,0)}^{\mu} & =0 \\
\mathcal{L}_{\xi _{1}}\psi _{(0,0)}^{\mu} & =0 \\
\mathcal{L}_{\bar{\xi}_{1}}\psi _{(0,0)}^{\mu} & =0
\end{align}$$

which leads to the trivial solution $\displaystyle{\psi _{(0,0)}^{\mu}=0}$

for $\displaystyle{(1,0)}$ sector, we have the following highest weight conditions:

$$\begin{align}
\mathcal{L}_{\xi _{0}}\psi _{(1,0)}^{\mu} & =-i\psi _{(1,0)}^{\mu} \\
\mathcal{L}_{\xi _{1}}\psi _{(1,0)}^{\mu} & =0 \\
\mathcal{L}_{\bar{\xi}_{0}}\psi _{(1,0)}^{\mu} & =0 \\
\mathcal{L}_{\bar{\xi}_{1}}\psi ^{\mu}_{(1,0)} & =0 \\
\end{align}$$

which leads to the solution

$$\begin{align}
\psi _{(1,0)}^{\mu} & =\frac{e^{-2it}}{1+r^{2}}\bar{\xi}_{1}^{\mu}
\end{align}$$

and its descendants can be generated by acting $\displaystyle{\mathcal{L}_{\xi _{-1}}}$ repeatedly

$$\begin{align}
\psi ^{\mu}_{n,(1,0)}=\mathcal{L}^{n}_{\xi _{-1}}\psi _{(1,0)}^{\mu}
\end{align}$$

they are related to large gauge transformations that do not vanish at infinity. so they play a role as topologically non-trivial vacuum configurations. the corresponding gauge parameter is

$$\begin{align}
\Lambda _{n,(1,0)} & =\mathcal{L}_{\xi _{-1}}^{n}\Lambda _{(1,0)} \\
\Lambda _{(1,0)} & =-\frac{i}{2} \frac{r}{(1+r^{2})^{1/2}}e^{-i(t-\phi)}
\end{align}$$

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

similarly, for $\displaystyle{(0,1)}$ sector, we only need to change $\displaystyle{t+\phi}$ to $\displaystyle{t-\phi}$ and $\displaystyle{t-\phi}$ to $\displaystyle{t+\phi}$ in the above solution, we have

$$\begin{align}
\psi _{(0,1)}^{\mu} & =\frac{e^{-2it}}{(1+r^{2})}\xi _{1}^{\mu}
\end{align}$$

the corresponding descendants and gauge parameters are

$$\begin{align}
\psi ^{\mu}_{\bar{n},(0,1)} & =\mathcal{L}^{\bar{n}}_{\bar{\xi}_{-1}}\psi _{(0,1)}^{\mu} \\
\Lambda _{\bar{n},(0,1)} & =\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\Lambda _{(0,1)} \\
\Lambda _{(0,1)} & =-\frac{i}{2} \frac{r}{(1+r^{2})^{1/2}}e^{-i(t+\phi)}
\end{align}$$

finally, for $\displaystyle{(1,1)}$ sector, we have the highest weight conditions:

$$\begin{align}
\mathcal{L}_{\xi _{0}}\psi _{(1,1)}^{\mu} & =-i\psi _{(1,1)}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}\psi _{(1,1)}^{\mu} & =-i\psi _{(1,1)}^{\mu} \\
\mathcal{L}_{\xi _{1}}\psi _{(1,1)}^{\mu} & =0 \\
\mathcal{L}_{\bar{\xi}_{1}}\psi _{(1,1)}^{\mu} & =0
\end{align}$$

which leads to the solution

$$\begin{align}
\psi _{(1,1)}^{t} & =\frac{C}{(1+r^{2})^{2}}e^{-2it} \\
\psi _{(1,1)}^{r} & =\frac{irC}{1+r^{2}} e^{-2it} \\
\psi _{(1,1)}^{\phi} & =0
\end{align}$$

and its descendants can be generated by acting $\displaystyle{\mathcal{L}_{\xi _{-1}}}$ and $\displaystyle{\mathcal{L}_{\bar{\xi}_{-1}}}$ repeatedly

$$\begin{align}
\psi ^{\mu}_{(k,\bar{k}),(1,1)} & \propto\mathcal{L}_{\xi _{-1}}^{k}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{k}}\psi _{(1,1)}^{\mu}
\end{align}$$

however, this is also pure gauge, since the corresponding gauge parameter is

$$\begin{align}
\Lambda _{(1,1)} & \propto\frac{e^{-2it}}{1+r^{2}}
\end{align}$$

> The propagating Maxwell modes are not represented by strictly highest-weight vector potentials. Instead, the highest-weight condition should be imposed on gauge equivalence classes, or equivalently on the gauge-invariant field strength. A strictly highest-weight potential in the (1,1) sector is pure gauge.

## quantization and partition function

*discussion*. the Hilbert space of this theory can be decomposed into $\displaystyle{(1,1)}$ excitations that acting on a sequence of $\displaystyle{(0,0)}$, $\displaystyle{(1,0)}$ and $\displaystyle{(0,1)}$ vacua. denote the $\displaystyle{(0,0)}$ vacuum as the 0-th level, the primary of $\displaystyle{(1,0)/(0,1)}$ as the 1/-1-st level, and the $\displaystyle{n}$-th descendant of $\displaystyle{(1,0)/(0,1)}$ as the $\displaystyle{n+1/-(n+1)}$-th level, then the full Hilbert space can be written as

$$\begin{align}
\mathcal{H} & =\bigoplus _{n=-\infty}^{\infty}\mathcal{H}_{n} \\
\mathcal{H}_{n} & =\prod _{k,\bar{k}} \frac{1}{\sqrt{ n_{k}!n_{\bar{k}}! }}(a^{\dagger}_{k,\bar{k}})^{n_{k}}\ket{\Omega _{n}}
\end{align}$$

here $\displaystyle{\ket{\Omega _{n}}}$ is the vacuum at level $\displaystyle{n}$, and $\displaystyle{a^{\dagger}_{k,\bar{k}}}$ is the creation operator of $\displaystyle{(1,1)}$ excitations with mode numbers $\displaystyle{(k,\bar{k})}$ acting on the vacuum $\displaystyle{\ket{\Omega _{n}}}$. the inner product between different levels vanishes, i.e., $\displaystyle{\braket{\Omega _{n}|\Omega _{m}}=0}$ for $\displaystyle{n\neq m}$, since they belong to different superselection sectors characterized by different boundary conditions at infinity. within each level, the inner product is defined as usual.

we write the mode expansion of the field operator as

$$\begin{align}
A^{\mu} & =\sum ^{\infty}_{n=-\infty}\sum ^{\infty}_{k,\bar{k}=0}a_{n,k,\bar{k}}\psi ^{\mu}_{(n,k,\bar{k})}+a^{\dagger}_{n,k,\bar{k}}\psi ^{*\mu} _{(n,k,\bar{k})} \\
\psi ^{\mu} _{(n,k,\bar{k})} & =\mathcal{L}_{\xi _{-1}}^{k}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{k}}\psi _{(1,1)}^{\mu}+\psi _{n}^{\mu} \\
\psi _{n} & =\begin{cases}
0 & n=0 \\
\mathcal{L}^{n}_{\xi _{-1}}\psi _{(1,0)} & n>0 \\
\mathcal{L}^{|n|}_{\bar{\xi}_{-1}}\psi _{(0,1)} & n<0
\end{cases}
\end{align}$$

the Noether charge associated with $\displaystyle{\xi _{0}}$ and $\displaystyle{\bar{\xi}_{0}}$ is given by

$$\begin{align}
H_{\xi_{0}} & =\sum ^{\infty}_{n=1} \sum ^{\infty}_{k,\bar{k}=0} (1+k+n)a^{\dagger}_{n,k,\bar{k}}a_{n,k,\bar{k}}+\sum ^{0}_{n=-\infty} \sum ^{\infty}_{k,\bar{k}=0} (1+k)a^{\dagger}_{n,k,\bar{k}}a_{n,k,\bar{k}} \\
H_{\bar{\xi}_{0}} & =\sum ^{\infty}_{n=0}\sum ^{\infty}_{k,\bar{k}=0}(1+\bar{k})a^{\dagger}_{n,k,\bar{k}}a_{n,k,\bar{k}}+\sum ^{-1}_{n=-\infty}\sum ^{\infty}_{k,\bar{k}=0}(1+\bar{k}+n)a^{\dagger}_{n,k,\bar{k}}a_{n,k,\bar{k}}
\end{align}$$

and the partition function at finite temperature $\displaystyle{\beta}$ and angular potential $\displaystyle{J}$ is

$$\begin{align}
Z[\beta,\Omega] & =\mathrm{Tr}e^{-\beta H+i\alpha J} \\
 & =\prod ^{\infty}_{\ell,\bar{\ell}=0} \frac{1-q^{\ell+1}\bar{q}^{\bar{\ell}+1}}{(1-q^{\ell+1}\bar{q}^{\bar{\ell}})(1-q^{\ell}\bar{q}^{\bar{\ell}+1})}
\end{align}$$

here $\displaystyle{q=e^{-\beta +i\alpha}}$ and $\displaystyle{\bar{q}=e^{-\beta -i\alpha}}$. this result is consistent with Xi Yin's result.

## equivariance condition

in the above discussion, we solve the highest weight conditions for $\displaystyle{(1,1)}$ branch

$$\begin{align}
\mathcal{L}_{\xi _{0}}\psi _{(1,1)}^{\mu} & =-i\psi _{(1,1)}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}\psi _{(1,1)}^{\mu} & =-i\psi _{(1,1)}^{\mu} \\
\mathcal{L}_{\xi _{1}}\psi _{(1,1)}^{\mu} & =0 \\
\mathcal{L}_{\bar{\xi}_{1}}\psi _{(1,1)}^{\mu} & =0
\end{align}$$

and only pure gauge modes are solved out. for a gauge field, the highest-weight condition must be imposed equivariantly on the gauge-equivalence class rather than on a chosen representative. therefore the raising generators are required to annihilate the potential only modulo a gauge transformation:

$$\begin{align}
\mathcal{L}_{\xi _{0}}\psi _{(1,1)}^{\mu} & =-i\psi _{(1,1)}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}\psi _{(1,1)}^{\mu} & =-i\psi _{(1,1)}^{\mu} \\
\mathcal{L}_{\xi _{1}}\psi _{(1,1)}^{\mu} & =\nabla ^{\mu}\Lambda _{\xi}\propto \psi _{(0,1)}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{1}}\psi _{(1,1)}^{\mu} & =\nabla ^{\mu}\Lambda _{\xi}'\propto \psi _{(1,0)}^{\mu}
\end{align}$$

the first two equations fix the Fourier labels to

$$\begin{align}
\omega & =2, & m & =0 .
\end{align}$$

in the covariant gauge representative, the condition $\nabla_\mu A^\mu=0$ is automatically satisfied by the $m=0$ ansatz below. the field equations reduce to

$$\begin{align}
f^r & =0, \\
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+\left(4+\frac{4}{1+r^{2}}\right)f^{\phi} & =0 .
\end{align}$$

the solution is

$$\begin{align}
f^{\phi}(r)& =\frac{C_1}{1+r^2}+ C_2\frac{-1+2r^2\log r}{2r^2(1+r^2)} .
\end{align}$$

the second solution is singular at the origin, so the regular normalizable mode is

$$\begin{align}
\psi_{(1,1)}^t & =0, &\psi_{(1,1)}^r & =0, &\psi_{(1,1)}^\phi & =\frac{C e^{-2it}}{1+r^2}.
\end{align}$$

the relaxed highest weight condition is also satisfied. one finds

$$\begin{align}
\mathcal{L}_{\xi_1}\psi_{(1,1)}^\mu& =\nabla^\mu\left(\frac{C}{2}\frac{r}{\sqrt{1+r^2}}e^{-i(t+\phi)}\right)\propto \psi _{(0,1)}^{\mu} \\
\mathcal{L}_{\bar{\xi}_1}\psi_{(1,1)}^\mu& =\nabla^\mu\left(-\frac{C}{2}\frac{r}{\sqrt{1+r^2}}e^{-i(t-\phi)}\right)\propto \psi _{(1,0)}^{\mu}
\end{align}$$

this mode is not pure gauge. equivalently, this mode can be written in terms of the Killing vectors as

$$\begin{align}
\psi_{(1,1)}^\mu& =C\frac{r e^{-3it}}{(1+r^2)^{3/2}}\left(e^{-i\phi}\bar{\xi}_1^\mu-e^{i\phi}\xi_1^\mu\right).
\end{align}$$

the normalization constant is determined by the symplectic form

$$\begin{align}
\omega[A,A^{*}] & =-i \\
\implies C & =\frac{1}{\sqrt{2\pi}},
\end{align}$$

and the descendants are given by

$$\begin{align}
\psi _{(1,1),n,\bar{n}}^{\mu} & =C_{n,\bar{n}}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\psi _{(1,1)}^{\mu} \\
\implies C_{n,\bar{n}}& =\frac{1}{\sqrt{n!(n+1)!\bar{n}!(\bar{n}+1)!}} .
\end{align}$$

here $\psi_{(1,1)}^\mu$ already includes the primary normalization $C=1/\sqrt{2\pi}$.

### modes summary for the $\displaystyle{(1,1)}$ branch

the normalized primary can be chosen as

$$\begin{align}
\psi_{(1,1)}^t & =0, &\psi_{(1,1)}^r & =0, &\psi_{(1,1)}^\phi& =\frac{1}{\sqrt{2\pi}}\frac{e^{-2it}}{1+r^2}.
\end{align}$$

equivalently,

$$\begin{align}
\psi_{(1,1)}^\mu& =\frac{1}{\sqrt{2\pi}}\frac{r e^{-3it}}{(1+r^2)^{3/2}}\left(e^{-i\phi}\bar{\xi}_1^\mu-e^{i\phi}\xi_1^\mu\right).
\end{align}$$

the normalized descendants are

$$\begin{align}
\psi_{(1,1),n,\bar{n}}^\mu& =\frac{\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\psi_{(1,1)}^\mu}{\sqrt{n!(n+1)!\bar{n}!(\bar{n}+1)!}},&n,\bar{n} & \geq 0 .
\end{align}$$

for reference, the unnormalized descendants have the closed form

$$\begin{align}
\widetilde{\psi}_{n,\bar{n}}^\mu &=\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\psi_{(1,1)}^\mu \\
&=e^{-i\omega_{n,\bar n}t}e^{im_{n,\bar n}\phi} \left(f^t_{n,\bar n}(r),f^r_{n,\bar n}(r),f^\phi_{n,\bar n}(r)\right),
\end{align}$$

where

$$\begin{align}
\omega_{n,\bar n}&=2+n+\bar n, & m_{n,\bar n}&=n-\bar n, & p&=\min(n,\bar n), & q&=|n-\bar n|.
\end{align}$$

define

$$\begin{align}
s_{n,\bar n}(r) &=-iC(-i)^q p!(p+q+1)! \frac{r^q}{(1+r^2)^{1+q/2}} P_p^{(q,1)}\left(\frac{1-r^2}{1+r^2}\right).
\end{align}$$

for $m_{n,\bar n}\neq0$, the radial functions are

$$\begin{align}
f^r_{n,\bar n} &=\frac{m_{n,\bar n}\left(\omega_{n,\bar n}s_{n,\bar n}-r(1+r^2)\partial_rs_{n,\bar n}\right)} {(m_{n,\bar n}^2-\omega_{n,\bar n}^2)r}, \\
f^t_{n,\bar n} &=-\frac{ir}{1+r^2}f^r_{n,\bar n}, \\
f^\phi_{n,\bar n} &=\frac{(1+r^2)\partial_rs_{n,\bar n}+m_{n,\bar n}f^r_{n,\bar n}} {i\omega_{n,\bar n}r}.
\end{align}$$

the normalized modes are then

$$\begin{align}
\psi_{(1,1),n,\bar n}^\mu &=\frac{\widetilde{\psi}_{n,\bar n}^\mu} {\sqrt{n!(n+1)!\bar n!(\bar n+1)!}}.
\end{align}$$

they carry

$$\begin{align}
h & =1+n, &\bar{h} & =1+\bar{n}, &\omega_{n,\bar{n}} & =2+n+\bar{n}, &m_{n,\bar{n}} & =n-\bar{n}.
\end{align}$$

the primary is a representative satisfying the relaxed highest weight condition on the gauge equivalence class, while the descendants are obtained by the usual lowering operations.
