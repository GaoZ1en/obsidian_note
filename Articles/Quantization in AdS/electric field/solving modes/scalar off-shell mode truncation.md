---
title: scalar off-shell mode truncation
date: 2026-07-19
summary: "An action-level Galerkin check that one slow radial seed together with the fast scalar modes reproduces the alternative-quantization spectrum in global AdS3."
---

# scope and result

Consider a scalar field on global $\mathrm{AdS}_{3}$,

$$\begin{align}
\mathrm{d}s^{2}&=-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi^{2}, \\
M^{2}&=\Delta(\Delta-2), & 0&<\Delta<1,
\end{align}$$

with the renormalized finite-radius action

$$\begin{align}
S_{R} &=-\frac{1}{2}\int_{r\leq R}\mathrm{d}^{3}x\sqrt{-g} \left(\nabla_{\mu}\Phi\nabla^{\mu}\Phi+M^{2}\Phi^{2}\right) -\frac{\Delta}{2}\int_{r=R}\mathrm{d}^{2}x\sqrt{-\gamma}\,\Phi^{2}.
\end{align}$$

The check below starts from an off-shell finite-dimensional subspace satisfying the D.27 asymptotics, substitutes it directly into $S_R$, takes $R\to\infty$, and diagonalizes the resulting quantum-mechanical system. It does not impose D.34 on the truncated configurations. The low generalized eigenvalues converge to

$$\begin{align}
\boxed{\omega_{p,m}=\Delta+|m|+2p}, &\qquad p=0,1,2,\ldots .
\end{align}$$

Only the polynomial branches with $0<\Delta<1$ are considered. The endpoint $\Delta=1$ is excluded.

# off-shell radial truncation

Fix one angular harmonic $Y_m(\phi)$ satisfying $-\partial_\phi^2Y_m=\ell^2Y_m$ and write $\ell=|m|$. Its angular norm is suppressed below; choosing $Y_m=e^{im\phi}$ would give the common factor $2\pi$. Define

$$\begin{align}
\Delta_{+}&:=2-\Delta, \\
s_{\ell}(r) &:=r^{\ell}(1+r^{2})^{-(\ell+\Delta)/2}, \\
f_{n\ell}(r) &:=r^{\ell}(1+r^{2})^{-(\ell+\Delta_{+})/2} P_{n}^{(\Delta_{+}-1,\ell)} \left(\frac{r^{2}-1}{r^{2}+1}\right), &n&=0,1,2,\ldots .
\end{align}$$

The truncated field is

$$\begin{align}
\Phi_{\ell,N}(t,r,\phi) &=Y_m(\phi)\left[q_s(t)s_{\ell}(r) +\sum_{n=0}^{N-1}q_n(t)f_{n\ell}(r)\right].
\end{align}$$

The time-dependent coefficients are arbitrary. Therefore this is an off-shell field expansion even though the chosen radial basis functions are convenient Sturm--Liouville eigenfunctions.

Since

$$\begin{align}
s_{\ell}(r)&=r^{-\Delta}\left(1+\mathcal{O}(r^{-2})\right), \\
f_{n\ell}(r)&=c_n r^{\Delta-2}\left(1+\mathcal{O}(r^{-2})\right), \\
c_n&=P_n^{(\Delta_+-1,\ell)}(1)=\frac{(\Delta_+)_n}{n!},
\end{align}$$

we have

$$\begin{align}
\Phi_{\ell,N} &=Y_m\left[q_s r^{-\Delta} +\left(\sum_{n=0}^{N-1}c_nq_n\right)r^{\Delta-2} +\cdots\right].
\end{align}$$

For $0<\Delta<1$, $r^{\Delta-2}=o(r^{-\Delta})$. Hence every finite truncation satisfies the radial content of D.27,

$$\begin{align}
\Phi=r^{-\Delta}\Psi+o(r^{-\Delta}),
\end{align}$$

