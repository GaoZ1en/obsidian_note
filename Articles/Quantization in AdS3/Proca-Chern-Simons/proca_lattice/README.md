---
title: "README"
date: 2026-04-13
summary: ""
---

# Proca 1+1 lattice correlator

This small python tool computes free Proca-field two-point functions on a 1+1 Euclidean lattice and compares:

- the full Euclidean momentum-space inversion followed by a discrete inverse Fourier transform (path-integral style), and
- a canonical-style equal-time mode-sum for the spatial component.

Purpose
- Inspect the short-distance (coincident-point) behavior and the lattice-spacing scaling of contact-like contributions.

Dependencies
- Python 3
- numpy
- matplotlib (optional, for plotting)

Quick start

```bash
python proca_lattice/proca_1p1_lattice.py --Nlist 64,128,256 --m 1.0 --L 1.0 --save proca_results.npz
```

Output
- The script prints diagnostic values (coincident-point correlators) for each `N` and saves arrays to the provided `--save` file.

Notes
- The script uses a simple continuum-normalization when transforming from discrete momentum sums to coordinate-space correlators. The coincident-point numbers therefore include the expected lattice-UV scaling which you can analyse by varying `N` while keeping `L` fixed.
