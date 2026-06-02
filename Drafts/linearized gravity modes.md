---
title: linearized gravity modes
date: 2026-06-01
summary: "Operator-level elimination of the Killing-basis coefficients for the first-order massless graviton branch in global AdS3."
---

# Operator-Level Elimination In The $\xi_a\xi_b$ Basis

Consider the branch

$$\begin{align}
\varepsilon _{\mu}^{~\nu \rho}\nabla ^{(0)}_{\nu}h_{\rho \sigma}-h_{\mu \sigma} & =0
\end{align}$$

with the Killing-basis expansion

$$\begin{align}
h_{\mu \nu} & =h_{ab}\xi _{a,\mu}\xi _{b,\nu}, \qquad a,b\in\{-1,0,1\}.
\end{align}$$

Write

$$\begin{align}
L_{a} & \equiv \mathcal{L}_{\xi _{a}}.
\end{align}$$

The TT conditions and the projected first-order equations are

$$\begin{align}
h_{ab} & =h_{ba}, \\
h_{1,-1}-\frac{1}{4}h_{00} & =0, \\
L_{1}h_{11}+L_{0}h_{10}+L_{-1}h_{1,-1} & =0, \\
L_{1}h_{10}+L_{0}h_{00}+L_{-1}h_{0,-1} & =0, \\
L_{1}h_{1,-1}+L_{0}h_{0,-1}+L_{-1}h_{-1,-1} & =0
\end{align}$$

and

$$\begin{align}
\tilde{E}_{11}&\equiv (2iL_{0}-4)h_{11}+iL_{-1}h_{10}=0, \\
\tilde{E}_{10}&\equiv (2iL_{0}-4)h_{10}-iL_{-1}h_{00}-2iL_{1}h_{11}=0, \\
\tilde{E}_{1,-1}&\equiv (2iL_{0}-2)h_{1,-1}-iL_{-1}h_{0,-1}-\frac{1}{2}h_{00}=0, \\
\tilde{E}_{0,1}&\equiv 2iL_{-1}h_{1,-1}-4h_{10}-2iL_{1}h_{11}=0, \\
\tilde{E}_{00}&\equiv -2iL_{1}h_{10}-4h_{1,-1}-3h_{00}+2iL_{-1}h_{0,-1}=0, \\
\tilde{E}_{0,-1}&\equiv -2iL_{1}h_{1,-1}-4h_{0,-1}-2iL_{-1}h_{-1,-1}=0, \\
\tilde{E}_{-1,1}&\equiv -iL_{1}h_{10}-(2+2iL_{0})h_{1,-1}-\frac{1}{2}h_{00}=0, \\
\tilde{E}_{-1,0}&\equiv -iL_{1}h_{00}-(4+2iL_{0})h_{0,-1}=0, \\
\tilde{E}_{-1,-1}&\equiv -iL_{1}h_{0,-1}-(4+2iL_{0})h_{-1,-1}=0.
\end{align}$$

## Eliminating $h_{0,-1}$

From the trace condition,

$$\begin{align}
h_{1,-1} & =\frac{1}{4}h_{00}.
\end{align}$$

Substituting this into $\tilde{E}_{1,-1}$, $\tilde{E}_{00}$, and $\tilde{E}_{-1,1}$ gives

$$\begin{align}
\left(\frac{i}{2}L_{0}-1\right)h_{00}-iL_{-1}h_{0,-1} & =0, \\
-iL_{1}h_{10}-2h_{00}+iL_{-1}h_{0,-1} & =0, \\
-iL_{1}h_{10}-\left(1+\frac{i}{2}L_{0}\right)h_{00} & =0.
\end{align}$$

Adding and subtracting the last two equations, we obtain

$$\begin{align}
L_{-1}h_{0,-1} & =0, \\
L_{0}h_{00} & =-2ih_{00}.
\end{align}$$

Now substitute $\displaystyle{h_{1,-1}=\frac{1}{4}h_{00}}$ into $\tilde{E}_{0,-1}$ and combine the result with the transverse equation

$$\begin{align}
\frac{1}{4}L_{1}h_{00}+L_{0}h_{0,-1}+L_{-1}h_{-1,-1} & =0.
\end{align}$$

Eliminating $\displaystyle{L_{-1}h_{-1,-1}}$ gives

$$\begin{align}
L_{0}h_{0,-1} & =-2ih_{0,-1}.
\end{align}$$

