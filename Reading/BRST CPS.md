jet map maps a section $\displaystyle{\Phi}$ and a coordinate $\displaystyle{x}$ into its every order derivatives, or jet coordinate:

$$\tag{1.1}
\begin{align}
j^{\infty} & :\mathcal{F}\times M\to J^{\infty}E \\
 (\Phi,x)& \mapsto j^{\infty}\Phi(x)=(x,\varphi^{A}(x),\varphi^{A}_{(\mu_{1})}|_{\Phi},\dots,\varphi^{A}_{(\mu_{1}\dots \mu_{n})}|_{\Phi},\dots)
\end{align}
$$

This leads to the dual map $\displaystyle{(j^{\infty})^{\ast}:\Omega(J^{\infty}E)\to \Omega(\mathcal{F}\times M)}$ and to the definition of forms on $\displaystyle{J^{\infty}E}$, with a bigrading inherited from the splitting between horizontal and vertical forms of $\displaystyle{J^{\infty}E}$. The corresponding bicomplex is $\displaystyle{(\Omega^{*,*}(J^{\infty}E),\mathrm{d}_{V},\mathrm{d}_{H})}$.

One can define local forms that are spacetime and configuration space differential forms on $\displaystyle{\mathcal{F}\times M}$ as elements of $\displaystyle{\Omega^{*,*}_{\mathrm{loc}}(\mathcal{F}\times M)}$ endowed with the differentials $\displaystyle{\delta}$ and $\displaystyle{\mathrm{d}}$ by the bicomplex:

$$\tag{1.2}
\begin{align}
 (\Omega^{*,*}_{\mathrm{loc}}(\mathcal{F}\times M),\delta,\mathrm{d}) & =(j^{\infty})^{*}(\Omega^{*,*}(J^{\infty}E),\mathrm{d}_{V},\mathrm{d}_{H}) \\
 \delta(j^{\infty})^{*}\alpha=(j^{\infty})^{*}\mathrm{d}_{V}\alpha, &\quad \mathrm{d}(j^{\infty})^{*}\alpha=(j^{\infty})^{*}\mathrm{d}_{H}\alpha,\quad \alpha \in\Omega^{*,*}(J^{\infty}E)
\end{align}
$$

consider a theory with action

$$\tag{1.3}
\begin{align}
S=\int_{M}L[\varphi_{a}]|_{\Phi}
\end{align}
$$

with the Lagrangian density $\displaystyle{L\in \Omega^{0,d}_{\mathrm{loc}}}$ is a spacetime top form (required to be covariant). we assume that

$$\tag{1.4}
\begin{align}
\delta S  & =\int_{M}\delta L=\int_{M}E^{a}\delta \varphi_{a}+\int_{\Sigma_{f}-\Sigma_{i}}\theta
\end{align}
$$

Here $\displaystyle{E^{a}}$ are Euler-Lagrange equations of the field $\displaystyle{\varphi_{a}}$ and $\displaystyle{\theta\in \Omega^{1,d-1}}$ is the local presymplectic potential.

>[!Comment]
>To keep Euler-Lagrange equations invariant, the $\displaystyle{\theta}$ allows a $\displaystyle{\theta-\mathrm{d}C+\delta \ell}$ shift. this can be simply explained as the local presymplectic potential $\displaystyle{C}$ for the boundary Lagrangian $\displaystyle{\ell}$.

one can construct the local presymplectic two form as:

$$\tag{1.5}
\begin{align}
\omega=\delta\theta\in \Omega^{2,d-1}_{\mathrm{loc}}
\end{align}
$$

A global version of these objects are:

$$\tag{1.6}
\begin{align}
\Theta & =\int_{\Sigma}\theta\in \Omega^{1,0}_{\mathrm{loc}} \\
\Omega & =\delta \Theta=\int_{\Sigma}\delta \theta=\int_{\Sigma}\omega\in \Omega^{2,0}_{\mathrm{loc}}
\end{align}
$$

$\displaystyle{\Omega}$ can be degenerate. one may find that a configuration space vector $\displaystyle{X_{\xi}\neq 0}$ (with infinitesimal parameter $\displaystyle{\xi}$) that $\displaystyle{i_{X_{\xi}}\Omega=0}$. The representation of this invariance under infinitesimal transformations $\displaystyle{\varphi_{\mathrm{cl}}(x)\to \varphi_{\mathrm{cl}}(x)+\delta_{\xi}\varphi_{\mathrm{cl}}(x)}$ with the infinitesimal local parameter $\displaystyle{\xi(x)}$ by a configuration space vector field $\displaystyle{X_{\xi}}$ is given by

