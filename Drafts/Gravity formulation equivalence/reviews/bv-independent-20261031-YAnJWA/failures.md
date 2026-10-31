# Failures and warnings (kept separate from successful checks)

## Web-search interface failure

Initial query: `BV equivalence three dimensional gravity BF canonical transformation generating function contraction xi Cattaneo Schiavina Selliah`.

Actual returned error:

```text
Error: DeepSeek API error (HTTP 400): 'query' must be at most 128 characters (request_id: d6cf7b9f-14d9-4c51-a029-4c145968f86c)
```

A shorter query succeeded. No conclusions rely on the failed request.

## Sage native-homomorphism API limitation

The first canonical-map run passed all 15 derivative checks before it tried `A.hom(images,A)`. Sage then rejected its own homomorphism-verification API, not an algebraic residual. The failed runnable input is [failed_homomorphism_input.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/failed_homomorphism_input.py>). The successful replacement checks all exterior defining relations for the images and evaluates each native Sage exterior monomial directly.

Actual returned status and output:

```text
mode: run
ok: false
error.type: builtins.NotImplementedError
error.message: NotImplementedError: Verification of correctness of homomorphisms from The exterior algebra of rank 10 over Multivariate Polynomial Ring in g, x, y, e0, e1, e2, w0, w1, w2 over Rational Field not yet implemented.
stdout:
SageMath: 10.9
Generating density monomials: 23
dF/dP_E[0]: PASS
dF/dP_Omega[0]: PASS
dF/de[0]: PASS
dF/domega[0]: PASS
dF/dP_E[1]: PASS
dF/dP_Omega[1]: PASS
dF/de[1]: PASS
dF/domega[1]: PASS
dF/dP_E[2]: PASS
dF/dP_Omega[2]: PASS
dF/de[2]: PASS
dF/domega[2]: PASS
dF/dP_rho: PASS
dF/dP_tau: PASS
dF/dlambda: PASS
stderr: [empty]
warnings: []
sageVersion: SageMath version 10.9, Release Date: 2026-05-04
elapsedMs: 3911
codeSha256: ca3699f07fcb7a02fedd8c3acd1a50021717d417090005139befa34cad3dfcd8
```

Actual traceback:

```text
Traceback (most recent call last):
  File "<cmdline>", line 49, in <module>
  File "<cmdline>", line 31, in _execute
  File "<sage-mcp>", line 33, in <module>
  File "sage/structure/parent.pyx", line 1435, in sage.structure.parent.Parent.hom
    return self.Hom(codomain, **Hom_kwds)(im_gens, **kwds)
  File "sage/structure/parent.pyx", line 899, in sage.structure.parent.Parent.__call__
    return mor._call_(x)
  File "sage/structure/coerce_maps.pyx", line 92, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_
    raise
  File "sage/structure/coerce_maps.pyx", line 87, in sage.structure.coerce_maps.DefaultConvertMap_unique._call_
    return C._element_constructor(x)
  File "/var/tmp/sage-10.9-current/local/lib/python3.14/site-packages/sage/rings/homset.py", line 147, in _element_constructor_
    return morphism.RingHomomorphism_im_gens(self, x, base_map=base_map, check=check)
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
NotImplementedError: Verification of correctness of homomorphisms from The exterior algebra of rank 10 over Multivariate Polynomial Ring in g, x, y, e0, e1, e2, w0, w1, w2 over Rational Field not yet implemented.
```

## Sage exploratory version warning

An initial API exploration used deprecated `version()` rather than `sage.version.version` and returned:

```text
builtins.DeprecationWarning: Use sage.version.version instead.
See https://github.com/sagemath/sage/issues/39015 for details.
```

It also confirmed native `interior_product` is the left exterior derivative. Production inputs use the nondeprecated version constant.
