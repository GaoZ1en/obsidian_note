definition of group: a set $\displaystyle{G}$ equipped with a binary operator $\displaystyle{\cdot:G\times G\to G}$, which satisfies

1. $\displaystyle{\forall a,b\in G,a\cdot b\in G}$
1. $\displaystyle{\forall a,b,c\in G,(a\cdot b)\cdot c=a\cdot(b\cdot c)}$
1. $\displaystyle{\exists e\in G,\forall a\in G, e\cdot a=a}$
1. $\displaystyle{\forall a\in G,\exists a^{-1}\in G,a^{-1}\cdot a=e}$

then we have

1. if $\displaystyle{c\cdot x=c\cdot y}$, then $\displaystyle{x=y}$

$$\begin{align}
c^{-1}\cdot(c\cdot x) & =(c^{-1}\cdot c)\cdot x \\
 & =e\cdot x=x=y
\end{align}$$

1. $\displaystyle{a\cdot a^{-1}=e\implies (a^{-1})^{-1}=a}$

$$\begin{align}
a^{-1}\cdot(a\cdot a^{-1}) & =(a^{-1}\cdot a)\cdot a^{-1} \\
 & =e\cdot a^{-1} \\
 & =a^{-1} \\
\implies a\cdot a^{-1} & =e
\end{align}$$

1. $\displaystyle{a\cdot e=a}$

$$\begin{align}
a\cdot e & =a\cdot(a^{-1}\cdot a) \\
 & =(a\cdot a^{-1})\cdot a \\
 & =e\cdot a=a
\end{align}$$

1. if $\displaystyle{x\cdot c=y\cdot c}$, then $\displaystyle{x=y}$
similar as left cancellation

---

set. equivalence $\displaystyle{\sim}$ is a binary operation on a set $\displaystyle{S}$, that satisfies

1. $\displaystyle{\forall a\in S, a\sim a}$
1. if $\displaystyle{a\sim b}$, then $\displaystyle{b\sim a}$
1. if $\displaystyle{a\sim b, b\sim c}$, then $\displaystyle{a\sim c}$

we can define equivalence class of $\displaystyle{a\in S}$ in $\displaystyle{(S,\sim)}$ by

$$\begin{align}
[a] & =\left\{x\sim S|x\sim a\right\}
\end{align}$$

then $\displaystyle{(S,\sim)}$ can be divide into several equivalence classes $\displaystyle{\left\{A_{i}\right\}}$, where we have $\displaystyle{A_{i}\cap A_{j}=\emptyset}$.

map...

semigroup $\displaystyle{(S,\cdot)}$ only requires associative law and close law.

![[Attachments/Pasted image 20250923095723.png]]

a ring $\displaystyle{(R,+,\cdot)}$ satisfies

1. $\displaystyle{(R,+)}$ is an Abelian group
1. $\displaystyle{(R,\cdot)}$ is a semigroup
1. left distributive law: $\displaystyle{\forall a,b,c\in R, (a+b)\cdot c=a\cdot c+b\cdot c}$

we have

1. right distributive law: $\displaystyle{\forall a,b,c\in R,a\cdot(b+c)=a\cdot b+a\cdot c}$

a field $\displaystyle{(F,+,\cdot)}$ is an Abelian unitary ring and satisfies

1. $\displaystyle{\forall a\in F,a\neq0,\exists a^{-1}\in F, a^{-1}\cdot a=1}$