$$\tag{1.7}
\begin{align}
X_{\xi}=\int_{M}\mathrm{d}^{d}x\mathcal{L}_{\xi}\varphi_{a}(x) \frac{\delta}{\delta \varphi_{a}(x)}
\end{align}
$$

then this definition have the covariance we wanted

$$\tag{1.8}
\begin{align}
\mathcal{L}_{\xi}\varphi_{a} & =\frac{\delta \varphi_{a}}{\delta\varphi_{b}}\mathcal{L}_{\xi}\varphi_{b}=X_{\xi}\cdot \delta \varphi_{a}=\mathcal{L}_{X_{\xi}}\varphi_{a}
\end{align}
$$

then consider the infinitesimal transformation of the action

$$\tag{1.9}
\begin{align}
X_{\xi}\cdot \delta S & =\alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M}
\end{align}
$$

where $\displaystyle{\alpha_{\xi}\in \Omega^{0,0}_{\mathrm{loc}}}$ and $\displaystyle{\beta_{\xi}\in \Omega^{0,0}_{\mathcal{loc}}}$ is configuration-independent, we refer to call it the "classical anomaly".

Notice that $\displaystyle{\alpha_{\xi}}$ and $\displaystyle{\beta_{\xi}}$ allow a shift

$$\tag{1.10}
\begin{align}
\alpha_{\xi} & \to \alpha_{\xi}+\gamma \\
\beta_{\xi} & \to \beta_{\xi}+\gamma|_{\Sigma_{f}-\Sigma_{i}}
\end{align}
$$

with $\displaystyle{\gamma \in \Omega^{0,0}_{\mathrm{loc}}}$ is configuration independent. The only change is on the Noether charge $\displaystyle{Q_{\xi}}$, which will be defined below, by a configuration independent value. on the other hand, we perform a Lie derivative $\displaystyle{\mathcal{L}_{X_{\xi}}}$ on $\displaystyle{\delta S}$:

$$\tag{1.10}
\begin{align}
\mathcal{L}_{X_{\xi}}\delta S & =X_{\xi}\cdot \delta\left( \int_{M}E^{a}\delta \varphi_{a}+\int_{\Sigma_{f}-\Sigma_{i}}\theta\right)+\delta\left( X_{\xi}\cdot\left( \int_{M}E^{a}\delta \varphi_{a}+\int_{\Sigma_{f}-\Sigma_{i}}\theta \right) \right) \\
 & =\int_{M}(X_{\xi}\cdot \delta E^{a})\delta \varphi_{a}-\int_{M}\delta E^{a}(X_{\xi}\cdot \delta \varphi_{a})+\int_{\Sigma_{f}-\Sigma_{i}}X_{\xi}\cdot \omega+\int_{M}\delta E^{a}(X_{\xi}\cdot \delta \varphi_{a}) \\
 &+\int_{M}E^{a}\delta(X_{\xi}\cdot \delta \varphi_{a})+\int_{\Sigma_{f}-\Sigma_{i}}\delta(X_{\xi}\cdot \theta) \\
 & =\int_{M}E^{a}\delta(X_{\xi}\cdot \delta \varphi_{a})+\int_{M}(X_{\xi}\cdot \delta E^{a})\delta \varphi_{a}+\int_{\Sigma_{f}-\Sigma_{i}}(X_{\xi}\cdot \omega+\delta(X_{\xi}\cdot \theta))
\end{align}
$$

while

$$\tag{1.11}
\begin{align}
\mathcal{L}_{X_{\xi}}\delta S & =\delta(X_{\xi}\cdot \delta S)=\delta \alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}
\end{align}
$$

then we have

$$\tag{1.12}
\begin{align}
\int_{M}E^{a}\delta(X_{\xi}\cdot \delta \varphi_{a})+\int_{M}(X_{\xi}\cdot \delta E^{a})\delta\varphi_{a}+\int_{\Sigma_{f}-\Sigma_{i}}X_{\xi}\cdot \omega+\delta Q_{\xi}|_{\Sigma_{f}-\Sigma_{i}}=0
\end{align}
$$

