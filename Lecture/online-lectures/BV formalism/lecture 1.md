[link](https://www.bilibili.com/video/BV1G1UQBWEk6)

mathematical foundation of gauge theories, or more generally, constrained (Hamiltonian) systems

consider electric field $\displaystyle{A_{\mu}(x)}$ or in the language of differential form, $\displaystyle{A}$. the action

$$\begin{align}
-\frac{1}{4}\int \mathrm{d}^{d}xF_{\mu \nu}F^{\mu \nu}
\end{align}$$

allows for a gauge transformation

$$\begin{align}
A\to A+\mathrm{d}\lambda
\end{align}$$

this is a simple example of gauge system...

---

first consider a relativistic particle. the action can be written as

$$\begin{align}
S[x] & =-m\int \sqrt{ -\eta ^{\mu \nu} \dot{x}_{\mu}\dot{x}_{\nu}}\mathrm{d}\tau
\end{align}$$

or we can rephrase this action in so called "Hamiltonian action"

$$\begin{align}
S[x^{\mu},p_{\mu},\lambda] & =\int \left( p_{\mu} \dot{x}^{\mu}+\frac{\lambda}{2}(p^{2}-m^{2}) \right)\mathrm{d}\tau
\end{align}$$

integrate out $\displaystyle{p_{\mu}}$ and $\displaystyle{\lambda}$, we precisely get the original action.

---

take a variation of the action of $\displaystyle{p_{\mu}}$ and $\displaystyle{\lambda}$, we get

$$\begin{align}
\dot{x}^{\mu}+\lambda p^{\mu} & =0 \\
p^{2}-m^{2} & =0
\end{align}$$

which solves

$$\begin{align}
p^{\mu} & =-\frac{1}{\lambda}\dot{x}^{\mu} \\
\frac{1}{\lambda ^{2}}\dot{x}^{2} & =m^{2}\implies \lambda=\sqrt{ \frac{\dot{x}^{2}}{m^{2}} } \\
p^{\mu} & =-\frac{m\dot{x}^{\mu}}{\sqrt{ \dot{x}^{2} }}
\end{align}$$

and insert back into the Hamiltonian action, we have

$$\begin{align}
S[x^{\mu}] & =-m\int \sqrt{-\eta _{\mu \nu}\dot{x}^{\mu}\dot{x}^{\nu}}\mathrm{d}\tau
\end{align}$$

---

here in the Hamiltonian action, $\displaystyle{\lambda}$ term is actually a constraint.

## Lagrange formalism

the equation of motion

$$\begin{align}
E_{\alpha}(q^{i},\dot{q}^{i},\ddot{q}^{i})=0
\end{align}$$

the eom may contains higher order derivatives, but Ostrogradsky instability constrains this situation.

consider $\displaystyle{M}$ be configuration space (coordinates $\displaystyle{q^{i}}$). the Lagrangian is a function from $\displaystyle{TM\times \mathbb{R}=J^{1}}$...

suppose we have a trajectory $\displaystyle{q^{i}=\gamma ^{i}(t)}$, where $\displaystyle{\gamma ^{i}:\mathbb{R}\to M}$,we can construct a functional

$$\begin{align}
S[\gamma] & =\int \mathrm{d}t L(\gamma(t),\dot{\gamma}(t),t)
\end{align}$$

by least action principle, we take a variation of the action

$$\begin{align}
\gamma & \to \gamma+\delta \gamma \\
S[\gamma+\delta \gamma] & =S[\gamma]+\delta S[\gamma,\delta \gamma]
\end{align}$$

which gives the Euler-Lagrangian equation in the bulk

$$\begin{align}
\left[ \frac{\partial L}{\partial q^{i}}-\frac{\mathrm{d}}{\mathrm{d}t}\left(  \frac{\partial L}{\partial \dot{q}^{i}} \right) \right]\Big|_{q^{i}=\gamma ^{i}(t)} & =0
\end{align}$$

the Lagrangian $\displaystyle{L\in C^{\infty}(J^{1})=C^{\infty}(TM\times \mathbb{R})}$. $\displaystyle{J^{1}}$ is a simple example of the socalled jet bundle/space. here $\displaystyle{\mathbb{R}}$ is the base space, and $\displaystyle{TM}$ is the fibre. the trivialization $\displaystyle{\pi :J^{1}\to \mathbb{R}}$, with $\displaystyle{\pi(t,p)=t}$, where $\displaystyle{t\in \mathbb{R},p \in TM}$. the sections of $\displaystyle{J^{1}}$ is exactly the trajectories: $\displaystyle{\gamma:T\to J^{1}}$ such that $\displaystyle{\pi \circ\gamma=\mathrm{id}_{\mathbb{R}}}$.

definition: jet bundle $\displaystyle{J^{k}(E)\to T}$, with local coordinates $\displaystyle{\left\{(t,[\gamma]_{t}),t\in T,\gamma \text{ section}, [\cdot]_{t}\text{ equivalent class of sections at } t\right\}}$. the equivalent relation here means that

$$\begin{align}
\gamma \sim \gamma' \leftrightarrow  \frac{\mathrm{d} ^{\ell}\gamma ^{i}(t)}{\mathrm{d}t^{\ell}}= \frac{\mathrm{d}^{\ell}\gamma '^{i}(t)}{\mathrm{d}t^{\ell}} ，\forall \ell\leqslant k
\end{align}$$

