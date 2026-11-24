# Second-order artifact audit

Static checks only: file/link existence, UTF-8/control characters, Python-compatible syntax, and recorded code hashes.

Checked 15 Markdown files, 9 code files, and 124 local links.

## Current code hashes

| Code | SHA256 |
|---|---|
| [second_order_mode_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_mode_checks.py>) | `8f110663fc266eeb01719f0d35b94194251154191a8ffec32295a1d1fde264a1` |
| [second_order_symbolic_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_symbolic_checks.wl>) | `3687e0dc085d8fb237060b338d205a9066a3e6c49a8d6468c3044fe3512eb04f` |
| [second_order_spatial_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_spatial_checks.wl>) | `ac6eb0d09b45a6da18f03de7ddf29a491553ff94be277d38714934a540939559` |
| [spatial_loop_uv_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial_loop_uv_checks.py>) | `59d74d2c17fe8c14439bd381cb03711b1bcfc96015d7fa5f3fd207ad1c375037` |
| [spatial_wilson_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial_wilson_checks.py>) | `c23c0fa722beece329be6882a3684c8112c12871328e3a7df88c6deaba51f2a2` |
| [ward_source_checks.sage](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_source_checks.sage>) | `319a0dea7da8205ee69241bdffff4b216c04235c8814ae7b07ad9642d1e2455e` |
| [ward_contact_audit.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_contact_audit.py>) | `bbc67024c4edd15cd16a2ca1abc763e13ab510f47fc4432d8f188b95412f13a1` |
| [ward_contact_audit.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_contact_audit.wl>) | `fcd3afac57eff16f5619d0e4d675afc3b3f79b12156a5e35d73ec77d787375e9` |
| [second_order_audit.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_audit.py>) | `b34b36ffd4530b0f067816863b638768fa446460d426375f4b9422704d6f9134` |

## Outcome

All static checks passed.

This audit does not prove the Ward identity, Jacobi identity, convergence, or the physics of the counterterms. The nonlinear Jacobi failure is a recorded mathematical result, not an expected static-audit failure.
