---
title: "README"
date: 2026-04-13
summary: "Usage notes for computing 1+1-dimensional Euclidean Proca lattice correlators, including analytic Gaussian inversion and explicit Metropolis path-integral sampling."
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
python proca_1p1_lattice.py --Nlist 64,128,256 --m 1.0 --L 1.0 --save proca_results.npz
```

Run the command from this `lattice/` directory. If you want to launch it from the vault root instead, use the full relative path `Articles/Quantization in AdS3/Proca-Chern-Simons/lattice/proca_1p1_lattice.py`.

To generate plots without opening an interactive window:

```bash
python proca_1p1_lattice.py --Nlist 64,128 --m 1.0 --L 1.0 --plot --plot-dir plots --no-show
```

Metropolis path-integral sampling

The default computation evaluates the free Gaussian path integral analytically by inverting the lattice kernel in momentum space. To also estimate the same path-integral correlator by explicit random field sampling, enable the Metropolis branch with `--mc-samples`:

```bash
python proca_1p1_lattice.py \
  --Nlist 16 \
  --m 1.0 \
  --L 1.0 \
  --mc-samples 1000 \
  --mc-thermalization 1000 \
  --mc-sweeps-between 5 \
  --mc-step-size 1.0 \
  --mc-seed 1 \
  --save proca_mc_results.npz
```

For a larger smoke test, for example `N=32`, start with a longer thermalization window:

```bash
python proca_1p1_lattice.py \
  --Nlist 32 \
  --m 1.0 \
  --L 1.0 \
  --mc-samples 200 \
  --mc-thermalization 5000 \
  --mc-sweeps-between 5 \
  --mc-step-size 1.0 \
  --mc-seed 34
```

The Metropolis estimator samples the Euclidean field variables directly, so it should be compared with `path_coordinate`, not with `canonical_coordinate`. The canonical correlator differs from the path-integral correlator by the ultralocal $\tau\tau$ contact term

$$\begin{align}
\frac{1}{m^2 \Delta \tau \Delta x}\delta_{\tau,0}\delta_{x,0}.
\end{align}$$

For `m=1`, `L=beta=1`, and `N=32`, this contact coefficient is `1024`; therefore the $\tau\tau$ correlator at the origin is expected to be much closer to the path-integral result than to the canonical result.

Output
- The script prints the origin gap, the expected contact-term coefficient, and the maximum offsite difference for each `N`.
- If `--save` is provided, the script writes the momentum-space and coordinate-space correlators, together with shifted copies convenient for plotting.
- If `--mc-samples` is provided, the saved output also includes `N*_mc_coordinate`, `N*_mc_coordinate_shifted`, the Metropolis acceptance rate, the mean action, the action standard deviation, and $\tau\tau$ comparison errors against the analytic path-integral correlator.
- If `--plot` is provided, the script draws the path-integral $\tau\tau$ correlator, the canonical $\tau\tau$ correlator, their difference, and the equal-time spatial slice. With `--plot-dir`, each case is also saved as a `.png`.
- In a local smoke test with `N=8,16`, the script gives `origin gap = expected contact term` and `offsite max \sim 10^{-15}`, consistent with a purely local contact-term difference.

Notes
- The lattice kernel is the naive discretization of

$$\begin{align}
K_{\mu\nu}(p)=\left(m^{2}+\hat{p}^{2}\right)\delta_{\mu\nu}-\hat{p}_{\mu}\hat{p}_{\nu},
\end{align}$$

with symmetric lattice momenta $\hat{p}_{\mu}=\frac{2}{a_{\mu}}\sin\frac{k_{\mu}}{2}$.
- In momentum space the script uses

$$\begin{align}
G_{\mathrm{can};\tau\tau}(k)=G_{\mathrm{path};\tau\tau}(k)-\frac{1}{m^{2}},
\end{align}$$

so the coordinate-space difference is exactly the lattice contact term at the origin.
