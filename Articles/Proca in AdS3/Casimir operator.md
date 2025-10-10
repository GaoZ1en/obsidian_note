isometries in $\displaystyle{\mathrm{AdS}_{3}}$ form a group $\displaystyle{\mathrm{SO}(2,2)\cong\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$, with Killing vectors

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

which satisfy the commutation relations

$$\begin{align}
[\xi_{0},\xi_{1}] & =i\xi_{1} \\
[\xi_{0},\xi _{-1}] & =-i\xi _{-1} \\
[\xi _{1},\xi _{-1}] & =-2i\xi _{0} \\
[\bar{\xi}_{0},\bar{\xi}_{1}] & =i\bar{\xi}_{1} \\
[\bar{\xi}_{0},\bar{\xi}_{-1}] & =-i\bar{\xi}_{-1} \\
[\bar{\xi}_{1},\bar{\xi}_{-1}] & =-2i\bar{\xi}_{0}
\end{align}$$

generally, the Casimir operator of a Lie algebra can be constructed from the generators and the Killing metric of the Lie algebra as

$$\begin{align}
C & =g^{ab}T_{a}T_{b}
\end{align}$$

in the case of $\displaystyle{\mathrm{SL}(2,\mathbb{R})}$, the Killing metric is given by

$$\begin{align}
g_{ab} & = \frac{1}{2}f^{c}_{~ad}f^{d}_{~bc} \\
 & =2\delta ^{0}_{a}\delta ^{0}_{b}-\left(\delta ^{1}_{a}\delta ^{-1}_{b}+\delta ^{-1}_{a}\delta ^{1}_{a}\right)
\end{align}$$

then we can write down the Casimir operator explicitly

$$\begin{align}
\mathcal{C} & =\mathcal{L}_{\xi_{0}}^{2}-\frac{1}{2}\left(\mathcal{L}_{\xi _{1}}\mathcal{L}_{\xi _{-1}}+\mathcal{L}_{\xi _{-1}}\mathcal{L}_{\xi_{1}}\right) \\
\bar{\mathcal{C}} & =\mathcal{L}_{\bar{\xi}_{0}}^{2}-\frac{1}{2}\left(\mathcal{L}_{\bar{\xi}_{1}}\mathcal{L}_{\bar{\xi}_{-1}}+\mathcal{L}_{\bar{\xi}_{-1}}\mathcal{L}_{\bar{\xi}_{1}}\right) \\
 & [C,\mathcal{L}_{\xi}]=[\mathcal{\bar{C}},\mathcal{L}_{\xi}]=[\mathcal{C},\mathcal{\bar{C}}]=0
\end{align}$$

we reorganize the Casimirs to

$$\begin{align}
(\mathcal{C}+\mathcal{\bar{C}})A^{\mu} & =-\frac{1}{2}\nabla ^{2} A^{\mu}-A^{\mu} \\
(\mathcal{C}-\mathcal{\bar{C}})^{2}A^{\mu} & =\nabla^{2}A^{\mu}-\nabla _{\nu}\nabla ^{\mu}A^{\nu}
\end{align}$$

the eom can be written as

$$\begin{align}
\nabla _{\mu}F^{\mu \nu} & =\mu ^{2}A^{\nu} \\
\implies &  \begin{cases}
\nabla _{\mu}A^{\mu} =0 \\
\nabla ^{2}A^{\mu}-(\mu ^{2}-2)A^{\mu}=0
\end{cases}
\end{align}$$

then

$$\begin{align}
(\mathcal{C}+\mathcal{\bar{C}}) & =-\frac{1}{2}\mu ^{2} \\
(\mathcal{C}-\mathcal{\bar{C}})^{2} & =\mu ^{2} \\
\implies  & \begin{cases}
\mathcal{C} =-\frac{1}{4}\mu ^{2}-\frac{1}{2}\mu \\
\mathcal{\bar{C}}=-\frac{1}{4}\mu ^{2}+\frac{1}{2}\mu
\end{cases} \text{ or } \begin{cases}
\mathcal{C}=-\frac{1}{4}\mu ^{2}+\frac{1}{2}\mu \\
\mathcal{\bar{C}}=-\frac{1}{4}\mu ^{2}-\frac{1}{2}\mu
\end{cases}
\end{align}$$

$$\tag{.}\begin{align}
{f^{+}_{l,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} }e^{-i(\mu+2)t}(1+r^{2})^{-(\mu+2)/2}\xi _{1}^{\mu}
\end{align}$$

---

as for massive free scalar

## Massive free scalar in AdS$_3$（与上文 Proca 场并行的表述）

### Formalism Summary

$$\begin{align}
(\mathcal{C}+\mathcal{\bar{C}})\phi & =-\frac{1}{2}\nabla ^{2}\phi \\
 & =-\frac{1}{2}\mu^{2}\phi \\
(\mathcal{C}-\mathcal{\bar{C}})\phi & =0 \\
\implies \mathcal{C}=\mathcal{\bar{C}} & =-\frac{1}{4}\mu^{2}
\end{align}$$

$$\begin{align}
\phi _{0,0} & =\mathcal{N}_{0,0}e^{-i\Delta t}(1+r^{2})^{-\Delta /2} \\
\Delta  & =1+\sqrt{1+\mu ^{2}} \\
\phi _{n,\bar{n}} & =C_{n,\bar{n}}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\phi _{0,0}
\end{align}$$

$$\begin{align}

\end{align}$$

### Completed Derivations

1) Casimir–拉普拉斯关系（标量）