where the on-shell conserved charge $\displaystyle{Q_{\xi}}$ is defined by 

$$\tag{1.13}
\begin{align}
\mathcal{Q}_{\xi} & = X_{\xi}\cdot \Theta -\alpha_{\xi}
\end{align}
$$

by contracting with another configuration space vector $\displaystyle{Y=\int f_{\alpha}(x) \frac{\delta}{\delta \varphi_{a}(x)}}$, we have

$$\tag{1.14}
\begin{align}
X_{\xi}\cdot \delta E^{a}\simeq 0
\end{align}
$$

and

$$\tag{1.15}
\begin{align}
X_{\xi}\cdot \Omega|_{\tilde{\mathcal P}}=-\delta \mathcal{Q}_{\xi}|_{\tilde{\mathcal{P}}}
\end{align}
$$

on the other hand

$$\tag{1.16}
\begin{align}
X_{\xi}\cdot \delta S & =\int_{M}E^{a}(X_{\xi}\cdot \delta \varphi_{a})+\int_{\Sigma_{f}-\Sigma_{i}}X_{\xi}\cdot \theta \\
 & \simeq X_{\xi}\cdot \Theta|_{\Sigma_{f}-\Sigma_{i}}\\
\implies&(X_{\xi}\cdot \Theta-\alpha_{\xi})|_{\Sigma_{f}-\Sigma_{i}}=\beta_{\xi}|_{M}
\end{align}
$$

Finally

$$\tag{1.17}
\begin{align}
\int_{M}X_{\xi}\cdot(E^{a}\delta \varphi_{a}) & =(\alpha_{\xi}-X_{\xi}\cdot \Theta )|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M}=-\mathcal{Q}_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M} \\
\implies & \mathcal{Q}_{\xi}=X_{\xi}\cdot \Theta-\alpha_{\xi}=\mathfrak{Q}_{\xi}|_{\Sigma}+Q_{\xi}|_{\partial \Sigma}
\end{align}
$$

one gets

$$\tag{1.18}
\begin{align}
\star J_{\xi} & =X_{\xi}\cdot \Theta-\alpha_{\xi}=\mathcal{Q}_{\xi}\\
\star J_{\xi}|_{\Sigma_{f}-\Sigma_{i}} & =\mathcal{Q}_{\xi}|_{\Sigma_{f}-\Sigma_{i}} \\
 & =\beta_{\xi}|_{M}
\end{align}
$$

this is Noether's first theorem, where $\displaystyle{J_{\xi}}$ is the conserved Noether current associated with the local symmetry parametrized by $\displaystyle{\xi(x)}$, and the $\displaystyle{q_{\xi}}$ are the associated Noether charges. The $\displaystyle{\mathfrak{Q}_{\xi}}$'s are called the Noether constraints. Noether's second theorem is then given by

$$\tag{1.19}
\begin{align}
\mathfrak{Q}_{\xi}\simeq 0\implies \star J_{\xi}\simeq \mathrm{d}Q_{\xi}
\end{align}
$$

which means that the Noether current associated with a **local symmetry** reduces to a pure corner term on-shell. how to prove Noether's second law?

Suppose for a local symmetry

$$\tag{A.1}
\begin{align}
X_{\lambda}\cdot \delta \varphi=f(\varphi)\lambda+g(\varphi)\cdot \mathrm{d}\lambda
\end{align}
$$

then we have

$$\tag{A.2}
\begin{align}
X_{\lambda}\cdot \delta L & = \alpha_{\lambda}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\lambda}|_{M} \\
 & =\int_{M}E^{a}X_{\xi}\cdot\delta \varphi_{a}+\int_{\Sigma_{f}-\Sigma_{i}}X_{\xi}\cdot \delta \theta \\
 & =\int_{M}E^{a}f(\varphi)\lambda+\int_{M}E^{a}g(\varphi)\cdot \mathrm{d}\lambda+\int_{\Sigma_{f}-\Sigma_{i}}X_{\xi}\cdot \delta \theta\\
 & =\int_{M}(E^{a}(f(\varphi)-\mathrm{d}E^{a}g(\varphi))\lambda+\int_{\Sigma_{f}-\Sigma_{i}}(X_{\xi}\cdot \delta\theta+E^{a}g(\varphi)\lambda)
\end{align}
$$

choose $\displaystyle{\lambda}$ to have compact support, then the second terms in the (A.2) vanishes and one get the local identity

$$\tag{A.3}
\begin{align}
E^{a}f(\varphi)-\mathrm{d}(E^{a}g(\varphi))=0
\end{align}
$$

use the definition of the Noether current $\displaystyle{J_{\lambda}}$ (1.18), we have

$$\tag{A.4}
\begin{align}
\int_{\Sigma_{f}-\Sigma_{i}}E^{a}X_{\xi}\cdot\delta\varphi_{a}g(\varphi) & =X_{\xi}\cdot\int_{M}E^{a}\delta\varphi_{a}f(\varphi) \\
 & =-\mathcal{Q}_{\lambda}f(\varphi)|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\lambda}f(\varphi)|_{M} \\
