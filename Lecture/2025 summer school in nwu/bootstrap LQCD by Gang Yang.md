## plan

1. QCD and Wilson loop
2. Matrix bootstrap and some examples
	1. integral
	2. matrix model
3. LQCD
	1. loop equation
	2. reflection positivity

asymptotic freedom

$$\tag{0.1}
\begin{align}
\mu \frac{\partial \alpha}{\partial \mu} & =\beta(\alpha)=\dots
\end{align}
$$

$$\tag{0.2}
\begin{align}
\implies \alpha & =\dots
\end{align}
$$

where $\displaystyle{\beta_{0}=-\frac{4}{3}N_{F}+\frac{11}{3}N}$, the first term comes from the quark loop in the gluon 1-loop self energy, and the second term comes from the gluon loop in the gluon 1-loop self energy (so there is no the second term in the qed). for qcd, we have $\displaystyle{\beta_{0}>0}$, so we have asymptotic freedom.

see: **confinment of quark** by Wilson

wilson loop is a nonlocal order parameter (what does it mean?), which is defined as

$$\tag{0.3}
\begin{align}
\braket{ W(C) }  & = \braket{ 0|\mathcal{P}\mathrm{tr}\exp\left(ig\oint \mathrm{d}x^{\mu}A_{\mu}(x)\right)|0 } 
\end{align}
$$

where $\displaystyle{C}$ is a closed curve, $\displaystyle{\mathcal{P}}$ is the path ordering operator, and $\displaystyle{A_{\mu}(x)}$ is the gauge field. the leading order of the wilson loop is

$$\tag{0.4}
\begin{align}
 \mathcal{P}\oint \mathrm{d}x^{\mu}\oint \mathrm{d}y^{\mu}\braket{ 0|A_{\mu}(x)A_{\nu}(y)|0 } & =\mathcal{P}\int ^{1}_{0}\mathrm{d}\tau_{1}\dot{x}^{\mu}(\tau_{1})\int _{0}^{1}\mathrm{d}\tau_{2}\dot{y}^{\nu}(\tau _{2})\braket{ 0|A_{\mu}(x)A_{\nu}(y)|0 }  \\
 & = \int ^{1}_{0}\mathrm{d}\tau_{1} \dot{x}^{\mu}(\tau_{1})\int _{0}^{1}\mathrm{d}\tau _{2}\dot{y}^{\nu}(\tau _{2})\braket{ 0|\theta(\tau_{1}-\tau_{2})A_{\mu}(x)A_{\nu}(y)+\theta(\tau _{2}-\tau_{1})A_{\nu}(y)A_{\mu}(x)|0 } 
\end{align}
$$

why we need Wilson loop? Wilson was considering the following correlation function

$$\tag{0.5}
\begin{align}
\braket{ 0|\mathcal{T}J^{\mu}(x)J^{\nu}(0)|0 } ,\quad J^{\mu}(x) & =\bar{\psi}\gamma ^{\mu}\psi
\end{align}
$$

this correlation function describes the propagation of a quark-antiquark pair in the vacuum, and it is related to the confinment between the quark and antiquark. the Wilson loop is exactly the gluon loop correction to the correlation function.

for example, consider the $\displaystyle{U(1)}$ gauge theory 

$$\tag{0.6}
\begin{align}
\braket{ W(C) }  & =\exp\left(-g^{2}\oint \mathrm{d}x^{\mu}\oint \mathrm{d}y^{\mu}D_{\mu \nu}(x-y)\right)
\end{align}
$$

where $\displaystyle{D_{\mu \nu}(x-y)}$ is the propagator of the gauge field. in 3+1 dimensions $\displaystyle{D_{\mu \nu}(x-y)=\frac{\eta _{\mu \nu}}{(x-y)^{2}}}$, which gives a supression for large distance. so effectively $\displaystyle{\braket{ W(C) }}$ satisfies **parameter law**. 

in 1+1 dimensions $\displaystyle{D_{\mu \nu}(x,y)\propto \log(x-y)^{2}}$, which gives non-negligible contribution for large distance. so effectively $\displaystyle{\braket{ W(C) }}$ satisfies **area law** $\displaystyle{\implies}$ confinment.

non-perturbative qcd is hard, but we can use the following methods to study it
1. Seiberg-Witten
2. low dimension model: 2D 't Hooft model
3. planar $\displaystyle{\mathcal{N}=4}$ SYM (AdS/CFT, integrability, Yangian symmetry, ...)
4. conformal bootstrap
5. S-matrix bootstrap
6. matrix bootstrap
7. lqcd (MC simulation)

# matrix bootstrap