if we have a map $\displaystyle{\varphi :M\to N}$, the pull back is defined as

$$\begin{align}
\varphi ^{*} & :C^{\infty}(N)\to C^{\infty}(M) \\
\varphi ^{*}f(p) & =f(\varphi(p))
\end{align}$$

this language is quite useful even if we are discussing non-manifold objects, i.e., algebraic geometry or supermanifolds blahblah.

coordinates on $\displaystyle{J^{k}(E)}$? $\displaystyle{(t,q^{i},\dot{q}^{i},\ddot{q}^{i},\dots)}$, here $\displaystyle{q^{(k)i}}$ is not the k-order derivative of $\displaystyle{q^{i}}$. the Lagrnagian function now is a function on $\displaystyle{J^{k}(E)}$ for some $\displaystyle{k\geqslant 1}$. system of ODE functions $\displaystyle{E_{\alpha}=0,\alpha=1,\dots,m}$ on $\displaystyle{J^{k}(E)}$ for some $\displaystyle{k\geqslant 2}$.

*prolongation*. if we have a section $\displaystyle{\gamma:T\to E}$ of fibre bundle $\displaystyle{E}$, the prolongation is a section $\displaystyle{\gamma _{\text{pr}}:T\to J^{k}(E)}$ of $\displaystyle{k}$-order jet bundle of $\displaystyle{E}$ with

$$\begin{align}
\gamma _{\text{pr}}(t) & =(t,[\gamma]_{t})
\end{align}$$

in the language of prolongation, the action can be written as

$$\begin{align}
S[\gamma] & =\int \gamma ^{*}_{\text{pr}} (\mathcal{L})
\end{align}$$

where $\displaystyle{\mathcal{L}=\mathrm{d}tL}$ is a horizontal 1-form on the jet bundle $\displaystyle{J^{k}(E)}$. the solution of ODE is thus a section $\displaystyle{\gamma:T\to E}$ such that

$$\begin{align}
\gamma ^{*}_{\text{pr}}(E_{\alpha})=0
\end{align}$$

to derive the ODE from Lagrangian, we need to do derivatives on the jet bundle.

$$\begin{align}
\frac{D}{\mathrm{d}t} & =\frac{\mathrm{d}}{\mathrm{d}t}+\dot{q}^{i} \frac{\partial}{\partial q^{i}}+\ddot{q}^{i} \frac{\partial}{\partial \dot{q}^{i}}+\dots+q^{(k)i} \frac{\partial}{\partial q^{(k-1)i}}
\end{align}$$

which satisfies the following properties

1. $\displaystyle{f\in C^{\infty}(J^{k}(E))}$, $\displaystyle{\gamma ^{*} _{\text{pr}}\left( \frac{Df}{\mathrm{d}t} \right)=\frac{\mathrm{d}}{\mathrm{d}t}(\gamma ^{*}_{\text{pr}}(f))}$
1. if $\displaystyle{\gamma}$ is a solution to $\displaystyle{\left\{E_{\alpha}\right\}}$, then $\displaystyle{\gamma}$ also solves $\displaystyle{\frac{D^{\ell}E_{\alpha}}{\mathrm{d}t^{\ell}}}$

*Euler-Lagrange derivative* is defined as

$$\begin{align}
\frac{\delta ^{\text{EL}}}{\delta q^{i}} & =\frac{\partial}{\partial q^{i}}-D_{t} \frac{\partial}{\partial \dot{q}^{i}} +D_{t}^{2}\frac{\partial}{\partial \ddot{q}^{i}}-\dots
\end{align}$$

so the eom's are defined as $\displaystyle{E_{i}:=\frac{\delta ^{\text{EL}}L}{\delta q^{i}}}$.

Hamiltonian formalism?