\implies& J_{\lambda}+\lambda E^{a}g(\varphi)|_{\Sigma_{f}-\Sigma_{i}}=\beta_{\lambda}|_{M}
\end{align}
$$

and finally we have:

$$\tag{A.5}
\begin{align}
\star J_{\xi}=-\lambda E^{a}\star g(\varphi)+Q_{\xi}|_{\partial \Sigma}=Q_{\xi}|_{\partial \Sigma}
\end{align}
$$

This is the Noether's second theorem, where the Noether constraints that are vanishing on-shell are given by $\displaystyle{\mathfrak{Q}_{\lambda}=-\lambda E^{a}\star g}$

the $\displaystyle{Q_{\xi}}$ is the classical global Noether charges, and vanishes for any $\displaystyle{\xi}$ associated with trivial gauge transformations(?), so it serves as a probe for asymptotic symmetries. for such charges, the Poisson bracket takes the form:

$$\tag{1.20}
\begin{align}
\left\{Q_{\xi},Q_{\zeta}\right\}=X_{\xi}\cdot X_{\zeta}\cdot \Omega
\end{align}
$$

and then the action of the large gauge symmetry on phase space is canonically generated by

$$\tag{1.21}
\begin{align}
\left\{Q_{\xi},\varphi_{\mathrm{cl}}\right\}=X_{\xi}\cdot \delta \varphi_{\mathrm{cl}}
\end{align}
$$

therefore, any charges $\displaystyle{Q_{\xi}\not=0}$ have a physical nontrivial action on the whole phase space.

once we use BRST covariant phase space, all the subtleties above disappear. the set of configuration then is enlarged to contains the classical fields, ghosts, antighosts and Lagrange multipliers by construction, together with a non-degenerate symplectic 2-form.

## BRST CPS

consider a field theory $\displaystyle{(\tilde{\mathcal{F}},S)}$ with a nilpotent BRST operator $\displaystyle{s}$, which acts on all fields $\displaystyle{\varphi^{A}=(\varphi_{\mathrm{cl}},c,\bar{c},b)}$ with the defining properties:

$$\tag{2.1}
\begin{align}
s^{2}=0,\quad [s,\mathrm{d}]=s \mathrm{d}+\mathrm{d}s=0,\quad sx^{\mu}=0,\quad [s,\partial_{\mu}]=0
\end{align}
$$

the action of the BRST operator $\displaystyle{s}$ on any local forms in $\displaystyle{\Omega^{*,*}_{\mathrm{loc}}(\hat{\mathcal{F}}\times M)}$ is not entirely defined. for self-consistency we must have

$$\tag{2.2}
\begin{align}
(\mathrm{d}+\delta+s)^{2}=0
\end{align}
$$

so that the grading coming from ghost number is consistently incorporated in $\displaystyle{\Omega^{q,p,g}_{\mathrm{loc}}(\tilde{\mathcal{F}}\times M)}$. any local form $\displaystyle{X[\varphi]\in \Omega^{p,q,g}_{\mathrm{loc}}(\tilde{\mathcal{F}}\times M)}$ has a total grading

$$\tag{2.3}
\begin{align}
\mathfrak{g}(X)=p+q+g
\end{align}
$$

and can thus be denoted as $\displaystyle{X^{g,q}_{p}}$. for ant $\displaystyle{X,Y\in \Omega^{q,p,g}_{\mathrm{loc}}(\tilde{\mathcal{F}\times M})}$, the graded commutator between such local forms are defined as

$$\tag{2.4}
\begin{align}
[X,Y]=XY-(-1)^{\mathfrak{g}(X)\mathfrak{g}(Y)}YX
\end{align}
$$