On the other hand, $\tilde{E}_{-1,0}$ becomes

$$\begin{align}
-iL_{1}h_{00}-8h_{0,-1} & =0,
\end{align}$$

namely

$$\begin{align}
h_{0,-1} & =-\frac{i}{8}L_{1}h_{00}.
\end{align}$$

Using the commutator

$$\begin{align}
[L_{0},L_{1}] & =iL_{1},
\end{align}$$

together with $\displaystyle{L_{0}h_{00}=-2ih_{00}}$, we find

$$\begin{align}
L_{0}(L_{1}h_{00}) & =(L_{1}L_{0}+iL_{1})h_{00}=-iL_{1}h_{00}.
\end{align}$$

Thus $\displaystyle{L_{1}h_{00}}$ has $\displaystyle{L_{0}}$-weight $\displaystyle{-i}$, while $\displaystyle{h_{0,-1}}$ must have $\displaystyle{L_{0}}$-weight $\displaystyle{-2i}$. The only consistent possibility is

$$\begin{align}
L_{1}h_{00} & =0, &
h_{0,-1} & =0.
\end{align}$$

## Eliminating $h_{10}$, $h_{00}$, and $h_{1,-1}$

With $\displaystyle{h_{0,-1}=0}$, the transverse equation

$$\begin{align}
L_{1}h_{10}+L_{0}h_{00} & =0
\end{align}$$

becomes

$$\begin{align}
L_{1}h_{10} & =2ih_{00}.
\end{align}$$

Also, the equation

$$\begin{align}
L_{1}h_{11}+L_{0}h_{10}+\frac{1}{4}L_{-1}h_{00} & =0
\end{align}$$

and the pair $\displaystyle{\tilde{E}_{10}}$, $\displaystyle{\tilde{E}_{0,1}}$ imply

$$\begin{align}
L_{1}h_{11}+\frac{1}{2}L_{-1}h_{00} & =0, \\
L_{0}h_{10} & =\frac{1}{4}L_{-1}h_{00}, \\
h_{10} & =\frac{3i}{8}L_{-1}h_{00}.
\end{align}$$

Now use

$$\begin{align}
[L_{0},L_{-1}] & =-iL_{-1}
\end{align}$$

and $\displaystyle{L_{0}h_{00}=-2ih_{00}}$ to compute

$$\begin{align}
L_{0}(L_{-1}h_{00}) & =(L_{-1}L_{0}-iL_{-1})h_{00}=-3iL_{-1}h_{00}.
\end{align}$$

Therefore, if $\displaystyle{L_{-1}h_{00}\neq 0}$, the relation $\displaystyle{h_{10}=\frac{3i}{8}L_{-1}h_{00}}$ would force $\displaystyle{h_{10}}$ to have $\displaystyle{L_{0}}$-weight $\displaystyle{-3i}$, whereas the equation $\displaystyle{L_{0}h_{10}=\frac{1}{4}L_{-1}h_{00}}$ gives a different weight. Hence

$$\begin{align}
L_{-1}h_{00} & =0, &
h_{10} & =0.
\end{align}$$

Substituting this back into $\displaystyle{L_{1}h_{10}=2ih_{00}}$ gives

$$\begin{align}
h_{00} & =0,
\end{align}$$

and therefore

$$\begin{align}
h_{1,-1} & =0.
\end{align}$$

## The Surviving Coefficient

After these eliminations, the only nontrivial equation left for the Brown-Henneaux positive-frequency branch is

$$\begin{align}
L_{1}h_{11} & =0, \\
(2iL_{0}-4)h_{11} & =0,
\end{align}$$

namely

$$\begin{align}
L_{1}h_{11} & =0, \\
L_{0}h_{11} & =-2ih_{11}.
\end{align}$$

Thus the branch is parametrized by a single scalar coefficient $\displaystyle{h_{11}}$.

## Comment On $h_{-1,-1}$

Once the previous coefficients vanish, the remaining equations for $\displaystyle{h_{-1,-1}}$ reduce to

$$\begin{align}
L_{-1}h_{-1,-1} & =0, \\
L_{0}h_{-1,-1} & =2ih_{-1,-1}.
\end{align}$$

This is an opposite-weight local sector. It is not part of the Brown-Henneaux positive-frequency $(0,2)$ branch discussed here, so we set

$$\begin{align}
h_{-1,-1} & =0
\end{align}$$

in the physical branch of interest.
