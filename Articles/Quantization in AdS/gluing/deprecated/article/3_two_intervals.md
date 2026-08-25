# Gluing two intervals

The main question can now be tested in a model for which both the continuum interface problem and the regulated regional Hamiltonian are explicit. We consider two Neumann half intervals, solve the finite-coupling spectrum first, and only then introduce the mode cutoff. The remainder of the section compares the regulated spectrum and selected vacuum correlators with the joined theory.

## Exact analytic benchmark

Let

$$
I_L=[-L,0],
\qquad
I_R=[0,L],
$$

and introduce coordinates measured from the physical endpoints,

$$
s_L=x+L,
\qquad
s_R=L-x,
\qquad
0\leq s_i\leq L.
$$

Both coordinates increase toward the artificial cut. The continuum Hamiltonian is

$$
\begin{aligned}
H_g={}&\frac12\sum_{i=L,R}\int_0^L\mathrm ds_i\,
\left[
\pi_i^2+(\partial_{s_i}\phi_i)^2+m^2\phi_i^2
\right]\\
&+\frac g2\left(\phi_L(L)-\phi_R(L)\right)^2,
\qquad g>0,
\end{aligned}
$$

with Neumann data

$$
\partial_{s_i}\phi_i(0)=0
$$

at the physical endpoints. The corresponding action has the same bulk terms and the negative of the interface potential. Its variation gives

$$
(\partial_t^2-\partial_{s_i}^2+m^2)\phi_i=0
$$

and the cut equations

$$
\partial_{s_L}\phi_L(L)
=-g\left(\phi_L(L)-\phi_R(L)\right),
$$

$$
\partial_{s_R}\phi_R(L)
=+g\left(\phi_L(L)-\phi_R(L)\right).
$$

In the original $x$ coordinate these equations state $\partial_x\phi_L(0)=\partial_x\phi_R(0)$ at every finite $g$. The CPS form contains no interface term,

$$
\Omega_g
=\sum_{i=L,R}\int_0^L\mathrm ds_i\,
\delta\dot\phi_i\wedge\delta\phi_i,
$$

because the interface interaction has no time derivatives.

Reflection about the cut separates the spectrum into two sectors. Write

$$
\phi_R(s)=\sigma\phi_L(s),
\qquad
\sigma=\pm1.
$$

The reflection-even sector has no trace mismatch and is independent of $g$:

$$
k_{+,n}=\frac{n\pi}{L},
\qquad
\omega_{+,n}=\sqrt{m^2+k_{+,n}^2},
\qquad
n=0,1,2,\ldots.
$$

Its two half-interval profiles are

$$
\Phi_{+,n,L}
=\mathcal N_{+,n}e^{-i\omega_{+,n}t}
\cos(k_{+,n}s_L),
$$

$$
\Phi_{+,n,R}
=\mathcal N_{+,n}e^{-i\omega_{+,n}t}
\cos(k_{+,n}s_R).
$$

The reflection-odd profiles are

$$
\Phi_{-,n,L}
=\mathcal N_{-,n}e^{-i\omega_{-,n}t}
\cos(k_{-,n}s_L),
$$

$$
\Phi_{-,n,R}
=-\mathcal N_{-,n}e^{-i\omega_{-,n}t}
\cos(k_{-,n}s_R),
$$

where

$$
k_{-,n}\tan(k_{-,n}L)=2g,
\qquad
\omega_{-,n}=\sqrt{m^2+k_{-,n}^2}.
$$

For $g>0$, the $n$th odd root is the unique solution in

$$
\frac{(n-1)\pi}{L}
<k_{-,n}<
\frac{(n-\frac12)\pi}{L},
\qquad
n=1,2,\ldots.
$$

Direct CPS normalization gives

$$
\mathcal N_{\sigma,n}
=\frac{1}{\sqrt{2\omega_{\sigma,n}}}
\left[
L+\frac{\sin(2k_{\sigma,n}L)}{2k_{\sigma,n}}
\right]^{-1/2},
$$

with the $k=0$ expression defined by continuity. Hence

$$
iX_{\tau,r}^*\mathbin{\cdot}X_{\sigma,n}\mathbin{\cdot}\Omega_g
=\delta_{\sigma\tau}\delta_{nr},
$$

and the complete finite-coupling quantum Hamiltonian is

$$
H_g
=\sum_{\sigma=\pm1}\sum_n
\hbar\omega_{\sigma,n}
\left(b_{\sigma,n}^\dagger b_{\sigma,n}+\frac12\right).
$$

The two limits are analytic properties of this interface model. As $g\to0$,

$$
k_{-,n}\longrightarrow\frac{(n-1)\pi}{L},
$$