and the graded Leibniz rule for any graded derivation $\displaystyle{a}$ that acts on $\displaystyle{\Omega^{q,p,g}_{\mathrm{loc}}(\tilde{\mathcal{F}}\times M)}$ as

$$\tag{2.5}
\begin{align}
a(XY)=a(X)Y+(-1)^{\mathfrak{g}(X)\mathfrak{g}(Y)}Xa(Y)
\end{align}
$$

one may define a configuration space vector field $\displaystyle{\mathcal{X}_{\mathrm{BRST}}}$ with ghost number one as

$$\tag{2.6}
\begin{align}
\mathcal{X}\equiv \mathcal{X}_{\mathrm{BRST}} & =\int_{M}\mathrm{d}^{d}xs\varphi^{A}\frac{\delta}{\delta \varphi^{A}}
\end{align}
$$

here we make the convention that configuration space vector fields written in mathcal refer to anticommuting configuration space vector fields with ghost number one. one has therefore the analog of $\displaystyle{X_{\xi}\cdot \delta \varphi=\mathcal{L}_{X_{\xi}}\varphi}$ as

$$\tag{2.7}
\begin{align}
s\varphi=\mathcal{X}\cdot \delta \varphi
\end{align}
$$

the nilpotency of the BRST operator is equivalent to the vanishing of the configuration space vector field bracket

$$\tag{2.8}
\begin{align}
\left\{\mathcal{X},\mathcal{X}\right\} & =\mathcal{L}_{\mathcal{X}}\mathcal{X}=\mathcal{X}\cdot \delta \mathcal{X}=\int_{M}\mathrm{d}^{d}xs^{2}\varphi^{A} \frac{\delta}{\delta \varphi^{A}}=0
\end{align}
$$

this implies that the only candidate for a differential that raises the ghost number by one unit, squares to zero and is compatible with $\displaystyle{\mathrm{d}}$ and $\displaystyle{\delta}$ is $\displaystyle{\mathcal{L}_{\mathfrak{X}}}$, 

$$\tag{2.9}
\begin{align}
s=\mathcal{L}_{\mathfrak{X}}=[i_{\mathcal{X}},\delta]=\mathcal{X}\cdot \delta+\delta(\mathcal{X}\cdot)
\end{align}
$$

with $\displaystyle{\mathcal{X}=\int_{M}\mathrm{d}^{d}xs\varphi^{A} \frac{\delta}{\delta \varphi^{A}}}$. introducing the vector field $\displaystyle{\mathcal{X}}$ is thus the key for extending the bicomplex of local forms $\displaystyle{\tilde{\mathcal{F}}\times M}$ to

$$\tag{2.10}
\begin{align}
(\Omega^{*,*,*}_{\mathrm{loc}}(\tilde{\mathcal{F}}\times M),\delta,\mathrm{d},s)
\end{align}
$$

and consistently take into account the ghost number. the definition of a field theory on spacetime $\displaystyle{M}$ is extended to the pair $\displaystyle{(\tilde{\mathcal{F}},S)}$ where $\displaystyle{S}$ is still given by (1.3) but with $\displaystyle{L\in \Omega^{0,d,0}_{\mathrm{loc}}(\tilde{\mathcal{F}\times M})}$, which can be added by $\displaystyle{s}$-exact gauge fixing terms, and (1.4) is still valid.

for theories invariant under reparametrization, the action of $\displaystyle{s}$ can be compared with that of the Lie derivative in spacetime along a specific vector field.

$$\tag{2.11}
\begin{align}
sg_{\mu \nu} & =\mathcal{L}_{\mathcal{X}}g_{\mu \nu}=\mathcal{L}_{\xi}g_{\mu \nu} \\
s\xi^{\mu} & =\mathcal{L}_{\mathcal{X}}\xi^{\mu}=\frac{1}{2}\left\{\xi,\xi\right\}^{\mu}
\end{align}
$$

where $\displaystyle{\xi^{\mu}}$ is the reparametrization vector ghost, and the factor 1/2 is primordial to ensure the nilpotency of $\displaystyle{s}$.

we can simply calculate all the graded commutators related to $\displaystyle{\delta,\mathrm{d}}$ and $\displaystyle{s}$. they are summarized as follows:


