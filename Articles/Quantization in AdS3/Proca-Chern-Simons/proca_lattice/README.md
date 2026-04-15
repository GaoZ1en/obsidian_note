---
title: "README"
date: 2026-04-13
summary: ""
---

# Proca 1+1 lattice correlator

This small python tool computes free Proca-field two-point functions on a 1+1 Euclidean lattice and compares:

- the full Euclidean momentum-space inversion followed by a discrete inverse Fourier transform (path-integral style), and
- a canonical-style correlator obtained by removing the ultralocal $\tau\tau$ contact term.

Purpose
- Inspect the short-distance behavior of the $\tau\tau$ correlator and verify that the path-integral and canonical correlators differ only by a local contact term.

Dependencies
- Python 3
- numpy
- matplotlib (optional, for plotting)

Quick start

```bash
python proca_lattice/proca_1p1_lattice.py --Nlist 64,128,256 --m 1.0 --L 1.0 --save proca_results.npz
```

To generate plots without opening an interactive window:

```bash
python proca_lattice/proca_1p1_lattice.py --Nlist 64,128 --m 1.0 --L 1.0 --plot --plot-dir plots --no-show
```

Output
- The script prints the origin gap, the expected contact-term coefficient, and the maximum offsite difference for each `N`.
- If `--save` is provided, the script writes the momentum-space and coordinate-space correlators, together with shifted copies convenient for plotting.
- If `--plot` is provided, the script draws the path-integral $\tau\tau$ correlator, the canonical $\tau\tau$ correlator, their difference, and the equal-time spatial slice. With `--plot-dir`, each case is also saved as a `.png`.

Notes
- The lattice kernel is the naive discretization of

$$
K_{\mu\nu}(p)=\left(m^{2}+\hat{p}^{2}\right)\delta_{\mu\nu}-\hat{p}_{\mu}\hat{p}_{\nu},
$$

with symmetric lattice momenta $\hat{p}_{\mu}=\frac{2}{a_{\mu}}\sin\frac{k_{\mu}}{2}$.
- In momentum space the script uses

$$
G_{\mathrm{can};\tau\tau}(k)=G_{\mathrm{path};\tau\tau}(k)-\frac{1}{m^{2}},
$$

so the coordinate-space difference is exactly the lattice contact term at the origin.