<details>
<summary>推导要点</summary>
对标量 $\phi$，$\mathcal{L}_{\xi_m}=\xi_m^\mu\nabla_\mu$，利用 $\mathrm{SO}(2,2)\cong \mathrm{SL}(2,\mathbb{R})\times\mathrm{SL}(2,\mathbb{R})$ 的生成元与 Killing 方程，按与上文相同的定义
$$
\mathcal{C}=\mathcal{L}_{\xi_{0}}^{2}-\tfrac12(\mathcal{L}_{\xi _{1}}\mathcal{L}_{\xi _{-1}}+\mathcal{L}_{\xi _{-1}}\mathcal{L}_{\xi_{1}}),\quad
\bar{\mathcal{C}}=\mathcal{L}_{\bar{\xi}_{0}}^{2}-\tfrac12(\mathcal{L}_{\bar{\xi}_{1}}\mathcal{L}_{\bar{\xi}_{-1}}+\mathcal{L}_{\bar{\xi}_{-1}}\mathcal{L}_{\bar{\xi}_{1}}).
$$
由于标量无曲率耦合项，合并两簇后得到 $(\mathcal{C}+\bar{\mathcal{C}})\phi=-\tfrac12\nabla^2\phi$。而 $s=0\Rightarrow (\mathcal{C}-\bar{\mathcal{C}})\phi=0$。
</details>

2) 从 KG 方程到 Casimir 本征值
$$
\begin{align}
(\nabla^2-m^2)\phi=0\ \Rightarrow\ (\mathcal{C}+\bar{\mathcal{C}})\phi=-\tfrac12 m^2\phi,\quad \mathcal{C}=\bar{\mathcal{C}}=-\tfrac14 m^2~.
\end{align}
$$

3) 与边界权重的对应与 BF 界
$$
\begin{align}
\mathcal{C}&=-h(h-1),\quad \bar{\mathcal{C}}=-\bar h(\bar h-1),\\
\Rightarrow\quad m^2&=\Delta(\Delta-2)+s^2,\quad s=h-\bar h.\ (s=0\Rightarrow m^2=\Delta(\Delta-2))
\end{align}
$$
由此得 $\Delta=1\pm\sqrt{1+m^2}$ 与 BF 界 $m^2\ge-1$。在 $-1<m^2<0$ 区间存在双重量子化（$\Delta_\pm$）。

4) 正规模与频谱（global AdS$_3$, $L=1$）
$$
\begin{align}
\omega_{n,\ell}&=\Delta+2n+|\ell|,\quad n\in\mathbb{N}_{\ge0},\ \ell\in\mathbb{Z},\\
\phi^{(0)}_{\ell}(t,r,\phi)&=\mathcal{N}\;e^{-i\omega_{0,\ell} t+i\ell\phi}\,(1+r^2)^{-\Delta/2}\,r^{|\ell|},\quad \omega_{0,\ell}=\Delta+|\ell|,
\end{align}
$$
更高激发可由 $\xi_{-1},\bar\xi_{-1}$ 作用产生（对应 $n,|\ell|$ 的提升），与上文向量模的构造平行。