so the even and odd towers become pairwise degenerate and can be rotated into modes supported on the two separate Neumann half intervals. For bounded $H_g$, the limit $g\to\infty$ suppresses the trace difference, while the cut equations retain derivative matching. The odd roots approach

$$
k_{-,n}\longrightarrow\frac{(n-\frac12)\pi}{L}.
$$

Together with the even tower, they give the full-interval Neumann wave numbers

$$
K_r=\frac{r\pi}{2L},
\qquad
r=0,1,2,\ldots,
$$

and frequencies $\Omega_r=\sqrt{m^2+K_r^2}$. This proves the exact fixed-branch spectral target used below. It does not establish convergence of the regional product representation to the joined continuum Fock representation.

## Quantized regional modes and finite Hamiltonian

We now reverse the practical order: quantize each half interval first and then couple the resulting oscillators. The normalized Neumann basis on either half is

$$
u_0(s)=\frac1{\sqrt L},
\qquad
u_n(s)=\sqrt{\frac2L}\cos\left(\frac{n\pi s}{L}\right),
\qquad n\geq1,
$$

with

$$
\omega_n^2=m^2+\frac{n^2\pi^2}{L^2}.
$$

At a fixed time,

$$
\phi_i(s)=\sum_{n=0}^{\infty}Q_{i,n}u_n(s),
\qquad
\pi_i(s)=\sum_{n=0}^{\infty}P_{i,n}u_n(s),
$$

and

$$
[Q_{i,n},P_{j,r}]=i\hbar\delta_{ij}\delta_{nr}.
$$

Retain $n=0,\ldots,N$ and define the cut-value vector

$$
b_n=u_n(L),
\qquad
b=\left(b_0,\ldots,b_N\right)^{\mathrm T}.
$$

The finite Hamiltonian is

$$
\begin{aligned}
H_N={}&\frac12\sum_{n=0}^N
\left(P_{L,n}^2+\omega_n^2Q_{L,n}^2\right)
+\frac12\sum_{n=0}^N
\left(P_{R,n}^2+\omega_n^2Q_{R,n}^2\right)\\
&+\frac{g_N}{2}
\left[b^{\mathrm T}(Q_L-Q_R)\right]^2.
\end{aligned}
$$

Introduce symmetric and antisymmetric coordinates

$$
Q_\pm=\frac{Q_L\pm Q_R}{\sqrt2},
\qquad
P_\pm=\frac{P_L\pm P_R}{\sqrt2}.
$$

Then

$$
H_N=H_{+,N}+H_{-,N},
$$

with stiffness matrices

$$
K_{+,N}=D_N,
\qquad
K_{-,N}=D_N+2g_Nbb^{\mathrm T},
$$

where

$$
D_N=\operatorname{diag}(\omega_0^2,\ldots,\omega_N^2).
$$

The even sector is therefore exact at every cutoff for every retained regional mode. All regulator dependence relevant to gluing is concentrated in a rank-one update of the odd sector. This decomposition will also be used for the vacuum covariance.

## Response-matched coupling

To compare with the analytic equation for $k$, subtract the common mass shift and use the spatial spectral parameter $z=k^2$. The cut mismatch evaluates both half-interval traces, so the omitted static response is

$$
\begin{aligned}
T_N(0)
&=2\sum_{n=N+1}^{\infty}
\frac{u_n(L)^2}{(n\pi/L)^2}\\
&=\frac{4L}{\pi^2}\sum_{n=N+1}^{\infty}\frac1{n^2}
=\frac{4L}{\pi^2}\psi_1(N+1),
\end{aligned}
$$

where $\psi_1$ is the trigamma function. For a fixed continuum coupling $g$, the matched finite coupling is

$$
\frac1{g_N}=\frac1g+T_N(0).
$$

Thus a direct calculation with $g_N=g$ omits an $O(N^{-1})$ boundary response. Matching removes that static term, leaving $T_N(z)-T_N(0)$ in the low-energy secular equation.

At the joined endpoint, $g^{-1}=0$, and the exact running coupling is

$$
\frac1{g_N^{(\infty)}}
=\frac{4L}{\pi^2}\psi_1(N+1),
$$

or

$$
g_N^{(\infty)}
=\frac{\pi^2}{4L\psi_1(N+1)}.
$$

Using the trigamma asymptotic gives

$$
g_N^{(\infty)}
=\frac{\pi^2}{4L}
\left(
N+\frac12+\frac1{12N}+O(N^{-2})
\right)
\sim\frac{\pi^2N}{4L}.
$$

The divergence of $g_N^{(\infty)}$ is required by the joined target; it is not a fixed finite defect coupling. The exact trigamma expression is used in the correlator tests. The spectrum table below records the previously computed benchmark using only the leading term $\pi^2N/(4L)$, which deliberately tests how much improvement survives without subleading matching data.

