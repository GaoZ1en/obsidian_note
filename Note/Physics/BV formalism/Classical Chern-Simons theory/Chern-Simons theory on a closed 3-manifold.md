for simplicity, let $\displaystyle{G=\mathrm{SU}(2)}$ and $\displaystyle{M}$ be a closed oriented 3-manifold. let $\displaystyle{\mathcal{P}}$ be the trivial $\displaystyle{G}$-bundle over $\displaystyle{M}$. we define the space of fields $\displaystyle{F_{M}}$ to be the space of principal connections on $\displaystyle{\mathcal{P}}$. the action functional defined on $\displaystyle{F_{M}}$ is

$$\tag{1.1}
\begin{align}
S_{CS}[A]:=\int_{M}\mathrm{Tr}\left(\frac{1}{2}A\wedge \mathrm{d}A+\frac{1}{3}A\wedge A\wedge A\right)
\end{align}
$$

with $\displaystyle{A\in \Omega^{1}(M,\mathfrak{g})}$ a connection 1-form in fundamental representation of $\displaystyle{\mathfrak{g}}$. calculate the variation of the action

$$\tag{1.2}
\begin{align}
\delta S_{CS} & =\int_{M}\mathrm{Tr}\left(\frac{1}{2}\delta A\wedge \mathrm{d}A+\frac{1}{2}A\wedge \mathrm{d}\delta A+\delta A\wedge A\wedge A\right) \\
 & =-\frac{1}{2}\int_{\partial M}\mathrm{Tr}(\delta A\wedge A)+\int_{M}\mathrm{Tr}(\delta A\wedge F)
\end{align}
$$

where the curvature 2-form $\displaystyle{F}$ is defined as $\displaystyle{F=\mathrm{d}A+A\wedge A}$. the equation of motion $\displaystyle{F=0}$ reads the flatness condition on the connection.

for any group-valued map $\displaystyle{g:M\to G}$ and a connection $\displaystyle{A\in \Omega^{1}(M,\mathfrak{g})}$. we define the gauge transformation as mapping

$$\tag{1.3}
\begin{align}
A\mapsto A^{g}=g^{-1}Ag+g^{-1}\mathrm{d}g
\end{align}
$$

which defines a right action of the gauge group on $\displaystyle{F_{M}}$. note that $\displaystyle{A^{g}}$ is flat if and only if $\displaystyle{A}$ is flat.

Chern-Simons action changes under the gauge transformation as

$$\tag{1.4}
\begin{align}
S_{CS}[A^{g}]-S_{CS}[A] & =-\frac{1}{6}\int_{M}\mathrm{Tr}(g^{-1}\mathrm{d}g)^{3}
\end{align}
$$

recall that for $\displaystyle{G\subset \mathrm{U}(N)}$ a simple compact group, one has the Cartan 3-form $\displaystyle{\theta}$ a closed $\displaystyle{G}$-invariant form on $\displaystyle{G}$ with integral periods representing the generator of $\displaystyle{H^{3}(G,\mathbb{Z})=\mathbb{Z}}$, which defined as

$$\tag{1.5}
\begin{align}
\theta=-\frac{1}{24\pi^{2}}\mathrm{Tr}(g^{-1}\mathrm{d}g)^{3}\in \Omega^{3}(G)
\end{align}
$$

note that the Maurer-Cartan form $\displaystyle{\theta_{MC}=g^{-1}\mathrm{d}g}$ satisfies

$$\tag{1.6}
\begin{align}
\mathrm{d}\theta_{MC} & =-\theta_{MC}\wedge \theta_{MC}
\end{align}
$$

then

$$\tag{1.7}
\begin{align}
\mathrm{d}\theta & =-\frac{1}{24\pi^{2}}\mathrm{Tr}\left(\mathrm{d}\theta_{MC}\wedge \theta_{MC}\wedge \theta_{MC}-\theta_{MC}\wedge \mathrm{d}\theta_{MC}\wedge \theta_{MC}+\theta_{MC}\wedge \theta_{MC}\wedge \mathrm{d}\theta_{MC}\right) \\
 & =\frac{1}{24\pi^{2}}\mathrm{Tr}\left(\mathrm{d}\theta_{MC}\wedge \mathrm{d}\theta_{MC}\right)=0
\end{align}
$$

for right translation (to be continued)

in particular, for $\displaystyle{G=\mathrm{SU(2)}}$, $\displaystyle{\theta}$ is the volume form on $\displaystyle{SU(2)}$ viewed as the $\displaystyle{S^{3}}$, normalized to have total volume 1. see 1103.1201 for more info on Cartan 3-form. then we have the lemma.

>[!Lemma 1.1(gauge (in)dependence of Chern-Simons action)]
> $$\tag{1.8}
\begin{align}
\frac{1}{4\pi^{2}}(S_{CS}[A^{g}]-S_{CS}[A]) & =\int_{M}g^{*}\theta=\langle[M],g^{*}\theta \rangle\in \mathbb{Z}
\end{align}
$$

note that, for $\displaystyle{G=\mathrm{SU}(2)}$, the RHS is simply the degree of the map $\displaystyle{g:M\to \mathrm{SU}(2)\sim S^{3}}$. thus, $\displaystyle{S_{CS}[A]}$ is invariant under infinitesimal gauge transformations, and the connect component of trivial transformation $\displaystyle{g=1}$ in $\displaystyle{\text{Gauge}_{M,G}}$

introduce a function

$$\tag{1.9}
\begin{align}
\psi_{k}[A] & :=e^{\frac{ik}{2\pi}S_{CS}[A]}
\end{align}
$$

with $\displaystyle{k\in \mathbb{Z}}$ a parameter. by Lemma 1.1, $\displaystyle{\psi_{k}}$ is a $\displaystyle{\text{Gauge}_{M,G}}$-invariant function on $\displaystyle{F_{M}}$. in particular, we can regard $\displaystyle{\psi_{k}}$ as a function on the quotient $\displaystyle{F_{M}/\text{Gauge}_{M,G}}$. restriction of the function $\displaystyle{\psi_{k}}$ to flat connections yields a locally constant function on the quotient

$$\tag{1.10}
\begin{align}
\mathcal{M}_{M,G} & =\text{FlatConn}_{M,G}/\text{Gauge}_{M,G}=\frac{\left\{|A\in \Omega^{1}(M,\mathfrak{g})|\mathrm{d}A+A\wedge A=0\right\}}{A\sim g^{-1}Ag+g^{-1}\mathrm{d}g,\quad\forall g:M\to G}
\end{align}
$$

which is the moduli space of flat connections. the locally constant property of $\displaystyle{\psi_{k}}$ on the moduli space follows immediately from the fact that flat connections solve the equation of motions. Moduli space $\displaystyle{\mathcal{M}_{M,G}}$ is typically disconnected and $\displaystyle{\psi_{k}}$ can take different values on different connected components.

