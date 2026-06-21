## generalized Noether theorem

### gauge transformations and trivial currents

we say that two global symmetries are equivalent iff they differ only by a gauge transformation and another symmetry whose generator is trivially on shell. on the current side, we say $\displaystyle{J^{\mu}_{1}}$ and $\displaystyle{J^{\mu}_{2}}$ are equivalent iff they differ by a trivial current of the form

$$
\tag{1.1}
\begin{align}
J^{\mu}_{2} & =J^{\mu}_{1}+\partial _{\nu}K^{\mu \nu}+t^{\mu}
\end{align}
$$

where $\displaystyle{K^{\mu \nu}=-K^{\nu \mu}}$ and $\displaystyle{t^{\mu}\approx0}$. so we have $\displaystyle{\partial _{\mu}J^{\mu}_{2}\approx \partial _{\mu}J^{\mu}_{1}}$. therefore, for a pure gauge theory with no non-trivial global symmetry, the Noether current is trivial. for example, for generally covariant theories, $\displaystyle{T^{\mu \nu}= \frac{-2}{\sqrt{ -g }} \frac{\delta L}{\delta g_{\mu \nu}}= -\frac{1}{8\pi G}(G^{\mu \nu}-8\pi GT^{\mu \nu}_{M})\approx0}$

### higher-form symmetries

take any physical theory described by a Lagrangian density $\displaystyle{L}$ defined on a spacetime manifold $\displaystyle{(M,g)}$ which admits global symmetries, some of which might be gauge transformations. it exists a bijection between

- the equivalence class of gauge perameters $\displaystyle{\lambda(x^{\mu})}$ that are field symmetries, i.e., such that the variations of all fields $\displaystyle{\Phi ^{i}}$ defined on $\displaystyle{M}$ vanish on shell. two gauge parameters are equivalent if they are equal on-shell
- the equivalence class of $\displaystyle{(n-2)}$-forms $\displaystyle{J}$ that are closed on shell. two $\displaystyle{(n-2)}$-forms are equivalent if they differ on-shell by $\displaystyle{\mathrm{d}l}$ where $\displaystyle{l}$ is a $\displaystyle{(n-3)}$-form.

## CPS formalism

### field fibration and symplectic structure

the configuration space consists in the fields $\displaystyle{\Phi ^{i}}$ (matter $\displaystyle{\phi}$ and metric $\displaystyle{g_{\mu \nu}}$) and a set of "symmetrized derivatices of fields" $\displaystyle{\left\{\Phi ^{i},\Phi ^{i}_{\mu},\Phi ^{i}_{\mu \nu},\dots\right\}}$. the exterior derivative $\displaystyle{\delta}$ is defined as

$$
\tag{1.2}
\begin{align}
\delta=\delta \Phi ^{i} \frac{\partial}{\partial \Phi ^{i}}+\delta \Phi ^{i}_{\mu} \frac{\partial}{\partial \Phi ^{i}_{\mu}}+\delta \Phi ^{i}_{\mu \nu} \frac{\partial}{\partial \Phi ^{i}_{\mu \nu}}+\dots
\end{align}
$$

where $\displaystyle{\frac{\partial}{\partial \Phi ^{i}_{\mu \nu}}}$ is defined as

$$
\tag{1.3}
\begin{align}
\frac{\partial}{\partial \Phi ^{i}_{\mu \nu}} \Phi ^{j}_{\alpha \beta} & =\delta ^{(\mu}_{\alpha}\delta ^{\nu)}_{\beta}\delta ^{j}_{i}
\end{align}
$$

and so on. the jet bundle is the space with local coordinates $\displaystyle{(x^{\mu},\Phi ^{i}_{(\mu)})}$. taking a section of this bundle, we obtain the coordinates-dependent fields and their derivatives $\displaystyle{\left\{\Phi ^{i}(x^{\mu}),\partial _{\mu}\Phi ^{i}(x^{\mu}),\partial _{\mu}\partial _{\nu}\Phi ^{i}(x^{\mu}),\dots\right\}}$ (prolongation). the standard differential operator $\displaystyle{\mathrm{d}}$ is defined as

$$
\tag{1.4}
\begin{align}
\mathrm{d} & =\mathrm{d}x^{\mu}\otimes \partial _{\mu} \\
 & =\mathrm{d}x^{\mu}\otimes \left( \frac{\partial}{\partial x^{\mu}}+\Phi ^{i}_{\mu} \frac{\partial}{\partial \Phi ^{i}}+\Phi ^{i}_{\mu \nu} \frac{\partial}{\partial \Phi ^{i}_{\nu}}+ \dots \right)
\end{align}
$$

we can check that $\displaystyle{\left\{\delta,\mathrm{d}\right\}=0}$, then differential forms on the jet bundle naturally decompose into the product of forms on $\displaystyle{M}$ with repspect to $\displaystyle{\mathrm{d}}$ and forms on the fiber with respect to $\displaystyle{\delta}$. the space of differential forms on the jet bundle is denoted by $\displaystyle{\Omega ^{p,q}(M)}$ where $\displaystyle{p}$ is the degree of $\displaystyle{\mathrm{d}x^{\mu}}$'s and $\displaystyle{q}$ is the degree of $\displaystyle{\delta \Phi ^{i}_{(\mu)}}$'s.