## Spectrum reconstruction

Three finite-cutoff prescriptions should be distinguished.

1. A bare or direct penalty sets $g_N=g$ at fixed finite $g$. It converges because the omitted response vanishes, but its low-energy secular matrix retains the leading $T_N(0)=O(N^{-1})$ error.
2. At the joined endpoint, a hard projection imposes $b^{\mathrm T}(Q_L-Q_R)=0$ exactly inside the retained space. This is the naive finite-dimensional image of trace equality, but it discards the response of the omitted modes.
3. A response-matched penalty keeps the full retained coordinate space and chooses $g_N$ from the omitted response. It agrees with the continuum secular equation at the matching point.

For $L=m=1$, the joined-endpoint benchmark compares the first eight full-interval frequencies. The reported matched column uses the leading coupling $g_N=\pi^2N/4$, while the hard-projection column enforces the retained trace constraint directly:

$$
\begin{array}{c|cc}
N&\text{hard projection}&\text{leading response match}\\ \hline
8&2.5151\times10^{-2}&1.2114\times10^{-3}\\
16&1.2445\times10^{-2}&3.3827\times10^{-4}\\
32&6.2371\times10^{-3}&8.9449\times10^{-5}\\
64&3.1276\times10^{-3}&2.3005\times10^{-5}\\
128&1.5668\times10^{-3}&5.8738\times10^{-6}
\end{array}
$$

The entries are maximum relative frequency errors in that fixed eight-mode window. They show $O(N^{-1})$ convergence for the hard projection and $O(N^{-2})$ convergence for the leading matched penalty. This is a fixed-window observation, not a rate uniform over modes whose energy grows with $N$. It also does not turn spectral convergence into a statement about the ground state, because the latter depends on the eigenvectors and on how observables are embedded in the truncated space.

## Vacuum correlation functions

The final test uses the same response-matched Hamiltonian rather than a separately fitted covariance. If

$$
K_N=O_N\operatorname{diag}
(\Omega_{1,N}^2,\ldots,\Omega_{r_N,N}^2)O_N^{\mathrm T},
$$

then its Gaussian ground state has coordinate covariance

$$
\langle QQ^{\mathrm T}\rangle_N
=\frac{\hbar}{2}K_N^{-1/2}
=\frac{\hbar}{2}O_N\operatorname{diag}
(\Omega_{1,N}^{-1},\ldots,\Omega_{r_N,N}^{-1})O_N^{\mathrm T}.
$$

For the parity blocks,

$$
C_{+,N}=\frac\hbar2D_N^{-1/2},
\qquad
C_{-,N}=\frac\hbar2
\left(D_N+2g_N^{(\infty)}bb^{\mathrm T}\right)^{-1/2},
$$

and hence

$$
C_{LR,N}=\frac12(C_{+,N}-C_{-,N}),
\qquad
C_{RR,N}=\frac12(C_{+,N}+C_{-,N}).
$$

The following tests take $L=m=\hbar=1$. They concern cutoff-dependent smooth packets, so all field operators are spatially smeared. No coincident unsmeared product is used.

### Cross-interface spacelike covariance

For a normalized compactly supported bump centered at $x_0$, define

$$
h_N(x;x_0)
=\frac{
\exp\left[-1/(1-((x-x_0)/a_N)^2)\right]
}{
a_N\int_{-1}^{1}\exp[-1/(1-u^2)]\,\mathrm du
},
\qquad
|x-x_0|<a_N,
$$

and set it to zero outside its support. We choose

$$
a_N=\frac{L}{2\sqrt N}.
$$

Thus $a_N\to0$, while the number of retained wavelengths across the support grows as $\sqrt N$. Let $\Phi_{L,N}$ and $\Phi_{R,N}$ be the field smeared with packets centered at $-L/2$ and $L/2$. The joined point correlation is

$$
\left\langle
\phi\left(0,-\frac12\right)
\phi\left(0,\frac12\right)
\right\rangle_{\rm joined}
=0.109856652941906.
$$

To separate the regulator error from the packet-to-point error, the glued covariance is first compared with the joined theory using the same packet at the same cutoff. The recorded results are

$$
\begin{array}{c|c|c|c}
N&
\text{gluing relative error}&
\text{smearing relative error}&
\text{total relative error}\\ \hline
32&5.774274\times10^{-6}&2.596161\times10^{-3}&2.601950\times10^{-3}\\
64&5.439661\times10^{-7}&1.296303\times10^{-3}&1.295758\times10^{-3}\\
128&2.820875\times10^{-7}&6.477089\times10^{-4}&6.479912\times10^{-4}\\
256&2.394792\times10^{-8}&3.237440\times10^{-4}&3.237680\times10^{-4}\\
512&2.104368\times10^{-9}&1.618444\times10^{-4}&1.618423\times10^{-4}\\
1024&3.719224\times10^{-10}&8.091532\times10^{-5}&8.091495\times10^{-5}
\end{array}
$$