but a generic truncated configuration does not satisfy D.34: its coefficient of $r^{\Delta-2}$ is not zero. Each basis element nevertheless belongs to the finite renormalized quadratic-form domain, which is the additional condition needed to substitute the D.27 fields into the action.

There is only one slow basis vector in a fixed $m$ sector because the slow boundary datum in that sector is the single coefficient $q_s(t)$. After this coefficient is supplied by $s_{\ell}$, the remaining radial function has zero slow coefficient and lies in the fast form domain, for which the $f_{n\ell}$ form the natural orthogonal basis.

More concretely, the field-theory radial modes to be recovered are

$$\begin{align}
a_{p\ell}(r) &=r^{\ell}(1+r^{2})^{-(\ell+\Delta)/2} P_p^{(\Delta-1,\ell)} \left(\frac{r^{2}-1}{r^{2}+1}\right), \\
a_{p\ell}(r) &=\frac{(\Delta)_p}{p!}r^{-\Delta} +\mathcal{O}(r^{-\Delta-2}).
\end{align}$$

Therefore

$$\begin{align}
a_{p\ell}-\frac{(\Delta)_p}{p!}s_{\ell} &=\mathcal{O}(r^{-\Delta-2}),
\end{align}$$

which has no slow coefficient and belongs to the fast form domain. This is the explicit reason that one slow representative, rather than one slow function for every radial level, is enough.

# reduction of the action

For radial profiles $u_i\in\{s_{\ell},f_{0\ell},\ldots,f_{N-1,\ell}\}$, define

$$\begin{align}
w(r)&:=\frac{r}{1+r^{2}}, & p(r)&:=r(1+r^{2}), & V_{\ell}(r)&:=\frac{\ell^{2}}{r}+M^{2}r.
\end{align}$$

After suppressing the common angular norm, the action becomes

$$\begin{align}
L_{\ell,N} &=\frac{1}{2}\dot{q}^{T}G\dot{q}-\frac{1}{2}q^{T}Kq, \\
G_{ij} &=\int_{0}^{\infty}\mathrm{d}r\,w(r)u_i(r)u_j(r), \\
K_{ij} &=\lim_{R\to\infty}\left[ \int_{0}^{R}\mathrm{d}r \left(p(r)u_i'(r)u_j'(r)+V_{\ell}(r)u_i(r)u_j(r)\right) +\Delta R\sqrt{1+R^{2}}\,u_i(R)u_j(R) \right].
\end{align}$$

The last term in $K$ comes from the boundary counterterm. The physical squared frequencies are the generalized eigenvalues

$$\begin{align}
Kv&=\omega^{2}Gv.
\end{align}$$

## kinetic matrix

Introduce

$$\begin{align}
y&:=\frac{r^{2}}{1+r^{2}}, & \frac{r\,\mathrm{d}r}{1+r^{2}}&=\frac{\mathrm{d}y}{2(1-y)}.
\end{align}$$

The slow--slow entry is immediately a beta integral,

$$\begin{align}
G_{ss} &=\frac{1}{2}\int_{0}^{1}\mathrm{d}y\, y^{\ell}(1-y)^{\Delta-1} =\frac{1}{2}B(\ell+1,\Delta).
\end{align}$$

The slow--fast overlap reduces to

$$\begin{align}
G_{sf_n} &=\frac{1}{2}\int_{0}^{1}\mathrm{d}y\, y^{\ell}P_n^{(1-\Delta,\ell)}(2y-1).
\end{align}$$

Using the shifted Rodrigues formula

$$\begin{align}
P_n^{(\alpha,\ell)}(2y-1) &=\frac{(-1)^n}{n!}y^{-\ell}(1-y)^{-\alpha} \frac{\mathrm{d}^{n}}{\mathrm{d}y^{n}} \left[y^{n+\ell}(1-y)^{n+\alpha}\right],
\end{align}$$

and integrating by parts $n$ times gives

$$\begin{align}
G_{sf_n} &=\frac{(1-\Delta)_n}{2n!(\ell+n+1)} \\
&=\frac{(1-\Delta)(\Delta_+)_n} {2n!(n+1-\Delta)(\ell+n+1)}.
\end{align}$$