| $\displaystyle{[X,Y]}$              | $\displaystyle{\mathrm{d}}$         | $\displaystyle{\delta}$                     | $\displaystyle{s}$                                      | $\displaystyle{i_{\xi}}$                     | $\displaystyle{i_{\phi}}$                     | $\displaystyle{i_{\mathcal{X}}}$ | $\displaystyle{\mathcal{L}_{\xi}}$                     | $\displaystyle{\mathcal{L}_{\phi}}$                     |
| ----------------------------------- | ----------------------------------- | ------------------------------------------- | ------------------------------------------------------- | -------------------------------------------- | --------------------------------------------- | -------------------------------- | ------------------------------------------------------ | ------------------------------------------------------- |
| $\displaystyle{\mathrm{d}}$         | 0                                   | 0                                           | 0                                                       | $\displaystyle{-\mathcal{L}_{\xi}}$          | $\displaystyle{-\mathcal{L}_{\phi}}$          | 0                                | 0                                                      | 0                                                       |
| $\displaystyle{\delta}$             | 0                                   | 0                                           | 0                                                       | $\displaystyle{i_{\delta \xi}}$              | $\displaystyle{i_{\delta \phi}}$              | $\displaystyle{s}$               | $\displaystyle{\mathcal{L}_{\delta \xi}}$              | $\displaystyle{\mathcal{L}_{\delta}}$                   |
| $\displaystyle{s}$                  | 0                                   | 0                                           | 0                                                       | $\displaystyle{i_{s\xi}}$                    | $\displaystyle{i_{\left\{\xi,\phi\right\}}}$  | 0                                | $\displaystyle{\mathcal{L}_{s\xi}}$                    | $\displaystyle{\mathcal{L}_{\left\{\xi,\phi\right\}}}$  |
| $\displaystyle{i_{\xi}}$            | $\displaystyle{\mathcal{L}_{\xi}}$  | -$\displaystyle{i_{\delta \xi}}$            | $\displaystyle{-i_{s\xi}}$                              | 0                                            | 0                                             | 0                                | $\displaystyle{-i_{\left\{\xi,\xi\right\}}}$           | $\displaystyle{i_{\left\{\xi,\phi\right\}}}$            |
| $\displaystyle{i_{\phi}}$           | $\displaystyle{\mathcal{L}_{\phi}}$ | $\displaystyle{i_{\delta \phi}}$            | $\displaystyle{i_{\left\{\xi,\phi\right\}}}$            | 0                                            | 0                                             | 0                                | $\displaystyle{i_{\left\{\xi,\phi\right\}}}$           | 0                                                       |
| $\displaystyle{i_{\mathcal{X}}}$    | 0                                   | $\displaystyle{s}$                          | 0                                                       | 0                                            | 0                                             | 0                                | 0                                                      | 0                                                       |
| $\displaystyle{\mathcal{L}_{\xi}}$  | 0                                   | $\displaystyle{\mathcal{L}_{\delta \xi}}$   | $\displaystyle{\mathcal{L}_{s\xi}}$                     | $\displaystyle{i_{\left\{\xi,\xi\right\}}}$  | $\displaystyle{-i_{\left\{\xi,\phi\right\}}}$ | 0                                | $\displaystyle{\mathcal{L}_{\left\{\xi,\xi\right\}}}$  | $\displaystyle{\mathcal{L}_{\left\{\xi,\phi\right\}}}$  |
| $\displaystyle{\mathcal{L}_{\phi}}$ | 0                                   | $\displaystyle{-\mathcal{L}_{\delta \phi}}$ | $\displaystyle{-\mathcal{L}_{\left\{\xi,\phi\right\}}}$ | $\displaystyle{i_{\left\{\xi,\phi\right\}}}$ | 0                                             | 0                                | $\displaystyle{\mathcal{L}_{\left\{\xi,\phi\right\}}}$ | $\displaystyle{\mathcal{L}_{\left\{\phi,\phi\right\}}}$ |

it must be noted that one might find relevant to split $\displaystyle{\delta}$ in two pieces to define a general field transformation modulo a BRST transformation. it is natural to define

$$\tag{2.12}
\begin{align}
\hat{\delta}=\delta-s
\end{align}
$$