The gluing error is already below the finite-width error in this sequence. The latter is consistent with the $a_N^2=O(N^{-1})$ correction expected for two symmetric separated packets.

### One-sided interface-to-bulk correlators and sewing residual

Let $h_{R,N}^{(0)}$ be a positive normalized bump supported on $[0,a_N]$, let $h_{L,N}^{(0)}(x)=h_{R,N}^{(0)}(-x)$, and let $h_{R,N}^{(d)}$ be a symmetric packet centered at $d=1/2$. The corresponding operators are

$$
\Phi_{L,N}^{(0)}
=\int_{-a_N}^{0}h_{L,N}^{(0)}(x)\phi_{L,N}(0,x)\,\mathrm dx,
$$

$$
\Phi_{R,N}^{(0)}
=\int_{0}^{a_N}h_{R,N}^{(0)}(x)\phi_{R,N}(0,x)\,\mathrm dx,
$$

and

$$
\Phi_{R,N}^{(d)}
=\int_{d-a_N}^{d+a_N}h_{R,N}^{(d)}(x)\phi_{R,N}(0,x)\,\mathrm dx.
$$

The left-interface correlation contracts $C_{LR,N}$, whereas the right-interface correlation independently contracts $C_{RR,N}$. The joined point value is

$$
\left\langle\phi(0,0)\phi\left(0,\frac12\right)\right\rangle_{\rm joined}
=0.195731508375256.
$$

The left and right positive packets have opposite first moments, $-a_N/2$ and $a_N/2$. Their finite-width covariances therefore differ by $O(a_N)$ even in the exact joined theory. The diagnostic for gluing must subtract that known geometric asymmetry. Define

$$
\begin{aligned}
\mathcal S_N
=\frac1{|C_{\rm point}|}
\Big|&
\left(C_{L,N}^{\rm glued}-C_{R,N}^{\rm glued}\right)\\
&-\left(C_{L,N}^{\rm joined}-C_{R,N}^{\rm joined}\right)
\Big|.
\end{aligned}
$$

The positive-packet results are

$$
\begin{array}{c|c|c|c}
N&
\text{left gluing error}&
\text{right gluing error}&
\mathcal S_N\\ \hline
32&2.06968\times10^{-4}&1.84952\times10^{-4}&3.93138\times10^{-4}\\
128&7.12674\times10^{-6}&6.81414\times10^{-6}&1.39542\times10^{-5}\\
512&6.55913\times10^{-7}&6.27954\times10^{-7}&1.28395\times10^{-6}\\
2048&9.53580\times10^{-10}&9.40095\times10^{-10}&1.89376\times10^{-9}
\end{array}
$$

One can remove the $O(a_N)$ point-limit error while keeping one-sided support by replacing an interface packet operator by

$$
2\Phi_{\rm side,N}^{(a_N/2;0)}
-\Phi_{\rm side,N}^{(a_N;0)}.
$$

The resulting profile has unit zeroth moment and vanishing first moment, but it is not everywhere positive. At $N=2048$, the improved left and right total relative errors are $3.28\times10^{-6}$ and $3.02\times10^{-6}$, while their raw glued difference relative to the point reference is $2.62\times10^{-7}$. This packet improvement concerns the approach to the point observable; it is distinct from the finite-width-subtracted gluing residual $\mathcal S_N$.

### Independent joined-theory references and scope

Each joined packet covariance was evaluated independently by a high-cutoff full-interval Neumann mode sum and by the image-kernel representation

$$
\frac{\hbar}{2\pi}
\sum_{p\in\mathbb Z}
\left[
K_0\left(m|x-y+4pL|\right)
+K_0\left(m|x+y+2L+4pL|\right)
\right].
$$

The two references agree to better than $1.9\times10^{-11}$ for the cross-interface packets and $1.7\times10^{-11}$ for the one-sided tests in the recorded runs. The squared-norm tails of all retained packet projections tend to zero. Errors near $10^{-10}$ have implementation-dependent last digits, so the tables support the displayed convergence pattern and scale rather than those last digits as exact data.

The correlator result is therefore limited but stronger than a spectral check: the response-matched finite regional Hamiltonians reconstruct the displayed cutoff-dependent smeared equal-time vacuum two-point functions, including a cross-interface covariance and selected one-sided interface-to-bulk observables. The calculation does not prove convergence for arbitrary states, arbitrary $n$-point functions, unequal-time observables, coincident unsmeared fields, or continuum Fock representations.
