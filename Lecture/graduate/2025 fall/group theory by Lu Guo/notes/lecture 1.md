definition of group: a set $\displaystyle{G}$ equipped with a binary operator $\displaystyle{\cdot:G\times G\to G}$, which satisfies

1. $\displaystyle{\forall a,b\in G,a\cdot b\in G}$
2. $\displaystyle{\forall a,b,c\in G,(a\cdot b)\cdot c=a\cdot(b\cdot c)}$
3. $\displaystyle{\exists e\in G,\forall a\in G, e\cdot a=a}$
4. $\displaystyle{\forall a\in G,\exists a^{-1}\in G,a^{-1}\cdot a=e}$

then we have

1. if $\displaystyle{c\cdot x=c\cdot y}$, then $\displaystyle{x=y}$
$$\begin{align}
c^{-1}\cdot(c\cdot x) & =(c^{-1}\cdot c)\cdot x \\
 & =e\cdot x=x=y
\end{align}$$
2. $\displaystyle{a\cdot a^{-1}=e\implies (a^{-1})^{-1}=a}$
$$\begin{align}
a^{-1}\cdot(a\cdot a^{-1}) & =(a^{-1}\cdot a)\cdot a^{-1} \\
 & =e\cdot a^{-1} \\
 & =a^{-1} \\
\implies a\cdot a^{-1} & =e
\end{align}$$
3. $\displaystyle{a\cdot e=a}$
$$\begin{align}
a\cdot e & =a\cdot(a^{-1}\cdot a) \\
 & =(a\cdot a^{-1})\cdot a \\
 & =e\cdot a=a
\end{align}$$
4. if $\displaystyle{x\cdot c=y\cdot c}$, then $\displaystyle{x=y}$
similar as left cancellation

