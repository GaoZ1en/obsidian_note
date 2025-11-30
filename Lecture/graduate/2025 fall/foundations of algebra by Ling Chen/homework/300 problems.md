# group theory

## set and mapping

1. suppose $\displaystyle{B,A_{i}(i\in I)}$ are subsets of a set $\displaystyle{\Omega}$. prove
	1. $\displaystyle{B\cap\left( \bigcup _{i\in I}A_{i} \right)=\bigcup _{i\in I}(B\cap A_{i})}$
*sol*. suppose $\displaystyle{a\in B\cap\left(\bigcup _{i\in I}A_{i}\right)}$, then $\displaystyle{a\in B}$ and $\displaystyle{a\in \bigcup _{i\in I}A_{i}}$. which means $\displaystyle{a\in A_{i},(i\in I'),a\not\in A_{i},(i\not\in I-U')}$ for some $\displaystyle{I'\subseteq I}$, then $\displaystyle{a\in B\cup A_{i},(i\in I')\implies a\in \bigcup _{i\in I}(B\cup A_{i})}$. 
suppose $\displaystyle{a\in \bigcup _{i\in I}(B\cap A_{i})}$, then $\displaystyle{a\in B\cap A_{i},(i\in I')}$ and $\displaystyle{a\not\in B\cap A_{i},(i\in I-I')}$ for some $\displaystyle{I'\subseteq I}$, which means $\displaystyle{a\in B}$ and $\displaystyle{a\in A_{i},(i\in I'),a\not\in A_{i},(i\in I-I')}$, then $\displaystyle{a\in B}$ and $\displaystyle{a\in \bigcup _{i\in I}A_{i}\implies a\in B\cap\left(\bigcup _{i\in I}A_{i}\right)}$
	2. $\displaystyle{B\cup\left(\bigcap _{i\in I}A_{i}\right)=\bigcap _{i\in I}(B\cup A_{i})}$
*sol*. suppose $\displaystyle{a\in B\cup\left(\bigcap _{i\in A}A_{i}\right)}$, then $\displaystyle{a\in B}$ or $\displaystyle{a\in \bigcap _{i\in A}A_{i}\implies a\in A_{i},(i\in I)}$ (or both statements are satsified, but does not matter the following statement), which means $\displaystyle{a\in B\cup A_{i},(i\in I)\implies a\in \bigcap _{i\in I}(B\cup A_{i})}$.
suppose $\displaystyle{a\in \bigcap _{i\in I}(B\cup A_{i})}$, then $\displaystyle{a\in B\cup A_{i},(i\in I)}$, which means $\displaystyle{a\in B}$ and $\displaystyle{a\not\in B\cap A_{i},(i\in I)}$ or otherwise. the last case means $\displaystyle{a\in \bigcap _{i\in I}A_{i}}$, so we have $\displaystyle{a\in B\cup\left(\bigcap _{i\in I}A_{i}\right)}$
	3. $\displaystyle{\overline{\bigcup _{i\in I}A_{i}}=\bigcap _{i\in I}\overline{A}_{i}}$
*sol*. $\displaystyle{a\in \overline{\bigcup _{i\in I}A_{i}}\iff a\in \Omega-\bigcup _{i\in I}A_{i}\iff a\not\in A_{i},(i\in I)\iff a\in\overline{A_{i}},(i\in I)\iff a\in \bigcap _{i\in I}\overline{A_{i}}}$
	4. $\displaystyle{\overline{\bigcap _{i\in I}A_{i}}=\bigcup _{i\in I}\overline{A_{i}}}$
*sol*. $\displaystyle{a\in\overline{\bigcap _{i\in I}A_{i}}\iff a\in \Omega-\bigcap _{i\in I}A_{i}\iff a\in \overline{A}_{i},(i\in I',I'\subseteq I)\iff a\in \bigcup _{i\in I}\overline{A_{i}}}$

2. suppose $\displaystyle{f:A\to B}$ is a map from $\displaystyle{A}$ to $\displaystyle{B}$, ($\displaystyle{A,B\neq \emptyset}$). prove
	1. $\displaystyle{f}$ is injective $\displaystyle{\iff}$ $\displaystyle{\exists g:B\to A\text{ s.t. }gf=1_{A}}$
*sol*. $\displaystyle{\implies}$ define $\displaystyle{g(x)=\begin{cases}a_{0} & \text{if }f(a_{0})=x \\\text{whatever} & \text{otherwise}\end{cases}}$. then $\displaystyle{gf=1_{A}}$.
$\displaystyle{\impliedby}$ $\displaystyle{\forall a_{1},a_{2}\in A}$ and $\displaystyle{a_{1}\neq a_{2}}$, assume $\displaystyle{f(a_{1})=f(a_{2})}$. since $\displaystyle{gf=1_{A}}$, then $\displaystyle{g(f(a_{1}))=a_{1},=g(f(a_{2}))=a_{2}}$. on ther other hand $\displaystyle{g(f(a_{1}))=g(f(a_{2}))\implies a_{1}=a_{2}}$, contradiction!
	2. $\displaystyle{f}$ is surjective $\displaystyle{\iff}$ $\displaystyle{\exists h:B\to A\text{ s.t. }fh=1_{B}}$
*sol*. $\displaystyle{\implies}$ define $\displaystyle{h(x)=a}$ if $\displaystyle{a\in A}$ s.t. $\displaystyle{f(a)=x}$. then $\displaystyle{fh=1_{B}}$
$\displaystyle{\impliedby}$ assume $\displaystyle{\exists b\in B}$ s.t. $\displaystyle{\forall a\in A,f(a)\neq b}$. since $\displaystyle{fh=1_{B}}$, consider $\displaystyle{h(b)\in A}$ then $\displaystyle{f(h(b))=b}$, contradiction!

3. suppose $\displaystyle{f:A\to B}$ and $\displaystyle{g:B\to C}$ are bijective, then $\displaystyle{gf:A\to C}$ is also bijective, and $\displaystyle{(gf)^{-1}=f^{-1}g^{-1}}$.
*sol*. $\displaystyle{\forall a_{1},a_{2}\in A,a_{1}\neq a_{2}}$, then $\displaystyle{g(f(a_{1}))\neq g(f(a_{2}))}$ since $\displaystyle{f}$ and $\displaystyle{g}$ are injective. so $\displaystyle{gf}$ is also a injective. $\displaystyle{\forall c\in C}$, then $\displaystyle{f^{-1}(g^{-1}(c))\in A}$ satisfies $\displaystyle{g(f(f^{-1}(g^{-1}(c))))=g(g^{-1}(c))=c}$, then $\displaystyle{gf}$ is also a surjective. then $\displaystyle{gf}$ is a bijective with inverse $\displaystyle{f^{-1}g^{-1}}$.

4. suppose $\displaystyle{A}$ is a finite set, $\displaystyle{P(A)}$ is its power set. prove that $\displaystyle{|P(A)|=2^{|A|}}$.
*sol*. obviously.

5. suppose $\displaystyle{f:A\to B}$ is a map from $\displaystyle{A}$ to $\displaystyle{B}$. define a binary relation $\displaystyle{\sim}$ on $\displaystyle{A}$ that $\displaystyle{\forall a,a'\in A}$, $\displaystyle{a\sim a'\iff f(a)=f(a')}$. prove $\displaystyle{\sim}$ is a equivalence relation
*sol*. reflexive. $\displaystyle{f(a)=f(a)\implies a\sim a}$
symmetric. $\displaystyle{a\sim a'\implies f(a)=f(a')=f(a)\implies a'\sim a}$
transitive. suppose $\displaystyle{a\sim b, b\sim c\implies f(a)=f(b),f(b)=f(c)\implies f(a)=f(c)\implies a\sim c}$

6. suppose $\displaystyle{A}$ and $\displaystyle{B}$ are two finite sets. what is the number of different
	1. maps from $\displaystyle{A}$ to $\displaystyle{B}$
	2. binary operations on $\displaystyle{A}$
	3. injective from $\displaystyle{A}$ to $\displaystyle{B}$
*sol*. 1. $\displaystyle{|A|^{|B|}}$ 2. $\displaystyle{|A|^{|A|^{2}}}$ 3. if $\displaystyle{|A|>|B|}$, 0; if $\displaystyle{|A|\leqslant|B|}$, $\displaystyle{\frac{|B|!}{(|B|-|A|)!}}$

## group

1. let $\displaystyle{N}$ is the set of $\displaystyle{n\times n}$ non-singular complex upper triangular matrix, $\displaystyle{P}$ is the set of $\displaystyle{n\times n}$ upper triangular matrix that elements in the principal diagonal are all $\displaystyle{1}$. prove $\displaystyle{N}$ and $\displaystyle{P}$ are group with matrix product.
*sol*. the identity is $\displaystyle{1_{n}}$, matrix product satisfies associative law. suppose $\displaystyle{A,B\in N}$ , then $\displaystyle{AB\in N}$ and $\displaystyle{A^{-1}\in N}$. so $\displaystyle{N}$ is a group. similar to $\displaystyle{P}$.

2. let $\displaystyle{G=\left\{(a,b)|a,b\in \mathbb{R},a\neq 0\right\}}$. define $\displaystyle{(a,b)(c,d)=(ac,ad+b)}$. prove $\displaystyle{G}$ is a group under the operation.
*sol*. identity $\displaystyle{(1,0)}$. $\displaystyle{\forall(a,b)\in G,(a,b)(1,0)=(a,b),(1,0)(a,b)=(a,b)}$.
associative. $\displaystyle{\forall(a,b),(c,d),(e,f)\in G}$, $\displaystyle{((a,b)(c,d))(e,f)=(ac,ad+b)(e,f)=(ace,acf+ad+b)}$, $\displaystyle{(a,b)((c,d)(e,f))=(a,b)(ce,cf+d)=(ace,acf+ad+b)}$.
inverse. $\displaystyle{\forall(a,b)\in G,(a,b)(a^{-1},-a^{-1}b)=(1,0),(a^{-1},-a^{-1}b)(a,b)=(1,0)}$

3. let $\displaystyle{\Omega}$ is a set, $\displaystyle{G}$ is a group, $\displaystyle{G^{\Omega}}$ is the set of maps from $\displaystyle{\Omega}$ to $\displaystyle{G}$. $\displaystyle{\forall f,g\in G^{\Omega}}$. define $\displaystyle{\forall a\in \Omega,(fg)(a)=f(a)g(a)}$. prove $\displaystyle{G^{\Omega}}$ is a group.
*sol*. identity. define $\displaystyle{E\in G^{\Omega},\forall a\in \Omega,E(a)=e\in G}$, then $\displaystyle{\forall f\in G^{\Omega},a\in \Omega}$, $\displaystyle{(fE)(a)=f(a)E(a)=f(a)e}=f(a)=(Ef)(a)$.
associative. $\displaystyle{\forall f,g,h\in G^{\Omega},a\in \Omega}$, then $\displaystyle{((fg)h)(a)=(fg)(a)h(a)=(f(a)g(a))h(a)=f(a)(g(a)h(a))=f(a)(gh)(a)=(f(gh))(a)}$
inverse. $\displaystyle{\forall f\in G^{\Omega}}$, define $\displaystyle{f^{-1}\in G^{\Omega}}$ such that $\displaystyle{\forall a\in \Omega,f^{-1}(a)=(f(a))^{-1}}$, then $\displaystyle{(ff^{-1})(a)=f(a)(f(a))^{-1}=e=E(a)=(f^{-1}f)(a)}$

4. let $\displaystyle{G}$ is the set of $\displaystyle{n\times n}$ complex matrix with $\displaystyle{\text{rank}\leqslant r}$. prove that $\displaystyle{G}$ is a semi-group under matrix product.
*sol*. associative is obvious. the rank of product of two matrix with $\displaystyle{\text{rank}\leqslant r}$ is also $\displaystyle{\leqslant r}$

5. give an example of semi-group which is not a monoid. and give an example of monoid which is not a group. 
*sol*. consider the semi-group $\displaystyle{G}$ in problem 4. when $\displaystyle{r<n}$, $\displaystyle{G}$ is not a monoid, and when $\displaystyle{r=n}$, $\displaystyle{G}$ is a monoid but not a group.

6. suppose $\displaystyle{G}$ is a semi-group. if $\displaystyle{G}$ has left unit $\displaystyle{e}$, and $\displaystyle{\forall a\in G,\exists a^{-1}\in G\text{ s.t. }a^{-1}a=e}$. prove $\displaystyle{G}$ is a group
*sol*. $\displaystyle{\forall a\in G}$, $\displaystyle{aa^{-1}=eaa^{-1}=(a^{-1})^{-1}a^{-1}aa^{-1}=(a^{-1})^{-1}ea^{-1}=(a^{-1})^{-1}a^{-1}=e}$, so $\displaystyle{a^{-1}}$ is also a right inverse$\displaystyle{\implies(a^{-1})^{-1}=a}$. then $\displaystyle{\forall a\in G,ae=aa^{-1}a=ea=a}$, $\displaystyle{e}$ is also a right unit.

7. suppose $\displaystyle{G}$ is a semi-group. if $\displaystyle{\forall a,b\in G}$, $\displaystyle{xa=b}$ and $\displaystyle{ay=b}$ are solvable in $\displaystyle{G}$, then $\displaystyle{G}$ is a group
*sol*. $\displaystyle{\forall a\in G}$, $\displaystyle{xa=a}$ is solvable, and we denote the solution $\displaystyle{x=e}$. $\displaystyle{\forall b\in G}$, consider the equation $\displaystyle{ay=b}$, then $\displaystyle{eb=eay=ay}$, so $\displaystyle{e}$ is a left unit of $\displaystyle{G}$. consider the equation $\displaystyle{xa=e}$. since it is solvable in $\displaystyle{G}$, then $\displaystyle{\exists a^{-1}\in G}$ is the left inverse of $\displaystyle{a}$. by problem 6, we have $\displaystyle{G}$ is a group.

8. suppose $\displaystyle{G}$ is a finite semi-group. if left and right cancellation laws are held in $\displaystyle{G}$, then $\displaystyle{G}$ is a group.
*sol*. suppose $\displaystyle{G=\left\{a_{1},\dots,a_{n}\right\},n=|G|}$. by cancellation laws, $\displaystyle{\forall a_{i}\in G}$ we have $\displaystyle{\left\{a_{i}a_{1},\dots a_{i}a_{n}\right\}=G=\left\{a_{1}a_{i},\dots,a_{n}a_{i}\right\}}$, then $\displaystyle{\exists e\in G, ea_{i}=a_{i}}$. $\displaystyle{\forall a_{j}\in G}$, $\displaystyle{\exists a_{k}\in G\text{ s.t. }a_{j}=a_{i}a_{k}}$, then $\displaystyle{ea_{j}=ea_{i}a_{k}=a_{i}a_{k}=a_{j}}$, which means $\displaystyle{e}$ is a left unit. and since $\displaystyle{e\in G=G a_{j}}$, $\displaystyle{\exists a_{j}^{-1}\in G, e=a_{j}^{-1}a_{j}}$. then by problem 6, we have $\displaystyle{G}$ is a group

9. suppose $\displaystyle{G}$ is a monoid, $\displaystyle{a,b\in G}$.
	1. if $\displaystyle{a}$ has its inverse $\displaystyle{a^{-1}}$, then $\displaystyle{a^{-1}}$ has its inverse $\displaystyle{(a^{-1})^{-1}=a}$
*sol*. obviously
	2. if $\displaystyle{a,b}$ have their inverses $\displaystyle{a^{-1},b^{-1}}$, then $\displaystyle{ab}$ has its inverse $\displaystyle{(ab)^{-1}=b^{-1}a^{-1}}$
*sol*. $\displaystyle{(b^{-1}a^{-1})(ab)=b^{-1}(a^{-1}a)b=b^{-1}b=e}$, and $\displaystyle{(ab)(b^{-1}a^{-1})=a(bb^{-1})a^{-1}=aa^{-1}=e}$

10. suppose $\displaystyle{f:G\to H}$ is a homomorphism from group $\displaystyle{G}$ to group $\displaystyle{H}$. then $\displaystyle{f(1_{G})=1_{H}}$ and $\displaystyle{\forall x\in G,f(x^{-1})=f(x)^{-1}}$
*sol*. $\displaystyle{\forall a\in G,f(a)=f(1_{G}a)=f(1_{G})f(a)=f(a)f(1_{G})\implies f(1_{G})=1_{H}}$
$\displaystyle{\forall a\in G,1_{H}=f(1_{G})=f(aa^{-1})=f(a)f(a^{-1})=f(a^{-1})f(a)\implies f(a^{-1})=(f(a))^{-1}}$

11. $\displaystyle{\forall a\in G,a\mapsto a^{-1}}$ is a automorphism of $\displaystyle{G}$ iff $\displaystyle{G}$ is a Abelian group
*sol*. denote $\displaystyle{f:a\mapsto a^{-1}}$. notice that $\displaystyle{\forall a,b\in G,f(ab)=(ab)^{-1}=b^{-1}a^{-1}=f(a)f(b)=a^{-1}b^{-1}}$ $\displaystyle{\iff}$ $\displaystyle{G}$ is Abelian

12. prove that $\displaystyle{(\mathbb{Q},+)\not\cong(\mathbb{Q}^{*},\cdot)}$.
*sol*. assume there is a isomorphism $\displaystyle{f:\mathbb{Q}\to \mathbb{Q^{*}}}$, then $\displaystyle{\exists a\in \mathbb{Q},\text{ s.t. }2=f(a)=f\left( \frac{a}{2}+\frac{a}{2} \right)=f\left( \frac{a}{2} \right)^{2}\implies f\left( \frac{a}{2} \right)=\sqrt{ 2 }\in \mathbb{Q^{*}}}$, contradiction.

13. prove that  $\displaystyle{(\mathbb{R},+)\cong\left(\mathbb{R}^{+},\cdot\right)}$.
*sol*. consider $\displaystyle{f:\mathbb{R}^{+}\to \mathbb{R},f(x)=\frac{x-1}{x+1}}$, then $\displaystyle{f(1)=0,\forall x \in \mathbb{R}^{+},f\left(x^{-1}\right)=\frac{1-x}{1+x}=-f(x)}$.

14. $\displaystyle{x^{2}=1}$ has even number of solutions in a group $\displaystyle{G}$ with even number of order.
*sol*. suppose $\displaystyle{a}$ is a solution of $\displaystyle{x^{2}=1}$, then $\displaystyle{a^{-1}}$ is also a solution. so solutions appear in pairs.

15. let $\displaystyle{G}$ is a finite group with order $\displaystyle{n}$, $\displaystyle{S}$ is a subset of $\displaystyle{G}$ with order $\displaystyle{|S|>\frac{n}{2}}$. prove that $\displaystyle{\forall g\in G,\exists a,b\in S\text{ s.t. }ab=g}$. 
*sol*. consider $\displaystyle{S^{-1}=\left\{s^{-1}|s \in S\right\}}$, we have $\displaystyle{|S^{-1}|=|S|> \frac{n}{2}}$. $\displaystyle{\forall g\in G}$, consider $\displaystyle{gS^{-1}}$, we have $\displaystyle{|gS^{-1}|=|S^{-1}|> \frac{n}{2}}$. then $\displaystyle{|S|+|gS^{-1}|> n}$, by pigeonhole principle, $\displaystyle{S\cap gS^{-1}\neq \emptyset}$, i.e. $\displaystyle{\exists x \in S\cap gS^{-1}}$. thus $\displaystyle{\exists a\in S\text{ s.t. }x=a}$ and $\displaystyle{\exists b\in S,x=gb^{-1}}$, then $\displaystyle{g=ab}$

16. what is $\displaystyle{\mathrm{Aut}(\mathbb{Q},+)}$?
*sol*. notice that $\displaystyle{f_{a}:x\mapsto ax}$ is an automorphism of $\displaystyle{(\mathbb{Q},+)}$. 

17. suppose $\displaystyle{G}$ is a monoid. $\displaystyle{b=a^{-1}\iff aba=a,ab^{2}a=e}$
*sol*. $\displaystyle{\implies}$ obviously. $\displaystyle{\impliedby}$. $\displaystyle{ab=ab(ab^{2}a)=ab^{2}a=e,ba=(ab^{2}a)ba=ab^{2}a=e\implies b=a^{-1}}$

18. let $\displaystyle{G}$ is a finite group with order $\displaystyle{n}$, let $\displaystyle{a_{1},\dots ,a_{n}}$ be arbitrary $\displaystyle{n}$ elements of $\displaystyle{G}$ (it is possible that $\displaystyle{a_{i}=a_{j}}$). prove that $\displaystyle{\exists p,q\in \mathbb{N},1\leqslant p\leqslant q\leqslant n}$, s.t. $\displaystyle{a_{p}a_{p+1}\dots a_{q}=e}$.
*sol*. let $\displaystyle{S=\left\{a_{1}\dots a_{i}|1\leqslant i\leqslant n\right\}}$. if $\displaystyle{e\in S}$, qed. if $\displaystyle{e\not\in S}$, then $\displaystyle{\exists p,q\in \mathbb{N},1\leqslant p<q\leqslant n}$ s.t. $\displaystyle{a_{1}\dots a_{p}=a_{1}\dots a_{q}}$. then $\displaystyle{a_{p+1}\dots a_{q}=e}$. 

19. 

20. suppose $\displaystyle{a,b\in G}$ that satisfies $\displaystyle{aba=ba^{2}b,a^{3}=e,b^{2n-1}=e}$ for some $\displaystyle{n\in \mathbb{N}}$. prove that $\displaystyle{b=e}$.
*sol*. $\displaystyle{ab^{2}a=aba^{3}ba=ba^{2}(ba^{2}b)a=ba^{2}(aba)a=b^{2}a^{2}\implies ab^{2}=b^{2}a}$. suppose $\displaystyle{ab^{2r}=b^{2r}a}$, then $\displaystyle{ab^{2(r+1)}=b^{2}ab^{2r}=b^{2(r+1)}a}$, by induction $\displaystyle{ab^{2k}=b^{2k}a}$ is satisfied for $\displaystyle{k\in \mathbb{N}}$. consider $\displaystyle{ab^{2n}=b^{2n}a\implies ab=ba}$, then $\displaystyle{ba^{2}=aba=ba^{2}b\implies b=e}$.

## subgroup and coset decomposition

1. suppose $\displaystyle{A}$ is a nonempty set of group $\displaystyle{G}$. prove that $\displaystyle{A}$ is a subgroup of $\displaystyle{G}$ iff $\displaystyle{\forall a,b\in A,ab^{-1}\in A}$ (which means $\displaystyle{AA^{-1}=A}$).
*sol*. $\displaystyle{\impliedby}$. $\displaystyle{\forall a\in A,aa^{-1}=e\in A}$. $\displaystyle{\forall a\in A,ea^{-1}=a^{-1}\in A\implies \forall a,b\in A,a(b^{-1})^{-1}=ab\in A}$. $\displaystyle{\implies}$ obviously

2. suppose $\displaystyle{o(g)=mn}$ for $\displaystyle{g\in G}$, where $\displaystyle{(m,n)=1}$. then $\displaystyle{g=ab,o(a)=m,o(b)=n}$, and $\displaystyle{a,b}$ are some power of $\displaystyle{g}$.
*sol*. since $\displaystyle{(m,n)=1}$, $\displaystyle{\exists s,t\in \mathbb{Z}\text{ s.t. }sm+tn=1}$ with $\displaystyle{(t,m)=1,(s,n)=1}$. write $\displaystyle{a=g^{tn},b=g^{sm}}$, we have $\displaystyle{o(a)=m,o(b)=n,ab=g^{sm+tn}=g}$.

3. suppose $\displaystyle{gh=hg}$ for $\displaystyle{g,h\in G}$ with $\displaystyle{o(g)=m,o(h)=n}$. denote $\displaystyle{(m,n),[m,n]}$ are the gcd and lcm of $\displaystyle{g,h}$. then 
	1. $\displaystyle{o(g^{n}h^{m})=\frac{[m,n]}{(m,n)}}$
*sol*. $\displaystyle{o(g^{n})=\frac{[m,n]}{n}=\frac{m}{(m,n)},o(h^{m})=\frac{[m,n]}{m}=\frac{n}{(m,n)},\left( \frac{m}{(m,n)}, \frac{n}{(m,n)} \right)=1,g^{n}h^{m}=h^{m}g^{n}\implies o(g^{n}h^{m})= \frac{m}{(m,n)}\frac{n}{(m,n)}=\frac{[m,n]}{(m,n)}}$
	2. $\displaystyle{\exists a\in G,o(a)=(m,n)}$
*sol*.
	3. $\displaystyle{\exists b\in G,o(b)=[m,n]}$
*sol*. 

4. suppose $\displaystyle{A}$ is a finite subset of $\displaystyle{G}$. $\displaystyle{A}$ is a subgroup of $\displaystyle{G}$ iff $\displaystyle{\forall a,b\in A,ab\in A}$.
*sol*. $\displaystyle{\impliedby}$. consider the cyclic subgroup of $\displaystyle{G}$ generated by $\displaystyle{a\in A}$: $\displaystyle{\braket{ a }=\left\{a^{m}|m\in \mathbb{Z}\right\}\subseteq A}$. since $\displaystyle{A}$ is finite, then $\displaystyle{|\braket{ a }|}$ is also finite. then $\displaystyle{\exists m\in \mathbb{Z}_{o(a)},\text{ s.t. }a^{m}=e\in A}$ and $\displaystyle{a^{-1}=a^{o(a)-1}}\in A$. $\displaystyle{\implies}$ obviously

5. suppose $\displaystyle{A,B}$ are two subgroups of $\displaystyle{G}$. prove $\displaystyle{A\cup B}$ is a subgroup iff $\displaystyle{A\leqslant B}$ or $\displaystyle{B\leqslant A}$. 
*sol*. $\displaystyle{\impliedby}$. obviously. 
$\displaystyle{\implies}$. assume $\displaystyle{A\not\subseteq B}$ and $\displaystyle{B\not\subseteq A}$, then $\displaystyle{\exists a\in A,a\not\in B}$ and $\displaystyle{\exists b\in B,b\not\in A}$, and $\displaystyle{ab\not\in A\cup B}$, contradiction.

6. suppose $\displaystyle{A,B}$ are two subgroups of $\displaystyle{G}$. prove $\displaystyle{AB\leqslant G}$ iff $\displaystyle{AB=BA}$
*sol*. $\displaystyle{\implies}$. $\displaystyle{\forall a\in A,b\in B}$, consider $\displaystyle{(ab)^{-1}=b^{-1}a^{-1}\in BA}$. since $\displaystyle{AB\leqslant G}$, then we have $\displaystyle{b^{-1}a^{-1}\in AB\implies BA\subset AB}$. similarly we can prove $\displaystyle{AB\subset BA}$, then $\displaystyle{AB=BA}$
$\displaystyle{\impliedby}$. $\displaystyle{\forall a_{1}b_{1},a_{2}b_{2} \in AB}$. since $\displaystyle{AB=BA}$, then $\displaystyle{\exists a_{3}b_{3}\in AB\text{ s.t. }b_{1}a_{2}=a_{3}b_{3}}$, then $\displaystyle{(a_{1}b_{1})(a_{2}b_{2})=a_{1}(b_{1}a_{2})b_{2}=a_{1}(a_{3}b_{3})b_{2}=(a_{1}a_{3})(b_{3}b_{2})\in AB}$. similarly $\displaystyle{(a_{1}b_{1})^{-1}=b_{1}^{-1}a_{1}^{-1}\in AB}$. 

7. suppose $\displaystyle{A,B}$ are two subgroups of $\displaystyle{G}$ and $\displaystyle{G=AB}$. if $\displaystyle{A\subseteq C\leqslant G}$, then $\displaystyle{C=A(B\cap C)}$.
*sol*. $\displaystyle{\forall c\in C,\exists a\in A,b\in B,\text{ s.t. }c=ab\in G\implies b=a^{-1}c\in C}$, which means $\displaystyle{C=A(B\cap C)}$.

8. suppose $\displaystyle{A,B}$ are two non-empty subsets of finite group $\displaystyle{G}$. if $\displaystyle{|A|+|B|>|G|}$, then $\displaystyle{G=AB}$.
*sol*. $\displaystyle{\forall g\in G, |Ag^{-1}|=|A|}$. since $\displaystyle{|A|+|B| >|G|\implies Ag^{-1}\cap B\neq \emptyset}$. then $\displaystyle{\exists a\in A,b\in B\implies ag^{-1}=b\implies g=ab^{-1}\implies G=AB}$.

9. suppose $\displaystyle{A,B}$ are two subgroups of group $\displaystyle{G}$. then
	1. $\displaystyle{g(A\cap B)=gA\cap gB,\forall g\in G}$
*sol*. $\displaystyle{\forall g\in G,c\in A\cap B,gc\in gA,gc\in gB\implies gc\in gA\cap gB}$.
	2. if $\displaystyle{A}$ and $\displaystyle{B}$ have finite index, then $\displaystyle{A\cap B}$ has finite index.
*sol*. 1 implies that any left coset of $\displaystyle{A\cap B}$ is contained in some left coset of $\displaystyle{A}$ and some left coset of $\displaystyle{B}$. since $\displaystyle{A}$ and $\displaystyle{B}$ have finite index, then $\displaystyle{A\cap B}$ also has finite index.

10. if $\displaystyle{R}$ is a representative set of right cosets of $\displaystyle{G}$ with respect to $\displaystyle{A}$. then $\displaystyle{R^{-1}}$ is a representative set of left cosets of $\displaystyle{G}$ with respect to $\displaystyle{A}$.
*sol*. notice that $\displaystyle{\forall r\in R,a\in A,(ra)^{-1}=a^{-1}r^{-1}\in Ar^{-1}}$.

11. suppose $\displaystyle{A\leqslant G,B\leqslant G}$. if $\displaystyle{\exists a,b\in G\text{ s.t. }Aa=Bb}$, then $\displaystyle{A=B}$.
*sol*. $\displaystyle{Aa=Bb\implies A=Bba^{-1}\implies ba^{-1}\in A\implies(ba^{-1})^{-1}=ab^{-1}\in A\implies B=Aab^{-1}=A}$.

12. suppose $\displaystyle{n>2}$. then finite group $\displaystyle{G}$ has a even number of elements with order $\displaystyle{n}$.
*sol*. if group $\displaystyle{G}$ has no element with order $\displaystyle{n}$, qed. suppose the order of element $\displaystyle{g\in G}$ is $\displaystyle{n}$, then $\displaystyle{o(g^{-1})=n}$. elements with order $\displaystyle{n}$ appear in pairs, so the number is even.

13. $\displaystyle{\forall a,b\in G}$. prove that $\displaystyle{a,a^{-1}}$ has the same order and $\displaystyle{ab,ba}$ has the same order
*sol*. suppose $\displaystyle{o(a)=n}$, then $\displaystyle{(a^{-1})^{n}=(a^{n})^{-1}=e^{-1}=e}$. and if $\displaystyle{o(a^{-1})=m<n}$, then $\displaystyle{a^{m}=(a^{-1})^{-m}=e}$, so $\displaystyle{o(a^{-1})=m<n}$, contradiction.
suppose $\displaystyle{o(ab)=k}$, then $\displaystyle{(ba)^{k+1}=b(ab)^{k}a=b e a=ba\implies o(ba)=o(ab)=k}$. and if $\displaystyle{o(ba)=l<k}$, then $\displaystyle{(ab)^{l+1}=a(ba)^{l}b=a e b=ab\implies o(ab)=o(ba)=l<k}$, contradiction.

14. suppose $\displaystyle{A\leqslant G}$, prove that $\displaystyle{C_{G}C_{G}C_{G}(A)=C_{G}(A)}$. 
*sol*. denote $\displaystyle{B=C_{G}C_{G}(A)}$, we need to prove that $\displaystyle{C_{G}(B)=C_{G}(A)}$. 

15. prove that for finite group $\displaystyle{G}$ and its proper subgroup $\displaystyle{H}$, the union of all conjugate subgroups of $\displaystyle{H}$ is not equal to $\displaystyle{G}$. whether this conclusion holds for infinite groups?
*sol*. suppose $\displaystyle{S=\bigcup _{g\in G}g^{-1}Ag}$. the number of conjugate subgroups of $\displaystyle{H}$ in $\displaystyle{G}$ is $\displaystyle{[G:N_{G}(H)]=\frac{|G|}{|N_{G}(H)|}}$. then we have

$$\begin{align}
|S| & \leqslant (|H|-1)[G:N_{G}(H)]+1 \\
 & = \frac{|G||H|}{|N_{G}(H)|}-\frac{|G|}{|N_{G}(H)|}+1 \\
 & =\begin{cases}
|H|-1+1<|G|, & H\text{ is a normal subgroup of }G \\
|G|-\frac{|G|}{|N_{G}(H)|}+1<|G|, & \text{otherwise}
\end{cases}
\end{align}$$

16. suppose $\displaystyle{H}$ and $\displaystyle{K}$ are two subgroup of finite group $\displaystyle{G}$. prove that $\displaystyle{|HgK|=|H|[K:g^{-1}Hg\cap K]}$. z

## cyclic group

1. prove the Euler theorem: if $\displaystyle{n\in \mathbb{N}_{+}, a\in \mathbb{Z}}$ and $\displaystyle{(a,n)=1}$. then $\displaystyle{a^{\varphi(n)}\equiv1\mod{n}}$, where $\displaystyle{\varphi(n)}$ is the Euler function, i.e., the number of positive integers which coprime with $\displaystyle{n}$ and small than $\displaystyle{n}$
*sol*. consider the set $\displaystyle{U(n)}$ that coprime with $\displaystyle{n}$. by definition we have $\displaystyle{|U(n)|=\varphi(n)}$. by Lagrange theorem, $\displaystyle{o(a)|\varphi(n)\implies \varphi(n)=ko(a),k\in \mathbb{Z}\implies [a]^{\varphi(n)}=[a]^{ko(a)}=[1]^{k}=[1]\implies a^{\varphi(n)}\equiv1 \mod{n}}$.
in particular, if $\displaystyle{n}$ is a prime number, we get the Fermat's little theorem $\displaystyle{a^{p}\equiv 1\mod{p}, \forall a\in \mathbb{Z}}$
2. suppose $\displaystyle{n\in \mathbb{N}_{+}}$, prove that the set $\displaystyle{G}$ of solutions of $\displaystyle{x^{n}=1}$ forms a group in the sense of usual multiplication that is isomorpic to $\displaystyle{\mathbb{Z}_{n}}$.
*sol*. we have known that $\displaystyle{G=\left\{\omega ^{k}|k=1,2,\dots,n,\omega=e^{2\pi i/n}\right\}}$. define $\displaystyle{f:G\to \mathbb{Z}_{n}, f(\omega ^{k})=k}$, it is easy to verify that $\displaystyle{f}$ is a isomorphism.
3. the necessary and sufficient condition that $\displaystyle{G}$ has no non-trivial subgroup is that $\displaystyle{G=\left\{1\right\}\text{ or }\mathbb{Z}_{p}}$.
*sol*. $\displaystyle{\implies}$. trivial
$\displaystyle{\impliedby}$. since the only subgroups of $\displaystyle{G}$ is $\displaystyle{\left\{e\right\}}$ and $\displaystyle{G}$, if $\displaystyle{\left\{e\right\}=G}$, then $\displaystyle{G=\left\{1\right\}}$. if $\displaystyle{\left\{e\right\}\neq G}$, suppose $\displaystyle{G= \braket{ g },\forall 1\neq g\in G}$. by same reason the order of $\displaystyle{g}$ is a prime number
4. 
	1. suppose $\displaystyle{a,b\in G}$ with order $\displaystyle{n,m}$ that satisfy $\displaystyle{(n,m)=1}$ and $\displaystyle{ab=ba}$. find $\displaystyle{|\braket{ ab }|}$.
*sol*. $\displaystyle{|\braket{ ab }|=mn}$
	2. suppose $\displaystyle{g\in G}$ that satisfies $\displaystyle{(o(g),n)=1}$. solve $\displaystyle{x^{n}=g}$ in $\displaystyle{\braket{ g }}$.
*sol*. since $\displaystyle{(o(g),n)=1}$, $\displaystyle{\exists a,b\in \mathbb{Z}, ao(g)+bn=1\implies bn\equiv1\mod{o(g)}}$, which gives the unique solution $\displaystyle{x=g^{b}}$
5. non-trivial subgroup $\displaystyle{M}$ is called the maximal subgroup if $\displaystyle{\exists! B<G}$ that $\displaystyle{M<B<G}$. find all the maximal subgroups of $\displaystyle{\mathbb{Z}}$.
*sol*. $\displaystyle{p\mathbb{Z}}$ with $\displaystyle{p}$ a prime number
6. give an example of infinite group that its subgroup with order larger than $\displaystyle{1}$ has finite index
*sol*. $\displaystyle{n\mathbb{Z}}$ with $\displaystyle{n}$ a integer
7. suppose $\displaystyle{p}$ is a prime number, $\displaystyle{G=\left\{x \in \mathbb{C}|\exists n\in \mathbb{N}_{+}\text{ s.t. } x^{p^{n}}=1\right\}}$, then $\displaystyle{(G,\times)}$ forms a group. prove that any non-trivial subgroup of $\displaystyle{G}$ is a cyclic group of finite order.
*sol*. suppose $\displaystyle{H<G}$, then $\displaystyle{\exists g\in G, g\not\in H}$. suppose $\displaystyle{o(g)=p^{n}}$, then $\displaystyle{\forall h\in H, o(h)=p^{m}, m<n}$, otherwise $\displaystyle{\exists h\in H, o(h)=p^{m}, m\geqslant n}$, then $\displaystyle{\braket{ h }=\left\{x \in \mathbb{C}|x^{p^{m}}=1\right\}}$, since $\displaystyle{m\geqslant n}$, $\displaystyle{x \in \braket{ h }< H}$, contradiction!

suppose $\displaystyle{h}$ is the element with maximal order in $\displaystyle{H}$, then $\displaystyle{H=\braket{h  }}$
8. if $\displaystyle{G}$ has finitely many subgroups, then $\displaystyle{G}$ is a finite group.
*sol*. 

## normal subgroup and quotient group

1. let $\displaystyle{G=\left\{(a,b)|a\neq 0\right\}}$ with multiplication $\displaystyle{(a,b)(c,d)=(ac,ad+b)}$. prove that $\displaystyle{K=\left\{(1,b)|b\in \mathbb{R}\right\}}$ is a normal subgroup and $\displaystyle{G/K\cong(\mathbb{R}^{*},\times)}$
*sol*. consider the group homomorphism $\displaystyle{\pi:G\to \mathbb{R}^{*}, \pi(a,b)=a}$. this is a surjective homomorphism and the kernel $\displaystyle{\mathrm{Ker}\pi=K}$. by fundamental law of group homomorphism, we have $\displaystyle{G/K\cong\mathbb{R}^{*}}$
2. suppose $\displaystyle{G}$ is a group, and $\displaystyle{N<M<G}$
	1. if $\displaystyle{N\triangleleft G}$, then $\displaystyle{N\triangleleft M}$
*sol*. since $\displaystyle{N\triangleleft G}$, $\displaystyle{\forall g\in G, gN=Ng\implies \forall h\in M, hM=Mh\implies N\triangleleft M}$
	2. if $\displaystyle{N\triangleleft M, M\triangleleft G}$, $\displaystyle{N\triangleleft ?G}$
*sol*. no
3. prove that
	1. $\displaystyle{Z(G)\triangleleft G}$
*sol*. by definition
	2. if $\displaystyle{N<G}$ and the index of $\displaystyle{N}$ is $\displaystyle{2}$, then $\displaystyle{N\triangleleft G}$
*sol*. since $\displaystyle{[G:N]=2}$, then $\displaystyle{G=N\cup Ng=gN\cup N, \forall g\not\in N}$, then $\displaystyle{gN=Ng, \forall g\in N\implies N\triangleleft G}$
4. 
	1. suppose $\displaystyle{N\triangleleft G}$, $\displaystyle{N\leqslant M\leqslant G}$, then $\displaystyle{N_{G}(M)/N=N_{\bar{G}}(\bar{M})}$, where $\displaystyle{\bar{G}=G/N,\bar{M}=M/N}$
*sol*. $\displaystyle{N_{G}(M)=\left\{g\in G|\right\}}$ 
	2. suppose $\displaystyle{f:G\to H}$ is a group homomorphism, $\displaystyle{M\leqslant G}$. prove that $\displaystyle{f^{-1}(f(M))=KM}$, where $\displaystyle{K=\mathrm{Ker}f}$
*sol*.
	3. suppose $\displaystyle{f:G\to H}$ is a group homomorphism. if $\displaystyle{g\in G}$ is an element with finite order, then $\displaystyle{o(f(g))|o(g)}$
*sol*. 