which satisfies that $\displaystyle{\hat{\delta}^{2}=\hat{\delta}s+s\hat{\delta}=0}$. such a decomposition is analogous to that occurring for decomposing internal symmetries $\displaystyle{\times}$ reparametrization symmetries into internal symmetries modulo reparametrization symmetries, according to $\displaystyle{\hat{s}=s-\mathcal{L}_{\xi}}$. in BRST CPS case, $\displaystyle{\hat{\delta}}$ can be seen as a gauge covariant configuration space variation. 

## gauge fixing and BRST Noether 1.5th theorem

the general procedure begins with a classical Lagrangian $\displaystyle{L_{\mathrm{cl}}\in \Omega^{0,d,0}_{\mathrm{loc}}}$ invariant under the following infinitesimal gauge symmetry transformation parametrized by $\displaystyle{\xi}$

$$\tag{3.1}
\begin{align}
\varphi_{\mathrm{cl}}\to \varphi_{\mathrm{cl}}+{\delta}_{\xi}\varphi_{\mathrm{cl}}
\end{align}
$$

the global BRST symmetry that captures this gauge invariance is obtained by introducing anticommuting ghost fields $\displaystyle{c(x)}$ for every infinitesimal local parameter $\displaystyle{\xi}$. a BRST transformation $\displaystyle{\delta_{\mathrm{BRST}}=\eta s}$ of the classical fields is then defined as a gauge transformation of the form (3.1) modulo the replacement $\displaystyle{\xi \to \eta c}$. therefore as $\displaystyle{\eta}$ is a constant, one has

$$\tag{3.2}
\begin{align}
s\varphi_{\mathrm{cl}}\equiv \delta_{\xi}\varphi_{\mathrm{cl}}|_{\xi=c}
\end{align}
$$
 
and $\displaystyle{L_{\mathrm{cl}}}$ is clearly invariant under such a transformation (take consider into a classical anomaly). the BRST transformation of the ghost fields is defined to ensure the nilpotency of $\displaystyle{s}$ on $\displaystyle{\varphi_{\mathrm{cl}}}$ and $\displaystyle{c}$. this means that one can consistently add any terms of the form $\displaystyle{L_{\mathrm{cl}}\to L_{\mathrm{cl}}+s\Psi}$ to the Lagrangian without spoiling its BRST invariance. introduce trivial BRST pairs $\displaystyle{(\bar{c},b)}$ with ghost number $\displaystyle{(-1,0)}$ respectively and transforming as $\displaystyle{s \bar{c}=b,sb=0}$ is thus unavoidable to build such $\displaystyle{\Psi}$ with ghost number -1. the BRST gauge fixing $\displaystyle{\mathcal{F}_{\mathrm{gauge}}(\varphi^{A})=0}$ of the classical Lagrangian is often reached by considering

$$\tag{3.3}
\begin{align}
L_{\mathrm{cl}}(\varphi_{\mathrm{cl}}) \to L_{\mathrm{GF}}(\varphi^{A}) & =L_{\mathrm{cl}}(\varphi_{\mathrm{cl}})+s(\bar{c}\mathcal{F}_{\mathrm{gauge}}(\varphi^{A})) \\
 & =L_{\mathrm{cl}}(\varphi_{cl})+b\mathcal{F}_{\mathrm{g auge}}(\varphi^{A})-\bar{c}s\mathcal{F}_{\mathrm{g auge}}(\varphi^{A})
\end{align}
$$

following the same procedure discussed above, we have

$$\tag{3.4}
\begin{align}
\delta S & =\int_{M} E_{A}\delta \varphi^{A}+\int_{\Sigma_{f}-\Sigma_{i}}\theta
\end{align}
$$

here the local symplectic potential $\displaystyle{\theta}$ can be splited into classical (depends only on $\displaystyle{\varphi_{\mathrm{cl}}}$ and $\displaystyle{c}$) and gauge fixing (depends on $\displaystyle{\varphi^{A}}$) parts

$$\tag{3.5}
\begin{align}
\theta(\varphi^{A}) & =\theta_{\mathrm{cl}}(\varphi_{\mathrm{cl}},c)+\theta_{\mathrm{g auge}}(\varphi^{A})
\end{align}
$$

then consider the BRST transformation of the gauge fixed Lagrangian

$$\tag{3.6}
\begin{align}
sS & =sS_{\mathrm{cl}}=\alpha_{\mathrm{cl}}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\mathrm{cl}}|_{M}
\end{align}
$$

then we have