Finally, Jacobi orthogonality gives

$$\begin{align}
G_{f_nf_k} &=\frac{1}{2}\int_{0}^{1}\mathrm{d}y\, y^{\ell}(1-y)^{\Delta_+-1} P_n^{(\Delta_+-1,\ell)}(2y-1) P_k^{(\Delta_+-1,\ell)}(2y-1) \\
&=\delta_{nk} \frac{(n+1)_{\ell}} {2(\Delta_++n)_{\ell}(\Delta_++\ell+2n)}.
\end{align}$$

## stiffness matrix

The radial Sturm--Liouville equation is

$$\begin{align}
-\frac{\mathrm{d}}{\mathrm{d}r}\left(p(r)u'(r)\right) +V_{\ell}(r)u(r) &=\lambda w(r)u(r).
\end{align}$$

The selected profiles obey it with

$$\begin{align}
\lambda_s&=(\ell+\Delta)^2, & \lambda_{f_n}&=(\ell+\Delta_++2n)^2.
\end{align}$$

For example, integrating the slow derivative term by parts gives

$$\begin{align}
K(s_{\ell},u) &=\lambda_s G(s_{\ell},u) +\lim_{R\to\infty}\left[ p(R)s_{\ell}'(R)u(R) +\Delta R\sqrt{1+R^{2}}s_{\ell}(R)u(R) \right].
\end{align}$$

The derivative boundary term and the counterterm cancel at leading order. Their sum is $\mathcal{O}(R^{-2\Delta})$ for $u=s_{\ell}$ and $\mathcal{O}(R^{-2})$ for $u=f_{n\ell}$, so both limits vanish. For two fast profiles the boundary contribution is $\mathcal{O}(R^{2\Delta-2})$, which also vanishes precisely because $\Delta<1$. Consequently,

$$\begin{align}
K_{ss}&=(\ell+\Delta)^2G_{ss}, \\
K_{sf_n}&=(\ell+\Delta)^2G_{sf_n}, \\
K_{f_nf_k} &=\delta_{nk}(\Delta_++\ell+2n)^2G_{f_nf_n}.
\end{align}$$

These equations are obtained from the renormalized action; D.34 has not been inserted into the matrix elements.

# non-eigen slow seed and numerical convergence

The profile $s_{\ell}$ is itself the lowest alternative-quantization radial eigenfunction. It therefore places the exact lowest frequency $\omega=\ell+\Delta$ in every truncation. To avoid using that fact as the numerical test, replace it by

$$\begin{align}
\widetilde{s}_{\ell}(r) &=s_{\ell}(r)\left(1+\frac{1}{2(1+r^{2})}\right) =s_{\ell}(r)+\frac{1}{2}h_{\ell}(r), \\
h_{\ell}(r)&:=\frac{s_{\ell}(r)}{1+r^{2}}.
\end{align}$$

This is not a radial eigenfunction, but it has the same unit slow coefficient. Since $h_{\ell}$ decays faster, its matrix elements are ordinary convergent bulk integrals. In particular,

$$\begin{align}
G_{\widetilde{s}f_n} &=G_{sf_n}+\frac{1}{2}G_{hf_n}, \\
K_{\widetilde{s}f_n} &=\lambda_sG_{sf_n}+\frac{1}{2}\lambda_{f_n}G_{hf_n}.
\end{align}$$

For $\Delta=3/5$ and $\ell=0$, diagonalizing the $(N+1)\times(N+1)$ pair $(K,G)$ gives the following results. Here $N$ is the number of fast modes, $n=0,\ldots,N-1$.

| $N$ | lowest four truncated frequencies |
|---:|---|
| $4$ | $0.600254,\ 2.603471,\ 4.621229,\ 6.687421$ |
| $8$ | $0.600028,\ 2.600397,\ 4.602194,\ 6.607090$ |
| $16$ | $0.600003,\ 2.600045,\ 4.600241,\ 6.600747$ |
| $24$ | $0.600001,\ 2.600012,\ 4.600066,\ 6.600204$ |
| field-theory target | $0.6,\ 2.6,\ 4.6,\ 6.6$ |

As a check of the angular shift, the same non-eigen seed at $N=16$ gives

| $\ell$ | lowest two truncated frequencies | field-theory target |
|---:|---|---|
| $1$ | $1.600002,\ 3.600076$ | $1.6,\ 3.6$ |
| $2$ | $2.600001,\ 4.600109$ | $2.6,\ 4.6$ |
| $3$ | $3.600001,\ 5.600143$ | $3.6,\ 5.6$ |

Thus the fixed low eigenvalues converge to the alternative-quantization spectrum even when the slow representative is not an eigenfunction. The largest eigenvalues at a given $N$ are cutoff-dependent and should not be compared before taking $N\to\infty$.

# Mathematica reproduction

```wl
ClearAll["Global`*"];
del = 3/5; dp = 2 - del; ell = 0; cc = 1/2;
mass2 = del (del - 2);
lam0 = (del + ell)^2;

s0[r_] := r^ell (1 + r^2)^(-(ell + del)/2);
hh[r_] := s0[r]/(1 + r^2);

g00 = Beta[ell + 1, del]/2;
g0h = Beta[ell + 1, del + 1]/2;
ghh = Beta[ell + 1, del + 2]/2;
khh = FullSimplify[
  Integrate[
    r (1 + r^2) hh'[r]^2
      + (ell^2/r + mass2 r) hh[r]^2,
    {r, 0, Infinity}]
];

cf[n_] := Pochhammer[dp, n]/n!;
gf[n_] := Pochhammer[n + 1, ell]/
  (2 Pochhammer[dp + n, ell] (dp + ell + 2 n));
g0f[n_] := (1 - del) cf[n]/
  (2 (n + 1 - del) (ell + n + 1));
ghf[n_] := 1/2 Integrate[
  y^ell (1 - y) JacobiP[n, dp - 1, ell, 2 y - 1],
  {y, 0, 1}
];
lamf[n_] := (dp + ell + 2 n)^2;

make[Nf_] := Module[{gg, kk, vals, gsf, ksf},
  gg = DiagonalMatrix[
    Join[
      {g00 + 2 cc g0h + cc^2 ghh},
      Table[gf[n], {n, 0, Nf - 1}]
    ]
  ];
  kk = DiagonalMatrix[
    Join[
      {lam0 g00 + 2 cc lam0 g0h + cc^2 khh},
      Table[lamf[n] gf[n], {n, 0, Nf - 1}]
    ]
  ];
  Do[
    gsf = g0f[n] + cc ghf[n];
    ksf = lam0 g0f[n] + cc lamf[n] ghf[n];
    gg[[1, n + 2]] = gg[[n + 2, 1]] = gsf;
    kk[[1, n + 2]] = kk[[n + 2, 1]] = ksf,
    {n, 0, Nf - 1}
  ];
  vals = Sort[Sqrt[Chop[
    Eigenvalues[{N[kk, 40], N[gg, 40]}]
  ]]];
  {Nf, N[Take[vals, 4], 9]}
];

Table[make[Nf], {Nf, {4, 8, 16, 24}}]
```

# conclusion and limitation

The action-level truncation check succeeds: one slow representative per angular-momentum sector, together with an increasing number of fast modes, reproduces the fixed low-lying field-theory frequencies. At finite $N$, the trial space obeys D.27 but not D.34; the latter is therefore not being assumed in the diagonalization.

What is checked here is the analytic matrix reduction and numerical spectral convergence for representative finite truncations. A complete functional-analytic proof that the fast-mode span is dense in the full renormalized form domain is not supplied.

At $\Delta=1$, $\Delta_+=\Delta$ and $s_{\ell}=f_{0\ell}$, so the Gram matrix of this basis is singular. This endpoint requires a different construction and is outside the present check.