the classical physics of the fields is encoded into a Lagrangian $\displaystyle{\mathbf{L}\in \Omega ^{n,0}}$. we would write

$$
\tag{1.5}
\begin{align}
\delta \mathbf{L} & = \frac{\delta \mathbf{L}}{\delta \Phi ^{i}}\delta \Phi ^{i}-\mathrm{d}\Theta
\end{align}
$$

$\displaystyle{\Theta \in \Omega ^{n-1,1}}$ is called the presymplectic potential. by taking $\displaystyle{\delta}$, we have the presymplectic form

$$
\tag{1.6}
\begin{align}
\omega=\delta \Theta \in \Omega ^{n-1,2}
\end{align}
$$

### Noether's second theorem

here we present a restricted form:

given a generally covariant Lagrangian $\displaystyle{n}$-form $\displaystyle{\mathbf{L}}$ and an arbitrary infinitesimal diffeomorphism $\displaystyle{\xi ^{\mu}}$, one has

$$
\tag{1.7}
\begin{align}
\frac{\delta \mathbf{L}}{\delta \Phi ^{i}}(X_{\xi}\cdot \delta\Phi ^{i})=-\mathrm{d}\mathbf{S}_{\xi}
\end{align}
$$

where $\displaystyle{\mathbf{S}_{\xi}}$ is a $\displaystyle{(n-1)}$ form proportional to the equations of motion and its derivatives.

### fundamental theorem of the covariant phase space formalism

#### Cartan's magic formula

$$
\tag{1.8}
\begin{align}
\mathcal{L}_{\xi}=\mathrm{d}i_{\xi}+i_{\xi}\mathrm{d}
\end{align}
$$

#### Noether-Wald surface charge

here we consider the diffeomorphism symmetry of a generally covariant theory.

$$
\tag{1.9}
\begin{align}
X_{\xi}\cdot \delta \mathbf{L} & =\mathcal{L}_{\xi}\mathbf{L}=\mathrm{d}(\xi \cdot \mathbf{L}) \\
 & =\frac{\delta \mathbf{L}}{\delta \Phi}(X_{\xi}\cdot \delta \Phi)+\mathrm{d}(X_{\xi}\cdot \Theta) \\
\mathrm{d}(\xi \cdot \mathbf{L}) & =-\mathrm{d}\mathbf{S}_{\xi}+\mathrm{d}(X_{\xi}\cdot \Theta)
\end{align}
$$

define Noether current

$$
\tag{1.10}
\begin{align}
J_{\xi} & =X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L} \\
\mathrm{d}J_{\xi} & =\mathrm{d}S_{\xi}\implies \mathrm{d}J_{\xi}\approx 0 \\
\implies J_{\xi} & =S_{\xi}+\mathrm{d}Q_{\xi}
\end{align}
$$

where $\displaystyle{Q_{\xi}\in \Omega ^{n-2}}$ is called the Noether-Wald surface charge.

>[!Theorem Fundamental theorem of the CPS formalism]
> in the Grassmann odd convention for $\displaystyle{\delta}$, we have
> $$\tag{1.11}\begin{align}X_{\xi}\cdot \omega & \approx\mathrm{d}\mathbf{K}_{\xi}\end{align}$$
> where
> $$\tag{1.12}\begin{align}\mathbf{K}_{\xi}=\delta Q_{\xi}+\xi \cdot \Theta+\mathrm{d}(\text{ something })\end{align}$$

here we present a direct proof:

$$
\tag{1.13}
\begin{align}
\delta \mathbf{S} & =\delta J_{\xi}-\delta \mathrm{d}Q_{\xi} \\
 & =\delta(X_{\xi}\cdot \Theta)-\delta(\xi \cdot \mathbf{L})+\mathrm{d}\delta Q_{\xi} \\
 & =\xi \cdot \delta \mathbf{L}+\delta(X_{\xi}\cdot \Theta)+\mathrm{d}\delta Q_{\xi} \\
 & =\xi \cdot\left( \frac{\delta \mathbf{L}}{\delta \Phi ^{i}}\delta \Phi ^{i}-\mathrm{d}\Theta \right)+\delta(X_{\xi}\cdot \Theta)+\mathrm{d}\delta Q_{\xi} \\
 & \approx-\xi \cdot \mathrm{d}\Theta+\delta(X_{\xi}\cdot \Theta)+\mathrm{d}\delta Q_{\xi} \\
 & =-\mathcal{L}_{\xi}\Theta+\mathrm{d}(\xi \cdot \Theta)+\delta(X_{\xi}\cdot \Theta)+\mathrm{d}\delta Q_{\xi} \\
 & =-X_{\xi}\cdot \delta\Theta+\delta(X_{\xi}\cdot \Theta)+\mathrm{d}(\delta Q_{\xi}+\xi \cdot \Theta) \\
 & =-X_{\xi}\cdot \omega+\mathrm{d}\mathbf{K}_{\xi}
\end{align}
$$

where $\displaystyle{\mathbf{K}_{\xi}=\delta Q_{\xi}+\xi \cdot \Theta+\mathrm{d}(\dots)}$. $\displaystyle{\delta(X_{\xi}\cdot \Theta)}$ vanishes since $\displaystyle{\delta \Phi ^{i}}$ solves linearzed equation of motion.

## conserved surface charges

### definition of the charges

### representation theorem
