# problem 1

let $\displaystyle{G=\left\{(a,b)|a,b\in \mathbb{R},a\neq 0\right\}}$. define $\displaystyle{\cdot:G\times G\to G,(a,b)(c,d)=(ac,ad+b)}$. prove that $\displaystyle{(G,\cdot)}$ is a group. 

*sol*.

associative. $\displaystyle{\forall(a,b),(c,d),(e,f)\in G}$, $\displaystyle{((a,b)(c,d))(e,f)=(ac,ad+b)(e,f)=(ace,acf+ad+b)}$, $\displaystyle{(a,b)((c,d)(e,f))=(a,b)(ce,cf+d)=(ace,acf+ad+b)}$.
identity $\displaystyle{(1,0)}$. $\displaystyle{\forall(a,b)\in G,(a,b)(1,0)=(a,b),(1,0)(a,b)=(a,b)}$.
inverse. $\displaystyle{\forall(a,b)\in G,(a,b)(a^{-1},-a^{-1}b)=(1,0),(a^{-1},-a^{-1}b)(a,b)=(1,0)}$

thus $\displaystyle{(G,\cdot)}$ is a group.

# problem 2

suppose $\displaystyle{(G,\cdot)}$ is a semi-group. prove that iff $\displaystyle{\forall a,b\in G}$, $\displaystyle{ax=b}$ and $\displaystyle{ya=b}$ is solvable in $\displaystyle{G}$, $\displaystyle{(G,\cdot )}$ is a group. 

*sol*.
$\displaystyle{\implies}$. $\displaystyle{xa=a}$, denote the solution as $\displaystyle{e}$. then $\displaystyle{\forall b\in G}$, consider the equation $\displaystyle{ay=b}$, then $\displaystyle{eb=eay=ay=b}$, $\displaystyle{e}$ is a left unit of $\displaystyle{G}$. since $\displaystyle{\forall b\in G,yb=e}$ is solvable$\displaystyle{\implies b}$ has a left inverse. then $\displaystyle{(G,\cdot)}$ is a group.
$\displaystyle{\impliedby}$ is obvious.

# problem 3

suppose $\displaystyle{(G,\cdot)}$ is a finite semi-group. prove that $\displaystyle{(G,\cdot)}$ is a group iff left and right cancellation laws hold, i.e.,

$$\begin{align}
ax=ay & \Rightarrow x=y, \forall a,x,y\in G \\
xa=ya & \Rightarrow x=y, \forall a,x,y\in G
\end{align}$$

*sol*.
$\displaystyle{\implies}$. write $\displaystyle{G=\left\{a_{1},\dots,a_{n}\right\}}$. then $\displaystyle{\forall a_{i}\in G,a_{i}G=G=Ga_{i}}$, which means $\displaystyle{\exists e\in G,ea_{i}=a_{i}}$, and $\displaystyle{\forall a_{j}\in G,\exists a_{k}\in G,\text{ s.t. }a_{i}a_{k}=a_{j}}$, then $\displaystyle{ea_{j}=ea_{i}a_{k}=a_{i}a_{k}=a_{j}}$, $\displaystyle{e}$ is a left unit. and since $\displaystyle{e\in G=Ga_{i}}$, $\displaystyle{\exists a_{i}^{-1}\in G,\text{ s.t. }e=a_{i}^{-1}a_{i}\implies a_{i}}$ has a left inverse. then $\displaystyle{G}$ is a group.
$\displaystyle{\impliedby}$ is obvious.
