# SurfaceCharges compatibility loader

This directory contains an uncommitted compatibility harness for Geoffrey
Compere's `SurfaceCharges` v1.00 and Sotirios Bonanos's RG&TC 3.8.9.

The upstream code targets old Mathematica releases. On Mathematica 14.3,
loading it unchanged has three concrete problems:

1. RG&TC attempts to define the protected system symbol `Classify`.
2. `SurfaceChargesCode.nb` attempts to define the protected system symbol
   `Commutator`.
3. SurfaceCharges expects user-defined globals named `metric` and `coord`,
   while RG&TC 3.8.9 protects its own function named `metric`.

`SurfaceChargesCompat.wl` applies the following load-time substitutions without
editing the upstream files:

- RG&TC `Classify` becomes `RGTCClassify`.
- SurfaceCharges `Commutator` becomes `SurfaceChargesCommutator`.
- SurfaceCharges reads the metric and coordinates already computed by RG&TC
  from `gdd` and `coordList`.
- Surface-density factors involving a series-expanded determinant are reduced
  with the current `$Assumptions` before multiplication. Wrap asymptotic calls
  in `Assuming[...]` so square-root branches are explicit.
- RG&TC's command that clears every symbol in `Global`` and erases `In`/`Out`
  history is removed.

Use a fresh kernel because RG&TC is an old global-state package:

```wl
Get["/Users/koishi/Documents/Note/tools/surface-charges-compat/SurfaceChargesCompat.wl"];
SurfaceChargesCompat`LoadSurfaceChargesCompat[];

g = (* metric component matrix *);
x = (* coordinate list *);
RGtensors[g, x, {0, 0}];

ChargesEinstein[xi, h, -1, {1, 2}]
```

For an asymptotic metric whose determinant contains symbolic scales, use:

```wl
Assuming[
  L > 0 && r0 > 0 && r > 0,
  ChargesEinsteinMaxwellScalarAsympt[(* arguments *)]
]
```

Run the checked Schwarzschild example with:

```sh
wolframscript -file \
  /Users/koishi/Documents/Note/tools/surface-charges-compat/tests/schwarzschild.wls
```

The BTZ regression check covers both Einstein gravity and Topologically Massive
Gravity:

```sh
wolframscript -file \
  /Users/koishi/Documents/Note/tools/surface-charges-compat/tests/btz.wls
```

The bundled non-relativistic Einstein-Maxwell-scalar example is checked with:

```sh
wolframscript -file \
  /Users/koishi/Documents/Note/tools/surface-charges-compat/tests/nonrelativistic-em-scalar.wls
```

Upstream sources:

- <https://ptm.ulb.be/gcompere/package.html>
- <https://ptm.ulb.be/gcompere/SurfaceCharges.zip>
- <http://www.inp.demokritos.gr/~sbonano/RGTC/>

The upstream files are copied here only for local compatibility testing. Their
copyright and licensing remain with their respective authors.
