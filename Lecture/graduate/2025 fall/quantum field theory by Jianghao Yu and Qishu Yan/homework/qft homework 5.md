# problem 1

define little group generator for massless particles

$$\begin{align}
A & =K_{1}+J_{2}  \\
B & =K_{2}-J_{1} \\
J_{3} & =J_{3}
\end{align}$$

show that they satisfy the commutation relations

$$\begin{align}
[J_{3},A] & =iB \\
[J_{3},B] & =-iA \\
[A,B] & =0
\end{align}$$

*sol*.

it is straightforward to check the commutation relations using the known commutation relations of the Lorentz generators:

$$\begin{align}
[J_{3},A] & =[J_{3},K_{1}]+[J_{3},J_{2}] \\
 & =iK_{2}+iJ_{1} \\
 & =iB \\
[J_{3},B] & =[J_{3},K_{2}]-[J_{3},J_{1}] \\
 & =-iK_{1}+iJ_{2} \\
 & =-iA \\
[A,B] & =[K_{1},K_{2}]-[K_{1},J_{1}]+[J_{2},K_{2}]-[J_{2},J_{1}] \\
 & =-iJ_{3}+iK_{2}+iK_{1}+iJ_{3} \\
 & =0
\end{align}$$

