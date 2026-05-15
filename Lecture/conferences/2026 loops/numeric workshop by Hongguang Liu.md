not interested...

---

Monte Carlo needs a probability measure

$$\begin{align}
\mathrm{d}\mu(x) & =p(x)\mathrm{d}x, & p(x) & >0, & \int p(x)\mathrm{d}x & =1
\end{align}$$

expectations are then

$$\begin{align}
\mathbf{E}_{\mu}[O] & =\int O(x)\mathrm{d}\mu(x)
\end{align}$$

with independent samples $\displaystyle{x_{k}\sim \mu}$, then

$$\begin{align}
\hat{O}_{N} & =\frac{1}{N}\sum ^{N}_{k=1} O(x_{k}), &  \mathrm{Var}(O_{N}) & =\dots
\end{align}$$

we need MCMC since we often do not know the normalization of the measure.

a Markov chain is defined by a transition kernel

$$\begin{align}
P(x,\mathrm{d}y) & =\mathrm{Pr}(X_{n+1}\in \mathrm{d}y|X_{n}=x)
\end{align}$$

the target contribution $\displaystyle{\pi}$ is stationary if

$$\begin{align}
\pi(\mathrm{d}y) & =\int \pi(\mathrm{d}x)P(x,\mathrm{d}y)
\end{align}$$

or $\displaystyle{\pi=\pi P}$ in short. if the chain is irreducible and aperiodic, samples converge to the target distribution rather than remembering the starting point.

a sufficient condition for stationarity is

$$\begin{align}
\pi(x)P(x,\mathrm{d}y) & =\pi(y)P(y,\mathrm{d}x)
\end{align}$$

for a proposal density $\displaystyle{q(y|x)}$ and acceptance probability $\displaystyle{\alpha(x,y)}$

$$\begin{align}
P(x,\mathrm{d}y) & =q(y|x)\alpha(x,y)\mathrm{d}y+r(x)\delta _{x}(\mathrm{d}y)
\end{align}$$

where

$$\begin{align}
r(x) & =1-\int q(y|x)\dots
\end{align}$$

Metropolis-Hasting rule...

Wiener?

---

Gaussian?

