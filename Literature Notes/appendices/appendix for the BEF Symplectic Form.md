## $\displaystyle{L_{\infty}}$-algebra

an $\displaystyle{L_{\infty}}$-algebra is somewhat like a generalization of a Lie algebra, where the Jacobi identity is relaxed and replaced by a series of higher homotopy relations. it consists of a graded vector space $\displaystyle{V}$ together with a collection of multilinear maps $\displaystyle{l_{n}:V^{\otimes n}\to V}$ for $\displaystyle{n\geq 1}$, called the higher brackets, which satisfy certain coherence conditions

$$\begin{align}
\sum _{i+j=n+1}\sum _{\sigma \in \mathrm{Sh}(i,n-i)}\epsilon (\sigma)(-1)^{i(j-1)}l_{j}(l_{i}(x_{\sigma (1)},\ldots ,x_{\sigma (i)}),x_{\sigma (i+1)},\ldots ,x_{\sigma (n)}) & =0
\end{align}$$

where $\displaystyle{\mathrm{Sh}(i,n-i)}$ denotes the set of $(i,n-i)$-shuffles and $\displaystyle{\epsilon (\sigma)}$ is the Koszul sign associated with the permutation $\displaystyle{\sigma}$.

[how to formulate classical field theories as $L_\infty$-algebras](https://arxiv.org/pdf/1701.08824)

## $\displaystyle{A_{\infty}}$-algebras?

an $\displaystyle{A_{\infty}}$-algebra is the associative analogue of an $\displaystyle{L_{\infty}}$-algebra. it consists of a graded vector space $\displaystyle{A}$ together with multilinear maps

$$\begin{align}
\displaystyle{m_{n}:A^{\otimes n}\to A,\qquad n\geq 1}
\end{align}$$

of degree $\displaystyle{2-n}$ satisfying the Stasheff identities

$$\begin{align}
\sum _{r+s+t=n}(-1)^{r+st}m_{r+1+t}(\mathbf{1}^{\otimes r}\otimes m_{s}\otimes \mathbf{1}^{\otimes t})=0.
\end{align}$$

the first few identities say:

- $\displaystyle{m_{1}^{2}=0}$, so $\displaystyle{m_{1}}$ is a differential.
- $\displaystyle{m_{1}}$ acts as a derivation of $\displaystyle{m_{2}}$.
- $\displaystyle{m_{2}}$ is associative only up to a homotopy controlled by $\displaystyle{m_{3}}$.

if $\displaystyle{m_{n}=0}$ for all $\displaystyle{n\geq 3}$, then one simply has a differential graded associative algebra.
