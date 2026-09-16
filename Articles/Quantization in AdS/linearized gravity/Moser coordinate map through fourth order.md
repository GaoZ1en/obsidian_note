# Moser coordinate map through fourth order

Companion to [[higher perturbations of linearized gravity modes]]. This supplies two further **direct-coordinate** orders beyond the second-order Darboux map. It is a formal calculation, not a convergence theorem.

Write $\Omega=\Omega_0+\sum_{r\ge1}\kappa^r\Omega_r$, with homogeneous mode-space degree $r$ in the coefficients of $\Omega_r$. For the Euler vector field $\mathcal E$ put

$$\alpha_r=\frac1{r+2}\iota_{\mathcal E}\Omega_r,\qquad K_r(v)=\iota_v\Omega_r,\qquad V_r=-K_0^{-1}\alpha_r,\qquad R_r=K_0^{-1}K_r.$$

The radial-Moser interpolation and its vector field are

$$\Omega_t=\Omega_0+t(\Omega-\Omega_0),\qquad
Y_t=-\bigl(K_0+t\sum_{r\ge1}\kappa^rK_r\bigr)^{-1}\sum_{r\ge1}\kappa^r\alpha_r.$$

Introduce the following vector fields (the letters in this section are local notation, not the vacuum cocycle or central charge):

$$\begin{aligned}
B&=R_1V_1,& C&=R_1V_2+R_2V_1,& D&=R_1^2V_1,\\
E&=R_1V_3+R_2V_2+R_3V_1,\\
F&=R_1^2V_2+(R_1R_2+R_2R_1)V_1,&G&=R_1^3V_1.
\end{aligned}$$

Then the vector field itself is

$$Y_t=\kappa V_1+\kappa^2(V_2-tB)+\kappa^3(V_3-tC+t^2D)
+\kappa^4(V_4-tE+t^2F-t^3G)+O(\kappa^5).$$

Let $\mathscr V_r=V_r\cdot\partial$ and similarly $\mathscr B,\ldots,\mathscr G$. These are directional-derivative operators, so their products act on all coefficients to their right. In particular they must not be commuted.

For the flow $\dot\Phi_t=Y_t\circ\Phi_t$, the pullback obeys $\partial_t\Phi_t^*=\Phi_t^*\mathcal L_{Y_t}$. Write

$$\Phi_1^*=1+\kappa U_1+\kappa^2U_2+\kappa^3U_3+\kappa^4U_4+O(\kappa^5).$$

The direct coordinate map is $a^i=b^i+\sum_{r=1}^4\kappa^r(U_rb^i)+O(\kappa^5)$, and $\Phi_1^*\Omega=\Omega_0$ to this order. Explicitly,

$$U_1=\mathscr V_1,\qquad U_2=\mathscr V_2-\frac12\mathscr B+\frac12\mathscr V_1^2,$$

$$\begin{aligned}
U_3={}&\mathscr V_3-\frac12\mathscr C+\frac13\mathscr D
+\frac12(\mathscr V_1\mathscr V_2+\mathscr V_2\mathscr V_1)
-\frac13\mathscr V_1\mathscr B-\frac16\mathscr B\mathscr V_1+\frac16\mathscr V_1^3,
\end{aligned}$$

and

$$\begin{aligned}
U_4={}&\mathscr V_4-\frac12\mathscr E+\frac13\mathscr F-\frac14\mathscr G\\
&+\frac12(\mathscr V_1\mathscr V_3+\mathscr V_3\mathscr V_1+\mathscr V_2^2)
-\frac13\mathscr V_1\mathscr C-\frac16\mathscr C\mathscr V_1
+\frac14\mathscr V_1\mathscr D+\frac1{12}\mathscr D\mathscr V_1\\
&-\frac13\mathscr V_2\mathscr B-\frac16\mathscr B\mathscr V_2+\frac18\mathscr B^2\\
&+\frac16(\mathscr V_1^2\mathscr V_2+\mathscr V_1\mathscr V_2\mathscr V_1+\mathscr V_2\mathscr V_1^2)\\
&-\frac18\mathscr V_1^2\mathscr B-\frac1{12}\mathscr V_1\mathscr B\mathscr V_1-\frac1{24}\mathscr B\mathscr V_1^2+\frac1{24}\mathscr V_1^4.
\end{aligned}$$

These formulas give explicit finite compositions of the known $\Omega_1,\ldots,\Omega_4$ and $K_0^{-1}$. They do not leave new Moser equations to solve at orders three and four. They are not the coefficients of a single autonomous Lie generator.

## Independent check

Expand $Y_t=\sum_{n,m}\kappa^nt^mW_{n,m}$. For each composition $n_1+\cdots+n_k=r$ the pullback coefficient has the ordered term

$$\frac{\mathcal L_{W_{n_1,m_1}}\cdots\mathcal L_{W_{n_k,m_k}}}
{\prod_{j=1}^k(m_1+\cdots+m_j+j)}.$$

This follows by integrating $0<t_1<\cdots<t_k<1$, with the earliest time acting on the left. `scripts/vacuum_orbit_review/verify_moser.py` checks the four displayed $U_r$ against this formula using noncommuting symbolic operators.

It also checks a two-dimensional homogeneous example $\Omega=(1+\sum_{r=1}^4\kappa^rf_r)dx\wedge dy$. The radial map $a=\rho(b)b$ must satisfy

$$\rho^2+\sum_{r=1}^4\frac{2\kappa^r}{r+2}f_r(b)\rho^{r+2}=1+O(\kappa^5).$$

For $f_1=x+y$, $f_2=x^2+2y^2$, $f_3=x^2y+y^3$, and $f_4=x^4+xy^3$, the independently formed direct-coordinate coefficients satisfy all five coefficients of this volume identity, as well as four coordinate-consistency checks. The test does not assert an infinite-dimensional analytic Darboux theorem.
