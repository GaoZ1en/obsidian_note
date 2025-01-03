# Vector fields and forms on infinite jet bundles

## Infinite jet bundles

Denote by $\displaystyle{\pi^{k}:J^{k}(E)\to M}$ the fibre bundle of $\displaystyle{k}$-jets of local sections of $\displaystyle{E}$. The fibre $\displaystyle{(\pi^{k})^{-1}(x)}$ of $\displaystyle{x \in M}$ in $\displaystyle{J^{k}(E)}$ consists of equivalence classes, denoted by $\displaystyle{j^{k}(s)(x)}$ of local sections $\displaystyle{s}$ of $\displaystyle{E}$ at $\displaystyle{x}$. Each projection $\displaystyle{\pi^{l}_{k}:J^{l}(E)\to J^{k}(E)}$, defined for $\displaystyle{l \geqslant k}$ by

$$\tag{1.1}
\begin{align}
\pi^{l}_{k}[j^{l}(s)(x)]=j^{k}(s)(x)
\end{align}
$$

is a smooth surjection and in fact, for $\displaystyle{l=k+1}$ defines $\displaystyle{J^{l}(E)}$ as an affine bundle over $\displaystyle{J^{k}(E)}$. We introduce the following conventions for the sake of simplicity

$$\tag{1.2}
\begin{align}
\pi^{k}_{E}=\pi^{k}_{0},\pi^{k}_{M}=\pi^{k}
\end{align}
$$

for the projections from $\displaystyle{J^{k}(E)}$ to $\displaystyle{E}$ and $\displaystyle{M}$.

An adapted coordinate chart $\displaystyle{(\varphi,U)}$ on $\displaystyle{E}$ lifts to a coordinate chart $\displaystyle{(\tilde{\varphi},\tilde{U})}$ on $\displaystyle{J^{k}(E)}$ with $\displaystyle{\tilde{U}=(\pi^{k}_{E})^{-1}(U)}$. If the local section $\displaystyle{s:U_{0}\to U, s(x)=(x^{i},s^{\alpha}(x^{i}))}$, then the coordinates of the point $\displaystyle{j^{k}(s)(x)}$ are

$$\tag{1.3}
\begin{align}
\tilde{\varphi}[j^{k}(s))(x)] & =(x^{i},u^{\alpha},u^{\alpha}_{I})
\end{align}
$$

where, for $\displaystyle{l=0,1,\dots,k}$

$$\tag{1.4}
\begin{align}
u^{\alpha}_{I} & =\frac{\partial^{k}u^{\alpha}}{\partial^{k}x_{I}}
\end{align}
$$
here we use the multi-index notation, with $\displaystyle{I=i_{1}\dots i_{k}}$ and $\displaystyle{1\leqslant i_{1}\leqslant\dots\leqslant i_{k}\leqslant k}$.

The inverse sequence of topological spaces $\displaystyle{\left\{J^{k}(E),\pi^{l}_{k}\right\}}$ determine an inverse limit space $\displaystyle{J^{\infty}(E)}$ together with projection maps

$$\tag{1.5}
\begin{align}
\pi^{\infty}_{k}:J^{\infty}(E)\to J^{k}(E),\pi^{\infty}_{E}:J^{\infty}(E)\to E,\pi^{\infty}_{M}:J^{\infty}(M)\to M
\end{align}
$$

The topological space $\displaystyle{J^{\infty}(E)}$ is called the infinite jet bundle of the fibred manifold $\displaystyle{E}$. 

>[!Comment]
Analytic jet bundle? As we know that smoothness is not equivalent to analytic-ness. 

A basis for the inverse limit topology on $\displaystyle{J^{\infty}(E)}$ consists of all sets $\displaystyle{\tilde{W}=(\pi^{\infty}_{k})^{-1}(W)}$, where $\displaystyle{W}$ is any open set in $\displaystyle{J^{k}(E)}$ and $\displaystyle{k=0,1,2,\dots}$.